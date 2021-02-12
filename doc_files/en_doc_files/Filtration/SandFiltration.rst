.. include:: ../global.rst

.. _title_Arena:

*****
Sand
*****

Quick sand filters use a specific type of sand, and even more so the FRAMCA. Throughout the life of the filter, the sand has a tendency to stratify, with the larger grains falling through the bottom of the filter and the larger grains rising through the top. In the FRAMCA, whether it is a multi-layer filter or a stacked filter, it is critical that the sand in each layer is the same - that there is no stratification of the sand and therefore that the sand throughout the filter is very uniform. The diameter of the sand is characterized by the **effective diameter** and the uniformity by the **uniformity coefficient**, both defined below.

.. _table_framca_data:

.. csv-table:: FRAMCA arena data
    :align: center
    :header: Parameter, Value, Description

    Effective diameter (D:sub:`10`), |D.FiSandES|, The size of the mesh that only 10% of the mass of a sample passes when sieved. A larger diameter would make it more difficult to fluidize the sand (it would need more speed). Smaller diameter means more pressure loss and possible sand leakage.
    Uniformity coefficient (D:sub:`60`/D:sub:`10`), < |Pi.UCFiSand|, The measure of the uniformity in the size of the sand grains. Higher means that the sand grains are less uniform (more variation).
    Porosity, |ε.FiSand|, The volume of empty space left between the sand grains over the total volume.
    Specific weight, > 2.5, The density of the sand between the density of water (the sand must weigh at least 2.5 times what the same volume of water weighs).
    Hardness, 6-8, The sand’s resistance to physical abuse. The sand must have a certain hardness so that it does not degrade after many backwash cycles.
    Acid Solubility, < 5%, You should not have too much soluble material that will dissolve in water for a long time.

The properties of the sand affect the behavior of the filter, both during normal filtration and during backwashing. In normal filtration, the pressure drop through a *clean* sand layer is given by:

.. math::
    :label: sand_head_loss

    HL_{Filtration} = \frac {36kvV_{Fi}}{g{D_{60}}^2} \frac {{\left(1-\varepsilon_{Sand}\right)}^2}{{\varepsilon_{Sand}}^3} H_{Layer}

| Where
| :math:`k` = the Carman-Kozeny constant = |k.Kozeny|
| :math:`\varepsilon_{Sand}` = the porosity of the sand bed = |ε.FiSand|
| :math:`\nu` = the kinematic viscosity of water = |Nu.Water|
| :math:`V_{Fi}` = the speed of approach in filtration = |V.FiLayer|
| :math:`D_{60}` = the size of sieve through which 60% of the sand passes = |D.FiSand60|
| :math:`H_{Layer}` = the height of the sand layer

The start of the backwash needs a certain minimum approach speed to fluidize the sand:

.. math::
    :label: min_backwash_velocity

    V_{Min} = \frac {g{D_{60}}^2}{36kv} \frac {{\varepsilon_{Sand}}^3}{\left(1-\varepsilon_{Sand}\right)} \left(\frac {\rho_{Sand}}{\rho_{H_2O}}-1\right)

| Where
| :math:`\rho_{Sand}` = the density of the sand = |Rho.FiSand|
| :math:`\rho_{H_2O}` = the density of water = |Rho.H2O|

Once backwashing has been initiated, the pressure drop across the entire fluidized sand bed is:

.. math::
    :label: head_loss_entire_sand

    {HL}_{Backwash}=\left(1-\varepsilon_{Sand}\right)\left(\frac{\rho_{Sand}}{\rho_{H_2O}}-1\right)H_{Sand}

| Where
| :math:`H_{Arena}` = the total height of the sand bed (*not expanded*)
