<?php
    echo heading('TODOS LOS USUARIOS', 1,  
    'style="text-align: center; background-color:green; color:white;"');

        $i=0;
        $list = array();

        foreach($usuarios as $usuario => $fila){
        $list[$usuario]='<h3>'.anchor('Usuarios/getUsuarioId/'.$fila['Id'],
            strtoupper( $fila['Nombres'].' '. $fila['Apellidos']),
            'style="color:white"' ).'</h3>';
        }
        $attributes = array(
            'class' => 'boldlist','id'    => 'mylist',
            'style'=> 'text-align: center; background-color:green; color:white;'
        );
        echo anchor('lara/', 'Volver').'<br>';
        echo '<br><br><br>';
        echo ul($list, $attributes);