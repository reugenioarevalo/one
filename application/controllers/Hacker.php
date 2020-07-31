<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hacker extends CI_Controller {
	public function __construct() {
        parent::__construct();
           
    }

	public function index()
	{
		 $this->load->view('matrix');
	}

	function album(){
		$this->load->view('ejemplos/album/galeria');
    }
    function porcentaje($uno=0,$dos=0,$tres=0){

     if($this->uri->segment(3)!=0 && $this->uri->segment(4)!=0 && $this->uri->segment(5)!=0) 
     {
        $d=$uno+$dos+$tres;
        $d=$d/3;
        echo "El promedio es " . $d;
        
     }
     else{ 
         echo "Escriba en la barra los numeros para promediar";
         
       }
    

     
    
         
    }
}
