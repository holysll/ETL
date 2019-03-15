DROP TABLE DDOMTEST.DMR_KPI_INSTRUCTION purge;
CREATE TABLE DDOMTEST.DMR_KPI_INSTRUCTION(
  DISP_TYPE   VARCHAR2(60) ,
  MODUL_NAME   VARCHAR2(60) ,
  SUB_MODUL_NAME   VARCHAR2(60) ,
  DEPT_NAME   VARCHAR2(60) ,
  OWNER   VARCHAR2(60) ,
  DEFINE   VARCHAR2(2000) ,
  WARN_RULE   VARCHAR2(2000) 
);

COMMENT ON TABLE DDOMTEST.DMR_KPI_INSTRUCTION IS 'DMR指标说明信息';

COMMENT ON COLUMN DDOMTEST.DMR_KPI_INSTRUCTION.DISP_TYPE IS '展现方式';
COMMENT ON COLUMN DDOMTEST.DMR_KPI_INSTRUCTION.MODUL_NAME IS '模块';
COMMENT ON COLUMN DDOMTEST.DMR_KPI_INSTRUCTION.SUB_MODUL_NAME IS '子模块';
COMMENT ON COLUMN DDOMTEST.DMR_KPI_INSTRUCTION.DEPT_NAME IS '负责部门';
COMMENT ON COLUMN DDOMTEST.DMR_KPI_INSTRUCTION.OWNER IS 'Owner';
COMMENT ON COLUMN DDOMTEST.DMR_KPI_INSTRUCTION.DEFINE IS '定义';
COMMENT ON COLUMN DDOMTEST.DMR_KPI_INSTRUCTION.WARN_RULE IS '预警评判规则';

TRUNCATE TABLE DDOMTEST.DMR_KPI_INSTRUCTION;
insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('YD', '总览', '运输业务量', '财务科', '史春燕', '通过公司发运的整车数量合计，以基地打单量为准，单条线路多次中转按一次计算', '完成率<时间进度');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('YD', '总览', '财务概况', '财务科', '史春燕', '收入：经济利益流入；利润：经济利益净流入；应收账款：收款指标完成情况', '完成率<时间进度');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('YD', '总览', '市场拓展收入', '财务科', '史春燕', '通过公司发运的整车数量合计，以基地打单量为准，单条线路多次中转按一次计算', '完成率<时间进度');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('YD', '总览', '人事费用率', '财务科', '史春燕', '整车物流中心人力总成本占整车总收入的比例', '完成率<时间进度');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('YD', '运输', '发运方式', '财务科', '史春燕', '公、铁、水、人、自提各发运方式数量占总发运量比例', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第一屏', '累计发运量', '财务科', '史春燕', '本年度截止当日当时的全部订单发运数（辆次）', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第一屏', '大区累计发运量', '财务科', '史春燕', '当月截止当日的全部订单发运数（辆次）', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第一屏', '大区累计入库量', '财务科', '史春燕', '当月截止当日的全部入库数（辆次）', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第一屏', '月累计线路对流量排名', '财务科', '史春燕', '当月截止当日的对流量最好和最差各排名TOP10', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第一屏', '当日业务量', '财务科', '史春燕', '当日各个基地、中转站的入库量和发运量（辆次）', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第二屏', '营业收入', '财务科', '史春燕', '当年截止当月整车物流中心的营业收入和营业外收入的总和', '完成率<时间进度');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第二屏', '利润总额', '财务科', '史春燕', '当年截止当月整车物流中心的整体利润', '完成率<时间进度');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第二屏', '应收账款回款', '财务科', '史春燕', '当年截止当月整车物流中心的应收账款回款情况', '完成率<目标值');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第三屏', '年度市场拓展收入', '财务科', '史春燕', '当年市场部市场拓展收入情况', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第三屏', '年度人事费用率', '财务科', '史春燕', '整车物流中心人力总成本占整车总收入的比例', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第三屏', '发运方式占比', '发运管理科', '李晓奔', '当年截止当月公、铁、水、人、自提各发运方式占比', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第三屏', '大区业务量和收入情况', '财务科', '史春燕', '整车物流中心各个大区当月发运数和收入金额的情况', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第三屏', '各大区利润情况', '财务科', '史春燕', '整车物流中心各个大区当月利润情况', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP', '总览第三屏', '大区准时到达率', '发运管理科', '刘维维', '当月在规定时间内到达的车辆占总到达车辆的比例', '无');

insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP','总览第四屏','DTD平均时长','发运管理科','刘维维','当月截止当日从接单到交付的平均时长','无');
insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP','总览第四屏','DTD超时订单数量','发运管理科','刘维维','当月截止当日从接单到交付的平均时长高于标准时间的订单数量','无');
insert into DDOMTEST.DMR_KPI_INSTRUCTION (DISP_TYPE, MODUL_NAME, SUB_MODUL_NAME, DEPT_NAME, OWNER, DEFINE, WARN_RULE)
values ('DP','总览第四屏','平均总耗时','发运管理科','刘维维','当月截止当日从接单到结算的平均时长','无');

commit;