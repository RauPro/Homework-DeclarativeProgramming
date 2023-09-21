% Primer grupo
establecimiento(universidad_de_salamanca).
establecimiento(hospital_clinico_san_carlos).
establecimiento(repsol).
establecimiento(parque_del_retiro).
establecimiento(centro_comercial_la_gavia).

% Segundo grupo
establecimiento(colegio_nacional_de_buenos_aires).
establecimiento(hospital_italiano_de_buenos_aires).
establecimiento(ypf).
establecimiento(parque_tres_de_febrero).
establecimiento(centro_comercial_alto_palermo).

% Tercer grupo
establecimiento(universidad_de_harvard).
establecimiento(massachusetts_general_hospital).
establecimiento(shell).
establecimiento(fenway_park).
establecimiento(the_shops_at_prudential_center).

% Cuarto grupo
establecimiento(escuela_primaria_benito_juarez).
establecimiento(hospital_general_de_mexico).
establecimiento(pemex).
establecimiento(parque_chapultepec).
establecimiento(centro_comercial_santa_fe).

% Quinto grupo
establecimiento(liceo_frances_de_madrid).
establecimiento(hospital_la_paz).
establecimiento(cepsa).
establecimiento(ciudad_deportiva_real_madrid).
establecimiento(centro_comercial_principe_pio).

% Universidad de Salamanca
conecta_con(universidad_de_salamanca, intercepcion_1).
conecta_con(universidad_de_salamanca, centro_comercial_la_gavia).
conecta_con(universidad_de_salamanca, parque_del_retiro).

% Intercepción 1
conecta_con(intercepcion_1, centro_comercial_la_gavia).
conecta_con(intercepcion_1, universidad_de_salamanca).
conecta_con(intercepcion_1, intercepcion_2).

% Intercepción 2
conecta_con(intercepcion_2, intercepcion_2).
conecta_con(intercepcion_2, parque_del_retiro).
conecta_con(intercepcion_2, intercepcion_3).
conecta_con(intercepcion_2, intercepcion_1).

% Intercepción 3
conecta_con(intercepcion_3, intercepcion_2).
conecta_con(intercepcion_3, hospital_clinico_san_carlos).
conecta_con(intercepcion_3, repsol).

% Repsol
conecta_con(repsol, intercepcion_18).
conecta_con(repsol, parque_del_retiro).
conecta_con(repsol, intercepcion_3).

% Hospital Clínico San Carlos
conecta_con(hospital_clinico_san_carlos, intercepcion_3).
conecta_con(hospital_clinico_san_carlos, intercepcion_18).

% Centro Comercial La Gavia
conecta_con(centro_comercial_la_gavia, intercepcion_1).
conecta_con(centro_comercial_la_gavia, universidad_de_salamanca).

% Parque del Retiro
conecta_con(parque_del_retiro, intercepcion_2).
conecta_con(parque_del_retiro, repsol).
conecta_con(parque_del_retiro, universidad_de_salamanca).

% Intercepción 18
conecta_con(intercepcion_18, repsol).
conecta_con(intercepcion_18, intercepcion_20).
conecta_con(intercepcion_18, hospital_clinico_san_carlos).

% Intercepción 20
conecta_con(intercepcion_20, intercepcion_18).
conecta_con(intercepcion_20, ypf).
conecta_con(intercepcion_20, intercepcion_21).

% Colegio Nacional de Buenos Aires
conecta_con(colegio_nacional_de_buenos_aires, intercepcion_4).
conecta_con(colegio_nacional_de_buenos_aires, centro_comercial_alto_palermo).
conecta_con(colegio_nacional_de_buenos_aires, parque_tres_de_febrero).

% Centro Comercial Alto Palermo
conecta_con(centro_comercial_alto_palermo, intercepcion_4).
conecta_con(centro_comercial_alto_palermo, colegio_nacional_de_buenos_aires).

% Hospital Italiano de Buenos Aires
conecta_con(hospital_italiano_de_buenos_aires, intercepcion_6).
conecta_con(hospital_italiano_de_buenos_aires, intercepcion_7).

% YPF
conecta_con(ypf, intercepcion_6).
conecta_con(ypf, intercepcion_7).
conecta_con(ypf, parque_tres_de_febrero).

% Parque Tres de Febrero
conecta_con(parque_tres_de_febrero, colegio_nacional_de_buenos_aires).
conecta_con(parque_tres_de_febrero, intercepcion_5).
conecta_con(parque_tres_de_febrero, ypf).

% Intercepción 4
conecta_con(intercepcion_4, colegio_nacional_de_buenos_aires).
conecta_con(intercepcion_4, centro_comercial_alto_palermo).
conecta_con(intercepcion_4, intercepcion_5).

% Intercepción 5
conecta_con(intercepcion_5, parque_tres_de_febrero).
conecta_con(intercepcion_5, intercepcion_4).
conecta_con(intercepcion_5, intercepcion_6).

% Intercepción 6
conecta_con(intercepcion_6, intercepcion_5).
conecta_con(intercepcion_6, hospital_italiano_de_buenos_aires).
conecta_con(intercepcion_6, ypf).

% Intercepción 7
conecta_con(intercepcion_7, ypf).
conecta_con(intercepcion_7, hospital_italiano_de_buenos_aires).
conecta_con(intercepcion_7, fenway_park).
conecta_con(intercepcion_7, universidad_de_harvard).

% Universidad de Harvard
conecta_con(universidad_de_harvard, intercepcion_8).
conecta_con(universidad_de_harvard, the_shops_at_prudential_center).
conecta_con(universidad_de_harvard, fenway_park).
conecta_con(universidad_de_harvard, intercepcion_7).

% The Shops at Prudential Center
conecta_con(the_shops_at_prudential_center, intercepcion_8).
conecta_con(the_shops_at_prudential_center, universidad_de_harvard).
conecta_con(the_shops_at_prudential_center, intercepcion_9).

% Massachusetts General Hospital
conecta_con(massachusetts_general_hospital, intercepcion_10).
conecta_con(massachusetts_general_hospital, shell).

% Shell
conecta_con(shell, intercepcion_11).
conecta_con(shell, massachusetts_general_hospital).
conecta_con(shell, intercepcion_10).

% Fenway Park
conecta_con(fenway_park, intercepcion_7).
conecta_con(fenway_park, intercepcion_11).
conecta_con(fenway_park, intercepcion_9).

% Intercepción 8
conecta_con(intercepcion_8, universidad_de_harvard).
conecta_con(intercepcion_8, the_shops_at_prudential_center).
conecta_con(intercepcion_8, intercepcion_9).

% Intercepción 9
conecta_con(intercepcion_9, intercepcion_8).
conecta_con(intercepcion_9, fenway_park).
conecta_con(intercepcion_9, intercepcion_10).

% Intercepción 10
conecta_con(intercepcion_10, intercepcion_9).
conecta_con(intercepcion_10, shell).
conecta_con(intercepcion_10, massachusetts_general_hospital).

% Intercepción 11
conecta_con(intercepcion_11, centro_comercial_santa_fe).
conecta_con(intercepcion_11, escuela_primaria_benito_juarez).
conecta_con(intercepcion_11, shell).

% Escuela Primaria "Benito Juárez"
conecta_con(escuela_primaria_benito_juarez, parque_chapultepec).
conecta_con(escuela_primaria_benito_juarez, intercepcion_12).
conecta_con(escuela_primaria_benito_juarez, intercepcion_11).
conecta_con(escuela_primaria_benito_juarez, intercepcion_21).

% Centro Comercial Santa Fe
conecta_con(centro_comercial_santa_fe, intercepcion_11).
conecta_con(centro_comercial_santa_fe, intercepcion_12).

% Hospital General de México
conecta_con(hospital_general_de_mexico, intercepcion_14).
conecta_con(hospital_general_de_mexico, pemex).

% Pemex
conecta_con(pemex, hospital_general_de_mexico).
conecta_con(pemex, intercepcion_14).
conecta_con(pemex, parque_chapultepec).

% Parque Chapultepec
conecta_con(parque_chapultepec, pemex).
conecta_con(parque_chapultepec, escuela_primaria_benito_juarez).
conecta_con(parque_chapultepec, intercepcion_13).

% Intercepción 12
conecta_con(intercepcion_12, intercepcion_13).
conecta_con(intercepcion_12, escuela_primaria_benito_juarez).
conecta_con(intercepcion_12, centro_comercial_santa_fe).

% Intercepción 13
conecta_con(intercepcion_13, intercepcion_12).
conecta_con(intercepcion_13, parque_chapultepec).
conecta_con(intercepcion_13, intercepcion_14).

% Intercepción 14
conecta_con(intercepcion_14, intercepcion_13).
conecta_con(intercepcion_14, hospital_general_de_mexico).
conecta_con(intercepcion_14, pemex).

% Intercepción 21
conecta_con(intercepcion_21, intercepcion_19).
conecta_con(intercepcion_21, intercepcion_20).

% Liceo Francés de Madrid
conecta_con(liceo_frances_de_madrid, intercepcion_19).
conecta_con(liceo_frances_de_madrid, ciudad_deportiva_real_madrid).
conecta_con(liceo_frances_de_madrid, intercepcion_15).

% Centro Comercial Príncipe Pío
conecta_con(centro_comercial_principe_pio, intercepcion_19).
conecta_con(centro_comercial_principe_pio, intercepcion_15).

% Hospital La Paz
conecta_con(hospital_la_paz, intercepcion_17).
conecta_con(hospital_la_paz, cepsa).

% Cepsa
conecta_con(cepsa, hospital_la_paz).
conecta_con(cepsa, ciudad_deportiva_real_madrid).
conecta_con(cepsa, intercepcion_17).

% Ciudad Deportiva Real Madrid
conecta_con(ciudad_deportiva_real_madrid, liceo_frances_de_madrid).
conecta_con(ciudad_deportiva_real_madrid, intercepcion_16).
conecta_con(ciudad_deportiva_real_madrid, cepsa).

% Intercepción 15
conecta_con(intercepcion_15, liceo_frances_de_madrid).
conecta_con(intercepcion_15, centro_comercial_principe_pio).
conecta_con(intercepcion_15, intercepcion_16).

% Intercepción 16
conecta_con(intercepcion_16, intercepcion_15).
conecta_con(intercepcion_16, ciudad_deportiva_real_madrid).
conecta_con(intercepcion_16, intercepcion_17).

% Intercepción 17
conecta_con(intercepcion_17, hospital_la_paz).
conecta_con(intercepcion_17, cepsa).
conecta_con(intercepcion_17, intercepcion_16).

% Intercepcion 19
conecta_con(intercepcion_19, intercepcion_21).
conecta_con(intercepcion_19, centro_comercial_principe_pio).
conecta_con(intercepcion_19, liceo_frances_de_madrid).

