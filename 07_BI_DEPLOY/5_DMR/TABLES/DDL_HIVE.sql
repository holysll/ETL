DROP TABLE IF EXISTS DMR.DMR_OV_BIZ_QTY_D;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_BIZ_QTY_D(
DATE_ID                       STRING                             COMMENT  '����ID',
ORG_TYPE                      STRING                             COMMENT  '��֯����',
ORG_ID                        STRING                             COMMENT  '��֯ID',
ORG_NAME                      STRING                             COMMENT  '��֯����',
CUR_D_SHIP_QTY                BIGINT                             COMMENT  '���շ�����',
LST_D_SHIP_QTY                BIGINT                             COMMENT  '���շ�����',
CUR_D_SHIP_QTY_HB             DECIMAL(32,8)                      COMMENT  '���շ���������',
CUR_D_SHIP_QTY_HB_FLAG        STRING                             COMMENT  '���շ���������������־(0���� 1�½� 2���䣩',
CUR_D_STOCK_IN_QTY            BIGINT                             COMMENT  '���������',
LST_D_STOCK_IN_QTY            BIGINT                             COMMENT  '���������',
CUR_D_STOCK_IN_QTY_HB         DECIMAL(32,8)                      COMMENT  '�������������',
CUR_D_STOCK_IN_QTY_HB_FLAG    STRING                             COMMENT  '�������������������־(0���� 1�½� 2���䣩',
CUR_M_SHIP_QTY                BIGINT                             COMMENT  '���·�����',
LST_M_SHIP_QTY                BIGINT                             COMMENT  '���·�����',
CUR_M_STOCK_IN_QTY            BIGINT                             COMMENT  '���������',
LST_M_STOCK_IN_QTY            BIGINT                             COMMENT  '���������',
CUR_Y_SHIP_QTY                BIGINT                             COMMENT  '���귢����',
CUR_Y_STOCK_IN_QTY            BIGINT                             COMMENT  '���������',
CUR_D_SHIP_CNT                BIGINT                             COMMENT  '���շ�����(���Σ�',
LST_D_SHIP_CNT                BIGINT                             COMMENT  '���շ�����(���Σ�',
CUR_D_STOCK_IN_CNT            BIGINT                             COMMENT  '���������(���Σ�',
LST_D_STOCK_IN_CNT            BIGINT                             COMMENT  '���������(���Σ�',
CUR_M_SHIP_CNT                BIGINT                             COMMENT  '���·�����(���Σ�',
LST_M_SHIP_CNT                BIGINT                             COMMENT  '���·�����(���Σ�',
CUR_M_STOCK_IN_CNT            BIGINT                             COMMENT  '���������(���Σ�',
LST_M_STOCK_IN_CNT            BIGINT                             COMMENT  '���������(���Σ�',
CUR_Y_SHIP_CNT                BIGINT                             COMMENT  '���귢����(���Σ�',
CUR_Y_STOCK_IN_CNT            BIGINT                             COMMENT  '���������(���Σ�',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR������ҵ������'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_CONVECTION_RANK_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_CONVECTION_RANK_M(
MONTH_ID                      STRING                             COMMENT  '�·�ID',
CITY_ID                       STRING                             COMMENT  '����ID',
CITY_NAME                     STRING                             COMMENT  '��������',
ASC_RANK_ID                   BIGINT                             COMMENT  '����������',
DESC_RANK_ID                  BIGINT                             COMMENT  '����������',
FORWARD_QTY                   BIGINT                             COMMENT  '˳������',
BACKRWARD_QTY                 BIGINT                             COMMENT  '��������',
CONVECTION_QTY                BIGINT                             COMMENT  '������',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR��������·��������'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_OPERATE_ONE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_OPERATE_ONE_M(
YEAR_ID                       STRING                             COMMENT  '���ID',
MONTH_ID                      STRING                             COMMENT  '�·�ID',
TIME_RATE                     decimal(32,8)                      COMMENT  'ʱ�����',
CUR_M_BIZ_INCOME_AMT          decimal(32,8)                      COMMENT  '����Ӫҵ������',
CUR_Y_BIZ_INCOME_AMT          decimal(32,8)                      COMMENT  '����Ӫҵ������',
CUR_Y_BIZ_INCOME_FINISH_RATE  decimal(32,8)                      COMMENT  '����Ӫҵ���������',
CUR_Y_BIZ_INCOME_FLAG         STRING                             COMMENT  '����Ӫҵ����������־��0���� 1��������',
CUR_M_BIZ_INCOME_TB_RATE      decimal(32,8)                      COMMENT  '����Ӫҵ����ͬ��',
CUR_M_BIZ_INCOME_HB_RATE      decimal(32,8)                      COMMENT  '����Ӫҵ���뻷��',
CUR_M_PROFIT_AMT              decimal(32,8)                      COMMENT  '����������',
CUR_Y_PROFIT_AMT              decimal(32,8)                      COMMENT  '����������',
CUR_Y_PROFIT_PLAN_FINISH_RATE decimal(32,8)                      COMMENT  '��������ƻ������',
CUR_Y_PROFIT_FLAG             STRING                             COMMENT  '��������������־��0���� 1��������',
CUR_M_PROFIT_TB_RATE          decimal(32,8)                      COMMENT  '��������ͬ��',
CUR_M_PROFIT_HB_RATE          decimal(32,8)                      COMMENT  '�������󻷱�',
CUR_M_RECV_RFND_AMT           decimal(32,8)                      COMMENT  '����Ӧ���˿�ؿ���',
CUR_Y_RECV_RFND_AMT           decimal(32,8)                      COMMENT  '����Ӧ���˿�ؿ���',
CUR_Y_RECV_RFND_FINISH_RATE   decimal(32,8)                      COMMENT  '����Ӧ���˿�ؿ������',
CUR_Y_RECV_RFND_FLAG          STRING                             COMMENT  '����Ӧ���˿�ؿ�������־��0���� 1��������',
CUR_M_RECV_RFND_TB_RATE       decimal(32,8)                      COMMENT  '����Ӧ���˿�ؿ�ͬ��',
CUR_M_RECV_RFND_HB_RATE       decimal(32,8)                      COMMENT  '����Ӧ���˿�ؿ��',
CUR_M_INCOME_FNSH_RATE       decimal(32,8)                      COMMENT  '�������������',
CUR_M_INCOME_RFND_RATE       decimal(32,8)                      COMMENT  '���»ؿ������',
CUR_M_PROFIT_FNSH_RATE       decimal(32,8)                      COMMENT  '���������ܶ�������',
SORTING       decimal(32,0)                      COMMENT  '�����־Ĭ��ֵ��0',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR��������Ӫ����1'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_OPERATE_TWO_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_OPERATE_TWO_M(
MONTH_ID                      STRING                             COMMENT  '�·�ID',
ORG_ID                        STRING                             COMMENT  '��֯ID',
ORG_TYPE                      STRING                             COMMENT  '��֯����',
ORG_NAME                      STRING                             COMMENT  '��֯����',
CUR_M_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '�����г���չ������',
LST_TQ_M_MKT_EXP_INCOME_AMT   DECIMAL(32,8)                      COMMENT  'ȥ��ͬ�����г���չ������',
CUR_M_PLAN_MKT_EXP_INCOME_AMT DECIMAL(32,8)                      COMMENT  '���¼ƻ��г���չ������',
CUR_M_BIZ_INCOME_AMT          DECIMAL(32,8)                      COMMENT  '����Ӫҵ������',
CUR_M_HR_FEE_RATE             DECIMAL(32,8)                      COMMENT  '�������·�����',
CUR_M_HR_FEE_RATE_TARGT       DECIMAL(32,8)                      COMMENT  '�������·�����Ŀ��ֵ',
CUR_M_BIZ_QTY                 BIGINT                             COMMENT  '����ҵ����',
CUR_M_BIZ_INCOME_HB_RATE      DECIMAL(32,8)                      COMMENT  '����Ӫҵ���뻷��',
CUR_M_PROFIT_AMT              DECIMAL(32,8)                      COMMENT  '����������',
LST_TQ_M_PROFIT_AMT           DECIMAL(32,8)                      COMMENT  'ȥ��ͬ����������',
CUR_M_PROFIT_GROW_RATE        DECIMAL(32,8)                      COMMENT  '��������������',
CUR_M_CA_ONTIME_RATE          DECIMAL(32,8)                      COMMENT  '���³���׼����',
CUR_M_CA_ONTIME_RATE_TARGT    DECIMAL(32,8)                      COMMENT  '���³���׼����Ŀ��',
CUR_M_FT_ONTIME_RATE          DECIMAL(32,8)                      COMMENT  '���¸���׼����',
CUR_M_FT_ONTIME_RATE_TARGT    DECIMAL(32,8)                      COMMENT  '���¸���׼����Ŀ��',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR��������Ӫ����2'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_SHIPTYPE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_SHIPTYPE_M(
MONTH_ID                      STRING                             COMMENT  '�·�ID',
SHIP_TYPE                     STRING                             COMMENT  '���˷�ʽ',
CUR_Y_SHIP_QTY                BIGINT                             COMMENT  '���귢����',
CUR_Y_SHIP_QTY_RATE           DECIMAL(32,8)                      COMMENT  '���귢�˷�ʽռ��',
LST_TQ_SHIP_QTY               STRING                             COMMENT  'ȥ�귢����',
LST_TQ_SHIP_QTY_RATE          DECIMAL(32,8)                      COMMENT  'ȥ�귢�˷�ʽռ��',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR�����˷��˷�ʽ'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_BIZCNT_REALTIME_D;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_BIZCNT_REALTIME_D(
BRAND_ID                      STRING                             COMMENT  'Ʒ��ID',
BRAND_NAME                    STRING                             COMMENT  'Ʒ������',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR�ƶ�������ʵʱҵ�����챨'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_CM_USER_AUTH;
CREATE TABLE IF NOT EXISTS DMR.DMR_CM_USER_AUTH(
OC_ID                         STRING                             COMMENT  '��Ӫ����ID',
OC_NAME                       STRING                             COMMENT  '��Ӫ��������',
RGN_ID                        STRING                             COMMENT  '����ID',
RGN_NAME                      STRING                             COMMENT  '��������',
BASE_ID                       STRING                             COMMENT  '����ID',
BASE_NAME                     STRING                             COMMENT  '��������',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR�û�Ȩ�޿��Ʊ�'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_TP_OPERATE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_TP_OPERATE_M(
DATE_ID                       STRING                             COMMENT  '����ID',
RGN_ID                        STRING                             COMMENT  '����ID',
RGN_NAME                      STRING                             COMMENT  '��������',
BASE_ID                       STRING                             COMMENT  '����ID',
BASE_NAME                     STRING                             COMMENT  '��������',
BRAND_ID                      STRING                             COMMENT  'Ʒ��ID',
BRAND_NAME                    STRING                             COMMENT  'Ʒ������',
CUR_D_TRANS_BIZ_QTY           BIGINT                             COMMENT  '��������ҵ����',
CUR_M_TRANS_BIZ_QTY           BIGINT                             COMMENT  '��������ҵ����',
CUR_M_FNSH_RATE               DECIMAL(32,8)                      COMMENT  '���������',
MONTH_HB_RATE                 DECIMAL(32,8)                      COMMENT  '�»���',
CUR_Y_TRANS_BIZ_QTY           BIGINT                             COMMENT  '��������ҵ����',
CUR_Y_FNSH_RATE               DECIMAL(32,8)                      COMMENT  '���������',
LST_D_QP_QTY                  BIGINT                             COMMENT  '������Ʊ��',
CUR_D_DUE_OUT_QTY             BIGINT                             COMMENT  '���մ�����',
LST_D_DLV_QTY                 BIGINT                             COMMENT  '���ս�����',
CUR_M_QP_QTY                  BIGINT                             COMMENT  '������Ʊ��',
CUR_D_ON_ROAD_QTY             BIGINT                             COMMENT  '������;��',
CUR_M_DLV_QTY                 BIGINT                             COMMENT  '���½�����',
CUR_Y_QP_QTY                  BIGINT                             COMMENT  '������Ʊ��',
CUR_D_ON_ROAD_OVT_QTY         BIGINT                             COMMENT  '������;��ʱ��',
CUR_Y_DLV_QTY                 BIGINT                             COMMENT  '���꽻����',
CUR_D_QP_FNSH_RATE            DECIMAL(32,8)                      COMMENT  '������Ʊ�����',
CUR_D_ON_ROAD_OVT_RATE        DECIMAL(32,8)                      COMMENT  '������;��ʱ��',
CUR_D_ONTIME_ARRIVE_RATE      DECIMAL(32,8)                      COMMENT  '����׼ʱ������',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR�������䷽ʽ�±���'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_FIN_CPT_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_FIN_CPT_M(
MONTH_ID                      STRING                             COMMENT  '�·�ID',
RGN_ID                        STRING                             COMMENT  '����ID',
RGN_NAME                      STRING                             COMMENT  '��������',
BASE_ID                       STRING                             COMMENT  '����ID',
BASE_NAME                     STRING                             COMMENT  '��������',
BRAND_ID                      STRING                             COMMENT  'Ʒ��ID',
BRAND_NAME                    STRING                             COMMENT  'Ʒ������',
CUR_M_QP_QTY                  BIGINT                             COMMENT  '������Ʊ��',
CUR_M_QP_PLAN_QTY             BIGINT                             COMMENT  '������Ʊ�ƻ���',
CUR_M_QP_FNSH_RATE            DECIMAL(32,8)                      COMMENT  '������Ʊ�����',
CUR_M_ONTIME_ARRIVE_QTY       BIGINT                             COMMENT  '����׼ʱ������',
CUR_M_DLV_QTY                 BIGINT                             COMMENT  '���½�����',
CUR_M_ONTIME_DLV_RATE         DECIMAL(32,8)                      COMMENT  '����׼ʱ������',
CUR_M_TRANS_BIZ_QTY           BIGINT                             COMMENT  '��������ҵ����',
CUR_M_TRANS_PLAN_QTY          BIGINT                             COMMENT  '��������ƻ���',
CUR_M_TRANS_FNSH_RATE         DECIMAL(32,8)                      COMMENT  '�������������',
CUR_M_MANUAL_TRANS_QTY        BIGINT                             COMMENT  '�����˹�������',
CUR_M_HIGHWAY_TRANS_QTY       BIGINT                             COMMENT  '���¹�·������',
CUR_M_WATERWAY_TRANS_QTY      BIGINT                             COMMENT  '����ˮ��������',
CUR_M_RAILWAY_TRANS_QTY       BIGINT                             COMMENT  '������·������',
CUR_M_INCOME_AMT              DECIMAL(32,8)                      COMMENT  '����������',
CUR_M_INCOME_PLAN_AMT         DECIMAL(32,8)                      COMMENT  '��������ƻ����',
CUR_M_INCOME_FNSH_RATE        DECIMAL(32,8)                      COMMENT  '�������������',
LST_M_INCOME_AMT              DECIMAL(32,8)                      COMMENT  '����������',
MONTH_INCOME_HB_RATE          DECIMAL(32,8)                      COMMENT  '�����뻷��',
LST_TQ_M_INCOME_AMT           DECIMAL(32,8)                      COMMENT  'ȥ��ͬ����������',
MONTH_INCOME_TB_RATE          DECIMAL(32,8)                      COMMENT  '������ͬ��',
CUR_Y_INCOME_AMT              DECIMAL(32,8)                      COMMENT  '����������',
CUR_Y_INCOME_PLAN_AMT         DECIMAL(32,8)                      COMMENT  '��������ƻ����',
CUR_Y_INCOME_FNSH_RATE        DECIMAL(32,8)                      COMMENT  '�������������',
CUR_M_PROFIT_AMT              DECIMAL(32,8)                      COMMENT  '����������',
CUR_M_PROFIT_PLAN_AMT         DECIMAL(32,8)                      COMMENT  '��������ƻ����',
CUR_M_PROFIT_FNSH_RATE        DECIMAL(32,8)                      COMMENT  '�������������',
LST_M_PROFIT_AMT              DECIMAL(32,8)                      COMMENT  '����������',
MONTH_PROFIT_HB_RATE          DECIMAL(32,8)                      COMMENT  '�����󻷱�',
LST_TQ_M_PROFIT_AMT           DECIMAL(32,8)                      COMMENT  'ȥ��ͬ����������',
MONTH_PROFIT_TB_RATE          DECIMAL(32,8)                      COMMENT  '������ͬ��',
CUR_Y_PROFIT_AMT              DECIMAL(32,8)                      COMMENT  '����������',
CUR_Y_PROFIT_PLAN_AMT         DECIMAL(32,8)                      COMMENT  '��������ƻ����',
CUR_Y_PROFIT_FNSH_RATE        DECIMAL(32,8)                      COMMENT  '�������������',
CUR_M_RECV_AMT                DECIMAL(32,8)                      COMMENT  '����Ӧ���˿���',
CUR_M_RECV_PLAN_AMT           DECIMAL(32,8)                      COMMENT  '����Ӧ���˿�ƻ����',
CUR_M_RECV_FNSH_RATE          DECIMAL(32,8)                      COMMENT  '����Ӧ���˿������',
LST_M_RECV_AMT                DECIMAL(32,8)                      COMMENT  '����Ӧ���˿���',
MONTH_RECV_HB_RATE            DECIMAL(32,8)                      COMMENT  '��Ӧ���˿��',
LST_TQ_M_RECV_AMT             DECIMAL(32,8)                      COMMENT  'ȥ��ͬ����Ӧ���˿���',
MONTH_RECV_TB_RATE            DECIMAL(32,8)                      COMMENT  '��Ӧ���˿�ͬ��',
CUR_Y_RECV_AMT                DECIMAL(32,8)                      COMMENT  '����Ӧ���˿���',
CUR_Y_RECV_PLAN_AMT           DECIMAL(32,8)                      COMMENT  '����Ӧ���˿�ƻ����',
CUR_Y_RECV_FNSH_RATE          DECIMAL(32,8)                      COMMENT  '����Ӧ���˿������',
CUR_M_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '�����г���չ������',
CUR_M_MKT_EXP_INCOME_PLAN_AMT DECIMAL(32,8)                      COMMENT  '�����г���չ����ƻ����',
CUR_M_MKT_EXP_INCOME_FNSH_RATE DECIMAL(32,8)                      COMMENT  '�����г���չ���������',
LST_M_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '�����г���չ������',
MONTH_MKT_EXP_INCOME_HB_RATE  DECIMAL(32,8)                      COMMENT  '���г���չ���뻷��',
LST_TQ_M_MKT_EXP_INCOME_AMT   DECIMAL(32,8)                      COMMENT  'ȥ��ͬ�����г���չ������',
MONTH_MKT_EXP_INCOME_TB_RATE  DECIMAL(32,8)                      COMMENT  '���г���չ����ͬ��',
CUR_Y_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '�����г���չ������',
CUR_Y_MKT_EXP_INCOME_PLAN_AMT DECIMAL(32,8)                      COMMENT  '�����г���չ����ƻ����',
YEAR_MKT_EXP_INCOME_FNSH_RATE DECIMAL(32,8)                      COMMENT  '���г���չ���������',
LST_Y_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  'ȥ���г���չ������',
YEAR_MKT_EXP_INCOME_HB_RATE   DECIMAL(32,8)                      COMMENT  '���г���չ���뻷��',
LST_TQ_Y_MKT_EXP_INCOME_AMT   DECIMAL(32,8)                      COMMENT  'ȥ��ͬ�����г���չ������',
YEAR_MKT_EXP_INCOME_TB_RATE   DECIMAL(32,8)                      COMMENT  '���г���չ����ͬ��',
CUR_Y_INCOME_TB_RATE          DECIMAL(32,8)                      COMMENT  '��������ͬ��',
CUR_Y_INCOME_HB_RATE          DECIMAL(32,8)                      COMMENT  '�������뻷��',
CUR_Y_PROFIT_TB_RATE          DECIMAL(32,8)                      COMMENT  '��������ͬ��',
CUR_Y_PROFIT_HB_RATE          DECIMAL(32,8)                      COMMENT  '�������󻷱�',
CUR_Y_RECV_TB_RATE            DECIMAL(32,8)                      COMMENT  '����Ӧ���˿�ͬ��',
CUR_Y_RECV_HB_RATE            DECIMAL(32,8)                      COMMENT  '����Ӧ���˿��',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR�ƶ�����������������'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_TRANSPORT_MODE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_TRANSPORT_MODE_M(
MONTH_ID                      STRING                             COMMENT  '�·�ID',
RGN_ID                        STRING                             COMMENT  '����ID',
RGN_NAME                      STRING                             COMMENT  '��������',
BASE_ID                       STRING                             COMMENT  '����ID',
BASE_NAME                     STRING                             COMMENT  '��������',
BRAND_ID                      STRING                             COMMENT  'Ʒ��ID',
BRAND_NAME                    STRING                             COMMENT  'Ʒ������',
SHIP_TYPE                     STRING                             COMMENT  '���˷�ʽ',
CUR_M_TRANS_QTY               BIGINT                             COMMENT  '����������',
SHIP_TYPE_RATIO               DECIMAL(32,8)                      COMMENT  '���˷�ʽռ��',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR�������䷽ʽ�±���'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_HR_FEE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_HR_FEE_M(
MONTH_ID                      STRING                             COMMENT  '�·�ID',
CUR_M_INCOME_AMT              DECIMAL(32,8)                      COMMENT  '����������',
TOTAL_MANPOWER_COST_AMT       DECIMAL(32,8)                      COMMENT  '�������ɱ����',
FACT_FEE_RATE                 DECIMAL(32,8)                      COMMENT  'ʵ�ʷ�����',
CUR_M_FEE_RATE_INDEX          DECIMAL(32,8)                      COMMENT  '���·�����ָ��',
INSERT_TIME                   STRING                             COMMENT  '����ʱ��',
UPDATE_TIME                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'DMR�ƶ����������·���'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;