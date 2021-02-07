<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public $exchange_rate;
	function __construct(){
        parent::__construct();
        //Load Libraries
        $this->load->library(array('pagination','exchange_rate'));
        //load model
		$this->load->model(array('product_model'));
        //pagination settings
        $this->perPage = 10;
		$this->exchange_rate = $this->exchange_rate->get_exchange_rate();
    }

    // home page
	public function index()
	{
		$this->initialize_products();
		$data['title']='Home';
        $data['sub_view'] = $this->load->view('site/pages/home', $data, TRUE);
        $this->load->view('site/_layout', $data);
	}

	//List Products - AJAX
    public function list_products($page=0){
        $conditions=array();
        // Row position
        if($page != 0){
            $page = ($page-1) * $this->perPage;
        }
        $keyword=$this->input->post('keyword');
        $price=$this->input->post('price');
        
        if(!empty($keyword)){
            $conditions['keyword'] = $keyword;
        }
        if(!empty($price)){
            if($price=='B100'){
                $price_val=(100*$this->exchange_rate);
                $comparison="LESS_THAN";
                $conditions['price'] = $price_val;
                $conditions['comparison'] = $comparison;
            }elseif($price=='B100A1000'){
                $min_price_val=(100*$this->exchange_rate);
                $max_price_val=(1000*$this->exchange_rate);
                $comparison="BETWEEN";
                $conditions['min_price'] = $min_price_val;
                $conditions['max_price'] = $max_price_val;
                $conditions['comparison'] = $comparison;
            }elseif($price=='A1000'){
                $price_val=(1000*$this->exchange_rate);
                $comparison="GREATER_THAN";
                $conditions['price'] = $price_val;
                $conditions['comparison'] = $comparison;
            }
        }
        //get products count
        $products=$this->product_model->get_products($conditions);
        if($products){
            $productsCount=count($products);
        }else{
            $productsCount=0;
        }
        //set start and limit
        $conditions['start'] = $page;
        $conditions['limit'] = $this->perPage;
        //get all products
        $products = $this->product_model->get_products($conditions);
        //get pagination confing
        $config=$this->pagination_config($base_url=base_url().'home/list_products',$total_rows=$productsCount,$per_page=$this->perPage);
        // Initialize
        $this->pagination->initialize($config);
        //set data array
        $data['pagination'] = $this->pagination->create_links();
        $data['page']=$page;
		if($products){
			$i=0;
			foreach($products as $product){
				$converted_price=floatval($product['price'])/$this->exchange_rate;
				$products[$i]['price']=$converted_price;
                $i++;
			}
		}

		
        $data['products']=$products;
        //response
        $success = true;
        $message = '';
        $content = $this->load->view('site/pages/products',$data,TRUE);
        $json_array = array('success' => $success, 'message' => $message,'content'=>$content);
        echo json_encode($json_array);
        exit();
    }

    // Initial load products from amazon
	public function initialize_products(){
		$products=$this->product_model->get_products($conditions=array());
		if(!$products){
			try{
                require_once APPPATH.'third_party/simple_html_dom.php';
                for($i=1; $i<=4;$i++){
                    $html = file_get_html('https://www.amazon.in/s?i=electronics&bbn=1389401031&page='.$i);
                    foreach($html->find('div.s-result-item') as $product_item) {
                        $code= @$product_item->attr['data-asin'];
                        $title= @$product_item->find('span.a-size-medium', 0)->plaintext;
                        $image= @$product_item->find('img.s-image', 0)->src;
                        $price= @$product_item->find('span.a-price-whole', 0)->plaintext;
                        if($code!=NULL){
                            $item['code']=$code;
                            $item['title']=$title;
                            $item['image']=$image;
                            $item['price']=floatval(str_replace(',', '', $price));
                            $item = $this->security->xss_clean($item);
                            $products[] = $item;
                        }
                    }
                }
                if(count($products)>100){
                    $products=array_slice($products, 0, 100);
                }
                $this->product_model->insert_products($products);
            } catch (Exception $e) {
                log_message('error: ',$e->getMessage());
                return;
            }
		}
	}

	// this function will be called to get configuration of pagination
    public function pagination_config($base_url,$total_rows,$per_page){
        // Pagination Configuration
        $config['base_url'] = $base_url;
        $config['use_page_numbers'] = TRUE;
        $config['total_rows'] = $total_rows;
        $config['per_page'] = $per_page;
        $config['full_tag_open'] = "<ul class='pagination ci-pagination'>";
        $config['full_tag_close'] = '</ul>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        $config['first_link'] = '<i class="feather icon-chevrons-left"></i> First';
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['last_link'] = 'Last <i class="feather icon-chevrons-right"></i>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['prev_link'] = '<i class="feather icon-chevron-left"></i> Next';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = 'Previous <i class="feather icon-chevron-right"></i>';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        return $config;
    }

    // check price change
    public function check_price_change(){
        $products=$this->product_model->get_products($conditions=array());
        if($products){
            foreach($products as $product) {
                try{
                    $product_code=$product['code'];
                    $page_content= file_get_contents("https://www.amazon.in/dp/".$product_code);
                    if(preg_match('/<span id=\"priceblock_ourprice\" class=\"a-size-medium a-color-price priceBlockBuyingPriceString\">(.*?)<\/span>/i',
                    $page_content, $matches)) {
                        $price = trim($matches[1]);
                        $price=filter_var($price, FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                        if(floatval($price)!=floatval($product['price'])){
                            $to=$this->config->item('price_change_email');
                            $message='Price Has been changed for product '.$product['title'].' Form INR '.$product['price'].' To INR '.$price;
                            $subject='Product Price Changed';
                            // sent email
                            $this->send_mail($to,$subject,$message);
                        }
                        
                    }
                } catch (Exception $e) {
                    log_message('error: ',$e->getMessage());
                    return;
                }
                
            }
        }
        
        
    }

    // sent email
    public function send_mail($to,$subject,$message){
        $config = Array(
            'mailtype' => 'html',
            'charset' => 'utf-8',
            'wordwrap' => TRUE
        );
        $from_email=$this->config->item('noreply@rabbitshop.com');
        $from_name = $this->config->item('mail_sent_from_title');
        //load email library
        $this->load->library('email', $config);
        $this->email->set_mailtype("html");
        $this->email->set_newline("\r\n");
        $this->email->from($from_email, $from_name);
        $this->email->to($to);
        $this->email->subject($subject.' - '.$from_name);
        $this->email->message($message);
        if($this->email->send())
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
