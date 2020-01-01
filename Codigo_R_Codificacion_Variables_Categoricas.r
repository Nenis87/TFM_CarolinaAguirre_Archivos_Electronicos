
R version 3.6.0 (2019-04-26) -- "Planting of a Tree"
Copyright (C) 2019 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R es un software libre y viene sin GARANTIA ALGUNA.
Usted puede redistribuirlo bajo ciertas circunstancias.
Escriba 'license()' o 'licence()' para detalles de distribucion.

R es un proyecto colaborativo con muchos contribuyentes.
Escriba 'contributors()' para obtener más información y
'citation()' para saber cómo citar R o paquetes de R en publicaciones.

Escriba 'demo()' para demostraciones, 'help()' para el sistema on-line de ayuda,
o 'help.start()' para abrir el sistema de ayuda HTML con su navegador.
Escriba 'q()' para salir de R.

> getwd()
[1] "C:/Users/Home-PC/Documents"
> setwd("C:/Users/Home-PC/Desktop/NeNIs/2019/Maestria_UNIR/Campus_Virtual/Materias/Trabajo_Fin_Master/Desarrollo_ETL_BDD_R")
> library(modelr)
Warning message:
package ‘modelr’ was built under R version 4.0.0 
> library(RODBC)
Warning message:
package ‘RODBC’ was built under R version 4.0.0 
> con <- odbcConnect("conexionOracleRStudio", uid="system", pwd="Oracle2020")
> datosEncuesta <- sqlQuery(con,"select * from datos_encuesta_descripciones")
> summary(datosEncuesta)
 SEQN_EXAMINATION    PESO_KG       ALTURA_DE_PIE_CM INDICE_MASA_CORPORAL CATEGORIA_IMC        DESC_CATEGORIA_IMC     GENERO         DESC_GENERO     EDAD_ANIOS     RAZA_ORIGEN_HISPANO
 Min.   :73560    Min.   :  9.00   Min.   : 80.0    Min.   :12.0         Min.   :1.000   Bajo peso     : 132     Min.   :1.000   Femenino :1729   Min.   : 2.000   Min.   :1.000      
 1st Qu.:76016    1st Qu.: 22.00   1st Qu.:117.0    1st Qu.:16.0         1st Qu.:2.000   Exceso de peso: 595     1st Qu.:1.000   Masculino:1794   1st Qu.: 6.000   1st Qu.:2.000      
 Median :78558    Median : 38.00   Median :141.0    Median :19.0         Median :2.000   Obesidad      : 629     Median :1.000                    Median :10.000   Median :3.000      
 Mean   :78612    Mean   : 42.86   Mean   :138.3    Mean   :20.3         Mean   :2.489   Peso normal   :2167     Mean   :1.491                    Mean   : 9.887   Mean   :3.027      
 3rd Qu.:81226    3rd Qu.: 58.00   3rd Qu.:161.0    3rd Qu.:23.0         3rd Qu.:3.000                           3rd Qu.:2.000                    3rd Qu.:14.000   3rd Qu.:4.000      
 Max.   :83731    Max.   :173.00   Max.   :194.0    Max.   :69.0         Max.   :4.000                           Max.   :2.000                    Max.   :19.000   Max.   :5.000      
                                                                                                                                                                                      
                        DESC_RAZA_ORIGEN_HISPANO PAIS_NACIMIENTO                                       DESC_PAIS_NACIMIENTO NIVEL_EDUCATIVO_6_19_ANIOS
 Blanco no hispano                  :919         Min.   :1.00    Nacido en 50 estados de EE. UU. o Washington, DC:3276      Min.   :-999.0            
 Mexicano Americano                 :783         1st Qu.:1.00    Otros                                           : 247      1st Qu.:   0.0            
 Negro no hispano                   :902         Median :1.00                                                               Median :   3.0            
 Otra raza - Incluyendo Multi-Racial:559         Mean   :1.07                                                               Mean   :-237.8            
 Otros hispano                      :360         3rd Qu.:1.00                                                               3rd Qu.:   8.0            
                                                 Max.   :2.00                                                               Max.   :  99.0            
                                                                                                                                                      
                         DESC_NIVEL_EDUCATIVO_6_19_ANIO NUMERO_PERSONAS_HOGAR                DESC_NUMERO_PERSONAS_HOGAR INGRESO_ANUAL_HOGAR       DESC_INGRESO_ANUAL_HOGAR
 No definido                            : 855           Min.   :1.000         1                           :  3          Min.   :-999.000    Sobre los $100,000: 587       
 Nunca asistió / solo jardín de infantes: 262           1st Qu.:4.000         2                           :150          1st Qu.:   5.000    $25,000 to $34,999: 484       
 Primer grado                           : 224           Median :5.000         3                           :525          Median :   7.000    $20,000 to $24,999: 338       
 Cuarto grado                           : 223           Mean   :4.731         4                           :936          Mean   :   1.861    $35,000 to $44,999: 327       
 Segundo grado                          : 223           3rd Qu.:6.000         5                           :887          3rd Qu.:  14.000    $75,000 to $99,999: 312       
 Quinto grado                           : 207           Max.   :7.000         6                           :543          Max.   :  99.000    $45,000 to $54,999: 254       
 (Other)                                :1529                                 7 o más personas en el hogar:479                              (Other)           :1221       
 ASISTE_JARDIN_INF_ESCUELA_SECU DESC_ASIST_JARDIN_INF_ESC_SECU ESCUELA_SIRVE_ALMUERZO DESC_ESCUELA_SIRVE_ALMUERZO NUM_VECES_SEM_ALMUERZO_ESCOLAR DESC_NUM_VECES_SEM_ALMUE_ESCU
 Min.   :-999.0                 No         : 480               Min.   :-999.0         No         : 112            Min.   :-999.0                 5          :1604             
 1st Qu.:   1.0                 No definido: 446               1st Qu.:-999.0         No definido: 926            1st Qu.:-999.0                 No definido:1040             
 Median :   1.0                 Si         :2597               Median :   1.0         No sabe    :   2            Median :   3.0                 0          : 445             
 Mean   :-125.5                                                Mean   :-261.8         Si         :2483            Mean   :-278.8                 3          : 127             
 3rd Qu.:   1.0                                                3rd Qu.:   1.0                                     3rd Qu.:   5.0                 2          : 114             
 Max.   :   2.0                                                Max.   :   9.0                                     Max.   :9999.0                 1          : 103             
                                                                                                                                                 (Other)    :  90             
 ESCUELA_SIRVE_DESAYUNO_DIARIO DESC_ESCU_SIRVE_DESAYUN_DIARIO NUM_VECES_SEM_DESAYUNO_ESCOLAR DESC_NUM_VECES_SEM_DESAYU_ESCU NUM_COMIDAS_NO_PREPARADA_CASA DESC_NUM_COMIDA_NO_PREPARA_CASA
 Min.   :-999.0                No         : 329               Min.   :-999.0                 No definido:1280               Min.   :-999.00               0      :847                    
 1st Qu.:-999.0                No definido: 926               1st Qu.:-999.0                 0          :1060               1st Qu.:   0.00               1      :753                    
 Median :   1.0                No sabe    :  25               Median :   0.0                 5          : 875               Median :   2.00               2      :744                    
 Mean   :-261.7                Si         :2243               Mean   :-342.3                 3          : 115               Mean   :  17.78               3      :485                    
 3rd Qu.:   1.0                                               3rd Qu.:   5.0                 2          : 101               3rd Qu.:   3.00               4      :196                    
 Max.   :   9.0                                               Max.   :9999.0                 1          :  56               Max.   :9999.00               5      :156                    
                                                                                             (Other)    :  36                                             (Other):342                    
 NUM_COMIDAS_RAPIDA_PIZZERIA DESC_NUM_COMIDA_RAPID_PIZZERIA DIAS_FISIC_ACTIVO_ALMENOS_60MIN DESC_DIA_FISIC_ACTIV_ALM_60MIN HORAS_MIRA_TV_VIDEO_ULT_30DIAS DESC_HORAS_TV_VIDEO_ULT_30DIAS
 Min.   :-999.0              1          :952                Min.   :-999.0                  7 días     :1687               Min.   :-999.000               2 horas        :1052          
 1st Qu.:-999.0              No definido:898                1st Qu.:   1.0                  No definido: 684               1st Qu.:   1.000               1 hora         : 765          
 Median :   1.0              2          :589                Median :   6.0                  5 días     : 303               Median :   2.000               3 horas        : 528          
 Mean   :-244.7              0          :455                Mean   :-189.3                  3 días     : 182               Mean   :  -7.696               Menos de 1 hora: 477          
 3rd Qu.:   2.0              3          :290                3rd Qu.:   7.0                  4 días     : 179               3rd Qu.:   3.000               5 horas o más  : 295          
 Max.   :9999.0              4          :115                Max.   :  99.0                  2 días     : 158               Max.   :  99.000               4 horas        : 284          
                             (Other)    :224                                                (Other)    : 330                                              (Other)        : 122          
 HORAS_COMPUTADOR_ULT_30DIAS                            DESC_HORAS_COMPUTAD_ULT_30DIAS
 Min.   :-999.000            Menos de 1 hora                           :947           
 1st Qu.:   0.000            1 hora                                    :718           
 Median :   2.000            No utiliza computadora fuera de la escuela:704           
 Mean   :  -7.163            2 horas                                   :533           
 3rd Qu.:   5.000            3 horas                                   :249           
 Max.   :   8.000            5 horas o más                             :218           
                             (Other)                                   :154           
> matriz_codificada <- model_matrix(datosEncuesta,SEQN_EXAMINATION ~DESC_CATEGORIA_IMC-1 +DESC_GENERO + DESC_RAZA_ORIGEN_HISPANO + DESC_PAIS_NACIMIENTO + DESC_NIVEL_EDUCATIVO_6_19_ANIO + DESC_NUMERO_PERSONAS_HOGAR + DESC_INGRESO_ANUAL_HOGAR + DESC_ASIST_JARDIN_INF_ESC_SECU + DESC_ESCUELA_SIRVE_ALMUERZO + DESC_NUM_VECES_SEM_ALMUE_ESCU + DESC_ESCU_SIRVE_DESAYUN_DIARIO + DESC_NUM_VECES_SEM_DESAYU_ESCU + DESC_NUM_COMIDA_NO_PREPARA_CASA + DESC_NUM_COMIDA_RAPID_PIZZERIA + DESC_DIA_FISIC_ACTIV_ALM_60MIN + DESC_HORAS_TV_VIDEO_ULT_30DIAS + DESC_HORAS_COMPUTAD_ULT_30DIAS)
> head(matriz_codificada)
# A tibble: 6 x 143
  `DESC_CATEGORIA~ `DESC_CATEGORIA~ DESC_CATEGORIA_~ `DESC_CATEGORIA~ DESC_GENEROMasc~ `DESC_RAZA_ORIG~ `DESC_RAZA_ORIG~ `DESC_RAZA_ORIG~ `DESC_RAZA_ORIG~ DESC_PAIS_NACIM~ `DESC_NIVEL_EDU~
             <dbl>            <dbl>            <dbl>            <dbl>            <dbl>            <dbl>            <dbl>            <dbl>            <dbl>            <dbl>            <dbl>
1                0                1                0                0                1                0                0                0                0                0                0
2                1                0                0                0                0                1                0                0                0                0                0
3                0                0                0                1                0                0                0                0                1                0                0
4                0                1                0                0                0                0                0                0                1                0                0
5                0                0                0                1                0                0                0                1                0                0                0
6                0                0                0                1                1                0                0                0                0                0                0
# ... with 132 more variables: `DESC_NIVEL_EDUCATIVO_6_19_ANIODécimo Primer grado` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIODécimo Segundo grado, no diploma` <dbl>,
#   `DESC_NIVEL_EDUCATIVO_6_19_ANIOGED o equivalente` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIOGraduado de preparatoria` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIOMás que la secundaria` <dbl>,
#   `DESC_NIVEL_EDUCATIVO_6_19_ANIOMenos del Noveno grado` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIOMenos del Quinto grado` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIONo definido` <dbl>,
#   `DESC_NIVEL_EDUCATIVO_6_19_ANIONo sabe` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIONoveno grado` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIONunca asistió / solo jardín de infantes` <dbl>,
#   `DESC_NIVEL_EDUCATIVO_6_19_ANIOOctavo grado` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIOPrimer grado` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIOQuinto grado` <dbl>,
#   `DESC_NIVEL_EDUCATIVO_6_19_ANIOSegundo grado` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIOSéptimo grado` <dbl>, `DESC_NIVEL_EDUCATIVO_6_19_ANIOSexto grado` <dbl>,
#   `DESC_NIVEL_EDUCATIVO_6_19_ANIOTercer grado` <dbl>, DESC_NUMERO_PERSONAS_HOGAR2 <dbl>, DESC_NUMERO_PERSONAS_HOGAR3 <dbl>, DESC_NUMERO_PERSONAS_HOGAR4 <dbl>, DESC_NUMERO_PERSONAS_HOGAR5 <dbl>,
#   DESC_NUMERO_PERSONAS_HOGAR6 <dbl>, `DESC_NUMERO_PERSONAS_HOGAR7 o más personas en el hogar` <dbl>, `DESC_INGRESO_ANUAL_HOGAR$ 5,000 to $ 9,999` <dbl>, `DESC_INGRESO_ANUAL_HOGAR$10,000 to
#   $14,999` <dbl>, `DESC_INGRESO_ANUAL_HOGAR$15,000 to $19,999` <dbl>, `DESC_INGRESO_ANUAL_HOGAR$20,000 to $24,999` <dbl>, `DESC_INGRESO_ANUAL_HOGAR$25,000 to $34,999` <dbl>,
#   `DESC_INGRESO_ANUAL_HOGAR$35,000 to $44,999` <dbl>, `DESC_INGRESO_ANUAL_HOGAR$45,000 to $54,999` <dbl>, `DESC_INGRESO_ANUAL_HOGAR$55,000 to $64,999` <dbl>, `DESC_INGRESO_ANUAL_HOGAR$65,000 to
#   $74,999` <dbl>, `DESC_INGRESO_ANUAL_HOGAR$75,000 to $99,999` <dbl>, `DESC_INGRESO_ANUAL_HOGARBajo los $20,000` <dbl>, `DESC_INGRESO_ANUAL_HOGARNo definido` <dbl>, `DESC_INGRESO_ANUAL_HOGARNo
#   responde` <dbl>, `DESC_INGRESO_ANUAL_HOGARNo sabe` <dbl>, `DESC_INGRESO_ANUAL_HOGARSobre los $100,000` <dbl>, `DESC_INGRESO_ANUAL_HOGARSobre los $20,000` <dbl>,
#   `DESC_ASIST_JARDIN_INF_ESC_SECUNo definido` <dbl>, DESC_ASIST_JARDIN_INF_ESC_SECUSi <dbl>, `DESC_ESCUELA_SIRVE_ALMUERZONo definido` <dbl>, `DESC_ESCUELA_SIRVE_ALMUERZONo sabe` <dbl>,
#   DESC_ESCUELA_SIRVE_ALMUERZOSi <dbl>, DESC_NUM_VECES_SEM_ALMUE_ESCU1 <dbl>, DESC_NUM_VECES_SEM_ALMUE_ESCU2 <dbl>, DESC_NUM_VECES_SEM_ALMUE_ESCU3 <dbl>, DESC_NUM_VECES_SEM_ALMUE_ESCU4 <dbl>,
#   DESC_NUM_VECES_SEM_ALMUE_ESCU5 <dbl>, `DESC_NUM_VECES_SEM_ALMUE_ESCUNo definido` <dbl>, `DESC_NUM_VECES_SEM_ALMUE_ESCUNo responde` <dbl>, `DESC_NUM_VECES_SEM_ALMUE_ESCUNo sabe` <dbl>,
#   `DESC_ESCU_SIRVE_DESAYUN_DIARIONo definido` <dbl>, `DESC_ESCU_SIRVE_DESAYUN_DIARIONo sabe` <dbl>, DESC_ESCU_SIRVE_DESAYUN_DIARIOSi <dbl>, DESC_NUM_VECES_SEM_DESAYU_ESCU1 <dbl>,
#   DESC_NUM_VECES_SEM_DESAYU_ESCU2 <dbl>, DESC_NUM_VECES_SEM_DESAYU_ESCU3 <dbl>, DESC_NUM_VECES_SEM_DESAYU_ESCU4 <dbl>, DESC_NUM_VECES_SEM_DESAYU_ESCU5 <dbl>, `DESC_NUM_VECES_SEM_DESAYU_ESCUNo
#   definido` <dbl>, `DESC_NUM_VECES_SEM_DESAYU_ESCUNo responde` <dbl>, `DESC_NUM_VECES_SEM_DESAYU_ESCUNo sabe` <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA1 <dbl>,
#   DESC_NUM_COMIDA_NO_PREPARA_CASA10 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA11 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA12 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA13 <dbl>,
#   DESC_NUM_COMIDA_NO_PREPARA_CASA14 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA15 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA16 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA17 <dbl>,
#   DESC_NUM_COMIDA_NO_PREPARA_CASA18 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA19 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA2 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA20 <dbl>,
#   DESC_NUM_COMIDA_NO_PREPARA_CASA21 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA3 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA4 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA5 <dbl>,
#   DESC_NUM_COMIDA_NO_PREPARA_CASA6 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA7 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA8 <dbl>, DESC_NUM_COMIDA_NO_PREPARA_CASA9 <dbl>,
#   `DESC_NUM_COMIDA_NO_PREPARA_CASAMás de 21 comidas a la semana` <dbl>, `DESC_NUM_COMIDA_NO_PREPARA_CASANo definido` <dbl>, `DESC_NUM_COMIDA_NO_PREPARA_CASANo sabe` <dbl>,
#   DESC_NUM_COMIDA_RAPID_PIZZERIA1 <dbl>, DESC_NUM_COMIDA_RAPID_PIZZERIA10 <dbl>, DESC_NUM_COMIDA_RAPID_PIZZERIA11 <dbl>, DESC_NUM_COMIDA_RAPID_PIZZERIA12 <dbl>,
#   DESC_NUM_COMIDA_RAPID_PIZZERIA13 <dbl>, DESC_NUM_COMIDA_RAPID_PIZZERIA14 <dbl>, DESC_NUM_COMIDA_RAPID_PIZZERIA15 <dbl>, DESC_NUM_COMIDA_RAPID_PIZZERIA19 <dbl>,
#   DESC_NUM_COMIDA_RAPID_PIZZERIA2 <dbl>, DESC_NUM_COMIDA_RAPID_PIZZERIA20 <dbl>, DESC_NUM_COMIDA_RAPID_PIZZERIA21 <dbl>, DESC_NUM_COMIDA_RAPID_PIZZERIA3 <dbl>, ...
> datosEncuesta_codificado <- cbind(datosEncuesta$SEQN_EXAMINATION, datosEncuesta$PESO_KG, datosEncuesta$ALTURA_DE_PIE_CM, datosEncuesta$INDICE_MASA_CORPORAL, datosEncuesta$EDAD_ANIOS, matriz_codificada)
> head(datosEncuesta_codificado)
  datosEncuesta$SEQN_EXAMINATION datosEncuesta$PESO_KG datosEncuesta$ALTURA_DE_PIE_CM datosEncuesta$INDICE_MASA_CORPORAL datosEncuesta$EDAD_ANIOS DESC_CATEGORIA_IMCBajo peso
1                          82690                    17                             98                                 18                        6                           0
2                          82366                    17                            116                                 13                        6                           1
3                          83298                    24                            120                                 17                        6                           0
4                          82573                    30                            128                                 18                        7                           0
5                          75676                    18                            113                                 14                        6                           0
6                          81410                    21                            117                                 15                        6                           0
  DESC_CATEGORIA_IMCExceso de peso DESC_CATEGORIA_IMCObesidad DESC_CATEGORIA_IMCPeso normal DESC_GENEROMasculino DESC_RAZA_ORIGEN_HISPANOMexicano Americano
1                                1                          0                             0                    1                                          0
2                                0                          0                             0                    0                                          1
3                                0                          0                             1                    0                                          0
4                                1                          0                             0                    0                                          0
5                                0                          0                             1                    0                                          0
6                                0                          0                             1                    1                                          0
  DESC_RAZA_ORIGEN_HISPANONegro no hispano DESC_RAZA_ORIGEN_HISPANOOtra raza - Incluyendo Multi-Racial DESC_RAZA_ORIGEN_HISPANOOtros hispano DESC_PAIS_NACIMIENTOOtros
1                                        0                                                           0                                     0                         0
2                                        0                                                           0                                     0                         0
3                                        0                                                           0                                     1                         0
4                                        0                                                           0                                     1                         0
5                                        0                                                           1                                     0                         0
6                                        0                                                           0                                     0                         0
  DESC_NIVEL_EDUCATIVO_6_19_ANIODécimo grado DESC_NIVEL_EDUCATIVO_6_19_ANIODécimo Primer grado DESC_NIVEL_EDUCATIVO_6_19_ANIODécimo Segundo grado, no diploma
1                                          0                                                 0                                                              0
2                                          0                                                 0                                                              0
3                                          0                                                 0                                                              0
4                                          0                                                 0                                                              0
5                                          0                                                 0                                                              0
6                                          0                                                 0                                                              0
  DESC_NIVEL_EDUCATIVO_6_19_ANIOGED o equivalente DESC_NIVEL_EDUCATIVO_6_19_ANIOGraduado de preparatoria DESC_NIVEL_EDUCATIVO_6_19_ANIOMás que la secundaria
1                                               0                                                      0                                                   0
2                                               0                                                      0                                                   0
3                                               0                                                      0                                                   0
4                                               0                                                      0                                                   0
5                                               0                                                      0                                                   0
6                                               0                                                      0                                                   0
  DESC_NIVEL_EDUCATIVO_6_19_ANIOMenos del Noveno grado DESC_NIVEL_EDUCATIVO_6_19_ANIOMenos del Quinto grado DESC_NIVEL_EDUCATIVO_6_19_ANIONo definido DESC_NIVEL_EDUCATIVO_6_19_ANIONo sabe
1                                                    0                                                    0                                         0                                     0
2                                                    0                                                    0                                         0                                     0
3                                                    0                                                    0                                         0                                     0
4                                                    0                                                    0                                         0                                     0
5                                                    0                                                    0                                         0                                     0
6                                                    0                                                    0                                         0                                     0
  DESC_NIVEL_EDUCATIVO_6_19_ANIONoveno grado DESC_NIVEL_EDUCATIVO_6_19_ANIONunca asistió / solo jardín de infantes DESC_NIVEL_EDUCATIVO_6_19_ANIOOctavo grado
1                                          0                                                                     1                                          0
2                                          0                                                                     1                                          0
3                                          0                                                                     1                                          0
4                                          0                                                                     1                                          0
5                                          0                                                                     1                                          0
6                                          0                                                                     1                                          0
  DESC_NIVEL_EDUCATIVO_6_19_ANIOPrimer grado DESC_NIVEL_EDUCATIVO_6_19_ANIOQuinto grado DESC_NIVEL_EDUCATIVO_6_19_ANIOSegundo grado DESC_NIVEL_EDUCATIVO_6_19_ANIOSéptimo grado
1                                          0                                          0                                           0                                           0
2                                          0                                          0                                           0                                           0
3                                          0                                          0                                           0                                           0
4                                          0                                          0                                           0                                           0
5                                          0                                          0                                           0                                           0
6                                          0                                          0                                           0                                           0
  DESC_NIVEL_EDUCATIVO_6_19_ANIOSexto grado DESC_NIVEL_EDUCATIVO_6_19_ANIOTercer grado DESC_NUMERO_PERSONAS_HOGAR2 DESC_NUMERO_PERSONAS_HOGAR3 DESC_NUMERO_PERSONAS_HOGAR4
1                                         0                                          0                           0                           0                           0
2                                         0                                          0                           0                           0                           1
3                                         0                                          0                           0                           0                           0
4                                         0                                          0                           0                           0                           0
5                                         0                                          0                           0                           0                           0
6                                         0                                          0                           0                           0                           1
  DESC_NUMERO_PERSONAS_HOGAR5 DESC_NUMERO_PERSONAS_HOGAR6 DESC_NUMERO_PERSONAS_HOGAR7 o más personas en el hogar DESC_INGRESO_ANUAL_HOGAR$ 5,000 to $ 9,999
1                           0                           0                                                      1                                          0
2                           0                           0                                                      0                                          0
3                           1                           0                                                      0                                          0
4                           1                           0                                                      0                                          0
5                           0                           1                                                      0                                          0
6                           0                           0                                                      0                                          0
  DESC_INGRESO_ANUAL_HOGAR$10,000 to $14,999 DESC_INGRESO_ANUAL_HOGAR$15,000 to $19,999 DESC_INGRESO_ANUAL_HOGAR$20,000 to $24,999 DESC_INGRESO_ANUAL_HOGAR$25,000 to $34,999
1                                          0                                          0                                          0                                          1
2                                          0                                          0                                          0                                          1
3                                          0                                          0                                          0                                          1
4                                          0                                          0                                          0                                          1
5                                          0                                          0                                          0                                          0
6                                          0                                          0                                          0                                          0
  DESC_INGRESO_ANUAL_HOGAR$35,000 to $44,999 DESC_INGRESO_ANUAL_HOGAR$45,000 to $54,999 DESC_INGRESO_ANUAL_HOGAR$55,000 to $64,999 DESC_INGRESO_ANUAL_HOGAR$65,000 to $74,999
1                                          0                                          0                                          0                                          0
2                                          0                                          0                                          0                                          0
3                                          0                                          0                                          0                                          0
4                                          0                                          0                                          0                                          0
5                                          1                                          0                                          0                                          0
6                                          0                                          0                                          1                                          0
  DESC_INGRESO_ANUAL_HOGAR$75,000 to $99,999 DESC_INGRESO_ANUAL_HOGARBajo los $20,000 DESC_INGRESO_ANUAL_HOGARNo definido DESC_INGRESO_ANUAL_HOGARNo responde DESC_INGRESO_ANUAL_HOGARNo sabe
1                                          0                                        0                                   0                                   0                               0
2                                          0                                        0                                   0                                   0                               0
3                                          0                                        0                                   0                                   0                               0
4                                          0                                        0                                   0                                   0                               0
5                                          0                                        0                                   0                                   0                               0
6                                          0                                        0                                   0                                   0                               0
  DESC_INGRESO_ANUAL_HOGARSobre los $100,000 DESC_INGRESO_ANUAL_HOGARSobre los $20,000 DESC_ASIST_JARDIN_INF_ESC_SECUNo definido DESC_ASIST_JARDIN_INF_ESC_SECUSi
1                                          0                                         0                                         0                                1
2                                          0                                         0                                         0                                1
3                                          0                                         0                                         0                                1
4                                          0                                         0                                         0                                1
5                                          0                                         0                                         0                                1
6                                          0                                         0                                         0                                1
  DESC_ESCUELA_SIRVE_ALMUERZONo definido DESC_ESCUELA_SIRVE_ALMUERZONo sabe DESC_ESCUELA_SIRVE_ALMUERZOSi DESC_NUM_VECES_SEM_ALMUE_ESCU1 DESC_NUM_VECES_SEM_ALMUE_ESCU2
1                                      0                                  0                             0                              0                              0
2                                      0                                  0                             1                              0                              0
3                                      0                                  0                             1                              0                              0
4                                      0                                  0                             1                              0                              0
5                                      0                                  0                             1                              0                              0
6                                      0                                  0                             1                              0                              0
  DESC_NUM_VECES_SEM_ALMUE_ESCU3 DESC_NUM_VECES_SEM_ALMUE_ESCU4 DESC_NUM_VECES_SEM_ALMUE_ESCU5 DESC_NUM_VECES_SEM_ALMUE_ESCUNo definido DESC_NUM_VECES_SEM_ALMUE_ESCUNo responde
1                              0                              0                              0                                        1                                        0
2                              0                              0                              1                                        0                                        0
3                              0                              0                              1                                        0                                        0
4                              0                              0                              1                                        0                                        0
5                              0                              0                              1                                        0                                        0
6                              0                              0                              0                                        0                                        0
  DESC_NUM_VECES_SEM_ALMUE_ESCUNo sabe DESC_ESCU_SIRVE_DESAYUN_DIARIONo definido DESC_ESCU_SIRVE_DESAYUN_DIARIONo sabe DESC_ESCU_SIRVE_DESAYUN_DIARIOSi DESC_NUM_VECES_SEM_DESAYU_ESCU1
1                                    0                                         0                                     0                                0                               0
2                                    0                                         0                                     0                                1                               0
3                                    0                                         0                                     0                                1                               0
4                                    0                                         0                                     0                                1                               0
5                                    0                                         0                                     0                                1                               0
6                                    0                                         0                                     0                                1                               0
  DESC_NUM_VECES_SEM_DESAYU_ESCU2 DESC_NUM_VECES_SEM_DESAYU_ESCU3 DESC_NUM_VECES_SEM_DESAYU_ESCU4 DESC_NUM_VECES_SEM_DESAYU_ESCU5 DESC_NUM_VECES_SEM_DESAYU_ESCUNo definido
1                               0                               0                               0                               0                                         1
2                               0                               0                               0                               1                                         0
3                               0                               0                               0                               1                                         0
4                               0                               0                               0                               1                                         0
5                               0                               0                               0                               0                                         0
6                               0                               0                               0                               0                                         0
  DESC_NUM_VECES_SEM_DESAYU_ESCUNo responde DESC_NUM_VECES_SEM_DESAYU_ESCUNo sabe DESC_NUM_COMIDA_NO_PREPARA_CASA1 DESC_NUM_COMIDA_NO_PREPARA_CASA10 DESC_NUM_COMIDA_NO_PREPARA_CASA11
1                                         0                                     0                                1                                 0                                 0
2                                         0                                     0                                1                                 0                                 0
3                                         0                                     0                                1                                 0                                 0
4                                         0                                     0                                1                                 0                                 0
5                                         0                                     0                                1                                 0                                 0
6                                         0                                     0                                1                                 0                                 0
  DESC_NUM_COMIDA_NO_PREPARA_CASA12 DESC_NUM_COMIDA_NO_PREPARA_CASA13 DESC_NUM_COMIDA_NO_PREPARA_CASA14 DESC_NUM_COMIDA_NO_PREPARA_CASA15 DESC_NUM_COMIDA_NO_PREPARA_CASA16
1                                 0                                 0                                 0                                 0                                 0
2                                 0                                 0                                 0                                 0                                 0
3                                 0                                 0                                 0                                 0                                 0
4                                 0                                 0                                 0                                 0                                 0
5                                 0                                 0                                 0                                 0                                 0
6                                 0                                 0                                 0                                 0                                 0
  DESC_NUM_COMIDA_NO_PREPARA_CASA17 DESC_NUM_COMIDA_NO_PREPARA_CASA18 DESC_NUM_COMIDA_NO_PREPARA_CASA19 DESC_NUM_COMIDA_NO_PREPARA_CASA2 DESC_NUM_COMIDA_NO_PREPARA_CASA20
1                                 0                                 0                                 0                                0                                 0
2                                 0                                 0                                 0                                0                                 0
3                                 0                                 0                                 0                                0                                 0
4                                 0                                 0                                 0                                0                                 0
5                                 0                                 0                                 0                                0                                 0
6                                 0                                 0                                 0                                0                                 0
  DESC_NUM_COMIDA_NO_PREPARA_CASA21 DESC_NUM_COMIDA_NO_PREPARA_CASA3 DESC_NUM_COMIDA_NO_PREPARA_CASA4 DESC_NUM_COMIDA_NO_PREPARA_CASA5 DESC_NUM_COMIDA_NO_PREPARA_CASA6
1                                 0                                0                                0                                0                                0
2                                 0                                0                                0                                0                                0
3                                 0                                0                                0                                0                                0
4                                 0                                0                                0                                0                                0
5                                 0                                0                                0                                0                                0
6                                 0                                0                                0                                0                                0
  DESC_NUM_COMIDA_NO_PREPARA_CASA7 DESC_NUM_COMIDA_NO_PREPARA_CASA8 DESC_NUM_COMIDA_NO_PREPARA_CASA9 DESC_NUM_COMIDA_NO_PREPARA_CASAMás de 21 comidas a la semana
1                                0                                0                                0                                                            0
2                                0                                0                                0                                                            0
3                                0                                0                                0                                                            0
4                                0                                0                                0                                                            0
5                                0                                0                                0                                                            0
6                                0                                0                                0                                                            0
  DESC_NUM_COMIDA_NO_PREPARA_CASANo definido DESC_NUM_COMIDA_NO_PREPARA_CASANo sabe DESC_NUM_COMIDA_RAPID_PIZZERIA1 DESC_NUM_COMIDA_RAPID_PIZZERIA10 DESC_NUM_COMIDA_RAPID_PIZZERIA11
1                                          0                                      0                               0                                0                                0
2                                          0                                      0                               0                                0                                0
3                                          0                                      0                               0                                0                                0
4                                          0                                      0                               0                                0                                0
5                                          0                                      0                               0                                0                                0
6                                          0                                      0                               0                                0                                0
  DESC_NUM_COMIDA_RAPID_PIZZERIA12 DESC_NUM_COMIDA_RAPID_PIZZERIA13 DESC_NUM_COMIDA_RAPID_PIZZERIA14 DESC_NUM_COMIDA_RAPID_PIZZERIA15 DESC_NUM_COMIDA_RAPID_PIZZERIA19
1                                0                                0                                0                                0                                0
2                                0                                0                                0                                0                                0
3                                0                                0                                0                                0                                0
4                                0                                0                                0                                0                                0
5                                0                                0                                0                                0                                0
6                                0                                0                                0                                0                                0
  DESC_NUM_COMIDA_RAPID_PIZZERIA2 DESC_NUM_COMIDA_RAPID_PIZZERIA20 DESC_NUM_COMIDA_RAPID_PIZZERIA21 DESC_NUM_COMIDA_RAPID_PIZZERIA3 DESC_NUM_COMIDA_RAPID_PIZZERIA4 DESC_NUM_COMIDA_RAPID_PIZZERIA5
1                               0                                0                                0                               0                               0                               0
2                               0                                0                                0                               0                               0                               0
3                               0                                0                                0                               0                               0                               0
4                               0                                0                                0                               0                               0                               0
5                               0                                0                                0                               0                               0                               0
6                               0                                0                                0                               0                               0                               0
  DESC_NUM_COMIDA_RAPID_PIZZERIA6 DESC_NUM_COMIDA_RAPID_PIZZERIA7 DESC_NUM_COMIDA_RAPID_PIZZERIA8 DESC_NUM_COMIDA_RAPID_PIZZERIA9 DESC_NUM_COMIDA_RAPID_PIZZERIANo definido
1                               0                               0                               0                               0                                         0
2                               0                               0                               0                               0                                         0
3                               0                               0                               0                               0                                         0
4                               0                               0                               0                               0                                         0
5                               0                               0                               0                               0                                         0
6                               0                               0                               0                               0                                         0
  DESC_NUM_COMIDA_RAPID_PIZZERIANo sabe DESC_DIA_FISIC_ACTIV_ALM_60MIN1 día DESC_DIA_FISIC_ACTIV_ALM_60MIN2 días DESC_DIA_FISIC_ACTIV_ALM_60MIN3 días DESC_DIA_FISIC_ACTIV_ALM_60MIN4 días
1                                     0                                   0                                    1                                    0                                    0
2                                     0                                   0                                    0                                    1                                    0
3                                     0                                   0                                    0                                    0                                    1
4                                     0                                   0                                    0                                    0                                    0
5                                     0                                   0                                    0                                    0                                    0
6                                     0                                   0                                    0                                    0                                    0
  DESC_DIA_FISIC_ACTIV_ALM_60MIN5 días DESC_DIA_FISIC_ACTIV_ALM_60MIN6 días DESC_DIA_FISIC_ACTIV_ALM_60MIN7 días DESC_DIA_FISIC_ACTIV_ALM_60MINNo definido DESC_DIA_FISIC_ACTIV_ALM_60MINNo sabe
1                                    0                                    0                                    0                                         0                                     0
2                                    0                                    0                                    0                                         0                                     0
3                                    0                                    0                                    0                                         0                                     0
4                                    0                                    0                                    1                                         0                                     0
5                                    0                                    0                                    0                                         0                                     0
6                                    0                                    0                                    1                                         0                                     0
  DESC_HORAS_TV_VIDEO_ULT_30DIAS2 horas DESC_HORAS_TV_VIDEO_ULT_30DIAS3 horas DESC_HORAS_TV_VIDEO_ULT_30DIAS4 horas DESC_HORAS_TV_VIDEO_ULT_30DIAS5 horas o más
1                                     0                                     1                                     0                                           0
2                                     0                                     0                                     0                                           0
3                                     1                                     0                                     0                                           0
4                                     1                                     0                                     0                                           0
5                                     0                                     0                                     0                                           0
6                                     0                                     0                                     0                                           0
  DESC_HORAS_TV_VIDEO_ULT_30DIASMenos de 1 hora DESC_HORAS_TV_VIDEO_ULT_30DIASNo definido DESC_HORAS_TV_VIDEO_ULT_30DIASNo mira televisión ni videos DESC_HORAS_TV_VIDEO_ULT_30DIASNo sabe
1                                             0                                         0                                                          0                                     0
2                                             0                                         0                                                          0                                     0
3                                             0                                         0                                                          0                                     0
4                                             0                                         0                                                          0                                     0
5                                             0                                         0                                                          0                                     0
6                                             1                                         0                                                          0                                     0
  DESC_HORAS_COMPUTAD_ULT_30DIAS2 horas DESC_HORAS_COMPUTAD_ULT_30DIAS3 horas DESC_HORAS_COMPUTAD_ULT_30DIAS4 horas DESC_HORAS_COMPUTAD_ULT_30DIAS5 horas o más
1                                     0                                     0                                     0                                           0
2                                     0                                     0                                     0                                           0
3                                     0                                     0                                     0                                           0
4                                     0                                     0                                     0                                           0
5                                     0                                     0                                     0                                           0
6                                     0                                     0                                     0                                           0
  DESC_HORAS_COMPUTAD_ULT_30DIASMenos de 1 hora DESC_HORAS_COMPUTAD_ULT_30DIASNo definido DESC_HORAS_COMPUTAD_ULT_30DIASNo utiliza computadora fuera de la escuela
1                                             1                                         0                                                                        0
2                                             0                                         0                                                                        1
3                                             0                                         0                                                                        1
4                                             1                                         0                                                                        0
5                                             0                                         0                                                                        0
6                                             1                                         0                                                                        0
> write.csv(datosEncuesta_codificado,"datosEncuesta_codificado.csv")
> 
