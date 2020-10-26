
.. _title_LFOM:

**********************************
Linear Flow Orifice Meter (LFOM)
**********************************

.. _heading_the_sutro_weir:

The Sutro weir
--------------
The Sutro weir is an opening that, when water passes from one side to the other, maintains a **linear relationship between** the water level and the flow that is passing through (Illustration 9). In the AguaClara plant, the function of the Sutro weir is imitated with an orifice design that creates the same relationship at the outlet of the entrance tank. The calculation of this design is based on Torricelli’s principle, which states that the flow through each submerged orifice is proportional to the square root of the water height above the center of the orifice:

.. math::
  :label: orifice_equation

    Q = A \sqrt{2gh}

| Where:
| :math:`Q` = the flow rate through the orifice
| :math:`A = the area of the orifice
| :math:`g` = the acceleration due to gravity
| :math:`h` = the height of the water above the center of the orifice

.. _figure_sutro:

.. figure:: Images/sutro.png
   :align: center
   :width: 500px

   The shape of a Sutro weir.

.. _heading_design_of_the_orifice:

Design of the orifices
------------------------
To design the Linear Flow Orifice Meter (LFOM) the algorithm of the design tool optimizes the number of holes in each row so that the zero level (below the first row of holes) corresponds to a zero flow rate, the maximum level (the top of the last row of orifices) corresponds to the maximum design flow rate, and the relationship between the flow rate and the water surface height between the two points is linear.

.. _table_design_of_the_lfom:

.. csv-table:: Linear flow orifice meter design
  :widths: 50, 10
  :align: center

  "Water level range (vertical distance between zero and maximum level)", |HL.Lfom|
  Diameter of the holes, |D.LfomOrifices|
  "Separation between rows of holes (center to center)", |B.LfomRows|
  "Number of holes in each row, starting with the bottom row", |N.LfomOrifices|
  "Height of each row above the zero level, starting with the bottom row", |H.LfomOrifices|

With the 20cm linear flow meter, each increase in flow causes the same increase in the water level in the entrance tank.

.. _figure_lfom20:

.. figure:: Images/lfom20.png
    :width: 500px
    :align: center

Operation of a 20 cm linear flow orifice meter (LFOM).
