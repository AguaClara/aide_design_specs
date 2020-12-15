.. include:: ../global.rst

.. _title_Collector_Tubess:

****************
Collector Tubes
****************

.. image:: Images/collect_tube.png
   :align: center
   :width: 250px

Above the plates the water comes out through holes in a perforated pipe that runs along the tank, with the row of orifices at the top. The orifices cause a sufficient head loss to achieve an even flow distribution along each tank such as those between the |N.SedTanks| tanks. The goal is that each water path, from the inlet in the distribution channel to the outlet channel, has a head loss similar to the others. This ensures that the flows in each run are similar as well. The head loss |HL.SedLaunderOrifice| caused by the orifices in the collecting pipe dominates the total loss, and thus controls the flow distribution. The head loss in the orifices has the additional advantage of creating a supernatant over the collection tube that prevents floating material on the surface from leaving the tank through the tube.

The diameter of the collecting tube is designed as a manifold so that the flow at each orifice is equal throughout the tube, that the radius from minimum flow to maximum flow through the orifices does not fall below |Pi.QLaunderOrifices|:

.. math::
  :label: min_max_flow_rate

    \frac{Q_{Min}}{Q_{Max}} > \Pi_Q

| Where:
| :math:`Q_{Min}` = the minimum flow rate passing through an orifice in the collection tube
| :math:`Q_{Max}` = the maximum flow rate through an orifice in the collecting pipe
| :math:`{\Pi}_Q` = the minimum radius of flow through the orifices in the collecting pipe = |Pi.QLaunderOrifices|

The orifices in the collecting tube are designed to cause approximately |HL.SedLaunderBod| head loss, taking into account the length of the tube, a separation between the orifices of approximately |B.SedLaunderOrificesEst| and the diameters of commonly available drills. The design steps are:

#. Calculate the useful length of the tube, taking into account its entrance to the tank
#. Estimate the number of orifices with an estimated spacing of |B.SedLaunderOrificesEst|
#. Estimate the flow rate per orifice given the estimated number of orifices
#. Calculate the desired diameter of the orifices given the estimated flow rate per:

  .. math::
    :label: desired_diameter

      D=\sqrt{\frac{4}{\pi}\frac{Q_{Orifice}}{\mathrm{\Pi}_{VC}\sqrt{2g{HL}_{Orifice}}}}

  | Where
  | :math:`Q_{Orifice}` = the estimated flow rate per orifice
  | :math:`{\Pi}_{VC}` = the vein coefficient contracts for the orifice = |Pi.VCOrifice|
  | :math:`{HL}_{Orifice}` = the pressure drop assigned by the holes = |HL.SedLaunderBod|
  |
  |

#. Define the final diameter of the orifices according to the commonly available drill bits
#. Calculate the actual flow rate per orifice according to the final diameter
#. Calculate the separation and the final number of orifices according to the actual flow rate per orifice

.. _table_sed_tank_tube_data:

.. csv-table:: Data from the collecting tubes of the sedimentation tanks
    :align: center

    Nominal pipe diameter, |ND.SedLaunder| |PS.SedLaunderStr|
    Length of each collecting tube, |L.SedLaunder|
    Number of holes in each collecting tube, |N.SedLaunderOrifices|
    Branch hole spacing (center to center), |B.SedLaunderOrifice|
    Diameter of the holes, |D.SedLaunderOrifice|
    Head loss through holes, |HL.SedLaunderOrifice|
