<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public function __construct() {
		parent::__construct();
		
    }

	public function index()
	{	
		if($this->ion_auth->logged_in()){

			$data['usuario']=$this->ion_auth->user()->row();

			$idUsuario=$data['usuario'];
			$data['imagen']=$this->db->query("select * from imagenes where id_user= ".$idUsuario->id." order by ruta ")->result_array();
			$this->load->view('matrix', $data);

		}else{
			
			redirect(base_url('auth/login'));
		}

	}
	function mostraralbum($parametro){

		if($this->is_login($parametro)==true){

			$this->load->view('header');
			$this->load->view('nav');
			$this->load->view('ejemplos/album/index');
			$this->load->view('footer');

		}else{

			$this->load->view('login');
			redirect( base_url('welcome/album/true'));
			
		}
		
	}

	function carusel(){
		$this->load->view('ejemplos/carusel/index');
	}
	
}
