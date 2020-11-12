.. include:: ../global.rst

.. _title_Flow_Control_Dumps:

*******************
Flow Control Dumps
*******************

During backwashing of the filter, to fluidize the entire sand bed and purge the accumulated sediment completely, a flow rate close to the design flow rate is required. A problem occurs when the plant is being operated at a lower flow rate, and therefore each filter receives only a portion of the design flow rate of |Q.Fi| when the water is distributed evenly. In plants with more than one filter, a weir system can be installed between the inlet channel and the inlet boxes to direct the required flow to the filter being backwashed (:numref:`figure_iso_enter_filter`).

.. _figure_iso_enter_filter:

.. figure:: Images/iso_enter_filter.png
   :align: center
   :width: 700px

   Isometric view of the filter inlet dumps.

To start the backwash process, the removable chute is removed over which the water falls from the inlet channel into the inlet box. The slot behind the chute causes the water level in the inlet channel to rise to the level of the inlet chute of the other filters when the desired flow rate of |Q.Fi| is passing. If the flow in the plant is greater than |Q.Fi|, the level in the inlet channel rises further and the other filters receive most of the additional flow. In this way the filter being backwashed receives a flow rate very close to the design flow rate independent of the plant flow rate.

.. _figure_lat_enter_filter:

.. figure:: Images/lat_enter_filter.png
   :align: center
   :width: 700px

   Side view of the filter inlet chute.

The dimensions of the flow control slot are calculated so that, when the removable gate is pulled out to backwash that filter, the incoming flow rate does not exceed |Pi.QFiBw| times the design flow rate of |Q.Fi|. The height is given by:

.. math::
    :label: groove_height_calc

    H_{Groove}=\frac{\left(\frac{3}{2}\frac{Q_{Plant}-\Pi_QQ_{Fi}}{\Pi_{VC}\sqrt{2g}\bullet W_{Other}}\right)^{2/3}}{{\Pi_Q}^{2/3}-1}

| Where
| :math:`Q_{Plant}` = the flow rate of the plant = |Q.Plant|
| :math:`\Pi _Q` = the radius of the maximum permissible backwash flow over the filter flow rate = |Pi.QFiBw|
| :math:`Q _{Fi}` = the filter flow rate = |Q.Fi|
| :math:`\Pi _{VC}` = the coefficient of vein contracted for a hole = |Pi.VCOrifice|
| :math:`W _{Other}` = the collective width of the other filter inlets

With the height, you can calculate the width:

.. math::
    :label: goove_width_calc

    W_{Groove}=\frac{3}{2}\frac{Q_{Fi}}{\Pi_{VC}\sqrt{2g}\bullet{H_{Groove}}^{3/2}}

| Where
| :math:`H_{Groove}` = the height of the slot = |HL.FiBwFlowControlSlot|

A few incremental plugs are placed at the bottom of the slot to finely calibrate and control the flow rate that will enter the filter during backwash. The height of these plugs is defined so that the inlet flow rate can be adjusted in approximately 10% increments (rounded off to the nearest centimeter):

.. math::
    :label: plug_height_calc

    H_{Plug}=\left(\frac{3}{2}\frac{{1.1\bullet Q}_{Fi}}{\Pi_{VC}\sqrt{2g}\bullet W_{Groove}}\right)^{2/3}-H_{Groove}

| Where
| :math:`H_C` = the height of the gate = |H.FiStopGate|
| :math:`{HL}_C` = the pressure drop allowed by the damper (modeled as an orifice) = |HL.FiOpenWeirMax|

.. _table_FRAMCA_input_data:

.. csv-table:: Data from the FRAMCA intake landfill system
    :align: center

      Height of the gate at the first spillway, |H.FiStopGate|
      Width of the gate at the first chute, |W.FiStopGate|
      Radius from maximum flow (entering when the plant is treating the maximum design flow) to the desired backwash flow of |Q.Fi|, |Pi.QFiBw|
      Slot width in the second chute, |W.FiBwFlowControl|
      Total height of the slot in the second chute, |H.FiFlowControlSlotTotal|
      Height of each incremental slot plug, |H.FiSlotStopper|
      Number of incremental slot plugs, |N.FiSlotStopper|
      Estimated additional flow rate corresponding to each incremental plug, |Q.FiSlotStopperIncrement|
