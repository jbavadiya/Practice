--EX 3.5.user defined function which will accept customerId as input 
--and will return customer name.
ALTER FUNCTION dbo.ufnGETCSTMRNM(@CUSTOMER_ID int)  
RETURNS NVARCHAR (20)  
AS
-- Returns customer name  
BEGIN  
      DECLARE @CUSTNM NVARCHAR(20);
  SET @CUSTNM=  (SELECT   CUST_NAME FROM customer
	WHERE CUSTOMER_ID = @CUSTOMER_ID)
    RETURN  @CUSTNM;  
END;
SELECT dbo.ufnGETCSTMRNM(3002) AS CUSTOMERNAME
