/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/additional_kits.py:from datetime import date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/additional_kits.py:        # update the library prepareation state
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/additional_kits.py:        library_prep_obj.set_state('Updated additional kits')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/additional_kits.py:            #if UserLotCommercialKits.objects.filter(basedCommercial = kit_commercial_obj, expirationDate__gte = date.today()).exists():
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/additional_kits.py:            #    user_lot_kit_objs = UserLotCommercialKits.objects.filter(basedCommercial = kit_commercial_obj, expirationDate__gte = date.today()).order_by('expirationDate')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/additional_kits.py:        # Update  Field
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/additional_kits.py:        add_kit_obj.update_add_kit_fields(kit_data)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/collection_index_functions.py:import datetime, time
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/collection_index_functions.py:    ## the date and time on now to store in database
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:        experiment_name if the run is updated. Empty if not
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:        # Do not update the projects state. They will keep in Processed Run
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:        experiment_name if the run is updated. Empty if not
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:                bcl2fastq_finish_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:                bcl2fastq_finish_date = run_process_obj.set_run_bcl2fastq_finished_date(bcl2fastq_finish_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:                # Do not update the projects state. They will keep in Processed Run
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:                logger.info ('%s : Updated the Bcl2Fastq time in the run ', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:                            is updated for each of the run metric files
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:        experiment_name if the run is sucessfully updated.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:        finish_date = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:        result_set_finish_date = run_process_obj.set_run_finish_date(finish_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/common_run_functions.py:        # Update the run state to completed
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        start_date          # it is the first of january of the run_year
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        end_date            # it is the 31st of december of the run_year
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:    run_year = run_object.run_date.timetuple().tm_year
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:    start_date = str(run_year) + '-1-1'
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:    end_date = str(run_year) +'-12-31'
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:    same_run_in_year = RunProcess.objects.filter(run_date__range=(start_date, end_date)).exclude(runName__in = run_different_chemistry)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:    today = datetime.date.today()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            recorded_date = run_obj.get_recorded_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            data.append(recorded_date.strftime("%d %B  %Y"))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            data.append(str((today - recorded_date).days))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            run_date = run_obj.get_run_date_no_format()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            if run_date == None:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:                # if no value stored on run date use the recorded date instead
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:                run_date = run_obj.get_recorded_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            data.append(run_date.strftime("%d %B  %Y"))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            data.append(str((today - run_date).days))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            run_date = run_obj.get_run_date_no_format()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            if run_date == None:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:                # if no value stored on run date use the recorded date instead
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:                run_date = run_obj.get_recorded_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            data.append(run_date.strftime("%d %B %Y"))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            data.append(str((today - run_date).days))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            run_date = run_obj.get_run_date_no_format()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            if run_date == None:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:                # if no value stored on run date use the recorded date instead
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:                run_date = run_obj.get_recorded_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            data.append(run_date.strftime("%d %B %Y"))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            data.append(str((today - run_date).days))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:    d_list=['Run name','State of the Run is','Run was requested by','Run was recorded on date', 'Run date', 'Run Completion Date']
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        project_info_dict['dates'] = list(zip(HEADING_FOR_PROJECT_DATES, project_id.get_project_dates() ))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:def get_sequencers_run_from_time_interval(sequencer,start_date, end_date):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        if RunProcess.objects.filter(usedSequencer = sequencer_obj, run_date__range=(start_date, end_date)).exists():
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            run_objs_found = RunProcess.objects.filter(usedSequencer = sequencer_obj, run_date__range=(start_date, end_date))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:def  get_stats_sequencer_data_from_selected_runs (runs_using_sequencer, sequencer,start_date, end_date):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        start_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        end_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        sequencer_data['run_completed'].append([run_in_seq.get_run_name(),run_in_seq.get_run_date(),run_in_seq.get_run_id()])
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        sequencer_data['not_run_completed'].append([run_in_seq.get_run_name(),run_in_seq.get_run_date(),run_in_seq.get_run_id()])
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        time_diference.append((run_in_seq.get_run_finish_date_no_format().date()- run_in_seq.get_run_date_no_format()).days)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:        run_year_month = run_in_seq.get_run_date_no_format().strftime("%Y_%m")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information_original.py:            run_year_month = run_in_other_seq.get_run_date_no_format().strftime("%Y_%m")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        start_date          # it is the first of january of the run_year
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        end_date            # it is the 31st of december of the run_year
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:    run_year = run_object.run_date.timetuple().tm_year
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:    start_date = str(run_year) + '-1-1'
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:    end_date = str(run_year) +'-12-31'
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:    same_run_in_year = RunProcess.objects.filter(run_date__range=(start_date, end_date)).exclude(runName__in = run_different_chemistry)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:    today = datetime.date.today()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            recorded_date = run_obj.get_recorded_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            data.append(recorded_date.strftime("%d %B  %Y"))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            data.append(str((today - recorded_date).days))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            run_date = run_obj.get_run_date_no_format()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            if run_date == None:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:                # if no value stored on run date use the recorded date instead
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:                run_date = run_obj.get_recorded_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            data.append(run_date.strftime("%d %B  %Y"))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            data.append(str((today - run_date).days))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            run_date = run_obj.get_run_date_no_format()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            if run_date == None:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:                # if no value stored on run date use the recorded date instead
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:                run_date = run_obj.get_recorded_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            data.append(run_date.strftime("%d %B %Y"))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            data.append(str((today - run_date).days))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            run_date = run_obj.get_run_date_no_format()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            if run_date == None:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:                # if no value stored on run date use the recorded date instead
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:                run_date = run_obj.get_recorded_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            data.append(run_date.strftime("%d %B %Y"))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            data.append(str((today - run_date).days))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:    d_list=['Run name','State of the Run is','Run was requested by','Run was recorded on date', 'Run date', 'Run Completion Date']
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        project_info_dict['dates'] = list(zip(HEADING_FOR_PROJECT_DATES, project_id.get_project_dates() ))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:def get_sequencers_run_from_time_interval(sequencer,start_date, end_date):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        if RunProcess.objects.filter(usedSequencer = sequencer_obj, run_date__range=(start_date, end_date)).exists():
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            run_objs_found = RunProcess.objects.filter(usedSequencer = sequencer_obj, run_date__range=(start_date, end_date))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:def  get_stats_sequencer_data_from_selected_runs (runs_using_sequencer, sequencer,start_date, end_date):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        start_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        end_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        sequencer_data['run_completed'].append([run_in_seq.get_run_name(),run_in_seq.get_run_date(),run_in_seq.get_run_id()])
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        sequencer_data['not_run_completed'].append([run_in_seq.get_run_name(),run_in_seq.get_run_date(),run_in_seq.get_run_id()])
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        time_diference.append((run_in_seq.get_run_finish_date_no_format().date()- run_in_seq.get_run_date_no_format()).days)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:        run_year_month = run_in_seq.get_run_date_no_format().strftime("%Y_%m")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/fetching_information.py:            run_year_month = run_in_other_seq.get_run_date_no_format().strftime("%Y_%m")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/generic_functions.py:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/generic_functions.py:    start_date = str(run_year) + '-1-1'
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/generic_functions.py:    end_date = str(run_year) +'-12-31'
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/generic_functions.py:    same_run_in_year = RunProcess.objects.filter(run_date__range=(start_date, end_date)).exclude(runName__in = run_different_chemistry)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/generic_functions.py:def check_valid_date_format (date):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/generic_functions.py:        datetime.strptime(date, '%Y-%m-%d')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/generic_functions.py:        the instance is create if not the table is updated with the new data
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/generic_functions.py:    samba_connection_obj.update_data(data)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_copy_run.py:                  api_functions.update_state_resolution(resolution,'INCLIPIPE_COPY')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_copy_run.py:                  api_functions.update_state_resolution(resolution,'INCLIPIPE_COPY_ERROR')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py:        bcl2fastq_finish_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py:    bcl2fastq_finish_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py:    logger.info('%s : bcl2fastq has been completed . Collecting date when finish the bcl2fastq', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py:    bcl2fastq_finish_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py:    return bcl2fastq_finish_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save:        bcl2fastq_finish_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save:    bcl2fastq_finish_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save:    logger.info('%s : bcl2fastq has been completed . Collecting date when finish the bcl2fastq', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save:    bcl2fastq_finish_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save:    return bcl2fastq_finish_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save.1:        bcl2fastq_finish_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save.1:    bcl2fastq_finish_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save.1:    logger.info('%s : bcl2fastq has been completed . Collecting date when finish the bcl2fastq', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save.1:    bcl2fastq_finish_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_bcl2fastq.py.save.1:    return bcl2fastq_finish_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        run_process_obj.update_index_library(index_library_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        completed and run_completion_date in case the sequencer ends sucessfully.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    run_completion_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:            return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    string_completion_date = ' '.join(last_log_time)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    run_completion_date = datetime.strptime(string_completion_date, '%Y-%m-%d %H:%M:%S.%f')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        status and run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        status , run_completion_date = check_sequencer_status_from_log_file(log_file_content ,log_cycles,number_of_cycles, experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        return status , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:            run_completion_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:            return 'completed' , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:            run_completion_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:            run_completion_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:            logger.warning ('%s : Unable to collect date for completion file ', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        return 'completed' , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        run_data['run_date'] = running_parameters['run_date']
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        experiment_name # name of the run to be updated
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        print(datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        print(datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        updated with a new row having the parsed data
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    # get date for miSeq and NextSeq with the format yymmdd
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    date = p_run.find('Date').text
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        run_date = datetime.strptime(date, '%y%m%d')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        # get date for novaseq sequencer
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        date = p_run.find('Date').text.split(' ')[0]
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:            run_date = datetime.strptime(date, '%m/%d/%Y')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:            run_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    ## updating the date fetched from the Date tag for run and project
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    logger.debug('%s : Found date that was recorded the Run %s', experiment_name , date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    parsing_data['run_date'] = run_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        It will update the field sampleSheet in database
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        run_updated     # RunProcess object
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:        run_updated # RunProcess object for miseq run
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    now = datetime.now()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    # Update the run with the sample sheet information  (full_path, relative_path, file_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    run_process_obj.update_sample_sheet(new_sample_sheet_file, sample_sheet_on_database, new_sample_sheet_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    logger.info('%s : Updated runProccess table with the sample sheet', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py:    today = datetime.now().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        run_process_obj.update_index_library(index_library_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        completed and run_completion_date in case the sequencer ends sucessfully.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    run_completion_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:            return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    string_completion_date = ' '.join(last_log_time)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    run_completion_date = datetime.strptime(string_completion_date, '%Y-%m-%d %H:%M:%S.%f')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        status and run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        status , run_completion_date = check_sequencer_status_from_log_file(log_file_content ,log_cycles,number_of_cycles, experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        return status , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:            run_completion_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:            return 'completed' , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:            run_completion_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:            run_completion_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:            logger.warning ('%s : Unable to collect date for completion file ', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        return 'completed' , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        run_data['run_date'] = running_parameters['run_date']
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        experiment_name # name of the run to be updated
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        print(datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        print(datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        updated with a new row having the parsed data
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    # get date for miSeq and NextSeq with the format yymmdd
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    date = p_run.find('Date').text
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        run_date = datetime.strptime(date, '%y%m%d')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        # get date for novaseq sequencer
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        date = p_run.find('Date').text.split(' ')[0]
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:            run_date = datetime.strptime(date, '%m/%d/%Y')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:            run_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    ## updating the date fetched from the Date tag for run and project
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    logger.debug('%s : Found date that was recorded the Run %s', experiment_name , date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    parsing_data['run_date'] = run_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        It will update the field sampleSheet in database
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        run_updated     # RunProcess object
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:        run_updated # RunProcess object for miseq run
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    now = datetime.now()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    # Update the run with the sample sheet information  (full_path, relative_path, file_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    run_process_obj.update_sample_sheet(new_sample_sheet_file, sample_sheet_on_database, new_sample_sheet_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    logger.info('%s : Updated runProccess table with the sample sheet', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save:    today = datetime.now().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        run_process_obj.update_index_library(index_library_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        completed and run_completion_date in case the sequencer ends sucessfully.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    run_completion_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:            return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    string_completion_date = ' '.join(last_log_time)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    run_completion_date = datetime.strptime(string_completion_date, '%Y-%m-%d %H:%M:%S.%f')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        status and run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        status , run_completion_date = check_sequencer_status_from_log_file(log_file_content ,log_cycles,number_of_cycles, experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        return status , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:            run_completion_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:            return 'completed' , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:            run_completion_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:            run_completion_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:            logger.warning ('%s : Unable to collect date for completion file ', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        return 'completed' , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        run_data['run_date'] = running_parameters['run_date']
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        experiment_name # name of the run to be updated
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        print(datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        print(datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        updated with a new row having the parsed data
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    # get date for miSeq and NextSeq with the format yymmdd
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    date = p_run.find('Date').text
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        run_date = datetime.strptime(date, '%y%m%d')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        # get date for novaseq sequencer
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        date = p_run.find('Date').text.split(' ')[0]
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:            run_date = datetime.strptime(date, '%m/%d/%Y')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:            run_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    ## updating the date fetched from the Date tag for run and project
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    logger.debug('%s : Found date that was recorded the Run %s', experiment_name , date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    parsing_data['run_date'] = run_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        It will update the field sampleSheet in database
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        run_updated     # RunProcess object
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:        run_updated # RunProcess object for miseq run
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    now = datetime.now()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    # Update the run with the sample sheet information  (full_path, relative_path, file_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    run_process_obj.update_sample_sheet(new_sample_sheet_file, sample_sheet_on_database, new_sample_sheet_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    logger.info('%s : Updated runProccess table with the sample sheet', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.1:    today = datetime.now().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.2:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        run_process_obj.update_index_library(index_library_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        completed and run_completion_date in case the sequencer ends sucessfully.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    run_completion_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:            return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    string_completion_date = ' '.join(last_log_time)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    run_completion_date = datetime.strptime(string_completion_date, '%Y-%m-%d %H:%M:%S.%f')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    return status, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        status and run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        status , run_completion_date = check_sequencer_status_from_log_file(log_file_content ,log_cycles,number_of_cycles, experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        return status , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:            run_completion_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:            return 'completed' , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:            run_completion_date = datetime.fromtimestamp(int(conversion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:            run_completion_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:            logger.warning ('%s : Unable to collect date for completion file ', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        return 'completed' , run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        run_data['run_date'] = running_parameters['run_date']
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        experiment_name # name of the run to be updated
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        print(datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        print(datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        updated with a new row having the parsed data
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    # get date for miSeq and NextSeq with the format yymmdd
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    date = p_run.find('Date').text
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        run_date = datetime.strptime(date, '%y%m%d')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        # get date for novaseq sequencer
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        date = p_run.find('Date').text.split(' ')[0]
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:            run_date = datetime.strptime(date, '%m/%d/%Y')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:            run_date = ''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    ## updating the date fetched from the Date tag for run and project
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    logger.debug('%s : Found date that was recorded the Run %s', experiment_name , date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    parsing_data['run_date'] = run_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        It will update the field sampleSheet in database
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        run_updated     # RunProcess object
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:        run_updated # RunProcess object for miseq run
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    now = datetime.now()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    # Update the run with the sample sheet information  (full_path, relative_path, file_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    run_process_obj.update_sample_sheet(new_sample_sheet_file, sample_sheet_on_database, new_sample_sheet_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    logger.info('%s : Updated runProccess table with the sample sheet', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_common_functions.py.save.3:    today = datetime.now().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:        to update the run information.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:            time_to_check = run_process_obj.get_run_generated_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:        run_status, run_completion_date = check_sequencer_run_is_completed(conn, run_folder , platform , number_of_cycles, experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:            run_process_obj.set_run_completion_date(run_completion_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:            time_to_check = run_process_obj.get_run_generated_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:        bcl2fastq_finish_date = check_demultiplexing_folder_exists(conn, run_folder, experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:        if 'ERROR' in bcl2fastq_finish_date:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:            if bcl2fastq_finish_date['ERROR'] == 29:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:                    time_to_check = run_process_obj.get_run_completion_date_no_format().date()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:                    string_message = experiment_name + ' :  No Run completion date defined '
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:                    logger.debug ('%s : Aborting the process. No Run completion date was defined', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:        run_process_obj.set_run_bcl2fastq_finished_date(bcl2fastq_finish_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:        logger.info('%s : Updated to Processed Bcl2Fastq state', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:        finish_date = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:        result_set_finish_date = run_process_obj.set_run_finish_date(finish_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_crontab_manage_run_states.py:        # Update the run state to completed
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:from iSkyLIMS_wetlab.utils.generic_functions import check_valid_date_format, get_configuration_value
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:def get_researcher_statistics(researcher_name, start_date, end_date):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:        start_date          # start date to collect statistics
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:        end_date            # end date for collecting statistics
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:    if start_date != '' and not check_valid_date_format(start_date):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:    if end_date != '' and not check_valid_date_format(start_date):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:        # check if start and end date are present in the form
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:        if start_date != '' and end_date !='':
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:            sample_objs= sample_objs.filter(runProcess_id__state__runStateName__range=(start_date, end_date))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:        elif start_date != '':
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:            sample_objs = sample_objs.filter(runProcess_id__state__runStateName__gte = start_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:        elif end_date != '':
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:            sample_objs = sample_objs.filter(runProcess_id__state__runStateName__lte = end_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/handling_statistics.py:                proj_data.append([project_name, p_researcher_date[sequencer][project_name], p_researcher_lib_kit[sequencer][project_name],
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:            library_prep_obj.set_state('Updated parameters')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:            library_prep_obj.set_state('Updated additional kits')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        # Update the sample state to "Create Pool"
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        - Updated parameters
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        - Updated additional Index
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:                elif lib_prep_obj_state == 'Updated parameters':
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:                    if not 'lib_prep_updated_param' in samples_in_lib_prep:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:                        samples_in_lib_prep['lib_prep_updated_param'] = {}
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:                    if not protocol_name in samples_in_lib_prep['lib_prep_updated_param']:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:                        samples_in_lib_prep['lib_prep_updated_param'][protocol_name] = []
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:                    samples_in_lib_prep['lib_prep_updated_param'][protocol_name].append(lib_prep_param_data)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:                elif lib_prep_obj_state == 'Updated additional kits':
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:                samples_in_lib_prep.update(get_configuration_sequencers_data())
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:    user_ids =  validate_userid_in_user_iem_file(file_read, user_id_list)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:def validate_sample_sheet_data (input_data ):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        The function checks if library preparation samples are defined are they are in Updated additional kits state ,
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        if not LibraryPreparation.objects.filter(sampleNameInSampleSheet__exact = sample, libPrepState__libPrepState__exact = 'Updated additional kits').exists():
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:    return 'Validated'
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        and updated the library preparation sample with index information.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        It updated also the userid field.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        if LibraryPreparation.objects.filter(sampleNameInSampleSheet__exact = sample_name, libPrepState__libPrepState__exact = 'Updated additional kits').exists():
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:            lib_prep_obj = LibraryPreparation.objects.filter(sampleNameInSampleSheet__exact = sample_name, libPrepState__libPrepState__exact = 'Updated additional kits').last()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:            lib_prep_obj.update_library_preparation_with_indexes(lib_prep_data)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:            # Update library preparation and sample state
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        user_sample_sheet_obj.update_confirm_used(True)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        Then store the libraryPreparation data for each sample and update the sample state to "library Preparation"
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        and will return the updated value to use
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:        Then store the libraryPreparation data for each sample and update the sample state to "library Preparation"
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:def update_batch_lib_prep_sample_state(lib_prep_ids,  sample_state):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/library_preparation.py:def update_library_preparation_for_reuse(sample):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        run_completion_date # date and time of the completion
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        status_run and run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    run_completion_date =''
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        return status_run, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        string_completion_date = ' '.join(last_log_time)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        run_completion_date = datetime.datetime.strptime(string_completion_date, '%Y-%m-%d %H:%M:%S.%f')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    return status_run, run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        updated with a new row having the parsed data
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        projects_to_update # list of projects that belong to the same run
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    ## updating the date fetched from the Date tag for run and project
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    date = p_run.find('Date').text
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    logger.info('%s : Found date %s', experiment_name, date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    run_date = datetime.datetime.strptime(date, '%y%m%d')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    return running_data, run_date, instrument
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:def save_new_miseq_run ( experiment_name, run_date, instrument, l_run_parameter) :
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        The information stored is :  experiment_name, run_date, sequencerModel
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        be empty . This field will be updated when
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        run_date        # date of run creation
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        logger.info('Updated the run date and sequencer used for the runProcess table ')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        run_process.set_run_date(run_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        logger.info('%s : RunProcess already create on database. Updated run date', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        run_process = RunProcess(runName=experiment_name,sampleSheet= '', run_date = run_date, index_library = '',
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    run_date_no_format = run_process_obj.get_run_date_no_format()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:                        baseSpaceFile = base_space_file, project_run_date = run_date_no_format,
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    logger.info('%s : Updated Projects table with the new projects found', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:def update_library_name_in_run (experiment_name, index_library_name) :
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        The function will update the library name in database
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        updated_library # return value after updating the library
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        updated_library
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    logger.debug('%s : Starting the function update_library_name_in_run', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    run.update_index_library(index_library_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    logger.info('%s : Updated_index library name : %s',experiment_name , index_library_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    logger.debug('%s : End function update_library_name_in_run',experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:def validate_sample_sheet (sample_sheet, experiment_name):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        to validate the file.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    logger.debug('%s : Starting the function validate_sample_sheet', experiment_name )
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        logger.debug('%s : End the function validate sample_sheet with error', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            logger.debug('%s : End the function validate sample_sheet with error', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            logger.debug('%s : Exiting the function validate sample_sheet with error', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            logger.debug('%s : End the function validate sample_sheet with error', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            logger.debug('%s : Exiting the function validate sample_sheet with error', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    logger.debug('%s : End the function validate_sample_sheet', experiment_name )
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        run_completion_date # completion date of the run
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        run_updated     # Updated run object
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        status_run, run_completion_date = check_miseq_completion_run (conn, experiment_name, log_folder)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            run_updated = run_name.set_run_state('Cancelled')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            run_updated = run_name.set_run_state('Processed Run')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            run_name.run_finish_date = run_completion_date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            logger.info('%s  : updated to processed run', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        run_completion_date # completion date of the run
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        run_updated     # Updated run object
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        status_run, run_completion_date = check_miseq_completion_run (conn, experiment_name, log_folder)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            run_updated = handling_errors_in_run (experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            run_updated = run_name.set_run_state('CANCELLED')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            run_updated.save()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            run_updated = RunProcess.objects.get(runName__exact = experiment_name).set_run_state('Processing run')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        validate_sample_sheet   # located as this file
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    running_parameters, run_date, instrument = nextseq_parsing_run_info_and_parameter_information(l_run_info, l_run_parameter, experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            new_run_process_obj = save_new_miseq_run (experiment_name, run_date, instrument, l_run_parameter)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:    # Update the running parameter table with the information
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:        if validate_sample_sheet (l_sample_sheet, experiment_name) :
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            updated_library_name = update_library_name_in_run (experiment_name, index_library_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/miseq_run_functions.py:            run_updated = handling_errors_in_run (experiment_name,'1')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:        updated_library # return value after updating the library
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:        run_updated = run_object_name.set_run_state('Processing Run')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:        run_updated = run_object_name.set_run_state('Processing Run')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:        updated_library # return value after updating the library
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:        # Get the date and time when the RunCompletionStatus is created
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:        run_completion_date = datetime.datetime.fromtimestamp(int(run_completion_attributes.create_time)).strftime('%Y-%m-%d %H:%M:%S')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:        run_completion_date = run_object_name.set_run_completion_date(run_completion_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:        logger.info('%s : Updated with completion date', experiment_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:        run_updated = run_object_name.set_run_state('Processed Run')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/nextseq_run_functions.py:            # Update run to Sample Sent
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:from datetime import date
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:    # update pool_id in each library_preparation belongs the new pool
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:    # update the number of samples
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:        The function get the date of today ( in format yyyy_mm_dd) and check if exists a pool_code_id with the same value.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:        today_date + subindex
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:    today_date = date.today().strftime("%Y_%m_%d")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:    if LibraryPool.objects.filter(poolCodeID__icontains = today_date).exists():
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:        lib_pool = LibraryPool.objects.filter(poolCodeID__icontains = today_date).last()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:        return str(today_date + '_' + str(last_seq_number + 1))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/pool_preparation.py:        return str(today_date + '_1')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:from iSkyLIMS_wetlab.utils.library_preparation import  get_lib_prep_obj_from_id, update_library_preparation_for_reuse, get_iem_version_for_library_prep_ids
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:from iSkyLIMS_core.utils.handling_samples import update_sample_reused, get_sample_obj_from_sample_name, get_molecule_objs_from_sample, update_molecule_reused
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        #display_pools_for_run.update(result_compatibility)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    display_sample_information.update(get_stored_user_sample_sheet(lib_prep_ids))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    # update Reagents kits
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        pool_obj.update_run_name(new_run_obj)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:def collect_data_and_update_library_preparation_samples_for_run (data_form, user):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        Function collect the information in the form and update the library preparation
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        # keep the old value of the user sample sheet and update the library prepation
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        lib_prep_obj.update_library_preparation_with_indexes(confirmation_data)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    today_date = datetime.datetime.today().strftime("%Y%m%d_%H%M%S")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    file_name = str(experiment_name + today_date + '_for_basespace_'+ bs_lib + '.csv')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        today_date = datetime.datetime.today().strftime("%Y%m%d")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        container_id = str('B' + today_date + id_generator())
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    updated_info = bs_template.substitute(d)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    fh.write(updated_info)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    today_date = datetime.datetime.today().strftime("%Y%m%d_%H%M%S")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    file_name = str(exp_name_in_file + '_'+ today_date + '_' + SAMPLE_SHEET)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    today_date = datetime.datetime.today().strftime("%d/%m/%Y")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    d = {'investigator':fields['investigator'],'exp_name': fields['exp_name'] , 'date': today_date, 'application': fields['application'],
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    updated_info = ss_template.substitute(d)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    fh.write(updated_info)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    run_obj.update_sample_sheet(ss_file_full_path , ss_file_relative_path, file_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    display_sample_information['date'] = today_date = datetime.datetime.today().strftime("%Y%m%d")
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:            update_sample_reused(sample_obj.get_sample_id())
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:            update_molecule_reused(sample_obj.get_sample_id(), last_molecule_obj.get_molecule_code_id())
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:            update_library_preparation_for_reuse(samples_reused)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:#def update_index_in_sample_sheet(sample_sheet_data, lib_prep_ids) :
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        lib_prep_obj.update_i7_index(sample_sheet_data[lib_prep_ids[index_lib]]['index'])
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:            lib_prep_obj.update_i5_index(sample_sheet_data[lib_prep_ids[index_lib]]['index2'])
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        pools_to_update
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    pools_to_update = {}
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        pools_to_update['pools_available'] = {}
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:            if not platform in pools_to_update['pools_available']:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:                pools_to_update['pools_available'][platform] = []
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:            pools_to_update['pools_available'][platform].append(pool_obj)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        pools_to_update['defined_runs'] = LibraryPool.objects.filter(poolState__poolState__exact = 'Selected').exclude(runProcess_id = None).order_by('runProcess_id')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    return pools_to_update
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:def get_pool_info (pools_to_update):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        pools_to_update     # contains the pool objects split in pools_available and defined_runs
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    if 'pools_available' in pools_to_update:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        for platform, protocol_objs in  pools_to_update['pools_available'].items():
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    if 'defined_runs' in pools_to_update:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        for pool in pools_to_update['defined_runs']:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:                        data.append(run_kit_obj.get_expiration_date())
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:                        data.append(run_obj.get_run_generated_date())
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    pools_to_update = get_available_pools_for_run()
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:    if pools_to_update:
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        display_pools_for_run = get_pool_info(pools_to_update)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        update_usage_user_lot_kit       # located at iSkyLIMS_core.utils.handoling_commercial_kits
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:        user_reagents_kit_objs.append(update_usage_user_lot_kit(form_data[kit_name]))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:                #lib_prep_obj.update_lib_preparation_info_in_reuse_state(extracted_data)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:                new_library_preparation = lib_prep_obj.update_lib_preparation_info_in_reuse_state(extracted_data, new_user_s_sheet_obj, single_paired , read_length)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/run_preparation.py:                #new_library_preparation = LibraryPreparation.objects.update_library_preparation(extracted_data)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        The function will get the option of reprocessing sample and it updates the sample state for reprocessing.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        update_sample_reused    # located at iSkyLIMS_core/utils/handling_samples.py
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        update_molecule_reused  # located at iSkyLIMS_core/utils/handling_samples.
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        sample_obj =  update_sample_reused(reprocess_sample_id)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:                molecule_obj = update_molecule_reused(reprocess_sample_id, molecule_code_id)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:                sample_obj = update_sample_reused(reprocess_sample_id)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        sample_obj = update_sample_reused(reprocess_sample_id)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        molecule_obj = update_molecule_reused(reprocess_sample_id, molecule_code_id)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:            data.append(run_obj.get_run_finish_date())
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:def search_run_samples(sample_name, user_name, start_date, end_date):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        start_date      # date from starting the search
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        end_date        # date from ending the search
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:    if start_date !='' and end_date != '':
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        run_sample_founds = run_sample_founds.filter(generated_at__range=(start_date, end_date ))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:    if start_date !='' and end_date  == '':
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:        run_sample_founds = run_sample_founds.filter(generated_at__gte = start_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:    if start_date =='' and end_date  != '':
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_functions.py:            run_sample_founds = run_sample_founds.filter(generated_at__lte = end_date )
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:from datetime import datetime
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:def validate_userid_in_user_iem_file (file_read, user_id_list):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:    # update sample sheet data
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:    sample_sheet_data.update(get_samples_in_sample_sheet(file_lines))
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:        date_found = re.search('^Date',line)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:        if date_found :
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:            date_line = line.split(',')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:            temp_date = date_line[1].split('/')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:            if len (temp_date[2]) == 2 :
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:                 year_four_digits = '20' + temp_date[2]
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:                 temp_date[2] = year_four_digits
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:                 date_line[1] = '/'.join(temp_date)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:                date_object = datetime.datetime.strptime(date_line[1],'%m/%d/%Y')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:                    date_object = datetime.datetime.strptime(date_line[1],'%d/%m/%Y')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:                    date_object = datetime.datetime.strptime(date_line[1],'%Y/%m/%d')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:            date_sample = date_object.strftime('%Y%m%d')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:            date_found = False
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:    # containerID build on the last Letter Well and the date in the sample sheet plus 6 randon characters to have unique value
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:    container = str(letter_well + date_sample +id_generator() )
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:def update_library_kit_field (library_file_name, library_kit_name, library_name):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:def update_sample_sheet (in_file, experiment_name):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/sample_sheet_utils.py:        in_file # sample sheet file to be updated
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/testing_wetlab_configuration.py:from iSkyLIMS_wetlab.utils.update_run_state import search_update_new_runs
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/testing_wetlab_configuration.py:    search_update_new_runs(run_test_name)
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/update_run_state.py:def search_update_new_runs (request_reason):
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/update_run_state.py:    #process_run_file_update = False
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/update_run_state.py:        logger.info('Sucessfully  SAMBA connection for search_update_new_runs')
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/update_run_state.py:        string_message = 'Unable to open SAMBA connection for the process search update runs'
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/update_run_state.py:                # we update the run process file with this run and continue  with the next item
/srv/iSkyLIMS/iSkyLIMS_wetlab/utils/update_run_state.py:        string_message = 'Unable to open SAMBA connection for the process search update runs'
