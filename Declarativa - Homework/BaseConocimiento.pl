% Definición de las conexiones
conecta_con(hospital_climatosa, liceo_jorge_adalberto_lagos).
conecta_con(liceo_jorge_adalberto_lagos, 3).
conecta_con(3, centro_comercial_portal_plaza).
conecta_con(centro_comercial_portal_plaza, 5).
conecta_con(5, servi_tecla).
conecta_con(servi_tecla, novacentro_santa_tecla).
conecta_con(5, 39).
conecta_con(39, 7).
conecta_con(7, 1).
conecta_con(1, tessa).
conecta_con(tessa, policlinica_casa_de_la_salud).
conecta_con(policlinica_casa_de_la_salud, policlinico_magisterial_de_santatecla).
conecta_con(policlinico_magisterial_de_santatecla, 11).
conecta_con(11, clinica_medica_las_colonias).
conecta_con(11, 17).
conecta_con(17, 1).
conecta_con(17, 40).
conecta_con(40, polideportivo_santa_cecilia).
conecta_con(40, escuela_de_comunicacion_monica_herrera).
conecta_con(escuela_de_comunicacion_monica_herrera, escuela_santa_cecilia).
conecta_con(escuela_santa_cecilia, colegio_belen).
conecta_con(colegio_belen, plaza_el_cafetalon).
conecta_con(plaza_el_cafetalon, 44).
conecta_con(7, 15).
conecta_con(escuela_de_comunicacion_monica_herrera, 15).
conecta_con(15, plaza_el_carmen).
conecta_con(plaza_el_carmen, 42).
conecta_con(42, parque_daniel_hernandez).
conecta_con(parque_daniel_hernandez, 39).
conecta_con(42, centro_comercial_las_aguilas).
conecta_con(centro_comercial_las_aguilas, 44).
conecta_con(44, parque_san_martin).
conecta_con(44, academia_nacional_de_seguridad_publica).
conecta_con(academia_nacional_de_seguridad_publica, 24).
conecta_con(24, el_cafetalon).
conecta_con(el_cafetalon, 26).
conecta_con(26, escuela_de_taekwando).
conecta_con(26, colegio_champagnat).
conecta_con(24, parque_acuatico_el_cafetalon).
conecta_con(academia_nacional_de_seguridad_publica, alberto_masferrer_centro_escolar_catolico).
conecta_con(alberto_masferrer_centro_escolar_catolico, centro_escolar_marcelino_garcia_flamenco).
conecta_con(centro_escolar_marcelino_garcia_flamenco, itca_fepade).
conecta_con(centro_escolar_marcelino_garcia_flamenco, puma_energy).
conecta_con(puma_energy, hospital_nacional_san_rafael).
conecta_con(hospital_nacional_san_rafael, instituto_bethania).
conecta_con(instituto_bethania, 45).
conecta_con(45, alberto_masferrer_centro_escolar_catolico).
conecta_con(45, gasolinera_gasoclub_santa_tecla).
conecta_con(gasolinera_gasoclub_santa_tecla, uno_santa_tecla).
conecta_con(uno_santa_tecla, colegio_fatima).
conecta_con(colegio_fatima, 3).

conectados(Lugar1, Lugar2) :-
    conecta_con(Lugar1, Lugar2);conecta_con(Lugar2, Lugar1).

%definir visitado/1 como predicado dinamico para hacer un dfs
:- dynamic visitado/1.

ir_hacia(Lugar, Lugar) :- writeln(Lugar), nl, retractall(visitado(_)).

ir_hacia(Lugar, LugarFinal) :-
    not(visitado(Lugar)),
    assert(visitado(Lugar)),
    writeln(Lugar), nl,
    conectados(Lugar, LugarIntermedio),
    ir_hacia(LugarIntermedio, LugarFinal).


% Tu base de conocimiento de conecta_con/2 aquí...

% Búsqueda en profundidad con memoria de nodos visitados
ruta(Inicio, Fin, Ruta) :-
    ruta_aux(Inicio, Fin, [Inicio], R), 
    reverse(R, Ruta).

ruta_aux(Fin, Fin, R, R).
ruta_aux(Actual, Fin, Visitados, Ruta) :-
    conectados(Actual, Siguiente),
    \+ member(Siguiente, Visitados),
    ruta_aux(Siguiente, Fin, [Siguiente|Visitados], Ruta).

% Función para imprimir la lista
imprimir_lista([]).
imprimir_lista([H|T]) :-
    writeln(H),
    imprimir_lista(T).

% Consulta combinada
consulta_ruta(Inicio, Fin, RutaFinal) :-
    %writeln('Buscando ruta...'),
    ruta(Inicio, Fin, Ruta),
    %writeln('Ruta encontrada:'),
    %imprimir_lista(Ruta),
    RutaFinal = Ruta.

