<html>
<head>
<h1><p align="center">Hola mundo</p></h1>
<?php
$co = shell_exec('uname -a');
echo "Información del sistema";
echo "<pre>$co</pre>";
$salida = shell_exec('lscpu');
echo "Información del CPU";
echo "<pre>$salida</pre>";
$salida1 = shell_exec('free -m');
echo "Información de la RAM";
echo "<pre>$salida1</pre>";
$salida2 = shell_exec('lsblk');
$sal = shell_exec('df -h');
echo "Información sobre HDD";
echo "<pre>$salida2</pre>";
echo "<pre>$sal</pre>";
?>
<p align="center">
<?php
?>
</body>
</html>
