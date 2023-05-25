alter session set nls_date_format = 'yyyy-mm-dd';

drop table if exists products;
CREATE TABLE PRODUCTS 
   (	PRODUCT_ID NUMERIC(15,0), 
	PARENT_CATEGORY_ID NUMERIC(15,0), 
	CATEGORY_ID NUMERIC(15,0), 
	PRODUCT_NAME VARCHAR(150), 
	PRODUCT_STATUS VARCHAR(30), 
	COST_PRICE NUMERIC(8,2), 
	LIST_PRICE NUMERIC(8,2), 
	MIN_PRICE NUMERIC(8,2), 
	WARRANTY_PERIOD_MONTHS NUMERIC(2,0), 
	EXTERNAL_URL VARCHAR(200), 
	TWITTER_TAG varchar(1000),
	ATTRIBUTE_CATEGORY VARCHAR(30), 
	ATTRIBUTE1 VARCHAR(150), 
	ATTRIBUTE2 VARCHAR(150), 
	ATTRIBUTE3 VARCHAR(150), 
	ATTRIBUTE4 VARCHAR(150), 
	ATTRIBUTE5 VARCHAR(150), 
	CREATED_BY VARCHAR(60), 
	CREATION_DATE DATE, 
	LAST_UPDATED_BY VARCHAR(60), 
	LAST_UPDATE_DATE DATE, 
	OBJECT_VERSION_ID NUMERIC(15,0)
   );

ALTER TABLE PRODUCTS
ADD CONSTRAINT PRODUCTS_PK PRIMARY KEY (PRODUCT_ID);

drop table if exists product_categories;
CREATE TABLE PRODUCT_CATEGORIES 
   (	CATEGORY_ID NUMERIC(15,0), 
	CATEGORY_NAME VARCHAR(40), 
	PARENT_CATEGORY_ID NUMERIC(15,0), 
	CATEGORY_LEVEL NUMERIC(15,0), 
	CATEGORY_LOCKED_FLAG VARCHAR(1) DEFAULT 'N', 
	REPRESENTATIVE_PRODUCT_ID NUMERIC(15,0), 
	CREATED_BY VARCHAR(60), 
	CREATION_DATE DATE, 
	LAST_UPDATED_BY VARCHAR(60), 
	LAST_UPDATE_DATE DATE, 
	OBJECT_VERSION_ID NUMERIC(15,0)
   );

ALTER TABLE PRODUCT_CATEGORIES
ADD CONSTRAINT PRODUCT_CATEGORIES_PK PRIMARY KEY (CATEGORY_ID);