%Hechos
es_Un(persona, cliente).
es_Un(empresa, cliente).
es_Un(intitucionesPublicas, cliente).

es_Un(bancoCostaRica, bancoPublico).
es_Un(bancoPopular, bancoPublico).

adquiere_Un(cliente, productoFinanciero).
tiene_Un(productoFinanciero, emisor).
es_Negociable_Con(productoFinanciero, bolsaNacionaldeValores).
es_Un(productoFinanciero, instrumentoFinanciero).

puede_Dar(emisor, retribucionFinanciera).
requiere(retribucionFinanciera, cliente).
requiere(emisor, dinero).
es_Un(dinero,inversion).

%Reglas