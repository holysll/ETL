DROP TABLE IF EXISTS ODS_OA.STG_COL_SUMMARY;
create table ODS_OA.STG_COL_SUMMARY
(
  id                    bigint,
  state                 bigint,
  subject               string,
  deadline              bigint,
  col_type              bigint,
  can_archive           bigint,
  can_modify            bigint,
  can_due_reminder      bigint,
  can_forward           bigint,
  can_edit              bigint,
  can_track             bigint,
  remind_interval       bigint,
  project_id            bigint,
  create_date           string,
  start_date            string,
  finish_date           string,
  is_audited            bigint,
  archive_id            bigint,
  start_member_id       bigint,
  process_id            string,
  case_id               bigint,
  advance_remind        bigint,
  identifier            string,
  forward_member        string,
  templete_id           bigint,
  webservice_code       string,
  body_type             string,
  form_recordid         bigint,
  formid                bigint,
  form_appid            bigint,
  org_department_id     bigint,
  org_account_id        bigint,
  source                string,
  parentform_summaryid  bigint,
  can_edit_attachment   bigint,
  vouch                 bigint,
  over_worktime         bigint,
  run_worktime          bigint,
  over_time             bigint,
  run_time              bigint,
  can_autostopflow      bigint,
  workflow_rule         string,
  is_cover_time         bigint,
  important_level       bigint,
  resent_time           bigint,
  newflow_type          bigint,
  deadline_datetime     string,
  current_nodes_info    string,
  can_merge_deal        bigint,
  advance_pigeonhole    string,
  can_any_merge         bigint,
  process_nodes_info    string,
  permission_account_id bigint,
  reply_counts          bigint
)
comment 'Эͬ����'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\036'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS ODS_OA.COL_SUMMARY;
create table ODS_OA.COL_SUMMARY
(
  id                    bigint,
  state                 bigint,
  subject               string,
  deadline              bigint,
  col_type              bigint,
  can_archive           bigint,
  can_modify            bigint,
  can_due_reminder      bigint,
  can_forward           bigint,
  can_edit              bigint,
  can_track             bigint,
  remind_interval       bigint,
  project_id            bigint,
  create_date           string,
  start_date            string,
  finish_date           string,
  is_audited            bigint,
  archive_id            bigint,
  start_member_id       bigint,
  process_id            string,
  case_id               bigint,
  advance_remind        bigint,
  identifier            string,
  forward_member        string,
  templete_id           bigint,
  webservice_code       string,
  body_type             string,
  form_recordid         bigint,
  formid                bigint,
  form_appid            bigint,
  org_department_id     bigint,
  org_account_id        bigint,
  source                string,
  parentform_summaryid  bigint,
  can_edit_attachment   bigint,
  vouch                 bigint,
  over_worktime         bigint,
  run_worktime          bigint,
  over_time             bigint,
  run_time              bigint,
  can_autostopflow      bigint,
  workflow_rule         string,
  is_cover_time         bigint,
  important_level       bigint,
  resent_time           bigint,
  newflow_type          bigint,
  deadline_datetime     string,
  current_nodes_info    string,
  can_merge_deal        bigint,
  advance_pigeonhole    string,
  can_any_merge         bigint,
  process_nodes_info    string,
  permission_account_id bigint,
  reply_counts          bigint
)
comment 'Эͬ����'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\036'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS ODS_OA.HIS_COL_SUMMARY;
create table ODS_OA.HIS_COL_SUMMARY
(
  id                    bigint,
  state                 bigint,
  subject               string,
  deadline              bigint,
  col_type              bigint,
  can_archive           bigint,
  can_modify            bigint,
  can_due_reminder      bigint,
  can_forward           bigint,
  can_edit              bigint,
  can_track             bigint,
  remind_interval       bigint,
  project_id            bigint,
  create_date           string,
  start_date            string,
  finish_date           string,
  is_audited            bigint,
  archive_id            bigint,
  start_member_id       bigint,
  process_id            string,
  case_id               bigint,
  advance_remind        bigint,
  identifier            string,
  forward_member        string,
  templete_id           bigint,
  webservice_code       string,
  body_type             string,
  form_recordid         bigint,
  formid                bigint,
  form_appid            bigint,
  org_department_id     bigint,
  org_account_id        bigint,
  source                string,
  parentform_summaryid  bigint,
  can_edit_attachment   bigint,
  vouch                 bigint,
  over_worktime         bigint,
  run_worktime          bigint,
  over_time             bigint,
  run_time              bigint,
  can_autostopflow      bigint,
  workflow_rule         string,
  is_cover_time         bigint,
  important_level       bigint,
  resent_time           bigint,
  newflow_type          bigint,
  deadline_datetime     string,
  current_nodes_info    string,
  can_merge_deal        bigint,
  advance_pigeonhole    string,
  can_any_merge         bigint,
  process_nodes_info    string,
  permission_account_id bigint,
  reply_counts          bigint
)
comment 'Эͬ����'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\036'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;