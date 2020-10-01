<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios extends CI_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->helper('html');
        $this->load->library('table');
        
    }
    public function index(){}

    public function getUsuarios(){
        $usuarios =  $this->db->query('SELECT * FROM usuario')
        ->result_array();
        $attributes = array('class' => 'users','id' => 'users');
        $i=0;
        $list = array();
        foreach($usuarios as $usuario => $fila){
            $list[$usuario]=heading(anchor('Usuarios/getUsuarioId/'.$fila['Id'],
            strtoupper( $fila['Nombres'].' '. $fila['Apellidos'])),2);
        }
        
        $new_list = $this->table->make_columns($list, 1);
        $data['layout']= heading('TODOS LOS USUARIOS', 1);
        $data['layout'].=anchor(base_url('lara'), 'Volver');
        $data['layout'].=str_repeat('<br/>',3);
        $data['layout'].=$this->table->generate($new_list, $attributes);
        $this->load->view('layout/template', $data);
    }

    public function getUsuarioId($id){
       $data['usuarios'] = $this->db->query('SELECT * FROM usuario where id= '.$id.'')
       ->result_array();
       $this->load->view('lara/usuarios/usuario_id', $data);
    }


    public function reportes(){}
	
}
