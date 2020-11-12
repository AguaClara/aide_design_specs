
.. _title_Tank_Design_Algorithm:

**********************
Design Algorithm
**********************

.. _heading_sedimentation plates:

Sedimentation plates
--------------------
The number of sedimentation plates required to achieve the design capture rate is related to the length of the plates. By increasing the length, fewer plates are required. The total length of the plate module,

.. _figure_plate_module:

.. figure:: Images/plate_module.png
   :align: center
   :width: 500px

   Side view of the plate module. The total length :math:`L` of the module depends on both the number of plates  and the length of the plates . Since the effect of fewer plates can be compensated for by longer plates there is an optimal number to minimize the total length.

   .. math::
     :label: number_of_plates

       N = ceil\left(\sqrt{\frac{Q}{\left(S+T\right)WV_{C}\sin {\alpha}}}\right)

| Where:
| :math:`N` = the number of plates = |N.EtPlates|
| The function :math:`ceil\left(x\right)` rounds up the value :math:`x` to the nearest whole number
| :math:`Q` = the design flow
| :math:`S` = the perpendicular separation between the plates = |S.EtPlate|
| :math:`T` = the thickness of the plates = |T.EtPlate|
| :math:`W` = the width of the tank = |W.Et|
| :math:`V_{C}` = the design capture rate = |V.EtCaptureBod|
| :math:`\alpha` = the angle of inclination of the plates = |AN.EtPlate|

The length of the plates corresponding to the optimal number is per:

.. math::
  :label: plate_length

    L=Ceil\left(\frac{Q}{NWV_C\cos{\alpha}}-S\tan{\alpha},10cm\right)

| Where:
| :math:`L` = the length of the plates = |L.EtPlate|
| The function :math:`Ceil\left(x,10cm\right)` rounds up the value :math:`x` to the nearest multiple of 10cm

The length of the plates are rounded up to the nearest 10cm manifold to 1) facilitate fabrication of the plate module and 2) produce a conservative design with respect to capture rate, to compensate for any inefficiencies due to flow distribution between the plates.
