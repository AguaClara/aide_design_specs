.. include:: ../global.rst


.. _title_Manifolds_de_Entrada:

********************
Entry Manifolds
********************

The settled water enters the sand bed at four levels. Each inlet has a manifold that distributes the water in that layer. The assembly consists of a trunk that is installed in the center of the filter with two "wings" of smaller diameter perforated pipes (:numref:`figure_entry_manifold`).

.. _figure_entry_manifold:

.. figure:: Images/entry_manifold.png
    :width: 500px
    :align: center

    The manifold consists of a trunk with two "wings" of perforated tubes. There are |ND.FiBranchHolder| tubes that receive the perforated tubes on the sides of the box.

The objectives in the design of the inlet manifolds are:

 #. To achieve uniform water distribution in the sand layer.
 #. To prevent sand from entering the tubes.
 #. To facilitate their fabrication and installation.

A constraint on the flow distribution throughout the sand bed governs the estimation of the collective area of the orifices in the inlet manifolds (see :ref:`title_Distribución_del_Flujo`):

.. math::
    :label: flow_restriction

    A_{Est}=\frac{Q_{Fi}}{\Pi_{VC}\sqrt{2g\frac{{PR}_{Re}}{\left(1-{\Pi_Q}^2\right)}}}

| Where
| :math:`A_{Est}` = the estimated collective area of the orifices in the backwash manifold = |A.FiBwManOrificesEst|
| :math:`Q _{Fi}` = the flow rate per filter = |Q.Fi|
| :math:`\Pi _{VC}` = the vena contracta coefficient for an orifice = |Pi.VCOrifice|
| :math:`{PR}_{Re}` = full pressure recovery on the backwash manifold = |PR.FiBwManTotal|
| :math:`\Pi_Q` = the minimum radius of long path flow over short path flow = |Pi.FiManifoldQ|

With this estimate of the collective area, the diameter of the holes can be defined taking into account the commonly available drill bit sizes:

.. math::
    :label: diameter_bits

    D_{Orifice} = CeilNearest\left(\sqrt{\frac{4}{\pi}\frac{A_{Est}}{{L_{Branch}}/{S_{Orifice}}}},D_{drillbit}\right)

| Donde
| :math:`CeilNearest\left(x,M\right)` = a function for the value in the array :math:`M` nearest and largest to the target :math:`x`
| :math:`L_{Branch}` = the useful length of the branch (depends on the diameter of the manifold trunk)
| :math:`S_{Orifice}` = the estimated hole spacing = |B.FiManOrificeEst|
| :math:`D_{drillbit}` = the matrix of commonly available drill bit diameters

The inlet manifolds in the middle of the filter bring in twice as much water as the bottom manifold because they deliver water to two layers of the filter, so this calculation is repeated independently for the orifices of these manifolds with twice this area. The upper inlet manifold has the same collective area as the lower manifold, because it only delivers water to the top layer of sand. Once the diameter and number of orifices per branch and per manifold have been defined, the true collective area of the orifices and the true head loss through them during normal filtration can be recalculated:

.. math::
    :label: headloss_end

    {HL}_{Orifice}=\frac{\left(\frac{Q_{Layer}}{A_{Layer}\Pi_{VC}\varepsilon_{Sand}}\right)^2}{2g}

.. _table_lower_manifold_data:

.. csv-table:: Lower inlet manifold data (number 4)
    :align: center

    Lower manifold trunk line, |ND.FiBwTrunk| |PS.FiTrunkStr|
    Lower manifold inlet branches, |ND.FiBwManBranch| |PS.FiBranchStr|
    Tubes receiving branches at each end, |ND.FiBranchHolder| |PS.FiBranchHolderStr|
    Number of branches in the manifold, |N.FiManBranch|
    Length of the branches, |L.FiBwManBranch|
    Length of the part of the branch that enters the holes in the trunk and the tube that receives the branch at the other end, |L.FiManBranchExt|
    Number of holes in each branch, |N.FiBwManOrificesPerBranch|
    Spacing between holes in the branches (center-to-center), |B.FiBwManOrifice|
    Diameter of branch bore holes, |D.FiBwManOrifice|
    Estimated head loss through holes during backwashing, |HL.FiBwManOrifice|
    Estimated head loss through the orifices during filtration, |HL.FiBwManOrificeForward|

.. _table_center_manifold_data:

.. csv-table:: Data of the center inlet manifolds (numbers 2 and 3)
    :align: center

    Manifold trunk lines, |ND.FiTrunk| |PS.FiTrunkStr|
    Upper inlet branches, |ND.FiManBranch| |PS.FiBranchStr|
    Tubes receiving branches at each end, |ND.FiBranchHolder| |PS.FiBranchHolderStr|
    Number of branches on each inlet manifold, |N.FiManBranch|
    Length of the branches, |L.FiManBranch|
    Length of the part of the branch that enters the trunk holes and the tube that receives the branch at the other end, |L.FiManBranchExt|
    Number of holes in each branch, |N.FiInletManOrificesPerBranch|
    Spacing between holes in the branches (center-to-center), |B.FiInletManOrifice|
    Diameter of branch bore holes, |D.FiInletManOrifice|
    Estimated pressure drop across the orifices during filtration, |HL.FiInletManOrificeForward|

.. _table_upper_manifold_data:

.. csv-table:: Upper inlet manifold data (number 1)
    :align: center

    Manifold trunk line, |ND.FiTrunk| |PS.FiTrunkStr|
    Upper inlet branches, |ND.FiManBranch| |PS.FiBranchStr|
    Tubes receiving branches at each end, |ND.FiBranchHolder| |PS.FiBranchHolderStr|
    Number of branches at each inlet manifold, |N.FiManBranch|
    Length of the branches, |L.FiManBranch|
    Length of the part of the branch that enters the trunk holes and the pipe that receives the branch at the other end, |L.FiManBranchExt|
    Number of holes in each branch, |N.FiTopManOrificesPerBranch|
    Spacing between holes in the branches (center-to-center), |B.FiTopManOrifice|
    Diameter of branch bore holes, |D.FiTopManOrifice|
    Estimated pressure drop across the holes during filtration, |HL.FiTopManOrificeForward|
