
    .. _design algorithm:

    

        Design Algorithm
================


        
.. _orifice design:

        

            Orifice design
--------------


            The maximum rate of energy dissipation in a round jet following an orifice is found by:

            
.. _:

            
            
                | Where:

                |  a parameter related to the geometry of flow in a round jet = |Pi.JetRound|

                |  the design flow rate = |Q.Plant|

                |  the diameter of the orifice = |D.RMOrifice|

                |  the vein coefficient contracts for an orifice = |Pi.VCOrifice|

            
            
Organizing this equation differently, we find the diameter of the orifice:

            
.. _:

            
            .. _the rate of energy dissipation required:

        
        

            The rate of energy dissipation required
---------------------------------------


            The goal of rapid mixing is to distribute the coagulant through the turbulent advective transport process on a small enough scale that the slow molecular diffusion process can finish distributing the coagulant equally among the particles. The Kolmogorov scale is a measure of the minimum scale of the eddies in a turbulent flow, and is directly related to the rate of energy dissipation. In order for the turbulent eddies to distribute the coagulant equally among the particles, the Kolmogorov scale must be equal to or less than the average separation between them.

            
.. _:

            
            
                | Where:

                |  = the Kolmogorov scale

                |  = the kinetic viscosity of the fluid

                |  = the rate of energy dissipation

                |  = the average particle separation

                |  = the fraction of the total volume occupied by the colloidal particles in the suspension

            
            
The energy dissipation rate of |ED.RapidMix| is based on a 500 UTN suspension. That is, the Kolmogorov scale produced by that jet is similar to the separation between the first particles of that suspension.

            
.. _the head loss:

        
        

            The head loss
-------------


            The head loss in the rapid mixture, a consequence of jet expansion, depends on the :

            .. _:

            
            
                | Where:

                |  = the head loss through the rapid mixing hole = |HL.RMOrifice|

                |  = the acceleration due to gravity = 

            
        
    