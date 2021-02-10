.. include:: ../global.rst

.. _title_Manifold_Distribuidor:

*********************
Manifold Distributor
*********************

The water enters each sedimentation tank through an |ND.SedManifold| manifold. The objectives in the design of this pipe are:

 #. To distribute the water evenly throughout the tank.
 #. That the sludge does not settle inside the pipe.
 #. That a linear stream is created running along the length of the tank to resuspend the settled sludge, thus keeping the sludge blanket in suspension.
 #. That horizontal currents in the tank, which cause a circulation that brings the sediment to the surface at one end, be eliminated.
 #. That the flocs are not broken with areas of very high energy dissipation at the outlets.

.. image:: Images/one_manifold.png
  :width: 250px
  :align: center

Water enters the distributor pipe from the inlet channel through a jacket cast into the channel slab. From there it flows down to the bottom of the tank through a vertical pipe inside the floc hopper that connects to the horizontal distributor pipe through a 90-degree elbow cast into the slope of the hopper.

.. _heading_difusores:

Diffusers
----------

.. image:: Images/diffuser.png
  :width: 150px
  :align: center

Each outlet hole at the bottom of the inlet manifold has an |ND.SedDiffuser| tube that directs the water stream downward. The lower end of the tubes is stretched so that the wall of the tube hits the two adjacent tubes. The result is a linear stream that runs the length of the tank to re-suspend the settling flocs in any cross section. These "diffuser" tubes also serve another purpose - that of eliminating the horizontal velocity of the water exiting the distributor tube, thus fulfilling the fifth objective of the distributor tube design listed above.

The horizontal part of the distributor tube is supported at each end in such a way that the diffuser ends reach the height of the edge of the bend, but do not stick to the bottom.

.. _figure_sed_tank_bottom:

.. figure:: Images/sed_tank_bottom.png
    :width: 750px
    :align: center

    Cross section of the lower part of the sedimentation tank.

.. _table_manifold_data:

.. csv-table:: Settling tank manifold data
    :align: center

    Nominal diameter of manifold, |ND.SedManifold| |PS.SedManStr|
    Diameter of the holes, |D.SedManifoldPort|
    Number of holes and diffusers, |N.SedManifoldPorts|
    Distance between holes (center-to-center), |B.SedDiffuser|
    Length of the removable part of the manifold manifold, |L.SedManHorizPipe2|
    Nominal diameter of the diffusers, |ND.SedDiffuser| |PS.SedDiffuserStr|
    Length of diffusers, |L.SedManifoldDiffuser|
    Internal width of the formed outlet of the diffusers, |W.SedDiffuserInner|
    Maximum energy dissipation rate at the outlet of the diffusers, |ED.SedInlet|
    Vertical gap between the edge of the half shank and the outlet of the diffusers, |H.JetReverserToDiffusers|
