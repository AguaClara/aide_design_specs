.. include:: ../global.rst

.. _title_Exit_Manifolds:

****************
Exit Manifolds
****************

Unlike the entry manifolds, the exit manifolds have slotted pipes instead of perforated pipes for the branches. The slots are |W.FiManSlots| wide, so that water can enter the pipe but sand cannot.

.. _figure_exit_manifold_grooves:

.. figure:: Images/exit_manifold_grooves.png
   :align: center
   :width: 300px

   The slots in an exit manifold branch.

.. _figure_exit_manifold:

.. figure:: Images/exit_manifold.png
   :align: center
   :width: 300px

   The exit manifold with the slotted tubes.

The collective area of the slots per manifold is twice the collective area of the holes in the backwash manifold, because these exit manifolds extract the water from two sand layers each. The length of the slots is defined to achieve the desired collective area:

.. math::
    :label: groove_length

    L_{Groove}=\frac{A_{Layer}\bullet S_{Groove}}{W_{Groove}\bullet N_{Branch}\bullet L_{Branch}\bullet N_{Rows}}

| Where
| :math:`A_{Layer}` = the beloved collective area = |A.FiOutletManSlots|
| :math:`S_{Groove}` = the separation of the slots = |B.FiManSlot|
| :math:`W_{Groove}` = the width of the slots = |W.FiManSlots|
| :math:`N_{Branch}` = the number of branches per manifold = |N.FiManBranch|
| :math:`L_{Branch}` = the slotted length of the branch = |L.FiOutletBranchSlotted|
| :math:`N_{Rows}` = the number of rows of slots per string = |N.FiSlotRows| (means both sides have slots)

The pressure drop through the slots during normal filtration is given by:

.. math::
    :label: groove_head_loss

    {HL}_{Orifice}=\frac{\left(\frac{Q_{Layer}}{A_{Layer}\Pi_{VC}\varepsilon_{Sand}}\right)^2}{2g}

| Where
| :math:`Q_{Layer}` = the flow rate of water through the manifold
| :math:`A_{Layer}` = the collective area of the slots in the manifold
| :math:`\Pi _{VC}` = the coefficient of vein contracted for an orifice = |Pi.VCOrifice|
| :math:`\varepsilon_{Sand}` = the porosity of the sand bed = |ε.FiSand|

.. _table_exit_manifold_data:

.. csv-table:: Exit manifold data
    :align: center

    Filter manifold trunk lines, |ND.FiTrunk| |PS.FiTrunkStr|
    Upper exit branches, |ND.FiManBranch| |PS.FiBranchStr|
    Number of strings in each exit manifold, |N.FiManBranch|
    Length of the branches, |L.FiManBranch|
    Length of the part of the branch that enters the orifices in the trunk and the tube that receives the branch at the other end, |L.FiManBranchExt|
    Length of the slotted part of each branch, |L.FiOutletBranchSlotted|
    Number of rows of slots in each branch, |N.FiSlotRows|
    Gap between slots, |B.FiManSlot|
    Number of slots in each row, |N.FiOutletManSlotsPerRow|
    Number of slots in each branch, |N.FiOutletManSlotsPerBranch|
    Width of slots, |W.FiManSlots|
    "Internal length of the slots, measured in the pipe bend", |L.FiOutletManSlotCurvedInner|
