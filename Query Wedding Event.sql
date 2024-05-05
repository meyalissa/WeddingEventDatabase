#create database weddingEvent;

#create table weddingevent.Client 
#( 
#    Client_ID  varchar(10) primary key not null, 
#    Client_Fname varchar (20),  
#    Client_Lname varchar (20), 
#    Client_Phone varchar (12), 
#    Client_Email varchar (50), 
#    Client_Address varchar (100) 
#) 

#create table weddingEvent.Wedding 
#( 
#	Wedding_ID varchar (10) primary key not null, 
#    Client_ID varchar (10), 
#    foreign key (Client_ID) references Client (Client_ID), 
#    Bride_Name varchar (100), 
#    Groom_Name varchar (100), 
#    Wedding_Venue varchar (70), 
#    Wedding_Date date, 
#    Wedding_Theme varchar (50), 
#    Wedding_Budget decimal (6,2), 
#    Numb_Of_Guest integer, 
#    Wedding_Status varchar (20) 
#) 

#create table weddingEvent.inventory
#(
#	item_ID varchar(10) primary key not null,
#    item_name varchar(30),
#    item_status varchar(20),
#    item_desc varchar(50),
#    quantity_available int,
#    unit_price decimal(6,2)
#)

#create table weddingEvent.Payment 
#( 
#    Payment_ID varchar (10) primary key not null, 
#    Wedding_ID varchar (10), 
#    foreign key (Wedding_ID) references Wedding (Wedding_ID), 
#    Payment_Status varchar (20), 
#    Payment_Date date, 
#    Payment_Method varchar (20) 
#) 

#create table weddingEvent.Service 
#( 
#	Service_ID varchar (10) primary key not null, 
#    Service_Name varchar (20), 
#    Service_Desc varchar (70), 
#    Service_Cost decimal (6,2) 
#) 

#create table weddingEvent.Wedding_Service 
#( 
#    Wedding_ID varchar (10) not null, 
#    Service_ID varchar (10) not null, 
#    Service_Price decimal(6,2), 
#    primary key (Wedding_ID, Service_ID), 
#    foreign key (Wedding_ID) references Wedding (Wedding_ID), 
#    foreign key (Service_ID) references Service (Service_ID) 
#) 

#create table weddingEvent.Wedding_Inventory 
#(
#	Wedding_ID varchar (10) not null, 
#	Item_ID varchar (10) not null, 
#	Inventory_Price decimal(6,2), 
#	Client_Quantity integer,
#	primary key (Wedding_ID, Item_ID), 
#	foreign key (Wedding_ID) references Wedding (Wedding_ID), 
#	foreign key (Item_ID) references Inventory (Item_ID) 
#) 

use weddingEvent;

#Insert INTO CLIENT (client_ID, client_Fname, client_Lname, client_phone, client_email, client_address) VALUES  
#    ('C01', 'Hanis', 'Liana', '019-1213144', 'hanis01@gmail.com', 'Bukit Mahkota, 8600, Kluang, Johor'), 
#    ('C02', 'Fadlan', 'Hamzah', '018-2324255', 'hamzah02@gmail.com', 'Desa Pandan, 5100, Kuala Lumpur'), 
#    ('C03', 'Ali', 'Mikhail', '017-3435366', 'mikhail03@gmail.com', 'Jalan Hospital, 30450, Ipoh, Perak'), 
#    ('C04', 'Siti', 'Batrisyia', '016-4546477', 'siti04@gmail.com', 'Pengkalan Chepa, Kota Bharu, Kelantan'), 
#    ('C05', 'Siti', 'Balqis', '017-5657588', 'balqis05@gmail.com', 'Kota Puteri, 4500, Rawang, Selangor'), 
#    ('C06', 'Adam', 'Arif', '016-6768699', 'adam06@gmail.com', 'Puchong, 43009, Kajang, Selangor'), 
#    ('C07', 'Rayyan', 'Marshel', '015-7879711', 'marshel07@gmail.com', 'Seksyen 19, 40100, Shah Alam, Selangor'), 
#    ('C08', 'Emma', 'Watson', '014-8981822', 'emma08@gmail.com', 'Bandar Tras, 28700, Raub, Pahang'), 
#    ('C09', 'Rose', 'Anne', '013-9192933', 'rose09@gmail.com', 'Ampang Baru, 30508, Ipoh, Perak'), 
#    ('C10', 'Roberts', 'Anne', '012-2123255', 'roberts10@gmail.com', 'Jalan Molek, 81100, Johor Bahru, Johor');

#INSERT INTO Wedding (Wedding_ID, bride_name, groom_name, wedding_venue, wedding_date, wedding_theme, wedding_budget, numb_of_guest, wedding_status, Client_ID) VALUES 
#    ('W01', 'Hanis Liana Binti Abdullah', 'Muhammad Farhan bin Ahmad', 'Taman Botani Putrajaya', '2023-02-12', 'Tradisional Malay Wedding', 3000.00, 300, 'Confirmed', 'C01'), 
#    ('W02', 'Hanis Liana Binti Abdullah', 'Muhammad Farhan bin Ahmad', 'Glasshouse Seputeh Kuala Lumpur', '2023-09-15', 'Vintage Wedding Theme', 3500.00, 150, 'Planned', 'C01'), 
#    ('W03', 'Siti Hajar binti Nasir', 'Amirul Hakim bin Ibrahim', 'Istana Besar Johor Bahru', '2024-07-05', 'Elegant and Modern Theme', 1000.00, 500, 'Confirmed', 'C02'), 
#    ('W04', 'Nor Aishah binti Ismail', 'Syafiq Amin bin Mohd Yusof', 'Dewan Serbaguna Majlis Bandaraya Kuala Lumpur', '2023-09-18', 'Glamorous Hollywood', 2500.00, 800, 'Confirmed', 'C03'), 
#    ('W05', 'Nor Aishah binti Ismail', 'Syafiq Amin bin Mohd Yusof', 'Pusat Konvensyen Kuala Lumpur City Centre(KLCC)', '2023-10-25', 'Tradisional Malay Wedding', 3500.00, 200, 'Planned', 'C03'), 
#    ('W06', 'Jessica Lim Siew Sen', 'Jason Kumar a/l Raj', 'Pusat Konvensyen Kuala Lumpur City Centre(KLCC)', '2023-07-18', 'Cherry Blossom Theme', 3500.00, 1000, 'Planned', 'C04'),
#    ('W07', 'Nurul Syazwani binti Ali', 'Azrul Fikri bin Abdullah', 'Pantai Cenang, Langkawi', '2023-05-08', 'Pastel Color Theme', 2500.00, 400, 'Confirmed', 'C05'), 
#    ('W08', 'Nurul Syazwani binti Ali', 'Azrul Fikri bin Abdullah', 'Perdana Botanical Gardens, Kuala Lumpur', '2023-09-28', 'Whimsical Fairytale Theme ', 2500.00, 350, 'Confirmed ', 'C05'), 
#	('W09', 'Sarah Aqilah binti Yusoff ', 'Hakimi bin Ismail ', 'The Majestic Hotel, Kuala Lumpur ', '2023-11-09', 'Classic Black and White ', 4500.00, 600, 'Planned ', 'C06'), 
#	('W10', 'Priya Sharma ', 'Arjun Patel ', 'Pahang Royal Residence, Pekan ', '2024-02-22', 'Enchanted Garden ', 7500.00, 900, 'Confirmed ', 'C07');  	

#INSERT INTO INVENTORY (item_ID, item_name, item_status, item_desc, quantity_available, unit_price) VALUES 
#('T01', 'Bride’s Wedding Gown', 'Available', 'Elegant white wedding gown', 2, 900.00), 
#('T02', 'Suit', 'Available', 'Classic black-tie wedding suit', 3, 870.00), 
#('T03', 'Bouquets', 'Available', 'Assorted floral bouquets', 4, 200.00), 
#('T04', 'Lighting and Sound System', 'Available', 'Professional lighting and sound', 5, 750.00), 
#('T05', 'Tables', 'Available', 'Round tables', 50, 50.00), 
#('T06', 'Chairs', 'Available', 'White padded chairs', 150, 10.00), 
#('T07', 'Decorations', 'Available', 'Various decorative items', 20, 80.00), 
#('T08', 'Wedding Car', 'Available', 'Luxury car', 2, 850.00), 
#('T09', 'Door Gifts', 'Available', 'Personalized wedding favors', 1000, 20.00), 
#('T10', 'Wedding Shoes', 'Available', 'Stylish shoes', 15, 300.00); 
 
INSERT INTO SERVICE (service_ID, service_name, service_desc, service_cost) 
VALUES  
    ('S01', 'Catering', 'Full-course meal for guests', 800.00), 
    ('S02', 'Photography', 'Professional wedding photography', 500.00), 
    ('S03', 'DJ Services', 'Music and entertainment', 300.00), 
    ('S04', 'Florist', 'Floral arrangements and bouquets', 250.00), 
    ('S05', 'Wedding Cake', 'Customized cake suits the taste and theme', 300.00), 
    ('S06', 'Wedding Invitation', 'Design and print invitations', 150.00), 
    ('S07', 'Transportation', 'Arrange transportation for the wedding party', 500.00), 
    ('S08', 'Videography', 'Professional wedding videography', 560.00), 
    ('S09', 'Decoration', 'Decorate and customize the arrangement of table and chair', 750.00), 
    ('S10', 'MC', 'Master of ceremony who hosts an event', 550.00); 

INSERT INTO WEDDING_INVENTORY(wedding_ID,item_ID,inventory_price,client_quantity) VALUES 
('W01', 'T01', 900.00, 1 ), 
('W02', 'T01', 900.00, 1 ), 
('W02', 'T02', 870.00, 1), 
('W03', 'T03', 200.00, 1), 
('W04', 'T03', 200.00, 1), 
('W04', 'T04', 750.00, 1), 
('W05', 'T05', 750.00, 15), 
('W06', 'T06', 700.00, 70), 
('W06', 'T07', 1600.00, 20), 
('W07', 'T07', 800.00, 10), 
('W08', 'T07', 400.00, 5), 
('W08', 'T08', 850.00, 1), 
('W09', 'T09', 2000.00, 100), 
('W10', 'T09', 5000.00, 250), 
('W10', 'T10', 600.00, 2); 

INSERT INTO PAYMENT(payment_ID,wedding_ID,payment_status, payment_date, payment_method) VALUES   
('P01', 'W01', 'Successful','2023-02-15', 'Credit Card'),   
('P02', 'W02', 'Pending'   ,'2024-06-01', 'Bank Transfer'),   
('P03', 'W03', 'Successful', '2023-09-20', 'Cash'),   
('P04', 'W04', 'Failed'    ,'2023-07-20', 'Bank Transfer'),   
('P05', 'W05', 'Pending'   ,'2023-05-10', 'Cash'),   
('P06', 'W06', 'Successful','2023-01-29', 'PayPal'),   
('P07', 'W07', 'Successful','2023-08-30', 'Cash'),   
('P08', 'W08', 'Pending'   ,'2023-11-10', 'Bank Transfer'),   
('P09', 'W09', 'Pending'  ,'2023-07-15', 'Credit Card'),   
('P10', 'W10', 'Pending'  ,'2023-06-01', 'Paypal')

INSERT INTO WEDDING_SERVICE (wedding_ID, service_ID, service_Price) VALUES 
('W01', 'S01', 800.00), 
('W01', 'S02', 500.00), 
('W02', 'S03', 300.00), 
('W02', 'S04', 250.00), 
('W03', 'S05', 300.00), 
('W03', 'S06', 150.00), 
('W04', 'S07', 500.00), 
('W04', 'S08', 560.00), 
('W05', 'S09', 750.00), 
('W05', 'S10', 550.00), 
('W06', 'S01', 800.00), 
('W06', 'S02', 500.00), 
('W07', 'S03', 300.00), 
('W07', 'S04', 250.00), 
('W08', 'S05', 300.00), 
('W08', 'S06', 150.00), 
('W09', 'S07', 500.00), 
('W09', 'S08', 560.00), 
('W10', 'S09', 750.00), 
('W10', 'S10', 550.00); 
