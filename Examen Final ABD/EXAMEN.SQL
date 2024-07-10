CREATE TABLE alumnos(
	 no_de_control   VARCHAR (50),
	  carrera    VARCHAR (50)  ,
	  reticula    VARCHAR (50)  ,
	  especialidad    VARCHAR (50)  ,
	  nivel_escolar    VARCHAR (50)  ,
	  semestre    VARCHAR (50)  ,
	  clave_interna    VARCHAR (50)  ,
	  estatus_alumno    VARCHAR (50)  ,
	  plan_de_estudios    VARCHAR (50)  ,
	  apellido_paterno    VARCHAR (50)  ,
	  apellido_materno    VARCHAR (50)  ,
	  nombre_alumno    VARCHAR (50)  ,
	  curp_alumno    VARCHAR (50)  ,
	  fecha_nacimiento    VARCHAR (50)  ,
	  sexo    VARCHAR (50)  ,
	  estado_civil    VARCHAR (50)  ,
	  tipo_ingreso    VARCHAR (50)  ,
	  periodo_ingreso_it    VARCHAR (50)  ,
	  ultimo_periodo_inscrito    VARCHAR (50)  ,
	  promedio_periodo_anterior    VARCHAR (50)  ,
	  promedio_aritmetico_acumulado    VARCHAR (50)  ,
	  creditos_aprobados    VARCHAR (50)  ,
	  creditos_cursados    VARCHAR (50)  ,
	  promedio_final_alcanzado    VARCHAR (50)  ,
	  tipo_servicio_medico    VARCHAR (50)  ,
	  clave_servicio_medico    VARCHAR (50)  ,
	  escuela_procedencia    VARCHAR (50)  ,
	  tipo_escuela    VARCHAR (50)  ,
	  domicilio_escuela    VARCHAR (50)  ,
	  entidad_procedencia    VARCHAR (50)  ,
	  ciudad_procedencia    VARCHAR (50)  ,
	  correo_electronico    VARCHAR (50)  ,
	  periodos_revalidacion    VARCHAR (50)  ,
	  becado_por    VARCHAR (50)  ,
	  nip    VARCHAR (50)  ,
	  nacionalidad    VARCHAR (50)  ,
	  usuario    VARCHAR (50)  ,
	  fecha_actualizacion    VARCHAR (50)  ,
	  folio    VARCHAR (50)  ,
	  periodo_estatus    VARCHAR (50)  ,
	  fecha_titulo    VARCHAR (50)  ,
	  op_titula    VARCHAR (50)  ,
	  cedula    VARCHAR (50)  ,
	  libro    VARCHAR (50)  ,
	  hoja    VARCHAR (50)  ,
	  ultimo_login    VARCHAR (50)  ,
	  id_sesion    VARCHAR (50)  ,
	  ip    VARCHAR (50)  ,
	  autoriza_padres    VARCHAR (50)  ,
	  creditos_cargados    VARCHAR (50)  
);

select count(*) from alumnos;

-- Primario
SELECT * FROM alumnos WHERE no_de_control = 11490398;  
CREATE UNIQUE INDEX primario ON alumnos(no_de_control);

-- Secundario Campo Clave
SELECT * FROM alumnos WHERE no_de_control = 11490398 AND clave_interna="EGR" AND carrera = "2";
CREATE UNIQUE INDEX secundarioCampoClave ON alumnos(no_de_control,clave_interna,carrera);

-- Secundario Campo no clave
SELECT * FROM alumnos WHERE estatus_alumno="BT1";
CREATE INDEX secundarioCampoNoClave ON alumnos(estatus_alumno);
