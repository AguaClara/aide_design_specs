��          �               |  5   }  %   �  8   �  ,     l   ?  U   �  l     ;   o  G   �  \   �  .   P          �     �  �  �     <  �   Q  �   �  /   �  v   �  Q   f	  �  �	  5   Q  %   �  8   �  ,   �  l     U   �  l   �  ;   C  G     \   �  .   $     S     h     }  �  �       �   %  �   �  /   �  v   �  Q   :   :math:`D =` el diámetro del orificio = |D.RMOrifice| :math:`L_K` = la escala de Kolmogorov :math:`L_{Sep}` = la separación media entre partículas :math:`Q =` el caudal de diseño = |Q.Plant| :math:`\Pi_{Jet} =` un parámetro relacionado a la geometría del flujo en un chorro redondo = |Pi.JetRound| :math:`\Pi_{VC} =` el coeficiente de vena contracta para un orificio = |Pi.VCOrifice| :math:`\phi_{Col}` = la fracción del volumen total ocupado por las partículas coloidales de la suspensión :math:`\varepsilon` = la tasa de la disipación de energía :math:`g` = la aceleración debida a la gravedad = :math:`9.81 m/s^{2}` :math:`h_e` = la pérdida de carga a través del orificio de mezcla rápida = |HL.RMOrifice| :math:`v` = la viscosidad cinética del fluido Algoritmo de Diseño Diseño del orificio Donde: El objetivo de la mezcla rápida es distribuir el coagulante a través del proceso de transporte advectivo turbulento a una escala lo suficiente pequeña que el proceso lento de difusión molecular puede terminar de distribuir el coagulante entre las partículas de manera equitativa. La escala de Kolmogorov es una medida de la escala mínima de los remolinos en un flujo turbulento, y está relacionado directamente con la tasa de la disipación de energía. Para que los remolinos turbulentos puedan distribuir el coagulante equitativamente entre las partículas, la escala de Kolmogorov debe ser igual o menor que la separación media entre ellas. La pérdida de carga La pérdida de carga en la mezcla rápida, una consecuencia de la expansión del chorro, depende de la :math:`\varepsilon_{max}`: La tasa de la disipación de energía de ED.RapidMix está basada en una suspensión de 500 UTN. Es decir, la escala de Kolmogorov producida por ese chorro es parecida a la separación entre las partículas primeras de esa suspensión. La tasa de la disipación de energía necesaria La tasa máxima de la disipación de energía en un chorro redondo que sigue después de un orificio se encuentra por: Organizando esta ecuación de otra forma, se encuentra el diámetro del orificio: Project-Id-Version: AIDE Design Specifications EXPERIMENTAL
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-07-06 15:41-0700
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: es
Language-Team: es <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 :math:`D =` el diámetro del orificio = |D.RMOrifice| :math:`L_K` = la escala de Kolmogorov :math:`L_{Sep}` = la separación media entre partículas :math:`Q =` el caudal de diseño = |Q.Plant| :math:`\Pi_{Jet} =` un parámetro relacionado a la geometría del flujo en un chorro redondo = |Pi.JetRound| :math:`\Pi_{VC} =` el coeficiente de vena contracta para un orificio = |Pi.VCOrifice| :math:`\phi_{Col}` = la fracción del volumen total ocupado por las partículas coloidales de la suspensión :math:`\varepsilon` = la tasa de la disipación de energía :math:`g` = la aceleración debida a la gravedad = :math:`9.81 m/s^{2}` :math:`h_e` = la pérdida de carga a través del orificio de mezcla rápida = |HL.RMOrifice| :math:`v` = la viscosidad cinética del fluido Algoritmo de Diseño Diseño del orificio Donde: El objetivo de la mezcla rápida es distribuir el coagulante a través del proceso de transporte advectivo turbulento a una escala lo suficiente pequeña que el proceso lento de difusión molecular puede terminar de distribuir el coagulante entre las partículas de manera equitativa. La escala de Kolmogorov es una medida de la escala mínima de los remolinos en un flujo turbulento, y está relacionado directamente con la tasa de la disipación de energía. Para que los remolinos turbulentos puedan distribuir el coagulante equitativamente entre las partículas, la escala de Kolmogorov debe ser igual o menor que la separación media entre ellas. La pérdida de carga La pérdida de carga en la mezcla rápida, una consecuencia de la expansión del chorro, depende de la :math:`\varepsilon_{max}`: La tasa de la disipación de energía de ED.RapidMix está basada en una suspensión de 500 UTN. Es decir, la escala de Kolmogorov producida por ese chorro es parecida a la separación entre las partículas primeras de esa suspensión. La tasa de la disipación de energía necesaria La tasa máxima de la disipación de energía en un chorro redondo que sigue después de un orificio se encuentra por: Organizando esta ecuación de otra forma, se encuentra el diámetro del orificio: 