Create Database Capstone_Project
 Select product, sum(Quantity*UnitPrice) as Total_Sales From [dbo].[Capstone Sales Data KY Project]
 Group by product;

 Select Region, count(*) as NumberOfTransactions from [dbo].[Capstone Sales Data KY Project]
 Group by Region

 select top 1 product, sum(quantity*unitprice) as Total_sales From [dbo].[Capstone Sales Data KY Project]
Group by product
Order by Total_sales desc;

Select month(OrderDate) as month, sum(Quantity*UnitPrice) as MonthlySales From [dbo].[Capstone Sales Data KY Project]
Where year(OrderDate) = year(GetDate())
Group by month(OrderDate)
Order by month;

Select top 5 customer_id, sum(quantity*unitprice) as totalpurchaseAmount From [dbo].[Capstone Sales Data KY Project]
Group by Customer_Id
Order by TotalPurchaseAmount desc;

Select region,sum(quantity*unitprice) as totalsales,Sum(quantity*unitprice) *1.0/ (select sum(quantity*unitprice)
From [dbo].[Capstone Sales Data KY Project] *100 As PercentageOfTotalSales From [dbo].[Capstone Sales Data KY Project]
Group by region;


Select distinct product From [dbo].[Capstone Sales Data KY Project] Where product Not In( Select product From [dbo].[Capstone Sales Data KY Project]
Where OrderDate >= DateAdd(quarter, -1, GetDate()) and OrderDate < GetDate());

