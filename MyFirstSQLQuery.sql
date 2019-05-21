select * from Customers where City = 'Berlin'

select * from Employees where City = 'Berlin'

select * from Shippers FOR XML AUTO

SELECT 
   CustomerID as "@CustomerID",
   CompanyName,
   Address as "address/street",
   City as "address/city",
   Region as "address/region",
   PostalCode as "address/zip",
   Country as "address/country",
   ContactName as "contact/name",
   ContactTitle as "contact/title",
   Phone as "contact/phone", 
   Fax as "contact/fax"
FROM Customers
FOR XML PATH('Customer')