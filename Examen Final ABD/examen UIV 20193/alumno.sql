
CREATE TABLE public.alumnos
(
    no_de_control "T_no_de_control" COLLATE pg_catalog."default" NOT NULL,
    carrera "T_carrera" COLLATE pg_catalog."default",
    reticula "T_reticula",
    especialidad "T_especialidad" COLLATE pg_catalog."default",
    nivel_escolar character(1) COLLATE pg_catalog."default",
    semestre integer,
    clave_interna character(10) COLLATE pg_catalog."default",
    estatus_alumno character(3) COLLATE pg_catalog."default" DEFAULT 'ACT'::bpchar,
    plan_de_estudios character(1) COLLATE pg_catalog."default" NOT NULL,
    apellido_paterno "T_apellidos_persona" COLLATE pg_catalog."default",
    apellido_materno "T_apellidos_persona" COLLATE pg_catalog."default",
    nombre_alumno "T_nombre_persona" COLLATE pg_catalog."default",
    curp_alumno "T_curp" COLLATE pg_catalog."default" NOT NULL,
    fecha_nacimiento "T_fecha",
    sexo "T_sexo" COLLATE pg_catalog."default",
    estado_civil "T_estado_civil" COLLATE pg_catalog."default",
    tipo_ingreso numeric(1,0) NOT NULL,
    periodo_ingreso_it "T_periodo" COLLATE pg_catalog."default" NOT NULL,
    ultimo_periodo_inscrito "T_periodo" COLLATE pg_catalog."default",
    promedio_periodo_anterior "T_promedio",
    promedio_aritmetico_acumulado "T_promedio",
    creditos_aprobados "T_creditos",
    creditos_cursados "T_creditos",
    promedio_final_alcanzado "T_promedio",
    tipo_servicio_medico character(10) COLLATE pg_catalog."default",
    clave_servicio_medico character(20) COLLATE pg_catalog."default",
    escuela_procedencia character varying(100) COLLATE pg_catalog."default",
    tipo_escuela integer,
    domicilio_escuela character varying(60) COLLATE pg_catalog."default",
    entidad_procedencia "T_entidad_federativa",
    ciudad_procedencia "T_ciudad" COLLATE pg_catalog."default",
    correo_electronico character varying(120) COLLATE pg_catalog."default",
    periodos_revalidacion integer,
    becado_por character varying(100) COLLATE pg_catalog."default",
    nip character varying(200) COLLATE pg_catalog."default",
    nacionalidad character(10) COLLATE pg_catalog."default",
    usuario character(30) COLLATE pg_catalog."default",
    fecha_actualizacion "T_fecha",
    folio integer,
    periodo_estatus "T_periodo" COLLATE pg_catalog."default",
    fecha_titulo "T_fecha",
    op_titula character(50) COLLATE pg_catalog."default",
    cedula character(20) COLLATE pg_catalog."default",
    libro integer,
    hoja integer,
    ultimo_login "T_fecha",
    id_sesion character varying(100) COLLATE pg_catalog."default",
    ip text COLLATE pg_catalog."default",
    autoriza_padres integer DEFAULT 0,
    creditos_cargados integer DEFAULT 0,
    CONSTRAINT edocivil CHECK (estado_civil::bpchar = ANY (ARRAY['S'::bpchar, 'C'::bpchar, 'D'::bpchar, 'V'::bpchar, 'U'::bpchar, ' '::bpchar])),
    CONSTRAINT sexochk CHECK (sexo::bpchar = ANY (ARRAY['M'::bpchar, 'F'::bpchar, ' '::bpchar]))
)


"T_apellidos_persona"
    AS character varying(['50']);

"T_area_de_trabajo"
    AS character(['6']);

"T_aula"
    AS character([u'6']);
	
"T_calificacion"
    AS integer;
	
"T_carrera"
    AS character([u'3']);

"T_ciudad"
    AS character varying([u'30']);
	
"T_creditos"
    AS integer;

"T_curp"
    AS character([u'18']);
	
"T_descripcion"
    AS character varying([u'255']);
	
"T_entidad_federativa"
    AS integer;
	
"T_especialidad"
    AS character([u'5']);
	
"T_estado_civil"
    AS character([u'1']);
	
"T_fecha"
    AS timestamp without time zone;
	
"T_folio_acta"
    AS character([u'12']);
	
"T_no_de_control"
    AS character([u'10']);
	
"T_nombre_persona"
    AS character varying([u'35']);
	
"T_promedio"
    AS numeric(5,2);
	
"T_reticula"
    AS integer;
	
"T_rfc"
    AS character([u'13']);
	
"T_sexo"
    AS character([u'1']);
	
