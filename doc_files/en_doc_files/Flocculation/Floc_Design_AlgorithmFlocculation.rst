.. include:: ../global.rst

.. _title_Floc_Design_Algorithm:

*****************
Design Algorithm
*****************

.. _heading_1_entradas_al_algoritmo_y_asunciones:

  1. Algorithm entries and assumptions
----------------------------------------

.. _table_entradas_al_algoritmo_del_floculador:

.. csv-table:: Input to the flocculator algorithm
    :header: "Parameter",	"Value",	"Notes"

    Minimal collision potential, |CP.FlocBod|,
    Maximum head loss, |HL.FlocMax|, Optional user input. Actual pressure loss may be less if not needed.
    Length of channels, |L.Floc|, Based on the length of the sedimentation tank so that they share a wall.
    Water depth at the end, |HW.FlocEnd|, Based on the depth of the sedimentation tank so that the two tanks share a single foundation.
    Minimum width of the channels, |W.FlocChannelMinPlate|, "Based on 1) the space a worker needs to finish building the channel when he is inside and 2) the width of half the polycarbonate sheets used for the baffles, to conserve the material."
    Maximum width of the channels, |W.FlocChannelMaxPlate|, Based on the total width of the polycarbonate sheets used for the baffles.
    Radius of the length of each expansion at the baffle gap (H/S), |Pi.HSMin| - |Pi.HSMax|, The H/S radius should be in the efficient range.
    Radius from maximum rate to average rate of energy dissipation (:math:`\alpha _{\varepsilon}`), |Alpha.EpsilonFloc|, "The measurement of the non-uniformity of the rate of energy dissipation, which corresponds to the geometry described by the H/S radius."
    Flocculator efficiency (:math:`\alpha _{\psi}`), |Alpha.PsiFloc|, Efficiency of the flocculator corresponding to the radius.
    Minimum value of the average rate of energy dissipation, |ED.FlocAveMinSettling|, This restriction is imposed to avoid sedimentation of the flocs in the flocculator.

.. _heading_2_volumen_máximo_dedicado_al_tanque_de_entrada:

2. Maximum volume dedicated to the entrance tank
------------------------------------------------

The entrance tank occupies the first part of the first channel in the flocculator (:numref:`figure_floc_entrance_tank`). This volume, which is useless for flocculation, will have to be subtracted when calculating the number and width of the channels to achieve the minimum collision potential. As a first step of the algorithm the length of the entrance tank is calculated assuming the minimum width of the channels, which corresponds to the maximum length of the tank to maintain the desired capture rate (see previous section). This gives a conservative estimate. The actual dimensions of the entrance tank will be calculated later when the width of the channels is known.

.. _figure_floc_entrance_tank:

.. figure:: Images/floc_entrance_tank.png
    :width: 500px
    :align: center

    The entrance tank and the beginning and end of the water path through the flocculator take up space that has to be subtracted from the volume dedicated to flocculation.



.. _heading_3_volumen_del_floculador:

3. Flocculator volume
---------------------

There are two restrictions for the minimum volume dedicated to flocculation:

#.  **Constructive**: There must be at least two channels to maintain the configuration of the plant, so that both the entrance tank and the inlet and outlet channels of the sedimentation tanks are attached to the cleaning channel. The length and depth of the flocculator channels are already known based on the dimensions of the sedimentation tanks. There is also a restriction for the minimum width of each channel. By multiplying these minimum dimensions and subtracting the inactive volume (:numref:`figure_floc_entrance_tank`) you find the minimum volume dedicated to flocculation |Vol.FlocMinChannels|.
#. **Hydraulics:** Assuming efficient geometry (:ref:`title_Floc_Design_Concepts`), from the potential for collisions and the maximum pressure drop the average rate of energy dissipation is calculated directly:

    .. math::
        :label: efficient_avg_energy_dissipation_rate

        \bar{\varepsilon} = \Big(\frac{h_{eMax}g}{\psi \alpha_{\varepsilon}^\frac{1}{6}}\Big)^\frac{3}{2}

    | Where:
    | :math:`\bar {\varepsilon}` = the average rate of maximum energy dissipation for this design = |ED.FlocAveMax|
    | :math:`h _{eMax}` = the maximum pressure drop in the flocculator = |HL.FlocMax|
    | :math:`g` = la aceleración debida a la fuerza de gravedad
    | :math:`\psi` = the desired collision potential = |CP.FlocBod|
    | :math:`\alpha _{\varepsilon}` = measure of the uniformity of energy dissipation = |Alpha.EpsilonFloc|

    This calculates the retention time required to achieve the potential for collisions, equal to |Ti.FlocMinCP|:

    .. math::
        :label: potential_collision_time

        \theta = \frac{\psi}{(\bar{\varepsilon})^\frac{1}{3}\alpha_{\psi}}

    Finally the necessary volume is calculated, equal to |Vol.FlocMinCP|:

    .. math::
        :label: necessary_volume_calc

        Vol = Q \theta

    Where :math:`Q` = the plant design flow rate = |Q.Plant|.

    The larger of the volumes given by these two restrictions will be the active volume of the flocculator, equal to |Vol.FlocBod|.

.. _heading_4_tasa_de_la_disipación_de_energía:

4. Rate of energy dissipation
-----------------------------

As mentioned in the previous section, no direct restrictions are imposed on the maximum rate of energy dissipation related to the maximum floc size in the AguaClara designs. Instead a reasonable value is assumed for the maximum pressure drop, an optional user input, which keeps the corresponding energy dissipation rate within an acceptable range that ensures effective flocculation.

The *minimum* rate of energy dissipation does have two restrictions:

#. **Hydraulic:** With the flocculator volume calculated in the previous step, and the corresponding retention time, the average rate of energy dissipation required to achieve the desired collision potential is calculated directly. It is equal to |ED.FlocAveCP|.

    .. math::
        :label: floc_average_collision_potential

        \bar{\varepsilon} = \Big(\frac{\psi}{\theta \alpha_{\psi}}\Big)^3

#. **Practice:** It is important that the flocculator floor is kept free of sediment so as not to create unnecessary maintenance work and waste of water for cleaning. For this purpose a minimum restriction for the average rate of energy dissipation is imposed, equal to |ED.FlocAveMinSettling|.

.. _heading_ancho_de_los_canales_y_el_número_de_canales:

5. Channel width and number of channels:
----------------------------------------

There are two restrictions for the minimum width of the channels:

#. **Constructive:** Since they are generally constructed of bricks with a coat and fine die, it is important that the flocculator channels of an AguaClara plant are wide enough that one person can get inside during construction and work freely. Conveniently, this minimum width for ease of construction corresponds approximately to the width of half of the polycarbonate sheets used for the baffles (|W.FlocChannelMinPlate|). If the algorithm chooses this minimum width, the polycarbonate sheets are used efficiently with the minimum number of cuts, thus lowering the manufacturing costs.

#. **Hydraulics:** It was assumed that the flocculator geometry would be efficient That is, the radius of the length of the expansions at the baffle gap (H/S) is within the range |Pi.HSMin| to |Pi.HSTransition|. The depth at the end of the flocculator (|HW.FlocEnd|) corresponding to the depth of the sedimentation tank is also known. With this depth and the deflector spacing that keeps the H/S radius within the efficient range, there is a minimum width that gives the average rate of energy dissipation that was calculated earlier.

    .. math::
        :label: min_width_energy_dissipation

        W_{Min} = \Big(\frac{H}{S}\Big)_{Min} \Big(\frac{K_B}{2H\bar{\varepsilon}}\Big)^\frac{1}{3}\frac{Q}{H}

Where in this case  = the depth at the end of the flocculator = |HW.FlocEnd|.

It’s the same as |W.FlocChannelMinEfficient|. The channel width can be wider, and would be compensated for by reducing the deflector spacing. This restriction for the minimum width dominates only for large flows where the spacing between baffles is to be large compared to the depth of the channels.

The larger of these two values will be the minimum channel width, equal to |W.FlocChannelMin|.

There is also a construction restriction for the maximum width of the channels, which corresponds to the total width of the polycarbonate sheets used for the baffles, equal to |W.FlocChannelMaxPlate|.

In order to find the necessary number of channels, it is assumed that the width of each channel will be as wide as possible. If this means that the baffle spacing is decreased until the H/S radius is above the efficient range, obstacles will be added to the baffle spacing to reduce the length of the expansions. Using the maximum width in the number of channels calculation produces the minimum number of channels, thus reducing construction costs.

If all flocculator channels contributed equally to flocculation, the number of channels would be found by the following equation, rounding up.

.. math::
    :label: num_of_floc_channels

    N = \frac{Vol}{W_{Max}HL}

| Where:
| :math:`L` = the length of the channels corresponding to the length of the sedimentation tanks = |L.Floc|

However, from the total volume you have to subtract the volume that the entrance tank occupies and the inactive space at the end of the flocculator where the water enters the inlet channel of the sedimentation tanks. In addition, there must be an even number of channels. The actual number of channels, equal to |N.FlocChannels|, is found by:

.. math::
    :label: true_floc_channel_number

    N_{Canal} = Ceil \Bigg(\frac{\frac{Vol}{W_{Max} H}+L_{Et}+T+2W_{SedCanal}}{L},2 \Bigg)

| Where:
| The function :math:`Ceil\left(x,2\right)` rounds up the x value to the nearest even number
| :math:`L _{Et}` = maximum length of the entrance tank on the first channel = |L.EtMax|
| :math:`T` = thickness of the entrance tank wall = |T.FlocDividingWall|
| :math:`W _{SedCanal}` = the width of the sedimentation tanks inlet channel = |W.SedInletChannelPreWeir|

With the number of channels you can already calculate the minimum width of each channel to reach the total volume calculated above, equal to |W.FlocChannelCP|:

:math:`W _{Min}=\frac{Vol}{H(N_{Canal}L-L_{Et}-T-2W_{SedCanal})}`

Finally, the maximum width calculated to reach the volume and minimum width that came out of the two previous restrictions is taken and rounded up to the nearest centimeter for ease of construction. The width of the channels will be |W.FlocChannel|.


.. _heading_6_separación_entre_expansiones:

6. Separation between expansions
--------------------------------

There is an option to place obstacles between the baffles that cause the same expansion as happens after the turn around a baffle, to reduce the gap between expansions and keep the H/S radius within the efficient range. Given the width of the channels, the rate of energy dissipation gives us the maximum separation between obstacles that maintains the efficient geometry (see :std std-ref:`Flocculator Design Concepts`):

.. math::
    :label: max_efficient_separation

    H_{MaxExp} = \Big(\frac{K_B}{2\bar{\varepsilon}}\Big)^\frac{1}{4} \bigg(\frac{(\frac{H}{S})_{Max}Q}{W}\bigg)^\frac{3}{4}

| Where:
| :math:`H _{MaxExp}` = the separation between expansions, which could be caused by obstacles or deflectors

The number of expansions between each two baffles is found by the depth of the tank between the maximum separation, equal to |N.FlocSpaceExpansions|:

.. math::
    :label: num_expansions_depth_separation

    N _{Exp}= ceil \Big(\frac{H_{Floculador}}{H_{MaxExp}}\Big)

Finally, the real separation between expansions, equal to |H.FlocObs|, is:

.. math::
    :label: acutual_separation_between_expansions

    H _{Exp}=\frac{H_{Floculador}}{N_{Exp}}



.. _heading_7_separación_entre_deflectores:

7. Deflector spacing
--------------------

Already with the other dimensions determined, the separation between deflectors, equal to |S.FlocBaffleMin|, which corresponds to the rate of energy dissipation calculated above is found by:

:math:`S _{Min}=\Big(\frac{K_B}{2H\bar{\varepsilon}}\Big)^\frac{1}{3}\frac{Q}{W}`

However, there must be an integer number of baffles in the channel of predetermined length. The number of baffle spaces that maintain the minimum spacing is found per:

.. math::
    :label: floc_baffel_sep_min

    N _{Esp}=Ceil\Big(\frac{L+T}{S_{Min}+T},2\Big)

| Where:
| :math:`N _{Esp}` = the number of spaces between deflectors in each channel = |N.FlocChannelSpaces|
| The function :math:`Ceil\left(x,2\right)` rounds up the value :math:`x` to the nearest even number
| :math:`L` = the length of the channel = |L.Floc|
| :math:`T` = the thickness of the polycarbonate sheet used for the baffles = |T.FlocBaffle|

This number of spaces corresponds to |N.FlocChannelBaffles| deflectors on each channel.

Finally the precise separation between the baffles is calculated, equal to |S.FlocBaffle|:

.. math::
    :label: precise_baffle_min

    S = \frac{L-N_{Def}T}{N_{Esp}}

| Where:
| :math:`S` = the separation between the deflectors = |S.FlocBaffle|
| :math:`N _{Def}` = the number of deflectors on each channel = |N.FlocChannelBaffles|

This step that corrects the separation by the need to have an integer number of baffles in each channel is the cause of the difference between the design values and the final values of the pressure drop (|HL.Floc| instead of |HL.FlocBod|), the average rate of energy dissipation (|ED.FlocAve| instead of |ED.FlocAveBod|), and the potential for collisions (|CP.Floc| instead of |CP.FlocBod|). Since the correction always reduces the gap, which increases the rate of energy dissipation, all these parameters end up being higher than the original design values.

.. _heading_8_cálculo_de_los_parámetros_finales:

8. Calculation of the end parameters
------------------------------------

#. The potential for collisions caused by a single expansion:

    .. math::
        :label: single_expansion_collision_potential

        \psi _{Exp}=\bigg(\frac{K_B^2H_{Exp}^4}{4\alpha_{\varepsilon}}\bigg)^\frac{1}{6}`

    | Where:
    | :math:`\psi _{Exp}` = the collision potential for an expansion = |CP.FlocExpansion|
    | :math:`H _{Exp}` = the separation between expansions = |H.FlocObs|

    The total collision potential of the flocculator:

    .. math::
        :label: floc_total_potential_collisions

        \psi _{Floc}=N_{Exp}\psi_{Exp}

    | Where:
    | :math:`\psi _{Floc}` = the total collision potential of the flocculator = |CP.Floc|
    | :math:`N _{Exp}`` = the number of expansions in the flocculator = |N.FlocExpansions|

#. The average speed of the fluid:

    .. math::
        :label: floc_avg_fluid_velocity

        V = \frac{Q}{SW}

    | Where:
    | :math:`V` = the average velocity of the fluid = |V.Floc|
    | :math:`S` = the separation between deflectors = |S.FlocBaffle|
    | :math:`W` = the width of the channels = |W.FlocChannel|

#. The head loss:

    .. math::
        :label: floc_headloss_calc

        h_e = K_B\frac{V^2}{2g} N_{Exp}

    | Where:
    | :math:`h_e` = the total head loss of the flocculator = |HL.Floc|
    | :math:`V` = the average velocity of the fluid = |V.Floc|
    | :math:`g` = the acceleration due to gravity =

#. The actual rate of energy dissipation after correction of the deflector gap, equal to |ED.FlocAve|:

    .. math::
        :label: after_correction_dissipation_rate

        \bar{\varepsilon} = \frac{K_B}{2H_{Exp}}\Big(\frac{Q}{WS}\Big)^3

    And the corresponding maximum rate of energy dissipation, equal to |ED.FlocMax|:

    .. math::
        :label: floc_max_dissipation_rate

        \varepsilon_{Max} = \alpha_{\varepsilon}\bar{\varepsilon}

#. The average speed gradient, equal to |G.FlocAve|:

    .. math::
        :label: avg_vel_gradient

        G = \sqrt{\frac{\bar{\varepsilon}}{v}}

    Where :math:`v` is the kinematic viscosity of water, equal to |Nu.Water|.

#. The total retention time, including the inactive space at the end of the last channel and contributed by the head loss, equals |Ti.Floc|:

    .. math::
        :label: total_retention_time_1

        Vol _{Total}=WLH=W(N_{Channel}L_{Channel}-L_{Et}-T)\Big(H+\frac{h_e}{2}\Big)

    .. math::
        :label: total_retention_time_2

        \theta = \frac{Vol_{Total}}{Q}

    The active retention time is calculated by subtracting the inactive volume, and is equal to |Ti.FlocActive|.


.. _heading_9_Design_of_the_Obstacles:

9. Design of the obstacles
--------------------------

Each obstacle is two pieces of PVC pipe between which water has to flow (). The expansions caused by the obstacles must be equal to those caused by the deflectors. It is assumed that, because of the round shape of the pipes and the gradual curve of the flow lines, there is no contraction vein following the obstacle in the flow, but an immediate expansion. Therefore, the width of the space between the tubes should be equal to the width of the narrowest part of the contracted vein that follows after the turn around a baffle:

.. math::
    :label: width_between_tubes

    W = S_{Def}(1-\Pi_{VC})

| Where:
| :math:`W` = the width of the space between the tubes = |W.FlocObstacleWake|
| :math:`S _{Def}` = the separation between deflectors = |S.FlocBaffle|
| :math:`\Pi _{VC}` = vein coefficient contracted to fly around a deflector = |Pi.VCBaffle|

.. _figure_deflectors_lateral:

.. figure:: Images/deflectors_lateral.png
    :width: 300px
    :align: center

    Side view of the obstacles between the deflectors.

Finally, the algorithm looks for the minimum size of the tube that takes up the necessary space, equal to |ND.FlocObs|.


.. _heading_10_Heights:

10. Heights
-----------

The height of the flocculator is calculated as the sum of the water level in the inlet channel of the sedimentation tank:

.. math::
    :label: add_water_floc_height

    H_{Floc} = HW_{Final}+h_e+H_{Board}

| Where:
| :math:`H _{Floc}` = the total height of the tank = |H.Floc|
| :math:`HW _{Final}` = the water depth at the end of the flocculator, determined by the inlet channel to the sedimentation tank = |HW.FlocEnd|
| :math:`h_e` = the total head loss of the flocculator = |HL.Floc|
| :math:`H _{Board}` = the free space at the top of the tank = |H.PlantFreeboard|

The height of the flocculator slab is relative to the bottom slab that holds the sedimentation tanks and the flocculator. The bottom of this slab is the zero level in the AutoCAD drawing. The bottom of the flocculator slab is at the same level as the bottom of the slab, so the level of the tank bottom only depends on the thickness of the slab |T.FlocSlab|.

.. _heading_11_the_gates_between_the_channels:

11. The gates between the channels
----------------------------------

In the design of the gates the area perpendicular to the water flow is conserved in such a way that there are no regions with energy dissipation rates far above the design limit. That is, the area of the gate is equal to the area of the space between the baffles. The damper must fit into the space before the first baffle in the channel. Therefore, the width is calculated based on the spacing between the baffles:

.. math::
    :label: width_based_on_sep

    W = S-d
| Where:
| :math:`W` = the width of the gate = |W.FlocPort|
| :math:`S` = the separation between deflectors = |S.FlocBaffle|
| :math:`d` = the gap between the edge of the gate and the first deflector = |S.FlocBaffleSetBackPlastic|

In order to preserve the area perpendicular to the flow along the entire length of the flocculator, the height of the gate is calculated as:

.. math::
    :label: gate_height_calc

    H = \frac{SW_{Channel}}{W_{Gate}}

Where :math:`H` = the height of the gate = |H.FlocPort|.

.. _heading_12_channel_drains:

12. Channel drains
------------------

With the exception of the first one, all flocculator channels have a drain attached to the plant’s cleaning channel. They are designed so that all the water leaves the flocculator within |Ti.FlocDrain|, which gives the following design flow rate:

.. math::
    :label: floc_drain_design_flow

    Q _{Des}=\frac{Vol_{Floc}}{(N_{Channels}-1)Ti}

| Where:
| :math:`Q _{Des}` = the design flow rate of each drain = |Q.FlocDrain|
| :math:`Vol _{Floc}` = the total volume of water in the flocculator when full = |Vol.Floc|
| :math:`N _{Channels}` = the number of channels in the flocculator = |N.FlocChannels|
| :math:`Ti` = the maximum time it takes to empty the flocculator = |Ti.FlocDrain|
