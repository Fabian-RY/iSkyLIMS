import sys
sys.path.append
'''
try:
    from .drylab_email_conf import *
    EMAIL_USER_CONFIGURED = True
except:
    EMAIL_USER_CONFIGURED = False
'''

SERVICE_MANAGER = 'ServiceManager'

INTERNAL_SEQUENCING_UNIT = "GENOMIC_SEQ_UNIT"
################### DIRECTORIES ###################
USER_REQUESTED_SERVICE_FILE_DIRECTORY ='drylab/servicesRequestFiles'
PIPELINE_FILE_DIRECTORY = 'drylab/pipelinesFiles'


###################################################
## CSS file to be used for creating the PDF files
CSS_FOR_PDF = '/documents/drylab/services_templates/css/print_services.css'

## template files for generating the PDF files
REQUESTED_CONFIRMATION_SERVICE = 'request_service_template.html'
RESOLUTION_TEMPLATE = 'resolution_template.html'
OUTPUT_DIR_SERVICE_REQUEST_PDF ='documents/drylab/service_request' # Directory to store service request pdf
OUTPUT_DIR_RESOLUTION_PDF ='documents/drylab/resolution' # Directory to store resolution pdf

RESOLUTION_FILES_DIRECTORY = 'documents/drylab/resolutions'

ABBREVIATION_USED_FOR_SERVICE_REQUEST = 'UBB'
USER_CENTER_USED_WHEN_NOT_PROVIDED = 'NO_CENTER'

#SAMBA_SERVICE_FOLDER = 'services'
## Folders to be created when service is accepted
#FOLDERS_FOR_SERVICES = ['request', 'resolution', 'result'] # 0= request, 1= resolution, 2 = result (keep order as suggested)
#RESOLUTION_PREFIX = 'Resolution_'

############## FOLDER SETTINGS ###############################
## Directory settings for processing the run data files ######
## Relative path from settings.BASE_DIR
LOG_DIRECTORY = 'logs/'

################# CONFIG FILE LOG NAME ###############################
LOGGING_CONFIG_FILE = 'logging_config.ini'

CONFIRMATION_TEXT_MESSAGE = ['Your service request has been successfully recorded.',
                    'The sequence number assigned for your request is: SERVICE_NUMBER', 'Keep this number safe for refering your request',
                    'You will be contacted shortly.']


################# ERROR  #########################
ERROR_USER_NOT_ALLOWED = ['You do not have the enough privileges to see this page ','Contact with your administrator .']
ERROR_UNABLE_TO_RECORD_YOUR_SERVICE = ['Your service request cannot be recorded.', 'Check that all information is provided correctly.',
                                'If problem persist, contact your administrator']

ERROR_SERVICE_ID_NOT_FOUND = ['Service ID not found']

ERROR_INCORRECT_FORMAT_DATE = ['Invalid date format. Use the format  (DD-MM-YYYY)']

ERROR_NO_MATCHES_FOUND_FOR_YOUR_SERVICE_SEARCH =['There is not any Service that matches your input conditions']

ERROR_PIPELINE_ALREADY_EXISTS = ['Pipeline name and version is already defined']

ERROR_NO_SERVICES_ARE_SELECTED = ['Unable to process your request', 'No services have been selected']

DATE_NOT_YET_DEFINED = 'Not Yet Defined'

ERROR_FILE_TOO_BIG = 'Unable to upload your file. It exceeds the maximum size'

ERROR_USER_NOT_DEFINED = ['User is not defined']

ERROR_UNABLE_TO_SEND_EMAIL = ['Unable to send the email to user']

################### PIPELINES ######################
DISPLAY_NEW_DEFINED_PIPELINE = ['Pipeline Name' , 'Pipeline Version' , 'Description']
DISPLAY_PIPELINES_USED_IN_RESOLUTION = ['Created by User', 'Pipeline Name' , 'Pipeline Version', 'Creation Date', 'Default']

DISPLAY_DETAIL_PIPELINE_BASIC_INFO = ['Pipeline Name', 'Pipeline Version', 'Creation Date' , 'Pipeline in use']
DISPLAY_DETAIL_PIPELINE_ADDITIONAL_INFO = ['Created by', 'Pipeline URL', 'Pipeline File', 'Descripion']


HEADING_MANAGE_PIPELINES = ['User' ,'Pipeline Name', 'Pipeline Version', 'Date', 'In use', 'id']

HEADING_PIPELINES_USED_IN_RESOLUTIONS = ['Pipeline name', 'Pipeline version', 'Used in Resolution']

HEADING_PARAMETER_PIPELINE = ['Parameter Name' , 'Parameter Type']

HEADING_SERVICES_IN_PIPELINE = ['Service Name', 'Creation Time', 'Requested by', 'State']

####################### SERVICES #####################
MAX_UPLOAD_SIZE = 5242880

HEADING_PENDING_SERVICE_QUEUED =['Services', 'Resolution', 'Acronym name', 'Assigned to', 'On queued date', 'Estimated date']

HEADING_USER_PENDING_SERVICE_QUEUED =['Services', 'Resolution', 'Acronym name', 'On queued date', 'Estimated date']

HEADING_SERVICE_DATES = ['Service Date Creation', 'Approval Service Date', 'Rejected Service Date']

HEADING_SELECT_SAMPLE_IN_SERVICE = ['Run Name', 'Run ID', 'Project Name',  'Project ID','Sample Name', 'sample id', 'Run finish date','Folder Run']

HEADING_SELECT_ONLY_RECORDED_SAMPLE_IN_SERVICE = ['Sample Name', 'Related to project', 'Sample type' , 'Species',  'Recorded date','sample_id']

################ # RESOLUTION ##############################
HEADING_FOR_RESOLUTION_INFORMATION = ['Partial Services','Resolution State' ,'Folder Name', 'Service assigned_to', 'Estimated Delivery Date', 'Queued Date' , 'In Progress Date', 'Notes', 'Resolution PDF File']

ERROR_RESOLUTION_DOES_NOT_EXISTS =['The resolution that you are trying to upadate does not exists ','Contact with your administrator .']

HEADING_PIPELINES_SELECTION_IN_RESOLUTION = ['Pipeline name', 'Pipeline version', 'Pipeline ID']

MAPPING_ADDITIONAL_RESOLUTION_PARAMETERS = [('resolutionParameter', 'Parameter name'),('resolutionParamValue', 'Parameter value'),('resolutionParamNotes', 'Notes')]

################ EMAIL TEXT   ##################################
SUBJECT_SERVICE_RECORDED = ['Analisys request with ID ', ' recorded']
BODY_SERVICE_RECORDED = ['Dear user USER_NAME','Your service request with ID SERVICE_NUMBER, has been registered correctly.','The team at Bioinformatics and Biostatistics Unic (UBB) will review your request, and you will be notified about its resolution soon. ',
                    'If you have not requested any analysis service or have any doubts about the requested service, please, contact us via email at bioinfo@incliva.es', 'Kind Regards.', 'UBB team']

SUBJECT_RESOLUTION_RECORDED = ['Resolution of analisis service with ID ']
BODY_RESOLUTION_ACCEPTED = ['Dear user  USER_NAME',' The analisis service you requested recently with ID SERVICE_NUMBER has been STATUS .', 'The estimated service end date is DATE',
                    'Your service is queued on our analysis servers. An email will be sent once the analysis starts and once the analysis finishes.', 'If you have not requested any analysis service or have any doubts about the requested service, please, contact us via email at bioinfo@incliva.es',
                     'Kind Regards', 'UBB team']
BODY_RESOLUTION_REJECTED = ['Dear  USER_NAME','A new resolution has been added for your service:  SERVICE_NUMBER.', 'Your service has been STATUS',
                    'because it does not fullfil our requirements or is not in our services portfolio. If you have any question please contact us.',
                     'Kind regards', 'INCLIVA']
SUBJECT_RESOLUTION_IN_PROGRESS = ['Service ', ' has begun']
BODY_RESOLUTION_IN_PROGRESS = ['Dear  USER_NAME', 'Your analysis request with ID  RESOLUTION_NUMBER has recently begun. An email will be sent once the analysis is over' , 
                     'If you have not requested any analysis service or have any doubts about the requested service, please, contact us via email at bioinfo@incliva.es', 'Kind regards', 'UBB team']


SUBJECT_RESOLUTION_PANEL_FINISHED = ['Service ', ' has been updated']
BODY_RESOLUTION_PANEL_FINISHED = ['Dear  USER_NAME', 'Your service with resolution id:  RESOLUTION_NUMBER - PANEL is now finished' ,
                     'Kind regards', 'INCLIVA']


SUBJECT_RESOLUTION_DELIVERED = ['Service ', ' has been updated']
BODY_RESOLUTION_DELIVERED = ['Dear  USER_NAME', 'Your service with resolution id:  RESOLUTION_NUMBER is finished.' ,
                    'A mail with instructions for downloading the results will be shortly sent to you.',
                    'Kind regards', 'INCLIVA']

SUBJECT_SERVICE_ON_QUEUED = ['Service ', 'sent to preparation pipelines Jobs']
BODY_SERVICE_ON_QUEUED = ['Service  SERVICE_NUMBER is on queued ']

################ EMAIL CONFIGURATION FIELDS ###############################
EMAIL_CONFIGURATION_FIELDS = ['EMAIL_HOST','EMAIL_PORT','USER_PASSWORD', 'USER_NAME', 'USER_EMAIL', 'USE_TLS']
EMAIL_CONFIGURATION_FILE_HEADING = '############# EMAIL CONFIGURATION FILE ########\n#DO NOT MODIFY MANUALLY THIS FILE\n#VALUES WILL BE MODIFIED WHEN USING THE CONFIGURATION FORM\n'
EMAIL_CONFIGURATION_FILE_END = '########## END EMAIL CONFIGURATION FILE'


################ GRAPHICS #############################
COLORS_MULTI_LEVEL_PIE = ['#66ffff', '#99ff99', '#ffffcc','#ffcccc','#ffccff', '#ccccff','#66ccff']
MULTI_LEVEL_PIE_PENDING_TEXT_IN_CHILD_SERVICE = "Service pending on <b>$label</b> are <b>$value</b>, which was $percentValue of parent Service"
MULTI_LEVEL_PIE_PENDING_MAIN_TEXT =  "Please hover over a services requested Unit to see details"

################ AVAILABLE SERVICES ##################
SEQUENCING_REQUEST = "Available services"
COUNSELING_REQUEST = ""
