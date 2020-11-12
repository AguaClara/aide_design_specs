.. include:: ../global.rst

.. _title_Filter_Sizing:

********************
Filter Sizing
********************

Once the number of filters has been defined, the true flow rate per filter is calculated and the active surface area per filter can be calculated:

.. math::
    :label: active_surface_area

    A_{FiActive} = \frac {{Q_{Fi}}/{N_{Layer}}}{V_{Fi}}

| Where
| :math:`Q _{Fi}` = the flow rate per filter = |Q.Fi|
| :math:`N _{Layers}` = the number of layers per filter = |N.FiLayer|
| :math:`V _{Fi}` = the rate of approach to filtering per layer = |V.FiLayer|

.. image:: Images/filt_diagram_2.png
   :align: center
   :width: 300px

The definition of the length and width of the filter is flexible up to a certain point, always taking into account various constructive considerations and geometries. In the design tool they are defined by the geometrical constraints of the inlet and outlet pipe that carries and brings the water from the inlet box to the filter box and back to the outlet box. The dimensions of the PVC fittings for this pipe that are melted in these boxes and the tolerances left around them establish a minimum width for the filter box, in this case a minimum width of |W.FiMin|.

With this minimum width, the length of the filter box is estimated so that the number of strings per input and output module can be defined with a string-to-branch spacing of |B.FiManifoldBranch|. Once the number of strings has been defined, the actual length and then the actual width of the filter is defined. Geometrical considerations are always taken into account when manufacturing the modules and mounting them in the filter housing. In addition, the width of the backwash trunk will not contribute to the active area:

.. math::
    :label: active_surface_area_calc

    Area_{Active} = Length_{Active} \times Width_{Active}

.. math::
    :label: true_width

    Width_{Actual} = Width_{Actual} + D_{Trunk}
