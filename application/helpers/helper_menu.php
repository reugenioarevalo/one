<?php 

function  menu(){

switch($_POST['opcion']){
    case 1: echo"<a href=".base_url('')."'usuarios'>Usuarios</a>";
    break;
    case 2: echo"<a href=".base_url('')."'entrenamientos'>entrenamientos</a>";
    break;
   default: break;
    }
}