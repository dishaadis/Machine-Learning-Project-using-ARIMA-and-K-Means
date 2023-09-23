--  Machine Learning Project Using ARIMA and K-Means
-- ==================================================

--  EDA
-- =====

-- 1. Average Customer Age Based on Marital Status
select 
	"Marital Status", 
	avg(age) as "average of age"
from 
	customer
group by 1;

-- 2. Average Customer Age Based on Gender
select 
	gender , 
	avg(age) as "average of age"
from customer
group by 1;

-- 3. Total Quantity Based on Store Name
select 
	t.storeid, 
	s.storename,
	sum(qty) as "total quantity"
from transaction as t
join store as s on s.storeid = t.storeid 
group by 1,2
order by 3 desc;

-- 4. Total Amount Based on Product Name
select 
	t.productid, 
	p."Product Name",
	sum(totalamount) as "total amount"
from transaction as t
join product as p on p.productid  = t.productid
group by 1,2
order by 3 desc;

--  Data
-- ======

-- Data for Machine Learning Regression ARIMA
select  "Date", sum(qty)as "total quantity"
from transaction as t
group by 1
order by 1;

-- Data for Machine Learnig Clustering K-Means
select 	"customerid", 
		count(transactionid) as "total transaction",
		sum(qty) as "total quantity", 
		sum(totalamount) as "total amount"
from transaction as t
group by 1
order by 1;

--C:\Users\User\AppData\Roaming\DBeaverData\workspace6\General\Scripts\Kalbe.sql