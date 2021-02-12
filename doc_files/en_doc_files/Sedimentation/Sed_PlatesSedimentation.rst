.. include:: ../global.rst

.. _title_Sedimentation_Plates:

*********************
Sedimentation plates
*********************

.. image:: Images/sed_plates.png
   :align: center
   :width: 250px

Plate modules are mounted on top of the sedimentation tanks to reduce the size of the smallest particles that can be captured. They increase the surface area where particles can stick and be captured. That is, the plates reduce the distance a particle suspended between them has to fall down before it can stick to a solid surface ().

.. _figure_diff_diagram:

.. figure:: Images/diff_diagram.png
   :align: center
   :width: 750px

   The sedimentation plates reduce the fall of the floc to a solid surface. In the diagrams you can see the difference between the distance a particle has to fall in the same period of time with plates and without plates.

The width of the plates is defined according to the specifications of the supplier where they are manufactured. The length of the plates, rounded up to the next 10 cm increment for ease of manufacture, is calculated by:

.. math::
  :label: plate_length_calc

    L_{Plate}=\frac{S_{Plate}\left(\frac{V_{Sed}}{V_{Capture}}-1\right)+T_{Plate}\frac{V_{Sed}}{V_{Capture}}}{\sin{\alpha_{Plate}}\cos{\alpha_{Plate}}}

| Where
| :math:`S_{Plate}` = the separation between the plates = |S.SedPlate|
| :math:`V_{Sed}` = the upward velocity in the settler = |V.SedUpBod|
| :math:`V_{Capture}` = the capture rate = |V.SedCBod|
| :math:`T_{Plate}` = the thickness of the plates = |T.SedPlate|
| :math:`\alpha_{Plate}` = the angle of inclination of the plates = |AN.SedPlate|

The number of plates per tank is calculated according to the active length of the tank:

.. math::
  :label: number_of_plates_per_tank

    N_{Plates}=\frac{L_{SedActive}\sin{\alpha_{Plate}}-T_{Plate}}{S_{Plate}+T_{Plate}}

| Where
| :math:`L_{SedActive}` = the active length of the settler = |L.SedActiveEst|

The number of plates per module is defined by the total number of plates per tank so that there is a whole number of modules per tank, with a minimum number of 8 plates per module.

.. _table_sed_plate_data:

.. csv-table:: Sedimentation plate data
    :align: center

    Width of the plates, |W.SedPlate|
    Length of the plates, |L.SedPlate|
    Perpendicular separation between the plates, |S.SedPlate|
    Tilt angle of the plates, |AN.SedPlate|
    Number of plates in each module, |N.SedModPlates|
    Number of modules in each tank, |N.SedModules|
    Number of plates in each tank, |N.SedPlates|
    Total number of plates in the plant, |N.SedPlatesTotal|
    Module connectors, |ND.SedMod| |PS.SedModStr|
    Module dividers, |ND.SedModSpacer| |PS.SedModSpacerStr|
