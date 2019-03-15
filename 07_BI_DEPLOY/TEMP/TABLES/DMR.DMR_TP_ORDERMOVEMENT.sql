DROP TABLE IF EXISTS DMR.DMR_TP_ORDERMOVEMENT;
CREATE TABLE IF NOT EXISTS DMR.DMR_TP_ORDERMOVEMENT(
EARLY_PICKUP_year                 string              COMMENT  '计划年                     ',
EARLY_PICKUP_month                string              COMMENT  '计划月份                   ',
EARLY_PICKUP_day                  string              COMMENT  '计划日期                   ',
                                                                                           
all_transportmode                 string              COMMENT  '联运运输方式               ',
all_transportmodename             string              COMMENT  '联运运输方式名称           ',
                                                                                           
allot_pln_year                    STRING              COMMENT  '调度分配计划年             ' ,
allot_pln_month                   STRING              COMMENT  '调度分配计划月份           '  ,
allot_pln_day                     string              COMMENT  '调度分配计划日期           ',
                                                                                           
allot_staus                       string              COMMENT  '分配状态                   ',
amount_cost                       decimal(32,8)       COMMENT  '总成本(预算)               ',
amount_seq_cost                   decimal(32,8)       COMMENT  '段成本(预算)               ',
amount_seq_value                  decimal(32,8)       COMMENT  '段收入(预算)               ',
amount_value                      decimal(32,8)       COMMENT  '总收入(预算)               ',
                                                                                           
arrange_year                      STRING              COMMENT  '派车确认年                 ' ,
arrange_month                     STRING              COMMENT  '派车确认月份               ',
arrange_day                       string              COMMENT  '安排日(派车确认日)         ',
                                                                                           
arrival_year                      STRING              COMMENT  '到港年                      ',
arrival_month                     STRING              COMMENT  '到港月份                   '  ,
arrival_day                       string              COMMENT  '到港日期                   ',
                                                                                           
base_id                           string              COMMENT  '基地                       ',
base_name                         string              COMMENT  '基地名称                   ',
brand_id                          string              COMMENT  '品牌                       ',
brand_name                        string              COMMENT  '品牌名称                   ',
budget_shipment_gid               string              COMMENT  '运输（财务）id             ',
dest_cty_id                       string              COMMENT  '目的地城市                 ',
dest_location_type                string              COMMENT  '目的地类型                 ',
dest_prvn_id                      string              COMMENT  '目的地省份                 ',
                                                                                           
dlvr_year                         STRING              COMMENT  '中转入库年/交车年/到达年   ' ,
dlvr_month                        STRING              COMMENT  '中转入库月份/交车月份/到达月份' ,
dlvr_day                          string              COMMENT  '中转入库日/交车日/到达日   ',
                                                                                           
driver_voyage_rail                string              COMMENT  '驾驶员姓名/船名航次/铁路大组',
                                                                                           
factory_year                      string              COMMENT  ' 出场年                    ',
factory_month                     string              COMMENT  '  出场月份                 ',
factory_day                       string              COMMENT  '出场日                     ',
                                                                                           
is_storage                        string              COMMENT  '在途启票车辆是否已入库     ',
                                                                                           
leave_base_year                   string              COMMENT  ' 离开基地和中转站年        ',
leave_base_month                  string              COMMENT  '  离开基地和中转站月份     ',
leave_base_day                    string              COMMENT  '离开基地和中转站日期       ',
                                                                                           
lic_no                            string              COMMENT  '车牌号                     ',
                                                                                           
load_year                         string              COMMENT  ' 装车年                    ',
load_month                        string              COMMENT  '  装车月份                 ',
load_day                          string              COMMENT  '装车日期                   ',
                                                                                           
lsp                               string              COMMENT  '实际承运商                 ',
mdlgrp_id                         string              COMMENT  '车型组                     ',
milege                            decimal(32,8)       COMMENT  '里程(预算)                 ',
model_id                          string              COMMENT  '车型ID                     ',
oc_id                             string              COMMENT  '运营中心                   ',
oc_name                           string              COMMENT  '运营中心名称               ',
on_passage_days                   decimal(32,8)       COMMENT  '在途考核天数               ',
order_comment                     string              COMMENT  '订单备注                   ',
order_movement_gid                string              COMMENT  '分段路由GID                ',
order_release_gid                 string              COMMENT  'OTM单号                    ',
order_status                      string              COMMENT  '订单状态                   ',
                                                                                           
out_store_year                    string              COMMENT  ' 出库年/中转出库年         ',
out_store_month                   string              COMMENT  '  出库月份/中转出库月份    ',
out_store_day                     string              COMMENT  '出库日/中转出库日          ',
                                                                                           
product_name                     string              COMMENT  '主机厂车型代码 - 颜色 - 分类',
proj_id                           string              COMMENT  '项目                       ',
proj_name                         string              COMMENT  '项目名称                   ',
rgn_id                            string              COMMENT  '大区                       ',
rgn_name                          string              COMMENT  '大区名称                   ',
segmetn_transportmode             string              COMMENT  '运输段运输方式             ',
segmetn_transportmodename         string              COMMENT  '运输段运输方式名称         ',

seq_no                            string              COMMENT  '路由序列号                 ',
                                                                                           
shipment_year                     string              COMMENT  ' 装船年                    ',
shipment_month                    string              COMMENT  '  装船月份                 ',
shipment_day                      string              COMMENT  '装船日期                   ',
                                                                                           
source_code                       string              COMMENT  '源系统标识                 ',
source_cty_id                     string              COMMENT  '始发地城市                 ',
source_location_type              string              COMMENT  '始发地类型                 ',
source_prvn_id                    string              COMMENT  '始发地省份                 ',
ssp                               string              COMMENT  '份额承运商                 ',
supplier_id                       string              COMMENT  '承运商                     ',
supplier_name                     string              COMMENT  '承运商名称                 ',
ticket_unit                       string              COMMENT  '启票单位                   ',
transportstatus                   string              COMMENT  '运输状态                   ',
                                                                                           
unload_year                       string              COMMENT  ' 卸船年                    ',
unload_month                      string              COMMENT  '  卸船月份                 ',
unload_day                        string              COMMENT  '卸船日期                   ',
                                                                                           
vin                               string              COMMENT  'VIN码                      ',
yd_no                             string              COMMENT  '运单号                     '

) 
COMMENT 'PC运输业务报表'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
