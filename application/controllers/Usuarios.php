<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios extends CI_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->helper('html');
        
    }
    public function index(){}

    public function getUsuarios(){
        $data['usuarios'] =  $this->db->query('SELECT * FROM usuario')
        ->result_array();
        $this->load->view('lara/usuarios/usuarios', $data);
    }

    public function getUsuarioId($id){
       $data['usuarios'] = $this->db->query('SELECT * FROM usuario where id= '.$id.'')
       ->result_array();
       $this->load->view('lara/usuarios/usuario_id', $data);
    }


    public function reportes(){}
	
}
