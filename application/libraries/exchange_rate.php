<?php

class exchange_rate
{
    public $exchange_value;

    protected $CI;

    public function __construct()
    {
        $this->CI = &get_instance();
    }

    public function get_exchange_rate()
    {
        $exchange_api_key = $this->CI->config->item('exchange_api_key');
        $get_exchange_rate = file_get_contents("https://www.alphavantage.co/query?function=CURRENCY_EXCHANGE_RATE&from_currency=BTC&to_currency=INR&apikey=" . $exchange_api_key);
        $exchange_data = json_decode($get_exchange_rate, true);
        $this->exchange_value = floatval($exchange_data['Realtime Currency Exchange Rate']['5. Exchange Rate']);
        return $this->exchange_value;
    }
}
