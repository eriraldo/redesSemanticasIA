/*
------------------------------------------------------
|                                                    | 
|        PROYECTO # 2: REDES SEMÁNTICAS              |
|        CURSO: INTELIGENCIA ARTIFICIAL              |
|        PROFESOR: JORGE VARGAS CALVO                |
|                                                    |
|        INTEGRANTES:                                |
|           STEVEN RETANA CEDEÑO - 2017144537        |    
|           ERICK ELIZONDO       - 20........        |
|           ERICK SALAZAR        - 20........        |
|           DAVID ESPINOZA       - 20........        |
------------------------------------------------------
*/

/* Conceptos acerca de los productos financieros en Costa Rica */

es_Un(persona, cliente).
es_Un(empresa, cliente).
es_Un(intitucionesPublicas, cliente).
es_Un(bancoCostaRica, bancoPublico).
es_Un(bancoPopular, bancoPublico).
es_Un(productoFinanciero, instrumentoFinanciero).
es_Un(dinero,inversion).
es_Un(codigo_de_comercio, legislacion).
es_Un(bancoCostaRica, bancoPublico).

es_Un(titulo_valores, instrumentoFinanciero).
es_Un(accion, participacion_en_propiedad_de_la_compania).
es_Un(accion,instrumento_con_pago_de_dividendos).
es_Un(instrumento_con_pago_de_dividendos,patrimonio).
es_Un(certificado_de_deuda_publica, instrumento_con_pago_de_intereses).
es_Un(certificado_de_deposito_a_plazo, instrumento_con_pago_de_intereses).
es_Un(certificado_de_inversion, instrumento_con_pago_de_intereses).
es_Un(instrumento_con_pago_de_intereses,pasivo).
es_Un(instrumento_con_pago_de_intereses,prestamo_a_plazo).
es_Un(instrumento_con_pago_de_intereses, instrumentoFinanciero).
es_Un(instrumento_con_pago_de_dividendos, instrumentoFinanciero).

adquiere_Un(cliente, productoFinanciero).

tiene_Un(productoFinanciero, emisor).
tiene_Un(instrumentoFinanciero,lapso_de_tiempo).

es_Negociable_Con(productoFinanciero, bolsaNacionaldeValores).

puede_Dar(emisor, retribucionFinanciera).

requiere(retribucionFinanciera, cliente).
requiere(emisor, dinero).

regula(legislacion,titulo_valores).

dura_Un(lapso_de_tiempo,plazo).


/* Hechos */

emite(bancoPublico,certificado_de_deposito_a_plazo).
emite(la_nacion,certificado_de_deposito_a_plazo).
emite(holcim,certificado_de_deposito_a_plazo).
emite(fifco,certificado_de_deposito_a_plazo).
emite(la_nacion,certificado_de_inversion).
emite(holcim,certificado_de_inversion).
emite(fifco,certificado_de_inversion).
emite(la_nacion,accion).
emite(holcim,accion).
emite(fifco,accion).
emite(ministerio_de_hacienda, certificado_de_deuda_publica).

/* Reglas */

es_un_instrumentoFinanciero(A) :- es_Un(A, instrumentoFinanciero).
es_un_instrumentoFinanciero(A) :- es_Un(A, B), es_Un(B, instrumentoFinanciero).

/* Pregunta 2: "Una empresa compra acciones de FIFCO ¿recibirá acciones?" */

recibe_intereses(Empresa) :- 
    emite(Empresa, accion),
    es_Un(accion, instrumento_con_pago_de_intereses).

