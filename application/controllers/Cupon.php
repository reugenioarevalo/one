<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cupon extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Cupones');
    }

    public function index() {
        
    }

    public function cup_usuarios($idUsuario) {
        echo $idUsuario;
    }

    public function cup_comercio($idUsuario, $idComercio, $importe, $descuento) {

        $porc = ($descuento * $importe) / 100;
        $importe -= $porc;

        $data['Calorias'] = $importe;

        $this->Cupones->update_cupones($data, $idComercio);

        $data['cupon'] = $this->Cupones->getCupon($idComercio);

        $this->load->view('comercio', $data);
    }

    public function sumar_puntos($calorias, $tiempo, $actividad, $idusuario) {
        $data['Calorias']=$calorias;
        $data['Tiempo']=$tiempo;
        $data['Actividad']=$actividad;
        $data['IdUsuario']=$idusuario;
        $data['FechaRutina']='2020-10-07';
        
        $this->db->insert('entrenamientos', $data);
        
    }

    public function descontar_puntos($idUsuario, $puntos, $importe) {
        
    }

    
    
    
}
