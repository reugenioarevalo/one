<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Maxy</title>


</head>
<style>
#canvas {
    width: 100%;
    height: 100%;
}
</style>

<body>
    <!-- partial:index.partial.html -->
    <h1> Hola <?php echo $usuario->first_name; ?></h1>
    <a href="<?php echo base_url('auth/logout');?>"> SALir</a>



    <?php foreach($imagen as $fila){ ?>

      <img src=" <?php echo base_url($fila['ruta']); ?>" />
      <p> <?php echo base_url($fila['ruta']); ?>"</p>

    <?php }?>



    <canvas id=canvas>
        <!-- partial -->
        <script>
        var ancho = screen.width;
        </script>
        <script src="<?php echo base_url('assets/js/matrix.js');?>"></script>

</body>

</html>