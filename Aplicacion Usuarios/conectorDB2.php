<?php

$database = "SAMPLE";        # Obtener estos detalles de la base de datos de
$hostname = "localhost";  # la consola web
$user     = "DB2ADMIN";   #
$password = "Alfacentauri_1";   #
$port     = 50000;          #
$ssl_port = 50001;          #

# Crear la serie de conexión
#
$driver  = "DRIVER={IBM DB2 ODBC DRIVER};";
$dsn     = "DATABASE=$database; " .
           "HOSTNAME=$hostname;" .
           "PORT=$port; " .
           "PROTOCOL=TCPIP; " .
           "UID=$user;" .
           "PWD=$password;";
//$ssl_dsn = "DATABASE=$database; " .
           "HOSTNAME=$hostname;" .
           "PORT=$ssl_port; " .
           "PROTOCOL=TCPIP; " .
           "UID=$user;" .
           "PWD=$password;" .
           "SECURITY=SSL;";
$conn_string = $driver . $dsn;     # No SSL
//$conn_string = $driver . $ssl_dsn; # SSL

# Conectar
#
echo $conn_string;
$conn = odbc_connect( $conn_string, "", "" );
if( $conn )
{
    echo "Conexión satisfactoria.";

    # Desconectar
    #
    odbc_close( $conn );
}
else
{
    echo "Conexión errónea.";
}
?>