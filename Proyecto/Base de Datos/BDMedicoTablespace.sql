-- Tablespace para usuarios
CREATE TABLESPACE tsp_medico ADD DATAFILE 'tsp_paciente.ibd' FILE_BLOCK_SIZE = 16K ENGINE=INNODB;
CREATE TABLESPACE tsp_recepcionista ADD DATAFILE 'tsp_factura.ibd' FILE_BLOCK_SIZE = 16K ENGINE=INNODB;

-- Tablespace para Tablas
CREATE TABLESPACE tsp_paciente ADD DATAFILE 'tsp_paciente.ibd' FILE_BLOCK_SIZE = 16K ENGINE=INNODB;
CREATE TABLESPACE tsp_factura ADD DATAFILE 'tsp_factura.ibd' FILE_BLOCK_SIZE = 16K ENGINE=INNODB;
CREATE TABLESPACE tsp_cita ADD DATAFILE 'tsp_cita.ibd' FILE_BLOCK_SIZE = 16K ENGINE=INNODB;

CREATE TABLESPACE tsp_cita_estudio ADD DATAFILE 'tsp_cita_estudio.ibd' FILE_BLOCK_SIZE = 8K ENGINE=INNODB;
CREATE TABLESPACE tsp_cita_medicamento_nuevo ADD DATAFILE 'tsp_cita_medicamento_nuevo.ibd' FILE_BLOCK_SIZE = 8K ENGINE=INNODB;
CREATE TABLESPACE tsp_cita_medicamento_anterior ADD DATAFILE 'tsp_cita_medicamento_anterior.ibd' FILE_BLOCK_SIZE = 8K ENGINE=INNODB;

CREATE TABLESPACE tsp_colonia ADD DATAFILE 'tsp_colonia.ibd' FILE_BLOCK_SIZE = 4K ENGINE=INNODB;
CREATE TABLESPACE tsp_poblacion ADD DATAFILE 'tsp_poblacion.ibd' FILE_BLOCK_SIZE = 4K ENGINE=INNODB;
CREATE TABLESPACE tsp_municipio ADD DATAFILE 'tsp_municipio.ibd' FILE_BLOCK_SIZE = 4K ENGINE=INNODB;
CREATE TABLESPACE tsp_estado ADD DATAFILE 'tsp_estado.ibd' FILE_BLOCK_SIZE = 4K ENGINE=INNODB;
CREATE TABLESPACE tsp_tipo_paciente ADD DATAFILE 'tsp_tipo_paciente.ibd' FILE_BLOCK_SIZE = 4K ENGINE=INNODB;
CREATE TABLESPACE tsp_telefono ADD DATAFILE 'tsp_telefono.ibd' FILE_BLOCK_SIZE = 4K ENGINE=INNODB;
CREATE TABLESPACE tsp_ocupacion ADD DATAFILE 'tsp_ocupacion.ibd' FILE_BLOCK_SIZE = 4K ENGINE=INNODB;
CREATE TABLESPACE tsp_estudio ADD DATAFILE 'tsp_estudio.ibd' FILE_BLOCK_SIZE = 4K ENGINE=INNODB;
CREATE TABLESPACE tsp_medicamento ADD DATAFILE 'tsp_medicamento.ibd' FILE_BLOCK_SIZE = 4K ENGINE=INNODB;

-- Mostrar Tablespace
SELECT FILE_ID, FILE_NAME, FILE_TYPE, TABLESPACE_NAME, FREE_EXTENTS,
       TOTAL_EXTENTS,  EXTENT_SIZE, INITIAL_SIZE, MAXIMUM_SIZE, AUTOEXTEND_SIZE, DATA_FREE, STATUS ENGINE
       FROM INFORMATION_SCHEMA.FILES WHERE TABLESPACE_NAME LIKE "tsp_%"
