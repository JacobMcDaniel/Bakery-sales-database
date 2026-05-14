BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "BakedGood" (
	"good_id"	VARCHAR NOT NULL UNIQUE,
	"type"	VARCHAR,
	"price"	VARCHAR,
	"cost_to_make"	VARCHAR,
	PRIMARY KEY("good_id")
);
CREATE TABLE IF NOT EXISTS "Customer" (
	"customer_id"	VARCHAR NOT NULL UNIQUE,
	"first_name"	VARCHAR,
	"last_name"	VARCHAR,
	PRIMARY KEY("customer_id")
);
CREATE TABLE IF NOT EXISTS "Employee" (
	"emp_id"	VARCHAR NOT NULL UNIQUE,
	"first_name"	VARCHAR,
	"last_name"	VARCHAR,
	"email"	VARCHAR,
	"phone_number"	VARCHAR,
	"admin_id"	VARCHAR,
	PRIMARY KEY("emp_id"),
	FOREIGN KEY("admin_id") REFERENCES "Employee"("emp_id")
);
CREATE TABLE IF NOT EXISTS "Order" (
	"order_number"	VARCHAR NOT NULL UNIQUE,
	"customer_id"	VARCHAR,
	PRIMARY KEY("order_number"),
	FOREIGN KEY("customer_id") REFERENCES "Customer"("customer_id")
);
CREATE TABLE IF NOT EXISTS "Order_assignment" (
	"order_number"	VARCHAR NOT NULL,
	"emp_id"	VARCHAR NOT NULL,
	"date_assigned"	Date,
	"completion_status"	VARCHAR,
	PRIMARY KEY("order_number","emp_id"),
	FOREIGN KEY("emp_id") REFERENCES "Employee"("emp_id"),
	FOREIGN KEY("order_number") REFERENCES "Order"("order_number")
);
CREATE TABLE IF NOT EXISTS "Transaction" (
	"good_id"	VARCHAR NOT NULL,
	"order_number"	VARCHAR NOT NULL,
	"total"	VARCHAR,
	"location"	VARCHAR,
	"quantity"	INTEGER,
	PRIMARY KEY("order_number","good_id"),
	FOREIGN KEY("good_id") REFERENCES "BakedGood"("good_id"),
	FOREIGN KEY("order_number") REFERENCES "Order"("order_number")
);
INSERT INTO "BakedGood" VALUES ('G001','E.B. Sourdough Focaccia Bread','12.99','0.54');
INSERT INTO "BakedGood" VALUES ('G002','J.CH. Sourdough Focaccia Bread','12.99','0.54');
INSERT INTO "BakedGood" VALUES ('G003','R.TH. Sourdough Focaccia Bread','12.99','0.54');
INSERT INTO "BakedGood" VALUES ('G004','Sourdough Loaf Bread','8.99','0.78');
INSERT INTO "BakedGood" VALUES ('G005','Sourdough Boule','8.99','0.78');
INSERT INTO "BakedGood" VALUES ('G006','AL. Firecrackers','6.99','1.07');
INSERT INTO "BakedGood" VALUES ('G007','E.B. Crackers','6.99','0.94');
INSERT INTO "BakedGood" VALUES ('G008','English Muffins','6.99','1.10');
INSERT INTO "BakedGood" VALUES ('G009','Sourdough Loaf Bread (maple)','9.99','1.05');
INSERT INTO "BakedGood" VALUES ('G010','Baguette','6.99','0.89');
INSERT INTO "BakedGood" VALUES ('G011','Sourdough Starter','2.99','0.05');
INSERT INTO "BakedGood" VALUES ('G012','Sourdough Ciabatta','6.99','0.68');
INSERT INTO "BakedGood" VALUES ('G013','Sourdough Breadsticks','4.99','0.49');
INSERT INTO "BakedGood" VALUES ('G014','Sourdough Pizza Crust','4.99','0.63');
INSERT INTO "BakedGood" VALUES ('G015','Sourdough Croutons','4.99','0.44');
INSERT INTO "BakedGood" VALUES ('G016','Sourdough Bread Crumbs','4.99','0.44');
INSERT INTO "BakedGood" VALUES ('G017','Garlic Lover''s Bread Dip Mix','1.99','0.6');
INSERT INTO "BakedGood" VALUES ('G018','Tuscan Bread Dip Mix','1.99','0.6');
INSERT INTO "BakedGood" VALUES ('G019','Sourdough Dinner Rolls','8.99','1.22');
INSERT INTO "BakedGood" VALUES ('G020','Sourdough Scones','8.99','1.22');
INSERT INTO "Customer" VALUES ('C001','Emma','Collins');
INSERT INTO "Customer" VALUES ('C002','Liam','Turner');
INSERT INTO "Customer" VALUES ('C003','Olivia','Martinez');
INSERT INTO "Customer" VALUES ('C004','Noah','Bennett');
INSERT INTO "Customer" VALUES ('C005','Ava','Reynolds');
INSERT INTO "Customer" VALUES ('C006','Ethan','Parker');
INSERT INTO "Customer" VALUES ('C007','Sophia','Nguyen');
INSERT INTO "Customer" VALUES ('C008','Mason','Patel');
INSERT INTO "Customer" VALUES ('C009','Isabella','Carter');
INSERT INTO "Customer" VALUES ('C010','Jackson','Lee');
INSERT INTO "Customer" VALUES ('C011','Amelia','Brooks');
INSERT INTO "Customer" VALUES ('C012','Logan','Price');
INSERT INTO "Customer" VALUES ('C013','Harper','Simmons');
INSERT INTO "Customer" VALUES ('C014','Elijah','Foster');
INSERT INTO "Customer" VALUES ('C015','Mia','Henderson');
INSERT INTO "Customer" VALUES ('C016','Lucas','Ramirez');
INSERT INTO "Customer" VALUES ('C017','Charlotte','Kim');
INSERT INTO "Customer" VALUES ('C018','Benjamin','Hayes');
INSERT INTO "Customer" VALUES ('C019','Aria','Watson');
INSERT INTO "Customer" VALUES ('C020','Henry','Delgado');
INSERT INTO "Employee" VALUES ('E001','Daniel','Moore','daniel.moore@bakery.com','205-555-0101','E005');
INSERT INTO "Employee" VALUES ('E002','Natalie','Stone','natalie.stone@bakery.com','205-555-0102','E005');
INSERT INTO "Employee" VALUES ('E003','Marcus','Hill','marcus.hill@bakery.com','205-555-0103','E001');
INSERT INTO "Employee" VALUES ('E004','Priya','Shah','priya.shah@bakery.com','205-555-0104','E001');
INSERT INTO "Employee" VALUES ('E005','Laura','Jenkins','laura.jenkins@bakery.com','205-555-0105','E001');
INSERT INTO "Employee" VALUES ('E006','Tyler','Grant','tyler.grant@bakery.com','205-555-0106','E002');
INSERT INTO "Employee" VALUES ('E007','Hannah','Lopez','hannah.lopez@bakery.com','205-555-0107','E002');
INSERT INTO "Employee" VALUES ('E008','Chris','Adams','chris.adams@bakery.com','205-555-0108','E003');
INSERT INTO "Employee" VALUES ('E009','Jasmine','Wright','jasmine.wright@bakery.com','205-555-0109','E003');
INSERT INTO "Employee" VALUES ('E010','Owen','Russell','owen.russell@bakery.com','205-555-0110','E004');
INSERT INTO "Employee" VALUES ('E011','Kayla','Dunn','kayla.dunn@bakery.com','205-555-0111','E004');
INSERT INTO "Employee" VALUES ('E012','Victor','Alvarez','victor.alvarez@bakery.com','205-555-0112','E006');
INSERT INTO "Employee" VALUES ('E013','Megan','Cole','megan.cole@bakery.com','205-555-0113','E006');
INSERT INTO "Employee" VALUES ('E014','Andre','Bishop','andre.bishop@bakery.com','205-555-0114','E007');
INSERT INTO "Employee" VALUES ('E015','Leah','Porter','leah.porter@bakery.com','205-555-0115','E007');
INSERT INTO "Employee" VALUES ('E016','Kevin','Tran','kevin.tran@bakery.com','205-555-0116','E008');
INSERT INTO "Employee" VALUES ('E017','Sofia','Morales','sofia.morales@bakery.com','205-555-0117','E009');
INSERT INTO "Employee" VALUES ('E018','Brandon','Knight','brandon.knight@bakery.com','205-555-0118','E010');
INSERT INTO "Employee" VALUES ('E019','Alicia','Rowe','alicia.rowe@bakery.com','205-555-0119','E011');
INSERT INTO "Employee" VALUES ('E020','Derek','Chase','derek.chase@bakery.com','205-555-0120','E012');
INSERT INTO "Order" VALUES ('O001','C001');
INSERT INTO "Order" VALUES ('O002','C002');
INSERT INTO "Order" VALUES ('O003','C003');
INSERT INTO "Order" VALUES ('O004','C004');
INSERT INTO "Order" VALUES ('O005','C005');
INSERT INTO "Order" VALUES ('O006','C006');
INSERT INTO "Order" VALUES ('O007','C007');
INSERT INTO "Order" VALUES ('O008','C008');
INSERT INTO "Order" VALUES ('O009','C009');
INSERT INTO "Order" VALUES ('O010','C010');
INSERT INTO "Order" VALUES ('O011','C011');
INSERT INTO "Order" VALUES ('O012','C012');
INSERT INTO "Order" VALUES ('O013','C013');
INSERT INTO "Order" VALUES ('O014','C014');
INSERT INTO "Order" VALUES ('O015','C015');
INSERT INTO "Order" VALUES ('O016','C016');
INSERT INTO "Order" VALUES ('O017','C017');
INSERT INTO "Order" VALUES ('O018','C018');
INSERT INTO "Order" VALUES ('O019','C019');
INSERT INTO "Order" VALUES ('O020','C020');
INSERT INTO "Order_assignment" VALUES ('O001','E003','2026-02-01','Completed');
INSERT INTO "Order_assignment" VALUES ('O002','E004','2026-02-01','Completed');
INSERT INTO "Order_assignment" VALUES ('O003','E006','2026-02-02','Completed');
INSERT INTO "Order_assignment" VALUES ('O004','E007','2026-02-02','Completed');
INSERT INTO "Order_assignment" VALUES ('O005','E008','2026-02-03','Completed');
INSERT INTO "Order_assignment" VALUES ('O006','E009','2026-02-03','Completed');
INSERT INTO "Order_assignment" VALUES ('O007','E010','2026-02-04','Completed');
INSERT INTO "Order_assignment" VALUES ('O008','E011','2026-02-04','Completed');
INSERT INTO "Order_assignment" VALUES ('O009','E012','2026-02-05','Completed');
INSERT INTO "Order_assignment" VALUES ('O010','E013','2026-02-05','Completed');
INSERT INTO "Order_assignment" VALUES ('O011','E014','2026-02-06','Completed');
INSERT INTO "Order_assignment" VALUES ('O012','E015','2026-02-06','Completed');
INSERT INTO "Order_assignment" VALUES ('O013','E016','2026-02-07','Completed');
INSERT INTO "Order_assignment" VALUES ('O014','E017','2026-02-07','Completed');
INSERT INTO "Order_assignment" VALUES ('O015','E018','2026-02-08','Completed');
INSERT INTO "Order_assignment" VALUES ('O016','E019','2026-02-08','Completed');
INSERT INTO "Order_assignment" VALUES ('O017','E020','2026-02-09','In Progress');
INSERT INTO "Order_assignment" VALUES ('O018','E003','2026-02-09','Completed');
INSERT INTO "Order_assignment" VALUES ('O019','E004','2026-02-10','In Progress');
INSERT INTO "Order_assignment" VALUES ('O020','E006','2026-02-10','Assigned');
INSERT INTO "Transaction" VALUES ('G001','O001','25.98','Storefront',2);
INSERT INTO "Transaction" VALUES ('G002','O001','12.99','Storefront',1);
INSERT INTO "Transaction" VALUES ('G003','O002','38.97','Online',3);
INSERT INTO "Transaction" VALUES ('G004','O002','17.98','Online',2);
INSERT INTO "Transaction" VALUES ('G005','O003','26.97','Storefront',3);
INSERT INTO "Transaction" VALUES ('G006','O003','7.99','Storefront',1);
INSERT INTO "Transaction" VALUES ('G007','O004','34.95','Storefront',5);
INSERT INTO "Transaction" VALUES ('G008','O004','9.99','Storefront',1);
INSERT INTO "Transaction" VALUES ('G009','O005','19.98','Online',2);
INSERT INTO "Transaction" VALUES ('G010','O005','12.99','Online',1);
INSERT INTO "Transaction" VALUES ('G001','O006','51.96','Storefront',4);
INSERT INTO "Transaction" VALUES ('G002','O006','25.98','Storefront',2);
INSERT INTO "Transaction" VALUES ('G003','O007','12.99','Online',1);
INSERT INTO "Transaction" VALUES ('G004','O007','26.97','Online',3);
INSERT INTO "Transaction" VALUES ('G005','O008','17.98','Storefront',2);
INSERT INTO "Transaction" VALUES ('G006','O008','15.98','Storefront',2);
INSERT INTO "Transaction" VALUES ('G007','O009','6.99','Online',1);
INSERT INTO "Transaction" VALUES ('G008','O009','29.97','Online',3);
INSERT INTO "Transaction" VALUES ('G009','O010','39.96','Storefront',4);
INSERT INTO "Transaction" VALUES ('G010','O010','25.98','Storefront',2);
CREATE VIEW profit_view AS
SELECT
    t.order_number,
    SUM(t.total) AS revenue,
    SUM(t.quantity * bg.cost_to_make) AS cost,
    SUM(t.total) - SUM(t.quantity * bg.cost_to_make) AS profit
FROM "Transaction" t
JOIN "BakedGood" bg
    ON t.good_id = bg.good_id
GROUP BY t.order_number;
CREATE VIEW top_selling_products AS
SELECT
    bg.good_id,
    bg.type,
    SUM(t.quantity) AS total_units_sold
FROM "Transaction" t
JOIN "BakedGood" bg
    ON t.good_id = bg.good_id
GROUP BY bg.good_id, bg.type;
COMMIT;
