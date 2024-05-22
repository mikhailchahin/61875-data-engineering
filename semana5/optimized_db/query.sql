
USE AdventureWorks2022;

-- NOT OPTIMIZED

SET STATISTICS TIME ON;


SELECT TOP 25
	Product.ProductID,
	Product.Name AS ProductName,
	Product.ProductNumber,
	CostMeasure.UnitMeasureCode,
	CostMeasure.Name AS CostMeasureName,
	ProductVendor.AverageLeadTime,
	ProductVendor.StandardPrice,
	ProductReview.ReviewerName,
	ProductReview.Rating,
	ProductCatery.Name AS CateryName,
	ProductSubCatery.Name AS SubCateryName
FROM Production.Product
INNER JOIN Production.ProductSubCatery
ON ProductSubCatery.ProductSubcateryID = Product.ProductSubcateryID
INNER JOIN Production.ProductCatery
ON ProductCatery.ProductCateryID = ProductSubCatery.ProductCateryID
INNER JOIN Production.UnitMeasure SizeUnitMeasureCode
ON Product.SizeUnitMeasureCode = SizeUnitMeasureCode.UnitMeasureCode
INNER JOIN Production.UnitMeasure WeightUnitMeasureCode
ON Product.WeightUnitMeasureCode = WeightUnitMeasureCode.UnitMeasureCode
INNER JOIN Production.ProductModel
ON ProductModel.ProductModelID = Product.ProductModelID
LEFT JOIN Production.ProductModelIllustration
ON ProductModel.ProductModelID = ProductModelIllustration.ProductModelID
LEFT JOIN Production.ProductModelProductDescriptionCulture
ON ProductModelProductDescriptionCulture.ProductModelID = ProductModel.ProductModelID
LEFT JOIN Production.ProductDescription
ON ProductDescription.ProductDescriptionID = ProductModelProductDescriptionCulture.ProductDescriptionID
LEFT JOIN Production.ProductReview
ON ProductReview.ProductID = Product.ProductID
LEFT JOIN Purchasing.ProductVendor
ON ProductVendor.ProductID = Product.ProductID
LEFT JOIN Production.UnitMeasure CostMeasure
ON ProductVendor.UnitMeasureCode = CostMeasure.UnitMeasureCode

ORDER BY Product.ProductID DESC
;


SET STATISTICS TIME OFF;  


-- OPTIMIZED

SET STATISTICS TIME ON

SELECT TOP 25
	Product.ProductID,
	Product.Name AS ProductName,
	Product.ProductNumber,
	ProductCatery.Name AS ProductCatery,
	ProductSubCatery.Name AS ProductSubCatery,
	Product.ProductModelID
INTO #Product
FROM Production.Product
INNER JOIN Production.ProductSubCatery
ON ProductSubCatery.ProductSubcateryID = Product.ProductSubcateryID
INNER JOIN Production.ProductCatery
ON ProductCatery.ProductCateryID = ProductSubCatery.ProductCateryID
ORDER BY Product.ModifiedDate DESC;
 
SELECT
	Product.ProductID,
	Product.ProductName,
	Product.ProductNumber,
	CostMeasure.UnitMeasureCode,
	CostMeasure.Name AS CostMeasureName,
	ProductVendor.AverageLeadTime,
	ProductVendor.StandardPrice,
	ProductReview.ReviewerName,
	ProductReview.Rating,
	Product.ProductCatery,
	Product.ProductSubCatery
FROM #Product Product
INNER JOIN Production.ProductModel
ON ProductModel.ProductModelID = Product.ProductModelID
LEFT JOIN Production.ProductReview
ON ProductReview.ProductID = Product.ProductID
LEFT JOIN Purchasing.ProductVendor
ON ProductVendor.ProductID = Product.ProductID
LEFT JOIN Production.UnitMeasure CostMeasure
ON ProductVendor.UnitMeasureCode = CostMeasure.UnitMeasureCode;
 
DROP TABLE #Product;
SET STATISTICS TIME OFF;  
  