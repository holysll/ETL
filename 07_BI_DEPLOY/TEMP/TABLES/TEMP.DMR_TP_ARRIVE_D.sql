DROP TABLE IF EXISTS TEMP.DMR_TP_ARRIVE_D;
CREATE TABLE IF NOT EXISTS TEMP.DMR_TP_ARRIVE_D(
PERIOD_WID                    STRING                             COMMENT  '�ڼ�ID',
MONTH_ID                       STRING                             COMMENT'����id',

oc_id                string                            comment'��Ӫ����ID',
oc_name                string                            comment'��Ӫ��������',
rgn_id             string                             COMMENT  '����ID',
rgn_name             string                             COMMENT  '��������',

base_id            string                               COMMENT  '����ID',
base_name            string                               COMMENT  '��������',
proj_id                string                             COMMENT  '��ĿID',
proj_name               string                             COMMENT  '��Ŀ����',


dest_prvn_id                   STRING                             COMMENT  'Ŀ�ĵ�ʡ��ID',
TPMODE_id                 STRING                             COMMENT  '���䷽ʽID(������һ�η��˷�ʽ)',
TPMODE_NAME           STRING                             COMMENT'���䷽ʽ����',
BIZ_QTY                       BIGINT                             COMMENT  'ҵ����',
TOTAL_ARRIVE_NUM              BIGINT                             COMMENT  '�ܵ���',
ONTIME_ARRIVE_NUM             BIGINT                             COMMENT  '׼����',
LATE_ARRIVE_NUM               BIGINT                             COMMENT  '����',
ADVANCE_ARRIVE_NUM            BIGINT                             COMMENT  '�絽��',
ONTIME_ARRIVE_RATE            decimal(32,8)                      COMMENT  '׼����',
ON_PASSAGE_NUM                BIGINT                             COMMENT  '��;��',
ON_PASSAGE_OUTTIME_NUM        BIGINT                             COMMENT  '��;��ʱ��',
INSERT_DT                    STRING                             COMMENT  '����ʱ��'
) 
COMMENT '���䵽��ͳ��'
PARTITIONED BY(PART_SC STRING COMMENT  '������Դ',PART_DT STRING COMMENT  '����ʱ��')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
