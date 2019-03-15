DROP TABLE IF EXISTS TEMP.DMR_TP_QP_PROGRESS;
CREATE TABLE IF NOT EXISTS TEMP.DMR_TP_QP_PROGRESS(
PERIOD_WID                    STRING                             COMMENT  '�ڼ�                 ',
month_id                      STRING                             COMMENT  '����id',
rgn_id                        string                             COMMENT  '����ID',
rgn_name                      string                             COMMENT  '��������',
base_id                       string                             COMMENT  '����ID',
base_name                     string                             COMMENT  '��������',
brand_id                      string                             COMMENT  'Ʒ��ID',
brand_name                    string                             COMMENT  'Ʒ������',
proj_id                       string                             COMMENT  '��ĿID',
proj_name                     string                             COMMENT  '��Ŀ����',
dest_prvn_id                  STRING                             COMMENT  'Ŀ�ĵ�ʡ��',
tpmode_id                     string                             COMMENT  '���˷�ʽid����һ�Σ�',
tpmode_name               string                              comment'���˷�ʽ����',
CUR_TGT_QP_QTY                bigint                             COMMENT  '�¼ƻ���Ʊ��',
JHQPFYFSZB                    DECIMAL(32,8)                      COMMENT  '�ƻ���Ʊ���˷�ʽռ��',
yljhqp                        bigint                             COMMENT  '���ۼƻ���Ʊ',
zrqp                          bigint                             COMMENT  '������Ʊ',
ylqp                          bigint                             COMMENT  '������Ʊ',
QPJD                          DECIMAL(32,8)                      COMMENT  '��Ʊ����',
SYRJQPL                       DECIMAL(32,8)                      COMMENT  'ʣ���վ���Ʊ��',
clxq                          DECIMAL(32,8)                      COMMENT  '��������',
zrsjfy                        bigint                             COMMENT  '����ʵ�ʷ���',
ylfy                          bigint                             COMMENT  '���۷���',
SJQPFYFSZB                    DECIMAL(32,8)                      COMMENT  'ʵ����Ʊ���˷�ʽռ��',
SJQPZQYBL                     DECIMAL(32,8)                      COMMENT  'ʵ����Ʊռȫ�¼ƻ���Ʊ����',
YLQPCY                        bigint                             COMMENT  '������Ʊ����',
INSERT_time                   STRING                             COMMENT  '����ʱ��'

) 
COMMENT 'PC������Ʊ����'
PARTITIONED BY(PART_SC STRING COMMENT  '������Դ',PART_DT STRING COMMENT  '����ʱ��')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
