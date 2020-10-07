<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Lara extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('html');
    }

    public function index()
    {
        echo heading('BIENVENIDO a LARA gYm!', 1);
        echo anchor('lara/usuarios', 'Usuarios') . '<br>';
        echo anchor('lara/entrenamientos', 'Entrenamientos') . '<br>';
        echo anchor('lara/reportes', 'Reportes') . '<br>';
    }

    public function usuarios()
    {
        echo heading('USUARIOS', 1, 'style="text-align: center; background-color:green; color:white;"');
        echo anchor('usuarios/getUsuarios', 'Listar todos los Usuarios', 'style="text-decoration:none;"') . '<br>';
        echo anchor('usuarios/getUsuarioId', 'Listar Usuario por ID', 'style="text-decoration:none;"') . '<br>';
        echo anchor('lara/', 'Volver', 'style="text-decoration:none;"') . '<br>';
    }

    public function entrenamientos()
    {
        
    }

    public function reportes()
    {
    }
}
