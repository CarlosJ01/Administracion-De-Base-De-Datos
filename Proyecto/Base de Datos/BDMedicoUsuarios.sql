-- Creacion de usuarios
CREATE USER 'medico'@'localhost'
IDENTIFIED BY 'root';

CREATE USER 'recepcionista'@'localhost'
IDENTIFIED BY '12345';

-- Permisos para el medico
GRANT ALL PRIVILEGES ON bd_medico.* TO 'medico'@'localhost';

-- Permisos recepcionista
GRANT DELETE, INSERT, UPDATE ON bd_medico.cita TO 'recepcionista'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bd_medico.factura TO 'recepcionista'@'localhost';
GRANT DELETE, INSERT, UPDATE, SELECT ON bd_medico.cita_estudio TO 'recepcionista'@'localhost';
GRANT INSERT, SELECT ON bd_medico.cita_medicamento_anterior TO 'recepcionista'@'localhost';
GRANT INSERT, SELECT ON bd_medico.cita_medicamento_nuevo TO 'recepcionista'@'localhost';
