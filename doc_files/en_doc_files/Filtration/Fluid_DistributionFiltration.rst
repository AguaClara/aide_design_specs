.. include:: ../global.rst

.. _title_flow_distirbution:

******************
Flow Distribution
******************

Good filter performance depends on good water distribution throughout the sand bed, both during normal filtration and backwashing. The design restrictions during these two regimes are:

.. list-table::
    :align: center
    :header-rows: 1

    * - Normal Filtration
      - Backwash
    * -

          * The pressure loss through a layer of sand is significantly higher than the pressure recovery loss in the pipe, that the radius of the flow on the long path over the flow on the short path is not less than |Pi.FiManifoldQ|
          * Holes and slots, instead of sand, provide uniform loss during backwashing

      -

          * The pressure drop through the slots takes into account the clogging of the slots by sand
          * Pressure loss through holes or slots is significantly higher than pressure recovery losses in manifolds - manifolds need more area in their logs than the collective area of their ports

These restrictions, together with the construction restrictions of not using pipe larger than |ND.FiBwTrunkMax| diameter in the backwash line and |ND.FiTrunkMax| diameter in the other pipe, define the maximum flow rate of a filter. The maximum velocities and maximum flow rates that can occur in the logs during filtration and backwashing are:

.. list-table::
    :align: center
    :header-rows: 1

    * - Normal Filtration
      - Backwash
    * - .. math::
            :label: normal_max_velocity

            V_{MaxFi} = \sqrt{2g\left(HL_{Layer}\left(1-{\Pi_{Q}}^2\right)-PR_{Est}\right)}

        .. math::
            :label: normal_max_flow

            Q_{MaxFi} = \frac {\pi {D_{MaxFi}}^2}{4} V_{MaxFi} \frac {N_{Layer}}{2}

        | Where
        | :math:`HL_{Layer} = the minimum pressure drop for a layer of clean sand (see :ref:`Sand`) |
        | :math:`\Pi _{Q}` = the minimum radius of the flow on the long path over the flow on the short path = |Pi.FiManifoldQ|
        | :math:`PR _{Est}` = the estimated pressure recovery on a branch = |PR.FiManBranchEst|
        | :math:`D_{MaxFi}` = the nominal maximum diameter of the upper trunk = |ND.FiTrunkMax|
        | :math:`N _{Layer}` = the number of layers of sand = |N.FiLayer|

      - .. math::
            :label: back_max_velocity

            V_{MaxRe} = \sqrt{2g\left(HL_{Re}\left(1-{\Pi_{Q}}^2\right)-PR_{Est}\right)}

        .. math::
            :label: back_max_flow

            Q_{MaxRe} = \frac {\pi {D_{MaxRe}}^2}{4} V_{MaxRe}

        | Where
        | :math:`HL_{Re}` = the estimated pressure loss through the inlet holes during backwash = |HL.FiBwSlotsEst|
        | :math:`\Pi _{Q}` = the minimum radius of the flow on the long path over the flow on the short path = |Pi.FiManifoldQ|
        | :math:`PR _{Est}` = the estimated pressure recovery on a branch = |PR.FiManBranchEst|
        | :math:`D_{MaxRe}` = the nominal maximum diameter of the lower trunk = |ND.FiBwTrunkMax|

The maximum flow rate per filter is defined as the lesser of the two maximum flow rates under the restrictions of the flow distribution. The total number of filters is defined accordingly so as not to exceed this limit:

.. math::
    :label: filters_limit

    N_{Fi} = ceil\left( \frac {Q_{Plant}}{min\left(Q_{MaxFi}, Q_{MaxRe}\right)} \right)
