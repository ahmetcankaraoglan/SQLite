show databases;

use customers;

show tables;

-- 1) Orders tablosunda kaç müşteri oldugunu bulunuz.
      SELECT COUNT(CustomerID) FROM Orders;
-- 2) Orders tablosunda kaç tane eşsiz müşteri olduğunu bulunuz.
      SELECT COUNT(DISTINCT CustomerID) FROM Orders;
-- 3) Customers tablosunda hangi ülkeden kaçar tane müşteri olduğunu bulunuz.
      SELECT COUNT(CustomerID) AS number_of_customer, Country FROM Customers GROUP BY Country ORDER BY number_of_customer DESC;
-- 4) Müşterilerin ülkesi Brazil ya da USA olanlarını bulunuz.
      SELECT * FROM Customers WHERE Customers.Country = "Brazil" OR Customers.Country = "USA";
-- 5) Önce ülkeye sonra şehre göre group by işlemi yapıp bu kırılımda müşteri sayısını bulunuz.
      SELECT COUNT(CustomerID) as number_of_customer, Country, City FROM Customers GROUP BY Country, City ORDER BY number_of_customer DESC LIMIT 10;
-- 6) Müşterileri adreslerinin herhangi bir yerinde "da" ifadesi geçen tüm adresleri bulunuz.
      SELECT * FROM Customers WHERE Address LIKE '%da%' LIMIT 10;
-- 7) Germany-Berlin'de yaşayan müşteri/müşterilerin isimleri nelerdir?
      SELECT Customers.CustomerName FROM Customers WHERE Customers.Country = "Germany" AND Customers.City = "Berlin";
-- 8) Canada'da yaşayıp isimlerinde "in" ifadesi geçen müşteri/müşterileri bulunuz.
      SELECT * FROM Customers WHERE (Customers.Country = "Canada") AND CustomerName LIKE "%in%";
-- 9) Fiyatı 40 TL ile 90 TL arasında olan ürünlerin isimleri ve fiyatları nelerdir?
      SELECT Products.ProductName, Products.Price FROM Products WHERE Price BETWEEN 40 AND 90 LIMIT 10;
-- 10) Fiyatı 30 TL'den büyük olan ürünlerin isimlerini, fiyatlarini ve fiyatlarinin karesini bulunuz ve tüm değişkenlerin isimlendirmelerini aşağıdaki şekilde yapınız:
--     urun ismi, urun_fiyati, ürün_fiyatinin_karesi
       SELECT Products.ProductName AS urun_ismi, Products.Price AS urun_fiyati, Price * Price AS fiyatin_karesi FROM Products WHERE Products.Price > 30 LIMIT 10;


















