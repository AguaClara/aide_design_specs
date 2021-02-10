.. include:: ../global.rst

.. _title_Dosing_Algoritmo_de_Diseño:

*******************
Design Algorithm
*******************

.. _heading_dosis_de_los_químicos:

Chemical Dosing
---------------------
The proportioner is designed for the dosages detailed in the sizing tables below. The concentrations of the stock solutions are selected to be practical to mix, low enough for the chemical to dissolve easily and high enough to last at least one day when dosages are high. The maximum flow rate of the chemical should not cause significant head losses in the piping leading to the balance, nor cause a loss greater than 30 cm at the float valve orifice of the constant load canister. Similarly, the volume of the storage containers is selected so that the chemical mixtures will last for a practical time given the stock concentration. The slab where the chemical storage barrels are located has an elevation of 31 cm measured from the top of the inlet tank wall so that head loss at the float valve has no effect on chemical flow. The container outlets are elevated 10 cm above the floor to allow room for sediment to fall to the bottom.

.. _heading_small_hoses_2:

Small diameter hoses: main head loss element
---------------------------------------------------------------------
Small diameter hoses are designed to provide |HL.Cdc| head loss at the maximum flow rate of the chemical. They are designed so that major losses (due to friction with the hose walls) dominate, and minor losses (due to expansions and changes in flow direction) are minimal. This criterion limits the flow rate that can pass through a single hose, since minor losses grow faster than major losses with increases in flow rate. For flow rates in this range, an internal diameter of :math:`1/8`" is selected because of the ease of finding such hoses in local markets. Next, the number of hoses in parallel (and thus the maximum flow rate in each) is based on a maximum percentage of the total head loss that is due to minor losses. Finally, the length of the hoses is defined based on the desired maximum head loss of 30 cm, given the maximum flow rate in each.

.. _heading_pérdidas_de_carga:

Head loss
-----------------
There are two types of head loss that occur in the metering system. The *major* losses are due to the frictional force felt by the fluid on the tube walls. The *Minor* losses are due to expansions of the fluid when there is a change in the geometry of its path. The design seeks to make the minor head losses negligible compared to the major losses. This will ensure that there is a linear relationship between head loss and fluid flow.

The head loss due to expansions is defined by

.. math::
  :label: head_loss_expansion

    h_e=\frac{K_eV^2}{2g}

| Where
| :math:`K_e` = the expansion coefficient, which depends on geometric changes
| :math:`V` = the velocity of the fluid in the pipes
| :math:`g` = acceleration due to gravity :math:`\approx 9.81 \frac{m} {s^2}`

Head loss due to expansions increases with the square of the velocity, and therefore does not provide a linear relationship between flow rate and head loss. On the other hand, pressure drop due to stresses with the pipe walls does have a linear relationship:

.. math::
  :label: head_loss_stress

    h_L=\frac{32\mu LV}{\rho g D^2}

| Where
| :math:`\mu` = dynamic viscosity of the fluid
| :math:`L` = length of pipe or hose
| :math:`\rho` = density of water :math:`\approx 1000 \frac{kg}{m^3}``
| :math:`D` = interior diameter of pipe or hose

.. _heading_diseño_de_las_mangueras_de_diámetro_pequeño:

Design of small diameter hoses
-------------------------------------------
The maximum flow rate of the chemical in a single hose to control the error caused by the non-linearity of the minor losses is found by the following equation:

.. math::
  :label: max_flow_rate

    Q_{MaxHose}=\frac{\pi D^2}{4}\sqrt{\frac{2h_Lg\mathrm{\Pi}_{Error}}{\sum K_e}}

| En donde
| :math:`h_L` = pressure drop in the dosing system
| :math:`{\Pi}_{Error}` = error due to nonlinearity in the system :math:`\approx` 0.1 - 0.2
| :math:`D` = interior diameter of the hose = 1/8"

The maximum flow rate of chemical that could be used is found based on the maximum dose, the maximum flow rate of the plant, and the concentration of the stock solution. Dividing that flow rate by the maximum flow rate in a hose and rounding up gives the number of hoses running in parallel:

.. math::
  :label: parallel_hoses

    N_{Hose}= \frac{Q_{MaxTotal}}{Q_{MaxChemical}}

With the maximum flow rate expected in each hose, the length of each hose is found with:

.. math::
  :label: hose_length

    L=\frac{\frac{h_Lg\pi D^4}{Q}-\sum K_e\frac{8Q}{\pi}}{128\nu}

.. _heading_válvula_flotadora:

Float valve
-----------------
The minimum float valve orifice diameter required to maintain the designed coagulant flow rate is given by:

.. math::
  :label: min_float_valve

    D_{OrMin}=\sqrt{\frac{4Q}{\pi\Pi_{VC}\sqrt{2g\Delta h}}}

| Where
| :math:`Q` = chemical flow rate
| :math:`{\Pi}_{VC}` = coefficient of vena contracta for the orifice :math:`\approx` 0.62
| :math:`\Delta h` = maximum pressure drop due to barrel height
