<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios extends CI_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->helper('html');
    }

    public function index(){}
    
    public function getUsuarios(){

        echo heading('TODOS LOS USUARIOS', 1, 'style="text-align: center; background-color:green; color:white;"');

       $usuarios =  $this->db->query('SELECT * FROM usuario')->result_array();
        $i=0;
       $list = array();

       foreach($usuarios as $usuario => $fila){
        $list[$usuario]='<h3>'.anchor('Usuarios/getUsuarioId', strtoupper( $fila['Nombres'].' '. $fila['Apellidos']),' style="color:white"' ).'</h3>';
       }
        $attributes = array(
                'class' => 'boldlist',
                'id'    => 'mylist',
                'style'=> 'text-align: center; background-color:green; color:white;'
        );

        echo anchor('lara/', 'Volver').'<br>';
        echo '<br><br><br>';
        echo ul($list, $attributes);
       
    }


    public function getUsuarioId($id){
       $listado =  $this->db->query('SELECT * FROM usuario where id= '.$id.'')->result_array();

       foreach($listado as $k => $fila){
            echo $fila['Nombres'].' '. $fila['Apellidos'].'<br>';
       }
    }


    public function reportes(){}
	
}
