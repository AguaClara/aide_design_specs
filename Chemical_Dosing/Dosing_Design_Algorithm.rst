.. |HL.Cdc| replace:: **PLACEHOLDER**

.. _title_Dosing_Algoritmo_de_Diseño:

*******************
Algoritmo de Diseño
*******************

.. _heading_dosis_de_los_químicos:

Dosis de los químicos
---------------------
El dosificador está diseñado para las dosis detalladas en las tablas de dimensionamiento abajo. Las concentraciones de las soluciones madres se seleccionan para que sean prácticas de mezclar, lo suficiente bajas para que el químico se disuelva fácilmente y lo suficiente altas para que duren por lo menos un día cuando las dosis están altas. El caudal máximo del químico no debe ocasionar pérdidas de carga significantes en la tubería que lo lleva a la balanza, ni causar una pérdida mayor de 30 cm en el orificio de la válvula flotadora del bote de carga constante. De igual manera, el volumen de los contenedores de almacenamiento se selecciona para que las mezclas de químicos duren un tiempo práctico dada la concentración madre. La losa donde están los barriles de almacenamiento de los químicos tiene una elevación de 31 cm medida de la parte superior de la pared del tanque de entrada para que la pérdida de carga en la válvula flotadora no tenga ningún efecto en el flujo del químico. Las salidas de los contenedores están elevadas 10 cm arriba del piso para dejar espacio para que el sedimento pueda caerse al fondo.

.. _heading_small_hoses_2:

Mangueras de diámetro pequeño: elemento principal de pérdida de carga
---------------------------------------------------------------------
Las mangueras de diámetro pequeño están diseñadas para proveer |HL.Cdc| de pérdida de carga con el caudal máximo del químico. Se diseñan de tal manera que las pérdidas mayores (debidas a la fricción con las paredes de la manguera) dominen, y las pérdidas menores (debidas a expansiones y cambios de dirección en el flujo) sean mínimas. Este criterio limita el caudal que puede pasar por una sola manguera, ya que las pérdidas menores crecen más rápido que las mayores con aumentos en caudal. Para caudales en este rango, se selecciona un diámetro interno de ⅛” por la facilidad de encontrar esas mangueras en mercados locales. Luego, el número de mangueras en paralelo (y así el caudal máximo en cada una) está basado en un porcentaje máximo de las pérdidas de carga total que se debe a pérdidas menores. Por fin, la longitud de las mangueras se define en base a la pérdida de carga máxima deseada de 30 cm, dado el caudal máximo en cada una.

.. _heading_pérdidas_de_carga:

Pérdidas de carga
-----------------
Hay dos tipos de pérdida de carga que ocurren en el sistema dosificador. Las pérdidas *mayores* se deben a la fuerza de fricción que siente el fluido en las paredes del tubo. Las pérdidas *menores* se deben a las expansiones del fluido cuando hay un cambio de la geometría de su camino. El diseño busca a hacer que las pérdidas de carga menores sean insignificantes comparadas con las pérdidas mayores. Esto asegurará que haya una relación lineal entre la pérdida de carga y el caudal del fluido.

La pérdida de carga debida a expansiones está definida por

.. math::
  :label: head_loss_expansion

    h_e=\frac{K_eV^2}{2g}

| En donde
| :math:`K_e` = coeficiente de expansión, que depende del cambio de geometría
| :math:`V` = velocidad del fluido en la manguera
| :math:`g` = aceleración debido a la gravedad :math:`\approx 9.81 \frac{m} {s^2}`

La pérdida de carga debida a expansiones aumenta con la cuadrada de la velocidad, y por lo tanto no provee una relación lineal entre el caudal y la pérdida de carga. Por otro lado, la pérdida de carga debida a tensiones con las paredes del tubo sí tiene una relación lineal:

.. math::
  :label: head_loss_stress

    h_L=\frac{32\mu LV}{\rho g D^2}

| En donde
| :math:`\mu` = viscosidad dinámica del fluido
| :math:`L` = longitud del tubo o manguera
| :math:`\rho` = densidad de agua :math:`\approx 1000 \frac{kg}{m^3}``
| :math:`D` = diámetro interior del tubo o manguera

.. _heading_diseño_de_las_mangueras_de_diámetro_pequeño:

Diseño de las mangueras de diámetro pequeño
-------------------------------------------
El caudal máximo del químico en una sola manguera para controlar el error causado por la no-linealidad de las pérdidas menores se encuentra con la siguiente ecuación:

.. math::
  :label: max_flow_rate

    Q_{MaxManguera}=\frac{\pi D^2}{4}\sqrt{\frac{2h_Lg\mathrm{\Pi}_{Error}}{\sum K_e}}

| En donde
| :math:`h_L` = pérdida de carga en el sistema dosificador
| :math:`{\Pi}_{Error}` = error debido a la falta de linealidad en el sistema :math:`\approx` 0.1 - 0.2
| :math:`D` = diámetro interior de la manguera = 1/8"

El caudal máximo de químico que se podría utilizar se encuentra en base a la dosis máxima, el caudal máximo de la planta, y la concentración de la solución madre. Dividir ese caudal entre el caudal máximo en una manguera y redondear para arriba da el número de mangueras funcionando en paralelo:

.. math::
  :label: parallel_hoses

    N_{Manguera}= \frac{Q_{MaxTotal}}{Q_{MaxQu\acute{i}mico}}

Con el caudal máximo que se espera en cada manguera, la longitud de cada una se encuentra con:

.. math::
  :label: hose_length

    L=\frac{\frac{h_Lg\pi D^4}{Q}-\sum K_e\frac{8Q}{\pi}}{128\nu}

.. _heading_válvula_flotadora:

Válvula flotadora
-----------------
El diámetro mínimo del orificio de la válvula flotadora necesario para mantener el caudal de coagulante diseñado es dado por:

.. math::
  :label: min_float_valve

    D_{OrMin}=\sqrt{\frac{4Q}{\pi\Pi_{VC}\sqrt{2g\Delta h}}}

| En donde
| :math:`Q` = caudal del químico
| :math:`{\Pi}_{VC}` = coeficiente de vena contracta para el orificio :math:`\approx` 0.62
| :math:`\Delta h` = pérdida de carga máxima por la altura del barril
