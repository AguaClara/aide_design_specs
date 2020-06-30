.. include:: ../global.rst

.. _title_Arena:

*****
Arena
*****

Los filtros rápidos de arena utilizan un tipo especifico de arena, y aún más el FRAMCA. A través de la vida del filtro, la arena tiene la tendencia de estratificarse, con los granos mayores cayendo por el fondo del filtro y los granos mayores subiendo por la parte superior. En el FRAMCA, ya que es un filtro en múltiples capas o un filtro apilado, es crítico que la arena en cada capa sea igual – que no haya estratificación de ella y por consiguiente que la arena en todo el filtro sea bien uniforme. El diámetro de la arena se caracteriza por el **diámetro efectivo** y la uniformidad por el **coeficiente de uniformidad**, los dos definidos abajo.

.. _table_framca_data:

.. csv-table:: Datos de la arena del FRAMCA
    :align: center
    :header: Parámetro, Valor, Descripción

    Diámetro efectivo (D:sub:`10`), |D.FiSandES|, El tamaño de la malla que sólo 10% de la masa de una muestra pasa cuando se tamiza. Mayor diámetro haría más difícil la fluidización de la arena (necesitaría más velocidad). Menor diámetro significa más pérdida de carga y posibles fugas de arena.
    Coeficiente de uniformidad (D:sub:`60`/D:sub:`10`), < |Pi.UCFiSand|, La medida de la uniformidad en el tamaño de los granos de la arena. Más alto significa que los granos de arena son menos uniformes (más variación).
    Porosidad, |ε.FiSand|, El volumen de espacio vacío que queda entre los granos de areno sobre el volumen total.
    Peso específico, > 2.5, La densidad de la arena entre la densidad de agua (la arena debe pesar por lo menos 2.5 veces lo que pesa el mismo volumen de agua).
    Dureza, 6-8, La resistencia de la arena al abuso físico. La arena debe tener cierta dureza para que no se degrade después de muchos ciclos de retrolavado.
    Solubilidad en ácido, < 5%, No debe tener mucho material soluble que se va a disolver en el agua durante tiempo.

Las propiedades de la arena afectan el comportamiento del filtro, tanto durante la filtración normal como en el retrolavado. En la filtración normal, la pérdida de carga a través de una capa *limpia* de arena es dada por:

.. math::
    :label: sand_head_loss

    HL_{Filtraci \acute o n} = \frac {36kvV_{Fi}}{g{D_{60}}^2} \frac {{\left(1-\varepsilon_{Arena}\right)}^2}{{\varepsilon_{Arena}}^3} H_{Capa}

| Donde
| :math:`k` = el constante de Carman-Kozeny = |k.Kozeny|
| :math:`\varepsilon_{Arena}` = la porosidad del lecho de arena = |ε.FiSand|
| :math:`\nu` = la viscosidad cinemática del agua = |Nu.Water|
| :math:`V_{Fi}` = la velocidad de aproximación en filtración = |V.FiLayer|
| :math:`D_{60}` = el tamaño de tamiz por cual pasa 60% de la arena = |D.FiSand60|
| :math:`H_{Capa}` = la altura de la capa de arena

El inicio del retrolavado necesita una cierta velocidad mínima de aproximación para fluidizar la arena:

.. math::
    :label: min_backwash_velocity

    V_{M \acute i n} = \frac {g{D_{60}}^2}{36kv} \frac {{\varepsilon_{Arena}}^3}{\left(1-\varepsilon_{Arena}\right)} \left(\frac {\rho_{Arena}}{\rho_{H_2O}}-1\right)

| Donde
| :math:`\rho_{Arena}` = la densidad de la arena = |Rho.FiSand|
| :math:`\rho_{H_2O}` = la densidad del agua = |Rho.H2O|

Una vez iniciado el retrolavado, la pérdida de carga a través de todo el lecho de arena fluidizado es:

.. math::
    :label: head_loss_entire_sand

    {HL}_{Retrolavado}=\left(1-\varepsilon_{Arena}\right)\left(\frac{\rho_{Arena}}{\rho_{H_2O}}-1\right)H_{Arena}

| Donde
| :math:`H_{Arena}` = la altura total del lecho de arena (*no expandido*)
