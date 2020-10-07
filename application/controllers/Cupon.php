<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cupon extends CI_Controller {

    public function __construct() {
        parent::__construct();
       //$this->load->model('Cupones');
    }

    public function index(){}

    public function cup_usuarios($idUsuario){ 
        echo $idUsuario;
    }

    public function cup_comercio($idUsuario, $idComercio){
        echo 'comercio: '.$idComercio.' - user:'.$idUsuario; 
    }

    public function sumar_puntos($idUsuario, $puntos){
        echo 'sumar puntos: '.$puntos.' - user: '.$idUsuario;
    }

    public function descontar_puntos($idUsuario, $puntos, $importe){}

}