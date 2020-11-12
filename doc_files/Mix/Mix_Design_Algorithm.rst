.. include:: ../global.rst

.. _title_Algoritmo_de_Diseño:

*************************
Algoritmo de Diseño
*************************

.. _heading_Diseño_del_orificio:

Diseño del orificio
-------------------
La tasa máxima de la disipación de energía en un chorro redondo que sigue
después de un orificio se encuentra por:

.. math::
    :label: \varepsilon_{max}

  \varepsilon_{max} = \frac{\big(\Pi_{Jet} \frac{4Q}{\pi}\big)^3}{D^7 \sqrt{{\Pi_{VC}}^7}}

| Donde:
| :math:`\Pi_{Jet} =` un parámetro relacionado a la geometría del flujo en un chorro redondo = |Pi.JetRound|
| :math:`Q =` el caudal de diseño = |Q.Plant|
| :math:`D =` el diámetro del orificio = |D.RMOrifice|
| :math:`\Pi_{VC} =` el coeficiente de vena contracta para un orificio = |Pi.VCOrifice|

Organizando esta ecuación de otra forma, se encuentra el diámetro del orificio:

.. math::
    :label: orifice_diameter

    D = \bigg(\frac{4Q\Pi_{Jet}}{{\varepsilon_{max}}^{\frac{1}{3}} \pi}\bigg)^{\frac{3}{7}} \frac{1}{\sqrt{\Pi_{VC}}}

.. _heading_La_tasa_de_la_disipación_de_energía_necesaria:

La tasa de la disipación de energía necesaria
---------------------------------------------
El objetivo de la mezcla rápida es distribuir el coagulante a través del proceso
de transporte advectivo turbulento a una escala lo suficiente pequeña que el
proceso lento de difusión molecular puede terminar de distribuir el coagulante
entre las partículas de manera equitativa. La escala de Kolmogorov es una medida
de la escala mínima de los remolinos en un flujo turbulento, y está relacionado
directamente con la tasa de la disipación de energía. Para que los remolinos
turbulentos puedan distribuir el coagulante equitativamente entre las
partículas, la escala de Kolmogorov debe ser igual o menor que la separación
media entre ellas.

.. math::
    :label: inequality

    \Bigg[L_K = \bigg(\frac{v^3}{\varepsilon}\bigg)^{\frac{1}{4}}\Bigg] < \bigg[L_{Sep} = \Big(\frac{\pi}{6\phi_{Col}}\Big)^{\frac{1}{3}}\bigg]

| Donde:
| :math:`L_K` = la escala de Kolmogorov
| :math:`v` = la viscosidad cinética del fluido
| :math:`\varepsilon` = la tasa de la disipación de energía
| :math:`L_{Sep}` = la separación media entre partículas
| :math:`\phi_{Col}` = la fracción del volumen total ocupado por las partículas coloidales de la suspensión

La tasa de la disipación de energía de |ED.RapidMix| está basada en una suspensión
de 500 UTN. Es decir, la escala de Kolmogorov producida por ese chorro es
parecida a la separación entre las partículas primeras de esa suspensión.

.. _heading_La_pérdida_de_carga :

La pérdida de carga
-------------------
La pérdida de carga en la mezcla rápida, una consecuencia de la expansión del
chorro, depende de la :math:`\varepsilon_{max}`:

.. math::
    :label: load_loss

    h_e = \frac{\Big(\frac{Q}{\Pi_{VC}\frac{\pi}{4}D^2}\Big)^2}{2g}

| Donde:
| :math:`h_e` = la pérdida de carga a través del orificio de mezcla rápida = |HL.RMOrifice|
| :math:`g` = la aceleración debida a la gravedad = :math:`9.81 m/s^{2}`
