###################
Development
###################

Application Done Using Codeigniter Framework Version 3.1.11

*******************
How To Use
*******************

1)Database File Included in db/rabbit.sql

2)Database configuration can be done in application/config/database.php

'hostname' => 'localhost',
'username' => 'root',
'password' => '',
'database' => 'rabbit',

3) Price change email and Exchange Email can be set in application/config/custom.php

// crypto-exchange API Key
$config['exchange_api_key']='YZNKPWNW4IQYQTWC';

// Product Price Change Mail Sent To
$config['price_change_email']='abduravoof@gmail.com';

// Email Sent From
$config['mail_sent_from']='noreply@rabbitshop.com';

// Email Sent From Title
$config['mail_sent_from_title']='Rabbit Shop';


4) Price change detection can be done by setting cron job like below


0 * * * * php /home/username/index.php home check_price_change


5)Fetching exchange ratio is done in application/libraries/exchange_rate.php
