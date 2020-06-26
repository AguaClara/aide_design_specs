.. include:: ../global.rst

.. _title_Distribución_del_Flujo:

**********************
Distribución del Flujo
**********************

El buen funcionamiento del filtro depende de una buena distribución del agua por todas partes del lecho de arena, tanto durante la filtración normal como en el retrolavado. Las restricciones de diseño durante estos dos regímenes son:

.. list-table::
    :align: center
    :header-rows: 1

    * - Filtración Normal
      - Retrolavado
    * -

          * La pérdida de carga por una capa de arena es significativamente mayor que la pérdida por la recuperación de la presión en la tubería, que el radio del flujo por el camino largo sobre el flujo por el camino corto no sea menor que |Pi.FiManifoldQ|
          * La pérdida de carga por las ranuras toma en cuenta la obstrucción de las ranuras por la arena

      -

          * Los orificios y las ranuras, en vez de la arena, proveen la pérdida uniformisante durante el retrolavado
          * La pérdida de carga por los orificios o las ranuras es significativamente mayor que las pérdidas por la recuperación de presión en los manifolds – los manifolds necesitan mayor área un sus troncos que el área colectivo de sus puertos

Estas restricciones, conjuntamente con las restricciones constructivas de no usar tubería mayor que |ND.FiBwTrunkMax| de diámetro en la línea de retrolavado y que |ND.FiTrunkMax| de diámetro en la demás tubería, definan el caudal máximo de un filtro. Las velocidades máximas y los caudales máximos que puede haber en los troncos durante la filtración y el retrolavado son:

.. list-table::
    :align: center
    :header-rows: 1

    * - Filtración Normal
      - Retrolavado
    * - .. math::
            :label: normal_max_velocity

            V_{M\acute a xFi} = \sqrt{2g\left(HL_{Capa}\left(1-{\Pi_{Q}}^2\right)-PR_{Est}\right)}

        .. math::
            :label: normal_max_flow

            Q_{M\acute a xFi} = \frac {\pi {D_{M\acute a xFi}}^2}{4} V_{M\acute a xFi} \frac {N_{Capa}}{2}

        | Donde
        | :math:`HL_{Capa}` = la pérdida de carga mínima por una capa de arena limpia (véase :ref:`title_Arena`)
        | :math:`\Pi _{Q}` = el radio mínimo del flujo por el camino largo sobre el flujo por el camino corto = |Pi.FiManifoldQ|
        | :math:`PR _{Est}` = la recuperación de presión estimada en un ramal = |PR.FiManBranchEst|
        | :math:`D_{M\acute a xFi}` = el diámetro máximo nominal del tronco superior = |ND.FiTrunkMax|
        | :math:`N _{Capa}` = el número de capas de arena = |N.FiLayer|

      - .. math::
            :label: back_max_velocity

            V_{M\acute a xRe} = \sqrt{2g\left(HL_{Re}\left(1-{\Pi_{Q}}^2\right)-PR_{Est}\right)}

        .. math::
            :label: back_max_flow

            Q_{M\acute a xRe} = \frac {\pi {D_{M\acute a xRe}}^2}{4} V_{M\acute a xRe}

        | Donde
        | :math:`HL_{Re}` = la pérdida de carga estimada por los orificios de entrada durante el retrolavado = |HL.FiBwSlotsEst|
        | :math:`\Pi _{Q}` = el radio mínimo del flujo por el camino largo sobre el flujo por el camino corto = |Pi.FiManifoldQ|
        | :math:`PR _{Est}` = la recuperación de presión estimada en un ramal = |PR.FiManBranchEst|
        | :math:`D_{M\acute a xRe}` = el diámetro máximo nominal del tronco inferior = |ND.FiBwTrunkMax|

El caudal máximo por filtro se define como el menor de los dos caudales máximos bajo las restricciones de la distribución del flujo. El número total de los filtros se define en consecuencia para no sobrepasar de este límite:

.. math::
    :label: filters_limit

    N_{Fi} = ceil\left( \frac {Q_{Planta}}{min\left(Q_{M\acute a xFi}, Q_{M\acute a xRe}\right)} \right)
