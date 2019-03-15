DROP TABLE IF EXISTS DMR.DMR_TP_ORDERRELEASE;
CREATE TABLE IF NOT EXISTS DMR.DMR_TP_ORDERRELEASE(
year                          bigint                             COMMENT  '�ƻ���',
year_month                    bigint                             COMMENT  '�ƻ��·�',
date                          bigint                             COMMENT  '�ƻ�����',

arrive_year                   string                             COMMENT  '�ﵽ��',
ARRIVE_MONTH                  STRING                             COMMENT  '�����·�',
arrive_day                    string                             COMMENT  '��������',

base_id                       string                             COMMENT  '����',
base_name                     string                             COMMENT  '��������',
brand_id                      string                             COMMENT  'Ʒ��',
brand_name                    string                             COMMENT  'Ʒ������',
change_address                string                             COMMENT  '������ճ���ַ',
dest_cty_id                   string                             COMMENT  'Ŀ�ĵس���/��������',
dest_location_id              string                             COMMENT  'Ŀ�ĵ�',
dest_location_type            string                             COMMENT  'Ŀ�ĵ�����',
dest_prvn_id                  string                             COMMENT  'Ŀ�ĵ�ʡ',
dlr_id                        string                             COMMENT  '������ID',
dlr_name                      string                             COMMENT  '����������',

dlvr_year                     string                             comment  '������',
dlvr_month                    string                             comment  '�����·�',
dlvr_day                      string                             COMMENT  '��������',

dms_pickup_year               string                             comment  'DMS�ճ���',
dms_pickup_month              string                             comment  'DMS�ճ��·�',
dms_pickup_day                string                             COMMENT  'DMS�ճ�����',

factory_transportmode         string                             COMMENT  '���������˷�ʽ',
factory_transportmodename     string                             COMMENT  '���������˷�ʽ����',
first_supplier                string                             COMMENT  '�׶�������',
first_transportmode           string                             COMMENT  '�׶η��˷�ʽ',
first_transportmodename       string                             COMMENT  '�׶η��˷�ʽ����',
fixed_itinerary_gid           string                             COMMENT  '·����·',
is_known_shipper              string                             COMMENT  '��;��Ʊ',

leave_cq_year                 string                             comment  '������',
leave_cq_month                string                             comment  '�����·�',
leave_cq_day                  string                             COMMENT  '��������',

model_id                      string                             COMMENT  '����',
oc_id                         string                             COMMENT  '��Ӫ����',
oc_name                       string                             COMMENT  '��Ӫ��������',
on_passage_days               string                             COMMENT  '��;����',
or_dealername                 string                             COMMENT  '�ճ���λOR_DEALERNAME',
or_dest_address               string                             COMMENT  '�ճ���ַOR_DEST_ADDRESS',
or_distributorname            string                             COMMENT  '��Ʊ��λOR_DISTRIBUTORNAME',
or_plan_type                  string                             COMMENT  'CMAL/ZC.OR_PLAN_TYPE',
or_shipdesc                   string                             COMMENT  '����˵��OR_SHIPDESC',
or_transfer_address           string                             COMMENT  '��ת��ַOR_TRANSFER_ADDRESS',
order_release_gid             string                             COMMENT  'OTM����',
order_staus                   string                             COMMENT  '����״̬',
out_notorder_num              decimal(32,8)                      COMMENT  '����δ������',

proj_name                     string                             COMMENT  '��Ŀ����',
rgn_id                        string                             COMMENT  '����',
rgn_name                      string                             COMMENT  '��������',
second_supplier               string                             COMMENT  '�ζ�������',
segment                       string                             COMMENT  '�δ�',
source_code                   string                             COMMENT  'Դϵͳ��ʶ',
source_location_id            string                             COMMENT  'ʼ����',
source_location_type          string                             COMMENT  'ʼ��������',
src_cty_id                    string                             COMMENT  'ʼ���س���/��������',
src_prvn_id                   string                             COMMENT  'ʼ����ʡ',
transfer_station              string                             COMMENT  '��ת��֯����',
transportstatus               string                             COMMENT  '����״̬',
vin                           string                             COMMENT  'VIN��'


) 
COMMENT '���䶩������'
PARTITIONED BY(PART_SC STRING COMMENT  '������Դ',PART_DT STRING COMMENT  '����ʱ��')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;