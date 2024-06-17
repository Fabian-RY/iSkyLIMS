#!/usr/bin/env python3
import sys, os, paramiko, fnmatch
import shutil
from django.conf import settings
import logging
from logging.config import fileConfig
from logging.handlers import RotatingFileHandler
import subprocess
import collections
import sysrsync
import json
from iSkyLIMS_wetlab import wetlab_config
from iSkyLIMS_wetlab.models import *
from iSkyLIMS_wetlab.utils.generic_functions import *
CommandResponse = collections.namedtuple('CommandResponse', ['code', 'out', 'err'])

def open_connect_sftp(host, user):
    '''
    Description:
        Connect via ssh to the server with the user
    Input:
        host  # server to connect
        user  # user to connect to the server
    Variables:
        conn_data  # dictionary with data connection
    Return:
        ssh_client  # object SSHClient()
        sftp # object SFTPClient()
    '''
    conn_data = dict(hostname = host, username = user)
    ssh_client = paramiko.SSHClient()
    ssh_client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh_client.connect(**conn_data)
    sftp = ssh_client.open_sftp()
    # config_file = os.path.join(settings.BASE_DIR, inclipipe_config.LOGGING_CONFIG_FILE)

    return ssh_client, sftp

def close_connect_sftp(ssh_client, sftp):
    '''
    Description:
        disconnect connection sftp
    Input:
        ssh_client  # object SSHClient()
        sftp  # object SFTPClient()
    Variables:

    Return:
    '''
    sftp.close()
    ssh_client.close()

def exists_remote_path(sftp, path):
    '''
    Description:
        check if path exist
    Input:
        sftp  # object SFTPClient()
        path
    Variables:
    Return:
        True/False
    '''
    try:
        print('compruebo si existe el directorio', path)
        sftp.stat(path)

        return True

    except:
        return False

def exists_local_path(path):
    '''
    Description:
        check if path exist
    Input:
        path
    Variables:
    Return:
        True/False
    '''
    if  os.path.isdir(path):
        return True

    else:
        return False

def open_log(config_file):
    '''
    Description:
        The function will create the log object to write all logging information
    Input:
        logger_name    # contains the logger name that will be included in the log file
    Constant:
        LOGGING_CONFIG_FILE
    Return:
        logger object
    '''
    fileConfig(config_file)
    logger = logging.getLogger(__name__)

    return logger

def display_available_runs(app_name):
    # host_source = 'sftp.incliva.es'
    # user_source = 'django'
    host_source = wetlab_config.HOST_BACKUP
    user_source =  wetlab_config.USER_BACKUP
    ssh_client, sftp = open_connect_sftp(host_source ,user_source)
    # x = ssh_client.exec_command('rsync -avs /media/datos/precision/precisionlabo . --dry-run')
    # sftp.chdir('/media/datos/precision/precisionlabo')
    print('cambio directorio')
    sftp.chdir(wetlab_config.HOST_BACKUP_FOLDER)
    run_list = []
    run_list = sftp.listdir()
    close_connect_sftp(ssh_client, sftp)

    return run_list

def create_json_backup(runFolder, destFolder):
    """
    Esta función escribe en el directorio /jsonbackup/ el archivo json que indica el status en el que se encuentra el
    run (waiting, backup).
    """
    try:
        data_backup = {}
        data_backup['source'] = runFolder
        data_backup['destination'] = destFolder
        # data_backup['source_ssh'] =  wetlab_config.HOST_BACKUP
        data_backup['status'] = 'waiting'

        name_file = os.path.join(settings.BASE_DIR,'jsonbackup',runFolder) + '.json' # nombre del archivo json

        print(data_backup)
        print('name_file: ',name_file)

        # Escribe el json
        with open(name_file, 'w') as j:
            json.dump(data_backup, j)

    except OSError:
        stderr.print('Error json', highlight = False,)

def waiting_json_backup():
    content_jsonbackup = os.listdir(os.path.join(settings.BASE_DIR,'jsonbackup'))
    waiting_list =[]
    for file in content_jsonbackup:

        (nomfile, extensionfile) = os.path.splitext(file)
        if(extensionfile == ".json"):
            f = os.path.join(settings.BASE_DIR,'jsonbackup', file)

            with open(f,'r') as j:
                data_backup = json.load(j)
            if data_backup['status'] == 'waiting':
                waiting_list.append(nomfile)

    return  waiting_list

def copy_rsync_crontab():
    # Imprime la hora actual al inicio de la ejecución
    start_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"Inicia la ejecución de copy_rsync_crontab: {start_time}")

    content_jsonbackup = os.listdir(os.path.join(settings.BASE_DIR,'jsonbackup'))

    # Se itera por los json que dicen el estado del run.
    for file in content_jsonbackup:
        (nomfile, extensionfile) = os.path.splitext(file)

        if (extensionfile == ".json"):
            file = os.path.join(settings.BASE_DIR,'jsonbackup', file)

            # Se lee el json
            with open(file,'r') as j:
                data_backup = json.load(j)

            # Obtener la ruta de destino (donde se copia el run) completa
            destination_path = data_backup['destination'] + data_backup['source']
            # print('destination_path: ', destination_path)

            # Normalmente destination_path será en /nfs/backupp1/ o en /nfs/backupp5/. Estos paths existen localmente en
            # el servidor, por lo que se puede comprobar si existen antes de copiar el run.

            # print('¿existe el run ya en el /nfs/backupp[1|5]? ', exists_local_path(destination_path), '\n')

            # Sólo comenzará el proceso de copia y demultiplexado del run cuando en el json se indique que el estado es
            # 'waiting' y que no exista el directorio en el servidor local (esto es para evitar que se lanzan de forma
            # simultánea diferentes copias mientras no se ha cambiado aún el status).
            if data_backup['status'] == 'waiting' and not exists_local_path(destination_path):
                host_source = wetlab_config.HOST_BACKUP
                user_source = wetlab_config.USER_BACKUP

                ssh_client, sftp = open_connect_sftp(host_source ,user_source)
                print('ssh_client: ', ssh_client)

                source_folder =  wetlab_config.HOST_BACKUP_FOLDER + data_backup['source']
                print('source_folder: ', source_folder)

                try:
                    print('Comienza la copia del run con sysrsync...')

                    # se lanza la copia del run utilizando rsync
                    x = ssh_client.exec_command(sysrsync.run(
                        source = source_folder,
                        source_ssh =  wetlab_config.HOST_BACKUP,
                        destination =  data_backup['destination'],
                        options = ['-avs'],
                        sync_source_contents = False,
                        ))

                except TypeError as e:
                    print('error: ', e)
                    # print('stdin: ', stdin)
                    # print('stdout: ', stdout)
                    # print('stderr: ', stderr)
                    # print('object of type CompletedProcess has no len()')
                    # exit(1)

                except OSError as e:
                    print('error: ', e)
                    # print('stdin: ', stdin)
                    # print('stdout: ', stdout)
                    # print('stderr: ', stderr)
                    # exit(1)

                print('Ha terminado el sysrsync.')
                close_connect_sftp(ssh_client, sftp)

                print('Se cambia el estado a "backup" en el json.')
                data_backup['status'] = 'backup'

                with open(file, 'w') as j:
                    json.dump(data_backup, j)

                nfsFolder = data_backup['destination']
                runFolder = data_backup['source']

                # lanzar copia a SAMBA (aquí se hace el demultiplexado)
                print('Se copia el run a SAMBA.')
                copy_samba(runFolder, nfsFolder)

            else:
                print('ya copiado: ', file)

def copy_samba(runFolder, nfsFolder):
    # Imprime la hora actual al inicio de la ejecución
    start_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"Inicia la ejecución de copy_samba: {start_time}")

    try:
        print('Se empieza a ejecutar copy_samba.')
        samba_data = {}
        samba_data = get_samba_connection_data()
        sambaFolder  = samba_data['SAMBA_SHARED_FOLDER_NAME']

        print('Comienza el demultiplexado (inc_run/inc_copy_to_iskylims_v3.sh)...')
        subprocess.run([os.path.join(settings.BASE_DIR,'inc_run/inc_copy_to_iskylims_v3.sh'),'-o',nfsFolder,'-r', runFolder, '-s',sambaFolder])

    except OSError:
        stderr.print(
            "[red] ERROR could not be copied data",
            highlight = False,
            )

# # no usar
# def copy_rsync(file):
#     try:
#        print('antes ejecutar sysrsync')
#        host_source = HOST_BACKUP
#        user_source = USER_BACKUP
#        ssh_client, sftp = open_connect_sftp(host_source ,user_source)
#        print(ssh_client)
#        source_folder = HOST_BACKUP_FOLDER + runFolder
#        print(source_folder)
#        ssh_client.exec_command(sysrsync.run(
#           source = source_folder,
#           destination = destFolder,
#           source_ssh= source_folder,
#           options = ['-avs'],
#           sync_source_contents = False,
#        ))
#        stderr.print(
#           "[green] Data copied successfully",
#           highlight=False,
#        )
#        close_connect_sftp(ssh_client, sftp)

#     except OSError:
#        stderr.print(
#           "[red] ERROR could not be copied data",
#           highlight=False,
#        )
#     return True

# #funcion para ejecutar rsync desde el form, pero se usa otra opcion
# def copy_rsync_form(runFolder, destFolder):
#     try:
#        print('antes ejecutar sysrsync')
#        host_source = HOST_BACKUP
#        user_source = USER_BACKUP
#        ssh_client, sftp = open_connect_sftp(host_source ,user_source)
#        print(ssh_client)
#        source_folder = HOST_BACKUP_FOLDER + runFolder
#        print(source_folder)
#        ssh_client.exec_command(sysrsync.run(
#           source = source_folder,
#           destination = destFolder,
#           source_ssh = HOST_BACKUP,
#           options = ["-avs"],
#           sync_source_contents = False,
#        ))
#        stderr.print(
#           "[green] Data copied successfully",
#           highlight = False,
#        )
#        close_connect_sftp(ssh_client, sftp)
#     except OSError:
#        stderr.print(
#           "[red] ERROR could not be copied data",
#           highlight = False,
#        )
#     return True

# def backup_run(runFolder, destFolder, app_name):
#     #host_source = 'sftp.incliva.es'
#     #user_source = 'django'
#     host_source = DEST_BACKUP
#     user_source = USER_BACKUP
#     ssh_client, sftp = open_connect_sftp(host_source ,user_source)
#     #x = ssh_client.exec_command('rsync -avs /media/datos/precision/precisionlabo . --dry-run')
#     #sftp.chdir('/media/datos/precision/precisionlabo')
#     sftp.chdir(HOST_BACKUP_FOLDER)
#     command = 'rsync -avs ' + HOST_BACKUP_FOLDER + runFolder + ' ' + destFolder
#     # x = ssh_client.exec_command('rsync -avs /srv/NGS_Data /srv/prueba')
#     x = ssh_client.exec_command(command)

#     close_connect_sftp(ssh_client, sftp)

#     return x

if __name__ == '__main__' :
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'inc_rsync_run.settings')
    #OJO NO HACER PRUEBAS DE COPIADO DE ARCHIVOS CON LOS nfs
    host_source = 'sftp.incliva.es'
    user_source = 'django'
    ssh_client, sftp = open_connect_sftp(host_source ,user_source)
    #x = ssh_client.exec_command('rsync -avs /media/datos/precision/precisionlabo . --dry-run')
    sftp.chdir('/media/datos/precision/precisionlabo')
    lista_dir = sftp.listdir()
    close_connect_sftp(ssh_client, sftp)

'''    # recuperar el service_number
       service_number = service['serviceRequestNumber']
       service_in_progress_full_data = api_functions.service_full_data(service_number)
       # recuperar la lista de resoluciones
       resolutions_service = service['resolutions']
       # y buscar la que esté en estado In Progress, que será la que se tratará
       for resolution in resolutions_service:
          if resolution['state']=='In Progress':
              # lanzar copia de archivos fastq
              state_copy = copy_files_resolution(service_number,resolution)
              if state_copy:
                  # actualizamos el estado de resolution a INCLIPIPE_COPY
                  api_functions.update_state_resolution(resolution,'INCLIPIPE_COPY')
                  # para recuperar el pipe que hay que lanzar se recurre a full data
                  # recorrer  las resoluciones del servicio
                  resolutions_full_data = service_in_progress_full_data['Resolutions']
                  for resolution_full_data in resolutions_full_data:
                     # cuando se encuentre la resolución que se está tratando
                     if resolution_full_data['resolutionNumber'] == resolution['number'] :
                        pipe_list = resolution_full_data['resolutionPipelines']
                        print("lanzare el pipe")
                        print(pipe_list)
                        print("---------------")

              else:
                  api_functions.update_state_resolution(resolution,'INCLIPIPE_COPY_ERROR')
'''
