<?php
class Cupones extends CI_Model {

        public function __construct()
        {
                $this->load->database();
        }
        
        public function update_cupones($datos, $id)
        {
           $this->db->where("id", $id);  
           $this->db->update("entrenamientos", $datos);  
        }
          
        public function getCupon( $id)
        {
           $cupon= $this->db->get("entrenamientos", array('id' => $id))->row();
           return $cupon;
        }
           public function insertar_cupones($datos)
        {
                 $this->db->insert("entrenamientos", $datos);  
        }
}
