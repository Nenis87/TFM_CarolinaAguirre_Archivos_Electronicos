CREATE TABLE DATOSENCUESTA_CODIFICADO_PREPARADA AS
(
    SELECT 
    cod."datosEncuesta$SEQN_EXAMINATION" AS SEQN_EXAMINATION,
    cod."datosEncuesta$PESO_KG" AS PESO_KG,
    cod."datosEncuesta$ALTURA_DE_PIE_CM" AS ALTURA_DE_PIE_CM,
    cod."datosEncuesta$INDICE_MASA_CORPORAL" AS INDICE_MASA_CORPORAL,
    cod."datosEncuesta$EDAD_ANIOS" AS EDAD_ANIOS,
    cod."DESC_GENEROMasculino" AS MASCULINO,
    CASE WHEN cod."DESC_GENEROMasculino" = 0 THEN 1 ELSE 0 END AS FEMENINO,
    cod."DESC_RAZA_ORIGEN_HISPANOMexicano Americano" AS MEXICANO_AMERICANO, 
    cod."DESC_RAZA_ORIGEN_HISPANONegro no hispano" AS NEGRO_NO_HISPANO, 
    cod."DESC_RAZA_ORIGEN_HISPANOOtra raza - Incluyendo Multi-Racial" AS OTRA_RAZA_INCLUYENDO_MULTIRACIAL, 
    cod."DESC_RAZA_ORIGEN_HISPANOOtros hispano" AS OTROS_HISPANO,
    CASE WHEN cod."DESC_RAZA_ORIGEN_HISPANOMexicano Americano" = 0 AND cod."DESC_RAZA_ORIGEN_HISPANONegro no hispano" = 0 AND cod."DESC_RAZA_ORIGEN_HISPANOOtra raza - Incluyendo Multi-Racial" = 0 AND cod."DESC_RAZA_ORIGEN_HISPANOOtros hispano" = 0 THEN 1 
    ELSE 0 END AS BLANCO_NO_HISPANO,
    cod."DESC_PAIS_NACIMIENTOOtros" AS NACIDO_OTROS_PAISES,
    CASE WHEN cod."DESC_PAIS_NACIMIENTOOtros" = 0 THEN 1 ELSE 0 END AS NACIDO_50_ESTADOS_EEUU_O_WASHINGTON,
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOPrimer grado" AS EDUCACION_PRIMER_GRADO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOSegundo grado" AS EDUCACION_SEGUNDO_GRADO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOTercer grado" AS EDUCACION_TERCER_GRADO,
    CASE WHEN cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOD�cimo grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOD�cimo Primer grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOD�cimo Segundo grado, no diploma" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOGED o equivalente" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOGraduado de preparatoria" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOM�s que la secundaria" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOMenos del Noveno grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOMenos del Quinto grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIONo definido" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIONo sabe" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIONoveno grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIONunca asisti� / solo jard�n de infantes" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOOctavo grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOPrimer grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOQuinto grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOSegundo grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOS�ptimo grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOSexto grado" =0 AND cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOTercer grado" =0 THEN 1
    ELSE 0 END AS EDUCACION_CUARTO_GRADO,
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOQuinto grado" AS EDUCACION_QUINTO_GRADO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOSexto grado" AS EDUCACION_SEXTO_GRADO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOS�ptimo grado" AS EDUCACION_SEPTIMO_GRADO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOOctavo grado" AS EDUCACION_OCTAVO_GRADO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIONoveno grado" AS EDUCACION_NOVENO_GRADO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOD�cimo grado" AS EDUCACION_DECIMO_GRADO,  
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOD�cimo Primer grado" AS EDUCACION_DECIMO_PRIMER_GRADO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOD�cimo Segundo grado, no diploma" AS EDUCACION_DECIMO_SEGUNDO_GRADO_NO_DIPLOMA, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOGraduado de preparatoria" AS EDUCACION_GRADUADO_PREPARATORIA, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOM�s que la secundaria" AS EDUCACION_MAS_QUE_SECUNDARIA, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOGED o equivalente" AS EDUCACION_GED_EQUIVALENTE, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOMenos del Quinto grado" AS EDUCACION_MENOS_QUINTO_GRADO,
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIOMenos del Noveno grado" AS EDUCACION_MENOS_NOVENO_GRADO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIONunca asisti� / solo jard�n de infantes" AS EDUCACION_NUNCA_ASISTIO_SOLO_JARDIN_INFANTES, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIONo definido" AS EDUCACION_NO_DEFINIDO, 
    cod."DESC_NIVEL_EDUCATIVO_6_19_ANIONo sabe" AS EDUCACION_NO_SABE, 
    CASE WHEN cod."DESC_NUMERO_PERSONAS_HOGAR2" =0 AND cod."DESC_NUMERO_PERSONAS_HOGAR3" =0 AND cod."DESC_NUMERO_PERSONAS_HOGAR4" =0 AND cod."DESC_NUMERO_PERSONAS_HOGAR5" =0 AND cod."DESC_NUMERO_PERSONAS_HOGAR6" =0 AND cod."DESC_NUMERO_PERSONAS_HOGAR7 o m�s personas en el hogar" =0 THEN 1
    ELSE 0 END AS EXISTE_1_PERSONA_EN_HOGAR,
    cod."DESC_NUMERO_PERSONAS_HOGAR2" AS EXISTE_2_PERSONAS_EN_HOGAR,
    cod."DESC_NUMERO_PERSONAS_HOGAR3" AS EXISTE_3_PERSONAS_EN_HOGAR, 
    cod."DESC_NUMERO_PERSONAS_HOGAR4" AS EXISTE_4_PERSONAS_EN_HOGAR, 
    cod."DESC_NUMERO_PERSONAS_HOGAR5" AS EXISTE_5_PERSONAS_EN_HOGAR, 
    cod."DESC_NUMERO_PERSONAS_HOGAR6" AS EXISTE_6_PERSONAS_EN_HOGAR, 
    cod."DESC_NUMERO_PERSONAS_HOGAR7 o m�s personas en el hogar" AS EXISTE_7_MAS_PERSONAS_EN_HOGAR,
    CASE WHEN cod."DESC_INGRESO_ANUAL_HOGAR$ 5,000 to $ 9,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGAR$10,000 to $14,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGAR$15,000 to $19,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGAR$20,000 to $24,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGAR$25,000 to $34,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGAR$35,000 to $44,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGAR$45,000 to $54,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGAR$55,000 to $64,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGAR$65,000 to $74,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGAR$75,000 to $99,999" =0 AND cod."DESC_INGRESO_ANUAL_HOGARBajo los $20,000" =0 AND cod."DESC_INGRESO_ANUAL_HOGARNo definido" =0 AND cod."DESC_INGRESO_ANUAL_HOGARNo responde" =0 AND cod."DESC_INGRESO_ANUAL_HOGARNo sabe" =0 AND cod."DESC_INGRESO_ANUAL_HOGARSobre los $100,000" =0 AND cod."DESC_INGRESO_ANUAL_HOGARSobre los $20,000" =0 THEN 1
    ELSE 0 END AS INGRESO_ANUAL_HOGAR_USD0_4999,
    cod."DESC_INGRESO_ANUAL_HOGAR$ 5,000 to $ 9,999" AS INGRESO_ANUAL_HOGAR_USD5000_9999, 
    cod."DESC_INGRESO_ANUAL_HOGAR$10,000 to $14,999" AS INGRESO_ANUAL_HOGAR_USD10000_14999, 
    cod."DESC_INGRESO_ANUAL_HOGAR$15,000 to $19,999" AS INGRESO_ANUAL_HOGAR_USD15000_19999, 
    cod."DESC_INGRESO_ANUAL_HOGAR$20,000 to $24,999" AS INGRESO_ANUAL_HOGAR_USD20000_24999, 
    cod."DESC_INGRESO_ANUAL_HOGAR$25,000 to $34,999" AS INGRESO_ANUAL_HOGAR_USD25000_34999, 
    cod."DESC_INGRESO_ANUAL_HOGAR$35,000 to $44,999" AS INGRESO_ANUAL_HOGAR_USD35000_44999, 
    cod."DESC_INGRESO_ANUAL_HOGAR$45,000 to $54,999" AS INGRESO_ANUAL_HOGAR_USD45000_54999, 
    cod."DESC_INGRESO_ANUAL_HOGAR$55,000 to $64,999" AS INGRESO_ANUAL_HOGAR_USD55000_64999, 
    cod."DESC_INGRESO_ANUAL_HOGAR$65,000 to $74,999" AS INGRESO_ANUAL_HOGAR_USD65000_74999, 
    cod."DESC_INGRESO_ANUAL_HOGAR$75,000 to $99,999" AS INGRESO_ANUAL_HOGAR_USD75000_99999,
    cod."DESC_INGRESO_ANUAL_HOGARSobre los $100,000" AS INGRESO_ANUAL_HOGAR_SOBRE_USD100000, 
    cod."DESC_INGRESO_ANUAL_HOGARSobre los $20,000" AS INGRESO_ANUAL_HOGAR_SOBRE_USD20000,
    cod."DESC_INGRESO_ANUAL_HOGARBajo los $20,000" AS INGRESO_ANUAL_HOGAR_BAJO_USD20000, 
    cod."DESC_INGRESO_ANUAL_HOGARNo definido" AS INGRESO_ANUAL_HOGAR_NO_DEFINIDO, 
    cod."DESC_INGRESO_ANUAL_HOGARNo responde" AS INGRESO_ANUAL_HOGAR_NO_RESPONDE, 
    cod."DESC_INGRESO_ANUAL_HOGARNo sabe" AS INGRESO_ANUAL_HOGAR_NO_SABE, 
    cod."DESC_ASIST_JARDIN_INF_ESC_SECUNo definido" AS NO_DEFINIDO_ASISTE_JARDIN_INF_ESCUELA_SECUNDARIA, 
    cod."DESC_ASIST_JARDIN_INF_ESC_SECUSi" AS ASISTE_JARDIN_INF_ESCUELA_SECUNDARIA,
    CASE WHEN cod."DESC_ASIST_JARDIN_INF_ESC_SECUNo definido" =0 AND cod."DESC_ASIST_JARDIN_INF_ESC_SECUSi" =0 THEN 1 ELSE 0 END AS NO_ASISTE_JARDIN_INF_ESCUELA_SECUNDARIA,
    cod."DESC_ESCUELA_SIRVE_ALMUERZONo definido" AS NO_DEFINIDO_ESCUELA_SIRVE_ALMUERZO, 
    cod."DESC_ESCUELA_SIRVE_ALMUERZONo sabe" AS NO_SABE_ESCUELA_SIRVE_ALMUERZO, 
    cod."DESC_ESCUELA_SIRVE_ALMUERZOSi" AS ESCUELA_SIRVE_ALMUERZO,
    CASE WHEN cod."DESC_ESCUELA_SIRVE_ALMUERZONo definido" =0 AND cod."DESC_ESCUELA_SIRVE_ALMUERZONo sabe" =0 AND cod."DESC_ESCUELA_SIRVE_ALMUERZOSi" =0 THEN 1 ELSE 0 END AS ESCUELA_NO_SIRVE_ALMUERZO,
     CASE WHEN cod."DESC_NUM_VECES_SEM_ALMUE_ESCU1" =0 AND cod."DESC_NUM_VECES_SEM_ALMUE_ESCU2" =0 AND cod."DESC_NUM_VECES_SEM_ALMUE_ESCU3" =0 AND cod."DESC_NUM_VECES_SEM_ALMUE_ESCU4" =0 AND cod."DESC_NUM_VECES_SEM_ALMUE_ESCU5" =0 AND cod."DESC_NUM_VECES_SEM_ALMUE_ESCUNo definido" =0 AND cod."DESC_NUM_VECES_SEM_ALMUE_ESCUNo responde" =0 AND cod."DESC_NUM_VECES_SEM_ALMUE_ESCUNo sabe" =0 THEN 1
    ELSE 0 END AS NO_ALMUERZA_ESCUELA,
    cod."DESC_NUM_VECES_SEM_ALMUE_ESCU1" AS ALMUERZA_ESCUELA_1_VEZ_SEMANA,
    cod."DESC_NUM_VECES_SEM_ALMUE_ESCU2" AS ALMUERZA_ESCUELA_2_VECES_SEMANA, 
    cod."DESC_NUM_VECES_SEM_ALMUE_ESCU3" AS ALMUERZA_ESCUELA_3_VECES_SEMANA, 
    cod."DESC_NUM_VECES_SEM_ALMUE_ESCU4" AS ALMUERZA_ESCUELA_4_VECES_SEMANA, 
    cod."DESC_NUM_VECES_SEM_ALMUE_ESCU5" AS ALMUERZA_ESCUELA_5_VECES_SEMANA, 
    cod."DESC_NUM_VECES_SEM_ALMUE_ESCUNo definido" AS NO_DEFINIDO_ALMUERZA_ESCUELA, 
    cod."DESC_NUM_VECES_SEM_ALMUE_ESCUNo responde" AS NO_RESPONDE_ALMUERZA_ESCUELA, 
    cod."DESC_NUM_VECES_SEM_ALMUE_ESCUNo sabe" AS NO_SABE_ALMUERZA_ESCUELA,
    cod."DESC_ESCU_SIRVE_DESAYUN_DIARIONo definido" AS NO_DEFINIDO_ESCUELA_SIRVE_DESAYUNO, 
    cod."DESC_ESCU_SIRVE_DESAYUN_DIARIONo sabe" AS NO_SABE_ESCUELA_SIRVE_DESAYUNO, 
    cod."DESC_ESCU_SIRVE_DESAYUN_DIARIOSi" AS ESCUELA_SIRVE_DESAYUNO,
    CASE WHEN cod."DESC_ESCU_SIRVE_DESAYUN_DIARIONo definido"=0 AND cod."DESC_ESCU_SIRVE_DESAYUN_DIARIONo sabe" =0 AND cod."DESC_ESCU_SIRVE_DESAYUN_DIARIOSi" =0 THEN 1 ELSE 0 END AS ESCUELA_NO_SIRVE_DESAYUNO,
    CASE WHEN cod."DESC_NUM_VECES_SEM_DESAYU_ESCU1" =0 AND cod."DESC_NUM_VECES_SEM_DESAYU_ESCU2" =0 AND cod."DESC_NUM_VECES_SEM_DESAYU_ESCU3" =0 AND cod."DESC_NUM_VECES_SEM_DESAYU_ESCU4" =0 AND cod."DESC_NUM_VECES_SEM_DESAYU_ESCU5" =0 AND cod."DESC_NUM_VECES_SEM_DESAYU_ESCUNo definido" =0 AND cod."DESC_NUM_VECES_SEM_DESAYU_ESCUNo responde" =0 AND cod."DESC_NUM_VECES_SEM_DESAYU_ESCUNo sabe" =0 THEN 1
    ELSE 0 END AS NO_DESAYUNA_ESCUELA,
    cod."DESC_NUM_VECES_SEM_DESAYU_ESCU1" AS DESAYUNA_ESCUELA_1_VEZ_SEMANA, 
    cod."DESC_NUM_VECES_SEM_DESAYU_ESCU2" AS DESAYUNA_ESCUELA_2_VECES_SEMANA, 
    cod."DESC_NUM_VECES_SEM_DESAYU_ESCU3" AS DESAYUNA_ESCUELA_3_VECES_SEMANA, 
    cod."DESC_NUM_VECES_SEM_DESAYU_ESCU4" AS DESAYUNA_ESCUELA_4_VECES_SEMANA, 
    cod."DESC_NUM_VECES_SEM_DESAYU_ESCU5" AS DESAYUNA_ESCUELA_5_VECES_SEMANA, 
    cod."DESC_NUM_VECES_SEM_DESAYU_ESCUNo definido" AS NO_DEFINIDO_DESAYUNA_ESCUELA, 
    cod."DESC_NUM_VECES_SEM_DESAYU_ESCUNo responde" AS NO_RESPONDE_DESAYUNA_ESCUELA, 
    cod."DESC_NUM_VECES_SEM_DESAYU_ESCUNo sabe" AS NO_SABE_DESAYUNA_ESCUELA,
    CASE WHEN cod."DESC_NUM_COMIDA_NO_PREPARA_CASA1" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA10" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA11" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA12" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA13" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA14" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA15" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA16" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA17" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA18" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA19" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA2" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA20" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA21" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA3" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA4" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA5" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA6" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA7" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA8" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASA9" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASAM�s de 21 comidas a la semana" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASANo definido" =0 AND cod."DESC_NUM_COMIDA_NO_PREPARA_CASANo sabe" =0 THEN 1
    ELSE 0 END AS NO_CONSUME_COMIDA_NO_PREPARADA_CASA,
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA1" AS CONSUME_1_VEZ_SEM_COMIDA_NO_PREPARADA_CASA,
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA2" AS CONSUME_2_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA3" AS CONSUME_3_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA4" AS CONSUME_4_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA5" AS CONSUME_5_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA6" AS CONSUME_6_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA7" AS CONSUME_7_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA8" AS CONSUME_8_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA9" AS CONSUME_9_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA10" AS CONSUME_10_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA11" AS CONSUME_11_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA12" AS CONSUME_12_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA13" AS CONSUME_13_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA14" AS CONSUME_14_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA15" AS CONSUME_15_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA16" AS CONSUME_16_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA17" AS CONSUME_17_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA18" AS CONSUME_18_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA19" AS CONSUME_19_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA20" AS CONSUME_20_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASA21" AS CONSUME_21_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASAM�s de 21 comidas a la semana" AS CONSUME_MAS_21_VECES_SEM_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASANo definido" AS NO_DEFINIDO_VECES_CONSUME_COMIDA_NO_PREPARADA_CASA, 
    cod."DESC_NUM_COMIDA_NO_PREPARA_CASANo sabe" AS NO_SABE_VECES_CONSUME_COMIDA_NO_PREPARADA_CASA,
    CASE WHEN cod."DESC_NUM_COMIDA_RAPID_PIZZERIA1" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA10" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA11" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA12" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA13" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA14" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA15" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA19" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA2" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA20" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA21" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA3" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA4" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA5" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA6" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA7" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA8" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIA9" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIANo definido" =0 AND cod."DESC_NUM_COMIDA_RAPID_PIZZERIANo sabe" =0 THEN 1
    ELSE 0 END AS NO_CONSUME_COMIDA_RAPID_PIZZERIA,
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA1" AS CONSUME_1_VEZ_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA2" AS CONSUME_2_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA3" AS CONSUME_3_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA4" AS CONSUME_4_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA5" AS CONSUME_5_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA6" AS CONSUME_6_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA7" AS CONSUME_7_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA8" AS CONSUME_8_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA9" AS CONSUME_9_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA10" AS CONSUME_10_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA11" AS CONSUME_11_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA12" AS CONSUME_12_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA13" AS CONSUME_13_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA14" AS CONSUME_14_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA15" AS CONSUME_15_VECES_SEM_COMIDA_RAPID_PIZZERIA,
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA19" AS CONSUME_19_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA20" AS CONSUME_20_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIA21" AS CONSUME_21_VECES_SEM_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIANo definido" AS NO_DEFINIDO_VECES_CONSUME_COMIDA_RAPID_PIZZERIA, 
    cod."DESC_NUM_COMIDA_RAPID_PIZZERIANo sabe" AS NO_SABE_VECES_CONSUME_COMIDA_RAPID_PIZZERIA,
    CASE WHEN cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN1 d�a" =0 AND cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN2 d�as" =0 AND cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN3 d�as" =0 AND cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN4 d�as" =0 AND cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN5 d�as" =0 AND cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN6 d�as" =0 AND cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN7 d�as" =0 AND cod."DESC_DIA_FISIC_ACTIV_ALM_60MINNo definido" =0 AND cod."DESC_DIA_FISIC_ACTIV_ALM_60MINNo sabe" =0 THEN 1
    ELSE 0 END AS NUNCA_FISIC_ACTIV_ALM_60MIN,
    cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN1 d�a" AS FISIC_ACTIV_ALM_60MIN_1_DIA_SEM, 
    cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN2 d�as" AS FISIC_ACTIV_ALM_60MIN_2_DIAS_SEM, 
    cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN3 d�as" AS FISIC_ACTIV_ALM_60MIN_3_DIAS_SEM, 
    cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN4 d�as" AS FISIC_ACTIV_ALM_60MIN_4_DIAS_SEM, 
    cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN5 d�as" AS FISIC_ACTIV_ALM_60MIN_5_DIAS_SEM, 
    cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN6 d�as" AS FISIC_ACTIV_ALM_60MIN_6_DIAS_SEM, 
    cod."DESC_DIA_FISIC_ACTIV_ALM_60MIN7 d�as" AS FISIC_ACTIV_ALM_60MIN_7_DIAS_SEM, 
    cod."DESC_DIA_FISIC_ACTIV_ALM_60MINNo definido" AS NO_DEFINIDO_FISIC_ACTIV_ALM_60MIN, 
    cod."DESC_DIA_FISIC_ACTIV_ALM_60MINNo sabe" AS NO_SABE_FISIC_ACTIV_ALM_60MIN,
    cod."DESC_HORAS_TV_VIDEO_ULT_30DIASNo mira televisi�n ni videos" AS NO_MIRA_TELEVISION_NI_VIDEOS, 
    cod."DESC_HORAS_TV_VIDEO_ULT_30DIASMenos de 1 hora" AS MIRA_TELEVISION_VIDEOS_MENOS_1_HORA_MES, 
    CASE WHEN cod."DESC_HORAS_TV_VIDEO_ULT_30DIAS2 horas" =0 AND cod."DESC_HORAS_TV_VIDEO_ULT_30DIAS3 horas" =0 AND cod."DESC_HORAS_TV_VIDEO_ULT_30DIAS4 horas" =0 AND cod."DESC_HORAS_TV_VIDEO_ULT_30DIAS5 horas o m�s" =0 AND cod."DESC_HORAS_TV_VIDEO_ULT_30DIASMenos de 1 hora" =0 AND cod."DESC_HORAS_TV_VIDEO_ULT_30DIASNo definido" =0 AND cod."DESC_HORAS_TV_VIDEO_ULT_30DIASNo mira televisi�n ni videos" =0 AND cod."DESC_HORAS_TV_VIDEO_ULT_30DIASNo sabe" =0 THEN 1
    ELSE 0 END AS MIRA_TELEVISION_VIDEOS_1_HORA_MES,
    cod."DESC_HORAS_TV_VIDEO_ULT_30DIAS2 horas" AS MIRA_TELEVISION_VIDEOS_2_HORAS_MES, 
    cod."DESC_HORAS_TV_VIDEO_ULT_30DIAS3 horas" AS MIRA_TELEVISION_VIDEOS_3_HORAS_MES, 
    cod."DESC_HORAS_TV_VIDEO_ULT_30DIAS4 horas" AS MIRA_TELEVISION_VIDEOS_4_HORAS_MES, 
    cod."DESC_HORAS_TV_VIDEO_ULT_30DIAS5 horas o m�s" AS MIRA_TELEVISION_VIDEOS_5_HORAS_MAS_MES, 
    cod."DESC_HORAS_TV_VIDEO_ULT_30DIASNo definido" AS NO_DEFINIDO_MIRA_TELEVISION_VIDEOS_MES, 
    cod."DESC_HORAS_TV_VIDEO_ULT_30DIASNo sabe" AS NO_SABE_MIRA_TELEVISION_VIDEOS_MES,
    cod."DESC_HORAS_COMPUTAD_ULT_30DIASNo utiliza computadora fuera de la escuela" AS NO_UTILIZA_COMPUTADORA_FUERA_ESCUELA,
    cod."DESC_HORAS_COMPUTAD_ULT_30DIASMenos de 1 hora" AS UTILIZA_COMPUTADORA_MENOS_1_HORA_MES, 
    CASE WHEN cod."DESC_HORAS_COMPUTAD_ULT_30DIAS2 horas" =0 AND cod."DESC_HORAS_COMPUTAD_ULT_30DIAS3 horas" =0 AND cod."DESC_HORAS_COMPUTAD_ULT_30DIAS4 horas" =0 AND cod."DESC_HORAS_COMPUTAD_ULT_30DIAS5 horas o m�s" =0 AND cod."DESC_HORAS_COMPUTAD_ULT_30DIASMenos de 1 hora" =0 AND cod."DESC_HORAS_COMPUTAD_ULT_30DIASNo definido" =0 AND cod."DESC_HORAS_COMPUTAD_ULT_30DIASNo utiliza computadora fuera de la escuela" =0 THEN 1
    ELSE 0 END AS UTILIZA_COMPUTADORA_1_HORA_MES,
    cod."DESC_HORAS_COMPUTAD_ULT_30DIAS2 horas" AS UTILIZA_COMPUTADORA_2_HORAS_MES, 
    cod."DESC_HORAS_COMPUTAD_ULT_30DIAS3 horas" AS UTILIZA_COMPUTADORA_3_HORAS_MES, 
    cod."DESC_HORAS_COMPUTAD_ULT_30DIAS4 horas" AS UTILIZA_COMPUTADORA_4_HORAS_MES, 
    cod."DESC_HORAS_COMPUTAD_ULT_30DIAS5 horas o m�s" AS UTILIZA_COMPUTADORA_5_HORAS_MAS_MES, 
    cod."DESC_HORAS_COMPUTAD_ULT_30DIASNo definido" AS NO_DEFINIDO_UTILIZA_COMPUTADORA_MES,
    des.DESC_CATEGORIA_IMC
    FROM DATOSENCUESTA_CODIFICADO_R cod
    INNER JOIN DATOS_ENCUESTA_DESCRIPCIONES des ON des.SEQN_EXAMINATION = cod."datosEncuesta$SEQN_EXAMINATION"
);

COMMIT;

