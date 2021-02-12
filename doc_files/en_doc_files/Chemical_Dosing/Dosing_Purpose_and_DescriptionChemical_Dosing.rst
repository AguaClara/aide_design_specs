.. include:: ../global.rst

.. _title_Dosing_Propósito_y_Descripción:

***********************
Purpose and Description
***********************
Coagulation and disinfection processes require precise dosing of coagulant and calcium hypochlorite. To perform these processes without pumps, the AguaClara plant uses a gravity dosing system.

.. _heading_componentes_principales:

Main Components
-----------------------
The main components of the system are:

 - Two tanks to store the stock solution of each chemical (four in total).
 - A platform to lift the tanks.
 - Two constant load canisters for each chemical (4 in total) that maintain a reservoir at a constant level using a float valve at the inlet.
 - A scale that connects the water level in the inlet tank of the plant with the level at the outlet of the chemical system.
 - A series of hoses in the chemical path from the constant load canister to the balance, which provides the necessary relationship between head loss and chemical flow rate.
 - A flow measurement column for each chemical.

The blue arrows indicate the chemical path. The height of the hose outlet on the slider controls the chemical flow rate.

.. _figure_dosing_diagram:

.. figure:: Images/dosing_diagram.png
    :width: 500px
    :align: center

    Schematic of a AguaClara dosing unit mounted on the wall of the entrance tank.

.. _heading_sistema_semi-automático:

Semi-automatic system
-----------------------
This system has the following characteristics:

 #. The chemical flow is automatically stopped when there is no water flow in the plant.
 #. It changes the chemical flow rate automatically in proportion to the water level in the inlet tank, which is proportional to the plant flow rate thanks to the linear flow meter (previous section).

The first provides safety against overdosing and chemical waste in the event that the water flow in the plant is stopped without manually stopping the chemical flow. The second allows an experienced operator to choose the chemical dosage easily, without any calculations, and without the need to manipulate the system every time the flow rate in the plant changes.

The system is not fully automatic because it requires an operator to choose the dosage of each chemical and verify that the dosage is being applied.

.. _heading_bote_de_carga_constante:

Constant load canister
-----------------------
The constant charge canister maintains a constant fluid level that defines the starting height of the chemical stroke. The level is maintained by a float valve at the inlet of the bottle.  With the canister the start height of the chemical stroke is independent of the amount of chemical stored.

.. _figure_load_can:

.. figure:: Images/load_can.png
    :width: 500px
    :align: center

    Aluminum sulfate constant charge canister.

.. _heading_la_balanza:

The balance
------------
With the constant load canister defining the height of the start of the run and the tubes and hoses leading to the chemical permanently installed, the flow rate of the chemical depends only on the height of the end of the run. This end of the system is connected to a balance mounted on the wall of the inlet tank. On the other side of the balance is connected a float immersed in the inlet tank which tilts the balance depending on the water level in the tank (:numref:`figure_balance`), which depends on the water flow rate (:ref:`title_LFOM`).

.. _figure_balance:

.. figure:: Images/balance.png
    :width: 500px
    :align: center

    The balance is tilted depending on the water level in the inlet tank.

The point where the hose leading the chemical to the balance is mounted on the balance is a slider that can run along the length of the balance. The dosage of the chemical is chosen by manipulating the position of the slider, thus changing the height of the end of the run (:numref:`figure_final_height`).

.. _figure_final_height:

.. figure:: Images/final_height.png
    :width: 500px
    :align: center

    The final height of the chemical stroke can change because 1) the water flow in the plant changes or 2) the position of the slider is manipulated to change the dosage.

When there is no water flow in the plant the balance is level, so the final run height is equal to the water level in the constant load pot. In this situation the chemical does not flow. When the flow rate in the plant rises, the float causes the balance to tilt further, lowering the height of the hose and increasing the flow rate of the chemical in proportion to the flow rate in the plant.

To manipulate the coagulant dosage, the operator changes the position of the slider on the scale. The lower on the inclined scale this slider is placed, the higher the flow rate of the chemical and the corresponding dosage. In the highest possible position (marked as 0% in the numbering) the hose outlet is at the level of the fluid in the constant load canister and the chemical does not flow regardless of the inclination of the balance. At the lowest possible position (marked as 100% in the numbering), the maximum dose (|C.CoagDoseMax| of coagulant or |C.ChlorDoseMax| of chlorine for this design) will be applied. Between these two extremes the relationship is linear, so that the percentage indicated by the numbering on the balance is the percentage of the maximum dose that is applied with the balance in that position.

Upon reaching the slider on the balance, the chemical falls freely down a ½" tube, thus isolating the travel to the balance hydraulically. To allow the balance to move freely, this tube is connected to another large diameter flexible hose under the floor of the plant. This hose connects to the pipe that carries the chemical to the injection point.

.. _heading_small_hoses:

Small diameter hoses: main head loss element
---------------------------------------------------------------------
On the path from the constant charge canister to the balance, the chemical passes through a series of small diameter hoses in parallel. Almost all of the head loss along the chemical path occurs here. Thus, with the design of the hoses, the relationship between the flow rate of the chemical and the change in height of the path can be controlled.

The flow through the straight hoses causes the major pressure drop to dominate, and the minor losses (from expansions) are kept to a minimum. This is important because the proportioner has a linear relationship between the height of the chemical end of the chemical path (connected to the water level in the inlet tank) and the chemical flow rate. Major loss systems with laminar flow provide this linear relationship while minor losses have a non-linear relationship with flow rate.
