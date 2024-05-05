use weddingEvent;

#1) Display client's information who are from Selangor and their payment is pending. 
#SELECT c.*
#FROM Client c 
#JOIN Wedding w ON c.Client_ID = w.Client_ID
#JOIN Payment p ON w.Wedding_ID = p.Wedding_ID
#WHERE c.Client_address LIKE '%Selangor'
#AND p.Payment_status = 'Pending';

#2) Calculate and display the total amount for each wedding_ID  
#SELECT w.wedding_ID, SUM(i.inventory_price) , SUM(s.service_price), SUM(i.inventory_price) + SUM(s.service_price) AS Total_Amount
#FROM wedding w
#JOIN wedding_inventory i ON w.wedding_ID = i.wedding_ID
#JOIN wedding_service s ON w.wedding_ID = s.wedding_ID
#GROUP BY w.wedding_ID;

#3)Calculate and display the total number of inventory used by each Wedding_ID.
#SELECT w.wedding_ID, count(i.wedding_ID)
#FROM Wedding w JOIN Wedding_Inventory i 
#ON w.Wedding_ID = i.Wedding_ID
#GROUP BY Wedding_ID

#4) List the client information those Wedding_ID is w10. 
#SELECT c.* 
#FROM client c JOIN wedding w
#ON c.client_ID = w.client_ID
#WHERE w.wedding_ID= "w10"

#6) List all inventory items and quantity that booked by wedding_ID ‘w06’ 
#SELECT wi.wedding_ID, wi.item_ID, i.item_name, quantity_available
#FROM wedding_inventory wi
#JOIN inventory i ON wi.item_ID = i.item_ID
#WHERE wi.wedding_ID = "w06"

#7) Find the wedding reservation that made for venue held in Kuala Lumpur  
#SELECT wedding_ID, wedding_venue
#FROM wedding
#WHERE wedding_venue LIKE '%Kuala Lumpur%'

#8) List all the payment detail that Payment_Method ‘Credit Card’ or Payment_Status ‘Successful’ 



