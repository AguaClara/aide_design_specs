��    �      �              �  |  �  �  z  �       �  D    2  Q  %   �     �  $   �     �  0   �     )  %   C  0   i      �      �  &   �       X   !  A   z  9   �  q   �  �   h  W   �  p   U  ,   �  P   �  S   D  a   �  S   �  H   N  D   �  Q   �  =   .  A   l  e   �  K     \   `  4   �  _   �  A   R  s   �  3     5   <  G   r  i   �  l   $  t   �  Y     R   `  @   �  i   �  Y   ^   N   �   P   !  C   X!     �!     �!     �!  P   �!  o   <"  �   �"  [   o#  N  �#  �  &  �   �'  u   �(  �   �(  ;   �)  @   8*  J   y*  U   �*     +  2   !+  Q   T+  5   �+  `   �+  {   =,  �   �,  =   X-  0   �-  .   �-  �  �-  �   �0  e   91  �   �1  �  32  ^   �3  $   D4  D  i4  X   �5  Q  6  �  Y8  ;   +:  I   g:  L   �:  �  �:  v   �<  l   �<  d   d=  M   �=     >  �   ->     �>     �>     �>  �  �>  
   �@  A   �@  X   A  m   rA  H   �A    )B     =C     ]C     zC  P   �C  f   �C  \   LD  �   �D  S  TE  �   �F  �   mG     AH  <   GH  7   �H  V   �H  �   I  �   �I     ~J  :   �J     �J     �J     �J     K     K     +K     8K     AK     YK     qK  g  �K  |  �L  �  nO  �   R    �R  D   T  2  EV  %   xW     �W  $   �W     �W  0   �W     X  %   7X  0   ]X      �X      �X  &   �X     �X  X   Y  A   nY  9   �Y  q   �Y  �   \Z  W   �Z  p   I[  ,   �[  P   �[  S   8\  a   �\  S   �\  H   B]  D   �]  Q   �]  =   "^  A   `^  e   �^  K   _  \   T_  4   �_  _   �_  A   F`  s   �`  3   �`  5   0a  G   fa  i   �a  l   b  t   �b  Y   �b  R   Tc  @   �c  i   �c  Y   Rd  N   �d  P   �d  C   Le     �e     �e     �e  P   �e  o   0f  �   �f  [   cg  N  �g  �  j  �   �k  u   zl  �   �l  ;   �m  @   ,n  J   mn  U   �n     o  2   o  Q   Ho  5   �o  `   �o  {   1p  �   �p  =   Lq  0   �q  .   �q  �  �q  �   �t  e   -u  �   �u  �  'v  ^   �w  $   8x  D  ]x  X   �y  Q  �y  �  M|  ;   ~  I   [~  L   �~  �  �~  v   t�  l   �  d   X�  M   ��     �  �   !�     ��     ��     ق  �  ߂  
   ��  A   ˄  X   �  m   f�  H   ԅ    �     1�     Q�     n�  P   ��  f   ه  \   @�  �   ��  S  H�  �   ��  �   a�     5�  <   ;�  7   x�  V   ��  �   �  �   ��     r�  :   ��     Ɏ     ݎ     �     ��     �     �     ,�     5�     M�     e�   **Constructiva**: Tiene que haber por lo menos dos canales para mantener la configuración de la planta, para que tanto el tanque de entrada como los canales de entrada y salida de los tanques de sedimentación estén pegados al canal de limpieza. Ya se sabe la longitud y la profundidad de los canales del floculador en base a las dimensiones de los tanques de sedimentación. También hay una restricción para el ancho mínimo de cada canal. Multiplicando estas dimensiones mínimas y restando el volumen inactivo (:numref:`figure_floc_entrance_tank`) se encuentra el volumen mínimo dedicado a la floculación |Vol.FlocMinChannels|. **Constructiva:** Ya que están construidos generalmente de ladrillos con repello y dado fino, es importante que los canales del floculador de una planta AguaClara sean lo suficiente anchos que una persona se pueda meter adentro durante la construcción y trabajar libremente. Convenientemente, este ancho mínimo para la facilidad de construcción corresponde aproximadamente al ancho de la mitad de las láminas de policarbonato que se usan para los deflectores (|W.FlocChannelMinPlate|). Si el algoritmo opta por este ancho mínimo, las láminas de policarbonato se usan eficientemente con el mínimo número de cortes, así bajando los costos de fabricación. **Hidráulica:** Asumiendo una geometría eficiente (:ref:`title_Conceptos_de_Diseño_del_Floculador`), del potencial de colisiones y la pérdida de carga máxima se calcula la tasa media de la disipación de energía directamente: **Hidráulica:** Con el volumen del floculador calculado en el paso anterior, y el tiempo de retención correspondiente, la tasa media de la disipación de energía necesaria para lograr el potencial de colisiones deseado se calcula directamente. Es igual a |ED.FlocAveCP|. **Hidráulica:** Se ha asumido que la geometría del floculador sería eficiente. Es decir, el radio de la longitud de las expansiones a la separación entre deflectores (H/S) está dentro del rango |Pi.HSMin| a |Pi.HSTransition|. Ya se sabe también la profundidad al final del floculador (|HW.FlocEnd|) que corresponde a la profundidad del tanque de sedimentación. Con esta profundidad y la separación entre deflectores que mantiene el radio H/S dentro del rango eficiente, hay un ancho mínimo que da la tasa media de la disipación de energía que se calculó anteriormente. **Práctica:** Es importante que el piso del floculador se mantenga libre de sedimento para no crear trabajo de mantenimiento innecesario y desperdicio de agua para la limpieza. A este fin se impone una restricción mínima para la tasa media de la disipación de energía, igual a |ED.FlocAveMinSettling|. 1. Entradas al algoritmo y asunciones 10. Alturas 11. Las compuertas entre los canales 12. Desagües de los canales 2. Volumen máximo dedicado al tanque de entrada 3. Volumen del floculador 4. Tasa de la disipación de energía 5. Ancho de los canales y el número de canales: 6. Separación entre expansiones 7. Separación entre deflectores 8. Cálculo de los parámetros finales 9. Diseño de los obstáculos :math:`H _{Borde}` = el espacio libre en la parte arriba del tanque = |H.PlantFreeboard| :math:`H _{Exp}` = la separación entre expansiones = |H.FlocObs| :math:`H _{Floc}` = la altura total del tanque = |H.Floc| :math:`H _{MaxExp}` = la separación entre expansiones, que podrían ser provocadas por obstáculos o deflectores :math:`HW _{Final}` = la profundidad de agua al final del floculador, determinada por el canal de entrada al tanque de sedimentación = |HW.FlocEnd| :math:`L _{Et}` = longitud máxima del tanque de entrada en el primer canal = |L.EtMax| :math:`L` = la longitud de los canales que corresponde a la longitud de los tanques de sedimentación = |L.Floc| :math:`L` = la longitud del canal = |L.Floc| :math:`N _{Canales}` = el número de canales en el floculador = |N.FlocChannels| :math:`N _{Def}` = el número de deflectores en cada canal = |N.FlocChannelBaffles| :math:`N _{Esp}` = el número de espacios entre deflectores en cada canal = |N.FlocChannelSpaces| :math:`N _{Exp}`` = el número de expansiones en el floculador = |N.FlocExpansions| :math:`Q _{Des}` = el caudal de diseño de cada desagüe = |Q.FlocDrain| :math:`S _{Def}` = la separación entre deflectores = |S.FlocBaffle| :math:`S _{Min}=\Big(\frac{K_B}{2H\bar{\varepsilon}}\Big)^\frac{1}{3}\frac{Q}{W}` :math:`S` = la separación entre deflectores = |S.FlocBaffle| :math:`S` = la separación entre los deflectores = |S.FlocBaffle| :math:`T` = el grosor de la lámina de policarbonato que se usa para los deflectores = |T.FlocBaffle| :math:`T` = grosor de la pared del tanque de entrada = |T.FlocDividingWall| :math:`Ti` = el tiempo máximo que lleva el proceso de vaciar el floculador = |Ti.FlocDrain| :math:`V` = la velocidad media del fluido = |V.Floc| :math:`Vol _{Floc}` = el volumen total de agua en el floculador cuando está lleno = |Vol.Floc| :math:`W _{Min}=\frac{Vol}{H(N_{Canal}L-L_{Et}-T-2W_{SedCanal})}` :math:`W _{SedCanal}` = el ancho del canal de entrada de los tanques de sedimentación = |W.SedInletChannelPreWeir| :math:`W` = el ancho de la compuerta = |W.FlocPort| :math:`W` = el ancho de los canales = |W.FlocChannel| :math:`W` = el ancho del espacio entre los tubos = |W.FlocObstacleWake| :math:`\Pi _{VC}` = coeficiente de vena contracta para la vuela alrededor de un deflector = |Pi.VCBaffle| :math:`\alpha _{\varepsilon}` = medida de la uniformidad de la disipación de energía = |Alpha.EpsilonFloc| :math:`\bar {\varepsilon}` = la tasa media de la disipación de energía máxima para este diseño = |ED.FlocAveMax| :math:`\psi _{Exp}` = el potencial de colisiones para una expansión = |CP.FlocExpansion| :math:`\psi _{Floc}` = el potencial de colisiones total del floculador = |CP.Floc| :math:`\psi` = el potencial de colisiones deseado = |CP.FlocBod| :math:`d` = la brecha entre el borde de la compuerta y el primer deflector = |S.FlocBaffleSetBackPlastic| :math:`g` = la aceleración debida a la fuerza de gravedad ≈ :math:`9.81 \frac{m}{s^2}` :math:`g` = la aceleración debida a la gravedad = :math:`9.81 \frac {m}{s^2}` :math:`h _{eMax}` = la pérdida de carga máxima en el floculador = |HL.FlocMax| :math:`h_e` = la pérdida de carga total del floculador = |HL.Floc| Algoritmo de Diseño Ancho máximo de los canales Ancho mínimo de los canales Basada en la longitud del tanque de sedimentación para que compartan una pared. Basada en la profundidad del tanque de sedimentación para que los dos tanques compartan una sola cimentación. Basado en 1) el espacio que necesita un obrero para terminar de construir el canal cuando está dentro y 2) el ancho de la mitad de las láminas de policarbonato que se usan para los deflectores Basado en el ancho total de las láminas de policarbonato que se usan para los deflectores. Cada obstáculo es dos pedazos de tubo de PVC entre los cuales el agua tiene que fluir (:numref:`figure_deflectors_lateral`). Las expansiones provocadas por los obstáculos deben ser iguales a las que provocan los deflectores. Se asume que, por la forma redonda de los tubos y la curva gradual de las líneas de corriente, no hay vena contracta que sigue el obstáculo en el flujo, sino una expansión inmediata. Por tanto, el ancho del espacio entre los tubos debe ser igual al ancho de la parte más estrecha de la vena contracta que sigue después de la vuelta alrededor de un deflector: Como se mencionó en la sección anterior, en los diseños de AguaClara ya no se impone ninguna restricción directa para la tasa máxima de la disipación de energía relacionada al tamaño máximo de los flóculos. En lugar de ella se asume un valor razonable para la pérdida de carga máxima, una entrada opcional del usuario, que mantiene la tasa de la disipación de energía correspondiente dentro de un rango aceptable que asegura la floculación efectiva. Con el fin de conservar el área perpendicular al flujo en todo el recorrido de agua a lo largo del floculador, la altura de la compuerta se calcula como: Con esto se calcula el tiempo de retención necesario para lograr el potencial de colisiones, igual a |Ti.FlocMinCP|: Con la excepción del primero, todos los canales del floculador cuentan con un desagüe pegado al canal de limpieza de la planta. Se diseñan para que toda el agua se vaya del floculador dentro de |Ti.FlocDrain|, lo cual da el siguiente caudal de diseño: Donde :math:`H` = la altura de la compuerta = |H.FlocPort|. Donde :math:`Q` = el caudal de diseño de la planta = |Q.Plant|. Donde :math:`v` es la viscosidad cinemática del agua, igual a |Nu.Water|. Donde en este caso :math:`H` = la profundidad al final del floculador = |HW.FlocEnd|. Donde: Eficiencia del floculador (:math:`\alpha _{\psi}`) Eficiencia del floculador que corresponde al radio :math:`\alpha _{\varepsilon}`. El gradiente medio de velocidad, igual a |G.FlocAve|: El mayor de estos dos valores será el ancho mínimo de los canales, igual a |W.FlocChannelMin|. El mayor de los volúmenes dados por estas dos restricciones será el volumen activo del floculador, igual a |Vol.FlocBod|. El número de expansiones entre cada dos deflectores se encuentra por la profundidad del tanque entre la separación máxima, igual a |N.FlocSpaceExpansions|: El potencial de colisiones provocado por una sola expansión: El potencial de colisiones total del floculador: El radio H/S debe estar en el rango eficiente. El tanque de entrada ocupa la primera parte del primer canal en el floculador (:numref:`figure_floc_entrance_tank`). Habrá que restar este volumen, inútil para la floculación, cuando se calcule el número y el ancho de los canales para lograr el potencial de colisiones mínimo. Como primer paso del algoritmo se calcula la longitud del tanque de entrada asumiendo el ancho mínimo de los canales, lo cual corresponde a la longitud máxima del tanque para mantener la velocidad de captura deseada (véase sección anterior). Esto da una estimación conservadora. Las dimensiones reales del tanque de entrada se calcularán más adelante cuando se sepa el ancho de los canales. El tanque de entrada y el inicio y final del recorrido de agua por el floculador ocupan espacio que hay que restar del volumen dedicado a la floculación. El tiempo de retención activo se calcula restando el volumen inactivo, y es igual a |Ti.FlocActive|. El tiempo de retención total, incluyendo el espacio inactivo al final del último canal y contribuido por la pérdida de carga, igual a |Ti.Floc|: En el diseño de las compuertas el área perpendicular al flujo de agua se conserva de tal forma que no hay regiones con tasas de la disipación de energía muy arriba del límite del diseño. Es decir, el área de la compuerta es igual al área del espacio entre los deflectores. La compuerta debe caber en el espacio antes del primer deflector en el canal. Por tanto, el ancho se calcula en base a la separación entre deflectores: Entrada opcional del usuario. La pérdida de carga real podría salir menor si no se necesita. Entradas al algoritmo del floculador Es igual a |W.FlocChannelMinEfficient|. El ancho de los canales puede ser mayor, y se compensaría reduciendo la separación entre deflectores. Esta restricción para el ancho mínimo domina solamente para caudales grandes donde la separación entre deflectores quiere ser grande comparada con la profundidad de los canales. Este número de espacios corresponde a |N.FlocChannelBaffles| deflectores en cada canal. Este paso que corrige la separación por la necesidad de tener un número entero de deflectores en cada canal es la causa de la diferencia entre los valores de diseño y los valores finales de la pérdida de carga (|HL.Floc| en vez de |HL.FlocBod|), la tasa media de la disipación de energía (|ED.FlocAve| en vez de |ED.FlocAveBod|), y el potencial de colisiones (|CP.Floc| en vez de |CP.FlocBod|). Ya que la corrección siempre reduce la separación, lo cual aumenta la tasa de la disipación de energía, todos estos parámetros terminan siendo mayor que los valores originales de diseño. Existe la opción de colocar obstáculos entre los deflectores que provocan la misma expansión que sucede después de la vuelta alrededor de un deflector, para reducir la separación entre expansiones y mantener el radio H/S dentro del rango eficiente. Dado el ancho de los canales, la tasa de la disipación de energía nos da la separación máxima entre obstáculos que mantiene la geometría eficiente (véase :ref:`title_Conceptos_de_Diseño_del_Floculador`): Hay dos restricciones para el ancho mínimo de los canales: Hay dos restricciones para el volumen mínimo dedicado a la floculación: La *mínima* tasa de la disipación de energía sí tiene dos restricciones: La altura de la losa del floculador es relativa a la solera inferior que amarra los tanques de sedimentación y el floculador. La parte abajo de esta solera es el nivel cero en el dibujo de AutoCAD. La parte abajo de la losa del floculador está al mismo nivel que la parte inferior de la solera, así que el nivel del fondo del tanque sólo depende del grosor de la losa |T.FlocSlab|. La altura del floculador se calcula sumando desde el nivel de agua en el canal de entrada al tanque de sedimentación: La función :math:`Ceil\left(x,2\right)` redondea el valor :math:`x` para arriba al número par más cercano La función :math:`Ceil\left(x,2\right)` redondea el valor x para arriba al número par más cercano La medida de la falta de uniformidad de la tasa de la disipación de energía La pérdida de carga: La tasa real de la disipación de energía después de la corrección de la separación entre deflectores, igual a |ED.FlocAve|: La velocidad media del fluido: Longitud de los canales Notas Para encontrar el número necesario de canales se asume que el ancho de cada canal será el mayor posible. Si esto significa que la separación entre deflectores se disminuye hasta que el radio H/S esté arriba del rango eficiente, se agregarán obstáculos en los espacios entre deflectores para reducir la longitud de las expansiones. Usar el ancho máximo en el cálculo del número de canales produce el número mínimo de canales, así reduciendo los costos de construcción. Parámetro Por fin se calcula el volumen necesario, igual a |Vol.FlocMinCP|: Por fin se calcula la separación precisa entre los deflectores, igual a |S.FlocBaffle|: Por fin, el algoritmo busca el tamaño mínimo del tubo que ocupe el espacio necesario, igual a |ND.FlocObs|. Por fin, la separación real entre expansiones, igual a |H.FlocObs|, es: Por último, se toma el máximo del ancho calculado para alcanzar el volumen y el ancho mínimo que salió de las dos restricciones anteriores y se redondea para arriba al centímetro más cercano por facilidad de construcción. El ancho de los canales será |W.FlocChannel|. Potencial de colisiones mínimo Profundidad de agua al final Pérdida de carga máxima Radio de la longitud de cada expansión a la separación entre deflectores (H/S) Radio de la tasa máxima a la tasa media de la disipación de energía (:math:`\alpha _{\varepsilon}`) Se impone esta restricción para evitar la sedimentación de los flóculos en el floculador. Si todos los canales del floculador contribuyeran igualmente a la floculación, el número de canales se encontraría por la siguiente ecuación, redondeando para arriba. Sin embargo, del volumen total hay que restar el volumen que ocupa el tanque de entrada y el espacio inactivo al final del floculador donde el agua entra en el canal de entrada de los tanques de sedimentación. Además, tiene que haber un número par de canales. El verdadero número de canales, igual a |N.FlocChannels|, se encuentra por: Sin embargo, tiene que haber un número entero de deflectores en el canal de longitud predeterminada. El número de espacios entre deflectores que mantiene la separación mínima se encuentra por: También hay una restricción constructiva para el ancho máximo de los canales, que corresponde al ancho total de las láminas de policarbonato que se usan para los deflectores, igual a |W.FlocChannelMaxPlate|. Valor Valor mínimo de la tasa media de la disipación de energía Vista lateral de los obstáculos entre los deflectores. Y la tasa máxima de la disipación de energía que corresponde, igual a |ED.FlocMax|: Ya con el número de canales se puede calcular el ancho mínimo de cada canal para alcanzar el volumen total calculado anteriormente, igual a |W.FlocChannelCP|: Ya con las otras dimensiones determinadas, la separación entre deflectores, igual a |S.FlocBaffleMin|, que corresponde a la tasa de la disipación de energía calculada anteriormente se encuentra por: para conservar el material. que corresponde a la geometría descrita por el radio H/S. |Alpha.EpsilonFloc| |Alpha.PsiFloc| |CP.FlocBod| |ED.FlocAveMinSettling| |HL.FlocMax| |HW.FlocEnd| |L.Floc| |Pi.HSMin| - |Pi.HSMax| |W.FlocChannelMaxPlate| |W.FlocChannelMinPlate| Project-Id-Version: AIDE Design Specifications EXPERIMENTAL
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-07-06 15:54-0700
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Constructiva**: Tiene que haber por lo menos dos canales para mantener la configuración de la planta, para que tanto el tanque de entrada como los canales de entrada y salida de los tanques de sedimentación estén pegados al canal de limpieza. Ya se sabe la longitud y la profundidad de los canales del floculador en base a las dimensiones de los tanques de sedimentación. También hay una restricción para el ancho mínimo de cada canal. Multiplicando estas dimensiones mínimas y restando el volumen inactivo (:numref:`figure_floc_entrance_tank`) se encuentra el volumen mínimo dedicado a la floculación |Vol.FlocMinChannels|. **Constructiva:** Ya que están construidos generalmente de ladrillos con repello y dado fino, es importante que los canales del floculador de una planta AguaClara sean lo suficiente anchos que una persona se pueda meter adentro durante la construcción y trabajar libremente. Convenientemente, este ancho mínimo para la facilidad de construcción corresponde aproximadamente al ancho de la mitad de las láminas de policarbonato que se usan para los deflectores (|W.FlocChannelMinPlate|). Si el algoritmo opta por este ancho mínimo, las láminas de policarbonato se usan eficientemente con el mínimo número de cortes, así bajando los costos de fabricación. **Hidráulica:** Asumiendo una geometría eficiente (:ref:`title_Conceptos_de_Diseño_del_Floculador`), del potencial de colisiones y la pérdida de carga máxima se calcula la tasa media de la disipación de energía directamente: **Hidráulica:** Con el volumen del floculador calculado en el paso anterior, y el tiempo de retención correspondiente, la tasa media de la disipación de energía necesaria para lograr el potencial de colisiones deseado se calcula directamente. Es igual a |ED.FlocAveCP|. **Hidráulica:** Se ha asumido que la geometría del floculador sería eficiente. Es decir, el radio de la longitud de las expansiones a la separación entre deflectores (H/S) está dentro del rango |Pi.HSMin| a |Pi.HSTransition|. Ya se sabe también la profundidad al final del floculador (|HW.FlocEnd|) que corresponde a la profundidad del tanque de sedimentación. Con esta profundidad y la separación entre deflectores que mantiene el radio H/S dentro del rango eficiente, hay un ancho mínimo que da la tasa media de la disipación de energía que se calculó anteriormente. **Práctica:** Es importante que el piso del floculador se mantenga libre de sedimento para no crear trabajo de mantenimiento innecesario y desperdicio de agua para la limpieza. A este fin se impone una restricción mínima para la tasa media de la disipación de energía, igual a |ED.FlocAveMinSettling|. 1. Entradas al algoritmo y asunciones 10. Alturas 11. Las compuertas entre los canales 12. Desagües de los canales 2. Volumen máximo dedicado al tanque de entrada 3. Volumen del floculador 4. Tasa de la disipación de energía 5. Ancho de los canales y el número de canales: 6. Separación entre expansiones 7. Separación entre deflectores 8. Cálculo de los parámetros finales 9. Diseño de los obstáculos :math:`H _{Borde}` = el espacio libre en la parte arriba del tanque = |H.PlantFreeboard| :math:`H _{Exp}` = la separación entre expansiones = |H.FlocObs| :math:`H _{Floc}` = la altura total del tanque = |H.Floc| :math:`H _{MaxExp}` = la separación entre expansiones, que podrían ser provocadas por obstáculos o deflectores :math:`HW _{Final}` = la profundidad de agua al final del floculador, determinada por el canal de entrada al tanque de sedimentación = |HW.FlocEnd| :math:`L _{Et}` = longitud máxima del tanque de entrada en el primer canal = |L.EtMax| :math:`L` = la longitud de los canales que corresponde a la longitud de los tanques de sedimentación = |L.Floc| :math:`L` = la longitud del canal = |L.Floc| :math:`N _{Canales}` = el número de canales en el floculador = |N.FlocChannels| :math:`N _{Def}` = el número de deflectores en cada canal = |N.FlocChannelBaffles| :math:`N _{Esp}` = el número de espacios entre deflectores en cada canal = |N.FlocChannelSpaces| :math:`N _{Exp}`` = el número de expansiones en el floculador = |N.FlocExpansions| :math:`Q _{Des}` = el caudal de diseño de cada desagüe = |Q.FlocDrain| :math:`S _{Def}` = la separación entre deflectores = |S.FlocBaffle| :math:`S _{Min}=\Big(\frac{K_B}{2H\bar{\varepsilon}}\Big)^\frac{1}{3}\frac{Q}{W}` :math:`S` = la separación entre deflectores = |S.FlocBaffle| :math:`S` = la separación entre los deflectores = |S.FlocBaffle| :math:`T` = el grosor de la lámina de policarbonato que se usa para los deflectores = |T.FlocBaffle| :math:`T` = grosor de la pared del tanque de entrada = |T.FlocDividingWall| :math:`Ti` = el tiempo máximo que lleva el proceso de vaciar el floculador = |Ti.FlocDrain| :math:`V` = la velocidad media del fluido = |V.Floc| :math:`Vol _{Floc}` = el volumen total de agua en el floculador cuando está lleno = |Vol.Floc| :math:`W _{Min}=\frac{Vol}{H(N_{Canal}L-L_{Et}-T-2W_{SedCanal})}` :math:`W _{SedCanal}` = el ancho del canal de entrada de los tanques de sedimentación = |W.SedInletChannelPreWeir| :math:`W` = el ancho de la compuerta = |W.FlocPort| :math:`W` = el ancho de los canales = |W.FlocChannel| :math:`W` = el ancho del espacio entre los tubos = |W.FlocObstacleWake| :math:`\Pi _{VC}` = coeficiente de vena contracta para la vuela alrededor de un deflector = |Pi.VCBaffle| :math:`\alpha _{\varepsilon}` = medida de la uniformidad de la disipación de energía = |Alpha.EpsilonFloc| :math:`\bar {\varepsilon}` = la tasa media de la disipación de energía máxima para este diseño = |ED.FlocAveMax| :math:`\psi _{Exp}` = el potencial de colisiones para una expansión = |CP.FlocExpansion| :math:`\psi _{Floc}` = el potencial de colisiones total del floculador = |CP.Floc| :math:`\psi` = el potencial de colisiones deseado = |CP.FlocBod| :math:`d` = la brecha entre el borde de la compuerta y el primer deflector = |S.FlocBaffleSetBackPlastic| :math:`g` = la aceleración debida a la fuerza de gravedad ≈ :math:`9.81 \frac{m}{s^2}` :math:`g` = la aceleración debida a la gravedad = :math:`9.81 \frac {m}{s^2}` :math:`h _{eMax}` = la pérdida de carga máxima en el floculador = |HL.FlocMax| :math:`h_e` = la pérdida de carga total del floculador = |HL.Floc| Algoritmo de Diseño Ancho máximo de los canales Ancho mínimo de los canales Basada en la longitud del tanque de sedimentación para que compartan una pared. Basada en la profundidad del tanque de sedimentación para que los dos tanques compartan una sola cimentación. Basado en 1) el espacio que necesita un obrero para terminar de construir el canal cuando está dentro y 2) el ancho de la mitad de las láminas de policarbonato que se usan para los deflectores Basado en el ancho total de las láminas de policarbonato que se usan para los deflectores. Cada obstáculo es dos pedazos de tubo de PVC entre los cuales el agua tiene que fluir (:numref:`figure_deflectors_lateral`). Las expansiones provocadas por los obstáculos deben ser iguales a las que provocan los deflectores. Se asume que, por la forma redonda de los tubos y la curva gradual de las líneas de corriente, no hay vena contracta que sigue el obstáculo en el flujo, sino una expansión inmediata. Por tanto, el ancho del espacio entre los tubos debe ser igual al ancho de la parte más estrecha de la vena contracta que sigue después de la vuelta alrededor de un deflector: Como se mencionó en la sección anterior, en los diseños de AguaClara ya no se impone ninguna restricción directa para la tasa máxima de la disipación de energía relacionada al tamaño máximo de los flóculos. En lugar de ella se asume un valor razonable para la pérdida de carga máxima, una entrada opcional del usuario, que mantiene la tasa de la disipación de energía correspondiente dentro de un rango aceptable que asegura la floculación efectiva. Con el fin de conservar el área perpendicular al flujo en todo el recorrido de agua a lo largo del floculador, la altura de la compuerta se calcula como: Con esto se calcula el tiempo de retención necesario para lograr el potencial de colisiones, igual a |Ti.FlocMinCP|: Con la excepción del primero, todos los canales del floculador cuentan con un desagüe pegado al canal de limpieza de la planta. Se diseñan para que toda el agua se vaya del floculador dentro de |Ti.FlocDrain|, lo cual da el siguiente caudal de diseño: Donde :math:`H` = la altura de la compuerta = |H.FlocPort|. Donde :math:`Q` = el caudal de diseño de la planta = |Q.Plant|. Donde :math:`v` es la viscosidad cinemática del agua, igual a |Nu.Water|. Donde en este caso :math:`H` = la profundidad al final del floculador = |HW.FlocEnd|. Donde: Eficiencia del floculador (:math:`\alpha _{\psi}`) Eficiencia del floculador que corresponde al radio :math:`\alpha _{\varepsilon}`. El gradiente medio de velocidad, igual a |G.FlocAve|: El mayor de estos dos valores será el ancho mínimo de los canales, igual a |W.FlocChannelMin|. El mayor de los volúmenes dados por estas dos restricciones será el volumen activo del floculador, igual a |Vol.FlocBod|. El número de expansiones entre cada dos deflectores se encuentra por la profundidad del tanque entre la separación máxima, igual a |N.FlocSpaceExpansions|: El potencial de colisiones provocado por una sola expansión: El potencial de colisiones total del floculador: El radio H/S debe estar en el rango eficiente. El tanque de entrada ocupa la primera parte del primer canal en el floculador (:numref:`figure_floc_entrance_tank`). Habrá que restar este volumen, inútil para la floculación, cuando se calcule el número y el ancho de los canales para lograr el potencial de colisiones mínimo. Como primer paso del algoritmo se calcula la longitud del tanque de entrada asumiendo el ancho mínimo de los canales, lo cual corresponde a la longitud máxima del tanque para mantener la velocidad de captura deseada (véase sección anterior). Esto da una estimación conservadora. Las dimensiones reales del tanque de entrada se calcularán más adelante cuando se sepa el ancho de los canales. El tanque de entrada y el inicio y final del recorrido de agua por el floculador ocupan espacio que hay que restar del volumen dedicado a la floculación. El tiempo de retención activo se calcula restando el volumen inactivo, y es igual a |Ti.FlocActive|. El tiempo de retención total, incluyendo el espacio inactivo al final del último canal y contribuido por la pérdida de carga, igual a |Ti.Floc|: En el diseño de las compuertas el área perpendicular al flujo de agua se conserva de tal forma que no hay regiones con tasas de la disipación de energía muy arriba del límite del diseño. Es decir, el área de la compuerta es igual al área del espacio entre los deflectores. La compuerta debe caber en el espacio antes del primer deflector en el canal. Por tanto, el ancho se calcula en base a la separación entre deflectores: Entrada opcional del usuario. La pérdida de carga real podría salir menor si no se necesita. Entradas al algoritmo del floculador Es igual a |W.FlocChannelMinEfficient|. El ancho de los canales puede ser mayor, y se compensaría reduciendo la separación entre deflectores. Esta restricción para el ancho mínimo domina solamente para caudales grandes donde la separación entre deflectores quiere ser grande comparada con la profundidad de los canales. Este número de espacios corresponde a |N.FlocChannelBaffles| deflectores en cada canal. Este paso que corrige la separación por la necesidad de tener un número entero de deflectores en cada canal es la causa de la diferencia entre los valores de diseño y los valores finales de la pérdida de carga (|HL.Floc| en vez de |HL.FlocBod|), la tasa media de la disipación de energía (|ED.FlocAve| en vez de |ED.FlocAveBod|), y el potencial de colisiones (|CP.Floc| en vez de |CP.FlocBod|). Ya que la corrección siempre reduce la separación, lo cual aumenta la tasa de la disipación de energía, todos estos parámetros terminan siendo mayor que los valores originales de diseño. Existe la opción de colocar obstáculos entre los deflectores que provocan la misma expansión que sucede después de la vuelta alrededor de un deflector, para reducir la separación entre expansiones y mantener el radio H/S dentro del rango eficiente. Dado el ancho de los canales, la tasa de la disipación de energía nos da la separación máxima entre obstáculos que mantiene la geometría eficiente (véase :ref:`title_Conceptos_de_Diseño_del_Floculador`): Hay dos restricciones para el ancho mínimo de los canales: Hay dos restricciones para el volumen mínimo dedicado a la floculación: La *mínima* tasa de la disipación de energía sí tiene dos restricciones: La altura de la losa del floculador es relativa a la solera inferior que amarra los tanques de sedimentación y el floculador. La parte abajo de esta solera es el nivel cero en el dibujo de AutoCAD. La parte abajo de la losa del floculador está al mismo nivel que la parte inferior de la solera, así que el nivel del fondo del tanque sólo depende del grosor de la losa |T.FlocSlab|. La altura del floculador se calcula sumando desde el nivel de agua en el canal de entrada al tanque de sedimentación: La función :math:`Ceil\left(x,2\right)` redondea el valor :math:`x` para arriba al número par más cercano La función :math:`Ceil\left(x,2\right)` redondea el valor x para arriba al número par más cercano La medida de la falta de uniformidad de la tasa de la disipación de energía La pérdida de carga: La tasa real de la disipación de energía después de la corrección de la separación entre deflectores, igual a |ED.FlocAve|: La velocidad media del fluido: Longitud de los canales Notas Para encontrar el número necesario de canales se asume que el ancho de cada canal será el mayor posible. Si esto significa que la separación entre deflectores se disminuye hasta que el radio H/S esté arriba del rango eficiente, se agregarán obstáculos en los espacios entre deflectores para reducir la longitud de las expansiones. Usar el ancho máximo en el cálculo del número de canales produce el número mínimo de canales, así reduciendo los costos de construcción. Parámetro Por fin se calcula el volumen necesario, igual a |Vol.FlocMinCP|: Por fin se calcula la separación precisa entre los deflectores, igual a |S.FlocBaffle|: Por fin, el algoritmo busca el tamaño mínimo del tubo que ocupe el espacio necesario, igual a |ND.FlocObs|. Por fin, la separación real entre expansiones, igual a |H.FlocObs|, es: Por último, se toma el máximo del ancho calculado para alcanzar el volumen y el ancho mínimo que salió de las dos restricciones anteriores y se redondea para arriba al centímetro más cercano por facilidad de construcción. El ancho de los canales será |W.FlocChannel|. Potencial de colisiones mínimo Profundidad de agua al final Pérdida de carga máxima Radio de la longitud de cada expansión a la separación entre deflectores (H/S) Radio de la tasa máxima a la tasa media de la disipación de energía (:math:`\alpha _{\varepsilon}`) Se impone esta restricción para evitar la sedimentación de los flóculos en el floculador. Si todos los canales del floculador contribuyeran igualmente a la floculación, el número de canales se encontraría por la siguiente ecuación, redondeando para arriba. Sin embargo, del volumen total hay que restar el volumen que ocupa el tanque de entrada y el espacio inactivo al final del floculador donde el agua entra en el canal de entrada de los tanques de sedimentación. Además, tiene que haber un número par de canales. El verdadero número de canales, igual a |N.FlocChannels|, se encuentra por: Sin embargo, tiene que haber un número entero de deflectores en el canal de longitud predeterminada. El número de espacios entre deflectores que mantiene la separación mínima se encuentra por: También hay una restricción constructiva para el ancho máximo de los canales, que corresponde al ancho total de las láminas de policarbonato que se usan para los deflectores, igual a |W.FlocChannelMaxPlate|. Valor Valor mínimo de la tasa media de la disipación de energía Vista lateral de los obstáculos entre los deflectores. Y la tasa máxima de la disipación de energía que corresponde, igual a |ED.FlocMax|: Ya con el número de canales se puede calcular el ancho mínimo de cada canal para alcanzar el volumen total calculado anteriormente, igual a |W.FlocChannelCP|: Ya con las otras dimensiones determinadas, la separación entre deflectores, igual a |S.FlocBaffleMin|, que corresponde a la tasa de la disipación de energía calculada anteriormente se encuentra por: para conservar el material. que corresponde a la geometría descrita por el radio H/S. |Alpha.EpsilonFloc| |Alpha.PsiFloc| |CP.FlocBod| |ED.FlocAveMinSettling| |HL.FlocMax| |HW.FlocEnd| |L.Floc| |Pi.HSMin| - |Pi.HSMax| |W.FlocChannelMaxPlate| |W.FlocChannelMinPlate| 