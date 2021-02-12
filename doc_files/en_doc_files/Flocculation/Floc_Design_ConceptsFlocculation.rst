
.. _title_Conceptos_de_Diseño_del_Floculador:

**********************************
Flocculator Design Concepts
**********************************

.. _heading_El_potencial_de_colisiones_y el_rendimiento_del_floculador:

Collision potential and flocculator performance.
----------------------------------------------------------

We start with potential energy which can be seen by the difference in level between upstream and downstream in the flocculator. This potential energy converts to kinetic energy in the downstream flow contractions from changes in direction or restrictions.  The jets coming out of the contractions then break up into eddies. The rate of converting mechanical energy to eddies and then to heat is

.. math::
  :label: EDR_of_headloss

  \bar \varepsilon \theta = g h_L

Where :math:`\bar \varepsilon \theta` is the mechanical energy that is converted to heat in the flocculator and :math:`g h_L` is the potential energy that is lost to heat in the flocculator. In the process of converting the eddy energy to heat the water deforms. The rate of fluid deformation is the velocity gradient, G. The rate of energy dissipation is related to the velocity gradient by the formula:

.. math::
  :label: EDR_of_G

  \bar \varepsilon=\nu G_{CS}^2

Where :math:`\nu` is the kinematic viscosity of water and :math:`G_{CS}` is the velocity gradient defined by Camp and Stein (1955).

To reduce the concentration of primer particles that have not combined with other particles we have to give a certain amount of water deformation. The amount of deformation of the water is what gives the collisions between the particles and therefore the collision potential is the product of the retention time :math:`\theta` and the velocity gradient, :math:`G_{CS}`, of Camp and Stein (1955).

The AguaClara flocculation model gives the form of the relationship between the collision potential and the concentration of non-flocculated primer particles.

.. math::
   :label: Gtlam

	 G_{CS}\theta = \frac{3}{2}\frac{{\left( {{\bar \Lambda ^2} - \bar \Lambda_0^2} \right)}}{{k\pi\bar{\alpha} \bar{d}_P^2}}

where :math:`\bar \Lambda_0` is the distance between primer particles in the raw water, :math:`\bar \Lambda` is the distance between primer particles exiting the flocculator, :math:`\bar{\alpha}` is the probability that the collision point between two primer particles is at a coagulant nano particle, :math:`\bar{d}_P` is the diameter of the primer particles, and :math:`k` represents the fraction of primer particles that convert to a floc with a terminal settling velocity greater than the capture velocity of the settling plates. Equation :eq:`Gtlam` shows that in order to achieve a low concentration of primer particles at the flocculator outlet, a high :math:`\bar \lambda`, it is necessary to design a flocculator with high collisional power, :math:`G_{CS}\theta`.

The collision potential, :math:`G_{CS}\theta`, is a property of the flocculator itself, independent of the raw water characteristics, the coagulant dosage, and the design of the sedimentation process. The flocculator at the AguaClara plant is designed with a minimum collision potential of |Gt.FlocBod|, which has been successful in plants with a sludge blanket.



However, unlike some conventional methodologies, the AguaClara flocculator design does not consider any raw water characteristics other than the general need for flocculation, sludge blanket, and sedimentation processes for suspended solids removal. That is, the design is independent of the results of decanter tests or other preliminary analyses because the decanter test cannot capture the key sludge blanket process. The only factors in the predictive model that are taken into account in the design are those related to the potential for collisions and the effect of water viscosity. Rather than knowing the raw water characteristics, the goal is to design a flocculator that can effectively flocculate any suspension with sufficient coagulant coverage. That is why the design tool does not ask for any user input related to treatability testing. Raw water only enters into the design of the coagulant and chlorine dosers where the demand for these two chemicals at the most critical times determines the maximum dosage.

The design of AguaClara has been formulated to be independent of raw water for two main reasons:

  #. Pitcher test results can be useful in determining coagulation efficiency by varying coagulant dosage, but are not normally applicable to full-scale flocculation because of fundamental differences in the processes, such as the wide range of local velocity gradients in stirred reactors and the lack of the sludge blanket process in the pitcher test.
  #. Raw water characteristics always vary with time, and in many cases it is difficult to obtain a representative set of data within the time and budget available for plant study and design. One of AguaClara's main goals is to provide effective solutions by lowering costs and time as much as possible in order to serve the maximum number of people.

The design takes into account the filtration process that takes place in the sludge blanket in the sedimentation tank. The sludge blanket is a suspension of flocs that is held in the bottom of the settling tank and provides the opportunity for particle collisions caused by differential settling. Because of the work done by the sludge blanket, AguaClara plants achieve low turbidity levels in the settled water even when using a flocculator with low potential for collisions.

.. _heading_Eficiencia del floculador:

Flocculator efficiency
-------------------------

The efficiency of converting potential energy to water deformation depends on the uniformity of the energy dissipation rate. If there are spaces with high turbulence and other spaces with low turbulence the total deformation of the fluid will be much lower than if uniform turbulence would have been achieved given the same energy. Mechanized flocculators and also many conventional hydraulic flocculators fail to consider the impact of spatial non-uniformity of turbulence. For example, the rate of energy dissipation is much higher than the average rate behind the tilted propeller blades. Therefore, it makes no sense to compare the collision potential calculated by :math:`G_{CS}\theta` between mechanized flocculators and flocculators that are designed to optimize the uniformity of the energy dissipation rate.

The expansion of the jet caused by the spin around a baffle occupies only a portion of the space between the following lamellae (:numref:`figure_floc_energy_dissipation`). This expansion is where the turbulence is encountered that ultimately causes the deformation of the water and the relative velocities that bring the suspended particles together. Within the jet there are regions of high energy dissipation, which indicates violent turbulence and high relative velocities, and there are also zones of gentler turbulence. Similarly, there are regions of the flow that contribute very little to flocculation because they are outside the jet expansion. If the rate of energy dissipation were uniform it would be an ideal flocculator, with uniform turbulence and the entire volume contributing equally to particle binding.

.. _figure_floc_energy_dissipation:

.. figure:: Images/floc_energy_dissipation.png
    :width: 400px
    :align: center

    Energy dissipation rate distribution in a flocculator according to CFD analysis.

The geometry of the baffles determines the uniformity of energy dissipation. In particular, the radius of the jet expansion length to baffle spacing (H/S) is directly related to the uniformity of expansion. That is, this radius determines the efficiency of the flocculator in terms of the percentage of the space that contributes to particle binding. If the expansion gap is too large compared to the baffle spacing, the jet expansion is terminated in the first part of the available space and a large part of the flocculator volume is wasted (:numref:`figure_energy_dissipation_uniformity`).

.. _figure_energy_dissipation_uniformity:

.. figure:: Images/energy_dissipation_uniformity.png
    :width: 200px
    :align: center

    The radius of the expansion length to baffle spacing (H/S) determines the spatial uniformity of energy dissipation.

According to a series of CFD analyses, the optimal range of the H/S radius is between |Pi.HSMin| and |Pi.HSTransition|. Here the radius :math:`\frac{\varepsilon_{max}}{\bar \varepsilon}` is equal to 2. Above the optimum range the turbulence uniformity deteriorates.

Constructive constraints for lower flow rates require a too high H/S radius for efficient design. The minimum channel height was determined by the height of the adjacent settling tank, and the minimum channel width was determined by the space required during construction. Because of the width of the channel the spacing between baffles had to be smaller to achieve the required velocity gradient. For manufacturing simplicity, there was only one expansion between every two blades. Especially for lower flow rates, the result of these restrictions was an H/S radius far above the optimum range. It was necessary to compensate with a larger flocculator to meet the collision potential target.

The flocculator is now designed with additional obstacles between the lamellae that cause additional expansions. In this way the gap length is reduced after each expansion and the H/S ratio can be kept within the optimal range. The obstacles are two pieces of PVC pipe between which the water has to flow, causing a contraction equal to the contraction that occurs after the turn around a baffle.

.. _heading_La_tasa_máxima_de_la_disipación_de_energía:

Maximum rate of energy dissipation
------------------------------------------

It is not the maximum floc size that really determines the quality of settled water, but the number of primary particles that have not flocculated by the end of the process. For example, the largest flocs, if split in two by the shear force of the flow, will always be captured in the settling tank, since the capture rate is much less than the settling velocity of these flocs. The particles that constitute the effluent turbidity are much smaller, and their origin is likely to be due to lack of coagulant coverage, not high energy dissipation.

In several laboratory simulations in which retention time and velocity gradient were varied in a laminar flow flocculator, preliminary data suggest that a reduction in retention time can be compensated for by an increase in velocity gradient (thus keeping the collisional potential constant) to produce the same result with respect to settled water quality. It is true that increasing the velocity gradient limits the maximum floc size. So, this result suggests that the maximum floc size is not critical to the performance of the treatment system especially when it includes a sludge blanket where the flocs continue to grow.

Ultimately, the flocs will be subjected to an energy dissipation rate of |ED.SedInlet| at the inlet to the settling tank to cause |HL.SedDiffuser| head loss to maintain uniform flow distribution throughout the manifold and to suspend the flocs that settle to the bottom of the settling tank. Data from the laboratory simulation conducted to test this design suggest that the settled water quality does not decrease until the rate of energy dissipation at the tank inlet exceeds 300 mW/kg which is equivalent to a velocity gradient of 550 Hz. Since the maximum floc size will be limited by the sedimentation tank inlet, it is clear that it is not necessary to design a flocculator to produce large flocs that will later break up.

Since the velocity gradient at the inlet of the sedimentation tank is higher than the velocity gradient used in the flocculator, it is neither necessary nor desirable to use a series of gradients in the flocculator. It is simpler and more efficient to use a single gradient for the entire flocculator to obtain the maximum potential for collisions using the least amount of energy.

.. _heading_Las_dimensiones_del_floculador_y_la_gradiente_de_velocidad:

Flocculator dimensions and velocity gradient
----------------------------------------------------------

The design begins with the collision potential, |Gt.FlocBod|, and the headloss available to the flocculator, |HL.FlocBod|. With the combination of equation :eq:`EDR_of_G` and equation :eq:`EDR_of_headloss` a relationship between headloss and velocity gradient is obtained.

.. math::
   :label: GofHLtheta

   G_{CS} = \sqrt{\frac{g h_L}{\nu \theta}}

:math:`G_{CS}` and :math:`\theta` are still unknown but we know the value of :math:`G_{CS}\theta` and so we can eliminate :math:`\theta` from the equation :eq:`GofHLtheta`.

.. math::
   :label: GofHL

   G_{CS} = \frac{g h_{L_{floc}}}{\nu (G_{CS} \theta)}

The value of :math:`G_{CS}` is |G.Floc| and you can combine that with the collision potential :math:`G_{CS}\theta` to get the value of the flocculator retention time. The volume of the flocculator without taking into account the water level difference would be

.. math::
   :label: Floc_volume

   \rlap{--} V_{floc} = \frac{\theta}{Q}

To calculate the plate spacing we use the value of :math:`G_{CS}`, |G.Floc|, and consider the design of an expansion. For the next steps, we consider the flow through an expansion in the flocculator. The distance between expansions, :math:`H_e`, has a value of |He.Floc|. The retention time of an expansion is :math:`\theta_e` and the head loss for an expansion is :math:`h_{L_{e}}`.

We begin by equating the rate of energy dissipation, :math:`\bar \varepsilon = \nu G_{CS}^2` and
:math:`\bar \varepsilon = \frac{g h_{L_e}}{\theta_e}` to obtain an equation in base of :math:`G_{CS}`.

Comenzamos igualando la tasa de disipación de energía, :math:`\bar \varepsilon = \nu G_{CS}^2` y
:math:`\bar \varepsilon = \frac{g h_{L_e}}{\theta_e}` para obtener una ecuación en base de :math:`G_{CS}`.

.. math::
   :label: G_of_HL

    \nu G_{CS}^2 = \frac{g h_{L_e}}{\theta_e}


We can use three relationships to calculate plate spacing using equation :eq:`G_of_HL`.

 #. Minor losses: :math:`h_{L_{e}} = K \frac{\bar v^2}{2g}`
 #. Retention time in an expansion: :math:`\theta_e = \frac{H_e}{\bar v}`
 #. Average velocity in the flocculator: :math:`\bar v = \frac{Q}{WS}`

Substituting the three relationships in equation :eq:`G_of_HL` starting with the elimination of head loss.

.. math::
   :label: G_of_Ktheta

   \nu G_{CS}^2 = K \frac{\bar v^2}{2 \theta_e}

Eliminate retention time.

.. math::
   :label: G_of_KHev

   \nu G_{CS}^2 = K \frac{\bar v^3}{2 H_e}

Eliminate speed.

.. math::
   :label: G_of_KHeQ

   \nu G_{CS}^2 = \frac{K}{2 H_e} \left( \frac{Q}{WS} \right)^3

Given the width of the channel, |W.FlocChannel|, in this design we can calculate the spacing between plates.

.. math::
   :label: S_of_KHeQ

   S = \frac{Q}{W}\left( \frac{K}{2 H_e \nu G_{CS}^2} \right)^\frac{1}{3}

| Where:
| :math:`W` = the width of the flocculation channel
| :math:`K` = pressure loss coefficient for the turn around a baffle = |K.FlocBaffle|
| :math:`\theta _e` = retention time in an expansion
| :math:`H_e` = length of the jet expansion after a deflector before the next contraction


.. _heading_Bibliografía:

Bibliography
-------------

Cleasby, J., 1984. Is velocity gradient a valid turbulent flocculation
parameter? J. Environ. Eng. 110 (5), 875e897.

Swetland, K., Weber-Shirk, M., and Lion, L. (2014). ”Flocculation-Sedimentation
Performance Model for Laminar-Flow Hydraulic Flocculation with Polyaluminum
Chloride and Aluminum Sulfate Coagulants.” J. Environ. Eng., 140(3), 04014002.

Weber-Shirk, M. L., Lion, L. W., 2010. Flocculation model and collision
potential for reactors with flows characterized by high peclet numbers. Water
Res. 44 (18), 5180-5187.
