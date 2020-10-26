.. include:: ../global.rst

.. _title_backwash siphon:

*******************
Backwash Siphon
*******************

The FRAMCA backwash cycle is controlled using a siphon that changes the level of the filter output, as shown below. When the siphon is active, the water passes through it to the drain in the plant’s cleaning channel, at a much lower height than the inlet and outlet boxes. This level change is necessary with the high pressure loss during the backwash cycle. On the other hand, when the siphon is broken, the air prevents the flow of water, and by force the water has to go out in the outlet box at a much higher height that corresponds to the lower pressure loss during the filtration cycle. The advantage of the siphon is that it avoids the use of a large valve that would otherwise be needed to switch between the two outlets.

.. _figure_backwash_cycle:

.. figure:: Filtration/Images/backwash_cycle.png
   :align: center
   :candidates: {'*': 'Filtration\\Images/backwash_cycle.png'}
   :width: 700px

   The AguaClara FRAMCA in the backwash cycle.

The diameter of the siphon pipe is defined so that the head loss through the pipe does not exceed  = |HL.FiSiphonMax}. These load losses include:

.. math::
  :label: head_loss_max_inequality

  HL_{Siphon}=HL_{Entrance}+HL_{Tubing} + HL_{Exit} \leq HL_{Max}

| Where
| :math:`HL_{Entrance}` = the head loss from the flow inlet to the siphon holes
| :math:`HL_{Tubing}` = the head loss through the pipe and fittings in the siphon run
| :math:`{HL}_{Exit}` = the head loss due to the siphon outlet in the cleaning channel
| :math:`HL_{Max}` = the maximum allowable pressure drop across the siphon = |HL.FiSiphonMax|

During backwashing, the flow enters the siphon through holes whose collective area is approximately equal to the cross-sectional area of the pipe.

.. math::
    :label: siphon_diameter

    D_{Orifice}=CeilNearest\left(\frac {ID_{Siphon}}{\sqrt {N_{Orifices}}},D_{Drill}\right)

| Where
| :math:`CeilNearest\left(x,M\right)` = a function for the value in the matrix  that is closer and larger than the target
| :math:`ID_{Siphon}` = the inside diameter of the siphon pipe
| :math:`N_{Orifices}` = the number of exit orifices, defined according to the space available = |N.FiSiphonManOrifices|
| :math:`D_{Drill}` = the matrix of commonly available drill diameters

The exit of the siphon in the cleaning channel is the mouth of the pipe, which approaches as a chute. The pressure drop at the outlet is then:

.. math::
    :label: output_head_loss

    {HL}_{Exit}=\left(\frac{3}{2}\frac{Q}{\Pi_{VC}\sqrt{2g}\left(\pi{ID}_{Siphon}\right)}\right)^{2/3}

| Where
| :math:`Q` = the backwash flow rate, equal to the flow rate per filter = |Q.Fi|
| :math:`\Pi _{VC}` = the coefficient of vein contracted for a hole = |Pi.VCOrifice|
| :math:`ID_{Siphon}` = the inside diameter of the siphon pipe

.. _table_siphon_data:

.. csv-table:: Siphon Data
    :align: center

    Main tube, |ND.FiSiphon| |PS.FiSiphonStr|
    Air valve diameter, |ND.FiSiphonAirValve|
    Number of holes in the outlet manifold, |N.FiSiphonManOrifices|
    Manifold hole spacing (center to center), |B.FiSiphonManOrifices|
    Diameter of the manifold holes, |D.FiSiphonManOrifices|
