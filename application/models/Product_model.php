<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Product_model extends CI_Model{
    //get products
    public function get_products($params = array()){
        $this->db->select('p.*');
        $this->db->from('products p');
        if(array_key_exists("keyword",$params)){
            $this->db->like('p.title', $params['keyword']);
        }
        if(array_key_exists("comparison",$params)){
            if($params['comparison']=='LESS_THAN'){
                $this->db->where('p.price <', $params['price']);
            }elseif($params['comparison']=='BETWEEN'){
                $this->db->where('p.price >', $params['min_price']);
                $this->db->where('p.price <', $params['max_price']);
            }elseif($params['comparison']=='GREATER_THAN'){
                $this->db->where('p.price >', $params['price']);
            }
            
             
        }
        //set start and limit
        if(array_key_exists("start",$params) && array_key_exists("limit",$params)){
            $this->db->limit($params['limit'],$params['start']);
        }elseif(!array_key_exists("start",$params) && array_key_exists("limit",$params)){
            $this->db->limit($params['limit']);
        }
        $this->db->order_by("p.title","asc");
		$query = $this->db->get();
		//return fetched data
        return ($query->num_rows() > 0)?$query->result_array():FALSE;
    }

    // insert products
    public function insert_products($products){
        $this->db->trans_start();
        foreach($products as $product){
            $save_data=array(
                'code'=>$product['code'],
                'title'=>$product['title'],
                'image'=>$product['image'],
                'price'=>$product['price'],
                'created_on'=>date('Y-m-d H:i:s')
            );
            $this->db->insert('products',$save_data);
        }
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
        }else{
            $this->db->trans_commit();
        }
    }
}