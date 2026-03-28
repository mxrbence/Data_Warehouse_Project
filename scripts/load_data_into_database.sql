===================================================
Script purpose:

  Load data from the local csv files into sql database: schema "stage" tables.
  Firs the data transfer permission needs to be set:
  - on the server side: SET GLOBAL local_infile = 1;
  - on the client side: Edit Connection - tab Advanced - in "Others" insert: OPT_LOCAL_INFILE=1

===================================================

truncate table stage.crm_cust_info;
load data local infile "C:/Work/Benedek/Arbeitsamt/Weiterbildung/Data_Engineer_20260316_0410/Projekt/Data_with_Baraa/sql-data-warehouse-project/datasets/source_crm/cust_info.csv"
into table stage.crm_cust_info
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

truncate table stage.crm_prd_info;
load data local infile "C:/Work/Benedek/Arbeitsamt/Weiterbildung/Data_Engineer_20260316_0410/Projekt/Data_with_Baraa/sql-data-warehouse-project/datasets/source_crm/prd_info.csv"
into table stage.crm_prd_info
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

truncate table stage.crm_sales_details;
load data local infile "C:/Work/Benedek/Arbeitsamt/Weiterbildung/Data_Engineer_20260316_0410/Projekt/Data_with_Baraa/sql-data-warehouse-project/datasets/source_crm/sales_details.csv"
into table stage.crm_sales_details
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

truncate table stage.erp_cust_az12;
load data local infile "C:/Work/Benedek/Arbeitsamt/Weiterbildung/Data_Engineer_20260316_0410/Projekt/Data_with_Baraa/sql-data-warehouse-project/datasets/source_erp/CUST_AZ12.csv"
into table stage.erp_cust_az12
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

truncate table stage.erp_loc_a101;
load data local infile "C:/Work/Benedek/Arbeitsamt/Weiterbildung/Data_Engineer_20260316_0410/Projekt/Data_with_Baraa/sql-data-warehouse-project/datasets/source_erp/LOC_A101.csv"
into table stage.erp_loc_a101
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

truncate table stage.erp_px_cat_g1v1;
load data local infile "C:/Work/Benedek/Arbeitsamt/Weiterbildung/Data_Engineer_20260316_0410/Projekt/Data_with_Baraa/sql-data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.csv"
into table stage.erp_px_cat_g1v1
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;
