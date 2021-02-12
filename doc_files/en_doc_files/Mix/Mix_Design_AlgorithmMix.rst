.. include:: ../global.rst

.. _title_Design_Algorithm:

*****************
Design Algorithm
*****************

.. _heading_orifice_design:

Orifice design
--------------
The maximum rate of energy dissipation in a round jet following an orifice is found by:

.. math::
    :label: \varepsilon_{max}

  \varepsilon_{max} = \frac{\big(\Pi_{Jet} \frac{4Q}{\pi}\big)^3}{D^7 \sqrt{{\Pi_{VC}}^7}}

| Where:
| :math:`\Pi_{Jet}` = a parameter related to the geometry of flow in a round jet = |Pi.JetRound|
| :math:`Q` = the design flow rate = |Q.Plant|
| :math:`D`= the diameter of the orifice = |D.RMOrifice|
| :math:`\Pi_{VC}` = the vein coefficient contracts for an orifice = |Pi.VCOrifice|

Organizing this equation differently, we find the diameter of the orifice:

.. math::
    :label: orifice_diameter

    D = \bigg(\frac{4Q\Pi_{Jet}}{{\varepsilon_{max}}^{\frac{1}{3}} \pi}\bigg)^{\frac{3}{7}} \frac{1}{\sqrt{\Pi_{VC}}}

.. _heading_the_rate_of_energy_dissipation_required:

The rate of energy dissipation required
---------------------------------------
The goal of rapid mixing is to distribute the coagulant through the turbulent advective transport process on a small enough scale that the slow molecular diffusion process can finish distributing the coagulant equally among the particles. The Kolmogorov scale is a measure of the minimum scale of the eddies in a turbulent flow, and is directly related to the rate of energy dissipation. In order for the turbulent eddies to distribute the coagulant equally among the particles, the Kolmogorov scale must be equal to or less than the average separation between them.

.. math::
    :label: inequality

    \Bigg[L_K = \bigg(\frac{v^3}{\varepsilon}\bigg)^{\frac{1}{4}}\Bigg] < \bigg[L_{Sep} = \Big(\frac{\pi}{6\phi_{Col}}\Big)^{\frac{1}{3}}\bigg]

| Where:
| :math:`L_K` = the Kolmogorov scale
| :math:`v` = the kinetic viscosity of the fluid
| :math:`\varepsilon` = the rate of energy dissipation
| :math:`L_{Sep}` = the average particle separation
| :math:`\phi_{Col}` = the fraction of the total volume occupied by the colloidal particles in the suspension

The energy dissipation rate of |ED.RapidMix| is based on a 500 UTN suspension. That is, the Kolmogorov scale produced by that jet is similar to the separation between the first particles of that suspension.

.. _heading_the_head_loss:

The head loss
-------------
The head loss in the rapid mixture, a consequence of jet expansion, depends on the :

.. math::
    :label: load_loss

    h_e = \frac{\Big(\frac{Q}{\Pi_{VC}\frac{\pi}{4}D^2}\Big)^2}{2g}

| Where:
| :math:`h_e` = the head loss through the rapid mixing hole = |HL.RMOrifice|
| :math:`g` = the acceleration due to gravity = :math:`9.81 m/s^{2}`
