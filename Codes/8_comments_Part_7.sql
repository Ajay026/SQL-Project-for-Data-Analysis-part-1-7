PROMPT creating comments

comment on table customers
  is 'Details of the people placing orders';

comment on column customers.customer_id 
  is 'Auto-incrementing primary key';
  
comment on column customers.email_address 
  is 'The email address the person uses to access the account';
  
comment on column customers.full_name
  is 'What this customer is called';
  
comment on column customers.first_name
  is 'What this customer is called: First Name';
  
comment on column customers.last_name
  is 'What this customer is called: Last Name';  

comment on table stores
  is 'Physical and virtual locations where people can purchase products';

comment on column stores.store_id 
  is 'Auto-incrementing primary key';
  
comment on column stores.store_name 
  is 'What the store is called';
  
comment on column stores.web_address
  is 'The URL of a virtual store';
  
comment on column stores.physical_address
  is 'The postal address of this location';
  
comment on column stores.latitude
  is 'The north-south position of a physical store';
  
comment on column stores.longitude
  is 'The east-west position of a physical store';
  
comment on column stores.logo
  is 'An image used by this store';
  
comment on column stores.logo_mime_type 
  is 'The mime-type of the store logo';
  
comment on column stores.logo_last_updated 
  is 'The date the image was last changed';
  
comment on column stores.logo_filename 
  is 'The name of the file loaded in the image column';
  
comment on column stores.logo_charset 
  is 'The character set used to encode the image';

comment on table products
  is 'Details of goods that customers can purchase';

comment on column products.product_id 
  is 'Auto-incrementing primary key';
  
comment on column products.unit_price 
  is 'The monetary value of one item of this product';
  
comment on column products.product_details 
  is 'Further details of the product stored in JSON format';
  
comment on column products.product_image 
  is 'A picture of the product';
  
comment on column products.image_mime_type 
  is 'The mime-type of the product image';
  
comment on column products.image_last_updated 
  is 'The date the image was last changed';
  
comment on column products.image_filename 
  is 'The name of the file loaded in the image column';
  
comment on column products.image_charset 
  is 'The character set used to encode the image';
  
comment on column products.product_name 
  is 'What a product is called';

comment on table orders
  is 'Details of who made purchases where';

comment on column orders.order_id 
  is 'Auto-incrementing primary key';
  
comment on column orders.order_datetime 
  is 'When the order was placed';
  
comment on column orders.customer_id 
  is 'Who placed this order';
  
comment on column orders.store_id 
  is 'Where this order was placed';
  
comment on column orders.order_status 
  is 'What state the order is in. Valid values are:
OPEN - the order is in progress
PAID - money has been received from the customer for this order
SHIPPED - the products have been dispatched to the customer
COMPLETE - the customer has received the order
CANCELLED - the customer has stopped the order
REFUNDED - there has been an issue with the order and the money has been returned to the customer';

comment on table order_items
  is 'Details of which products the customer has purchased in an order';

comment on column order_items.order_id 
  is 'The order these products belong to';

comment on column order_items.line_item_id 
  is 'An incrementing number, starting at one for each order';

comment on column order_items.product_id 
  is 'Which item was purchased';
  
comment on column order_items.unit_price 
  is 'How much the customer paid for one item of the product';
  
comment on column order_items.quantity 
  is 'How many items of this product the customer purchased';
  
comment on column order_items.shipment_id 
  is 'Where this product will be delivered';         
  
comment on table shipments
  is 'Details of where ordered goods will be delivered';
  
comment on column shipments.shipment_id
  is 'Auto-incrementing primary key';
  
comment on column shipments.store_id
  is 'Which location the goods will be transported from';
  
comment on column shipments.customer_id
  is 'Who this shipment is for';
  
comment on column shipments.delivery_address
  is 'Where the goods will be transported to';
  
comment on column shipments.shipment_status
  is 'The current status of the shipment. Valid values are: 
CREATED - the shipment is ready for order assignment
SHIPPED - the goods have been dispatched
IN-TRANSIT - the goods are en-route to their destination
DELIVERED - the good have arrived at their destination';

comment on table inventory
  is 'Details of the quantity of stock available for products at each location';
  
comment on column inventory.inventory_id
  is 'Auto-incrementing primary key';
  
comment on column inventory.store_id
  is 'Which location the goods are located at';
  
comment on column inventory.product_id
  is 'Which item this stock is for';
  
comment on column inventory.product_inventory
  is 'The current quantity in stock';