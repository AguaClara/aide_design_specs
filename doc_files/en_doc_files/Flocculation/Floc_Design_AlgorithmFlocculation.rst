
    .. _design algorithm:

    

        Design Algorithm
================


        
.. _heading_1_entradas_al_algoritmo_y_asunciones:

        

            1. Algorithm entries and assumptions
------------------------------------


            
.. _table_entradas_al_algoritmo_del_floculador:

            

                    
                    
                    
                    
                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Parameter                       |
                             Value |
                             Notes |
                        
|
                                                             |
                              |
                              |
                        

                    
                    
                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                          |
                        
|
                             Minimal collision potential     |
                             |CP.FlocBod| |
                              |
                        
|
                                                             |
                              |
                              |
                        

                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Maximum head loss               |
                             |HL.FlocMax| |
                             Optional user input. Actual pressure loss may be less if not needed. |
                        
|
                                                             |
                              |
                              |
                        

                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Length of channels              |
                             |L.Floc| |
                             Based on the length of the sedimentation tank so that they share a wall. |
                        
|
                                                             |
                              |
                              |
                        

                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Water depth at the end          |
                             |HW.FlocEnd| |
                             Based on the depth of the sedimentation tank so that the two tanks share a single foundation. |
                        
|
                                                             |
                              |
                              |
                        

                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Minimum width of the channels   |
                             |W.FlocChannelMinPlate| |
                             Basado en 1) el espacio que necesita un obrero para terminar de construir el canal cuando está dentro y 2) el ancho de la mitad de las láminas de policarbonato que se usan para los deflectores, para conservar el material. |
                        
|
                                                             |
                              |
                              |
                        

                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Maximum width of the channels   |
                             |W.FlocChannelMaxPlate| |
                             Based on the total width of the polycarbonate sheets used for the baffles. |
                        
|
                                                             |
                              |
                              |
                        

                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Radius of the length of each expansion at the baffle gap (H/S) |
                             |Pi.HSMin| - |Pi.HSMax| |
                             The H/S radius should be in the efficient range. |
                        
|
                                                             |
                              |
                              |
                        

                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Radius from maximum rate to average rate of energy dissipation (:math:’alpha _{varepsilon}`) |
                             |Alpha.EpsilonFloc| |
                             La medida de la falta de uniformidad de la tasa de la disipación de energía, que corresponde a la geometría descrita por el radio H/S. |
                        
|
                                                             |
                              |
                              |
                        

                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Flocculator efficiency ()       |
                             |Alpha.PsiFloc| |
                             Efficiency of the flocculator corresponding to the radius . |
                        
|
                                                             |
                              |
                              |
                        

                        +---------------------------------+---------------------------------+---------------------------------+
|
                                                              |
                                                              |
                                                              |
                        
|
                             Minimum value of the average rate of energy dissipation |
                             |ED.FlocAveMinSettling| |
                             This restriction is imposed to avoid sedimentation of the flocs in the flocculator. |
                        
|
                                                             |
                              |
                              |
                        

                    
                
Input to the flocculator algorithm

            
.. _heading_2_volumen_máximo_dedicado_al_tanque_de_entrada:

        
        

            2. Maximum volume dedicated to the entrance tank
------------------------------------------------


            The entrance tank occupies the first part of the first channel in the flocculator (). This volume, which is useless for flocculation, will have to be subtracted when calculating the number and width of the channels to achieve the minimum collision potential. As a first step of the algorithm the length of the entrance tank is calculated assuming the minimum width of the channels, which corresponds to the maximum length of the tank to maintain the desired capture rate (see previous section). This gives a conservative estimate. The actual dimensions of the entrance tank will be calculated later when the width of the channels is known.

            .. _:

            
.. figure:: 
                   Flocculation\Images/floc_entrance_tank.png
   :align: center
   :candidates: {'*': 'Flocculation\\Images/floc_entrance_tank.png'}
   :width: 500px


                      The entrance tank and the beginning and end of the water path through the flocculator take up space that has to be subtracted from the volume dedicated to flocculation.

               
            
.. _heading_3_volumen_del_floculador:

        
        

            3. Flocculator volume
---------------------


            There are two restrictions for the minimum volume dedicated to flocculation:

            
                
1. 
                       **Constructive**: There must be at least two channels to maintain the configuration of the plant, so that both the entrance tank and the inlet and outlet channels of the sedimentation tanks are attached to the cleaning channel. The length and depth of the flocculator channels are already known based on the dimensions of the sedimentation tanks. There is also a restriction for the minimum width of each channel. By multiplying these minimum dimensions and subtracting the inactive volume () you find the minimum volume dedicated to flocculation |Vol.FlocMinChannels|.

                   
                
2. 
                       **Hydraulics:** Assuming efficient geometry (:std std-ref:`Flocculator Design Concepts`), from the potential for collisions and the maximum pressure drop the average rate of energy dissipation is calculated directly:

                       
                               
       .. _:

                               
                               
                                          | Where:

                                          |  = the average rate of maximum energy dissipation for this design = |ED.FlocAveMax|

                                          |  = the maximum pressure drop in the flocculator = |HL.FlocMax|

                                          |  = la aceleración debida a la fuerza de gravedad 

                                          |  = the desired collision potential = |CP.FlocBod|

                                          |  = measure of the uniformity of energy dissipation = |Alpha.EpsilonFloc|

                               
                               
       This calculates the retention time required to achieve the potential for collisions, equal to |Ti.FlocMinCP|:

                               
       .. _:

                               
                                      Finally the necessary volume is calculated, equal to |Vol.FlocMinCP|:

                               
       .. _:

                               
                                      Where  = the plant design flow rate = |Q.Plant|.

                               
       The larger of the volumes given by these two restrictions will be the active volume of the flocculator, equal to |Vol.FlocBod|.

                           
                   
            
            
.. _heading_4_tasa_de_la_disipación_de_energía:

        
        

            4. Rate of energy dissipation
-----------------------------


            As mentioned in the previous section, no direct restrictions are imposed on the maximum rate of energy dissipation related to the maximum floc size in the AguaClara designs. Instead a reasonable value is assumed for the maximum pressure drop, an optional user input, which keeps the corresponding energy dissipation rate within an acceptable range that ensures effective flocculation.

            
The *minimum* rate of energy dissipation does have two restrictions:

            
                
1. 
                       **Hydraulic:** With the flocculator volume calculated in the previous step, and the corresponding retention time, the average rate of energy dissipation required to achieve the desired collision potential is calculated directly. It is equal to |ED.FlocAveCP|.

                       
                               
       .. _:

                               
                           
                   
                2. 
                       **Practice:** It is important that the flocculator floor is kept free of sediment so as not to create unnecessary maintenance work and waste of water for cleaning. For this purpose a minimum restriction for the average rate of energy dissipation is imposed, equal to |ED.FlocAveMinSettling|.

                   
            
            
.. _heading_ancho_de_los_canales_y_el_número_de_canales:

        
        

            5. Channel width and number of channels:
----------------------------------------


            There are two restrictions for the minimum width of the channels:

            
                
1. 
                       **Constructive:** Since they are generally constructed of bricks with a coat and fine die, it is important that the flocculator channels of an AguaClara plant are wide enough that one person can get inside during construction and work freely. Conveniently, this minimum width for ease of construction corresponds approximately to the width of half of the polycarbonate sheets used for the baffles (|W.FlocChannelMinPlate|). If the algorithm chooses this minimum width, the polycarbonate sheets are used efficiently with the minimum number of cuts, thus lowering the manufacturing costs.

                   
                
2. 
                       **Hydraulics:** It was assumed that the flocculator geometry would be efficient That is, the radius of the length of the expansions at the baffle gap (H/S) is within the range |Pi.HSMin| to |Pi.HSTransition|. The depth at the end of the flocculator (|HW.FlocEnd|) corresponding to the depth of the sedimentation tank is also known. With this depth and the deflector spacing that keeps the H/S radius within the efficient range, there is a minimum width that gives the average rate of energy dissipation that was calculated earlier.

                       
                               
       .. _:

                               
                           
                   
            
            
Where in this case  = the depth at the end of the flocculator = |HW.FlocEnd|.

            
It’s the same as |W.FlocChannelMinEfficient|. The channel width can be wider, and would be compensated for by reducing the deflector spacing. This restriction for the minimum width dominates only for large flows where the spacing between baffles is to be large compared to the depth of the channels.

            
The larger of these two values will be the minimum channel width, equal to |W.FlocChannelMin|.

            
There is also a construction restriction for the maximum width of the channels, which corresponds to the total width of the polycarbonate sheets used for the baffles, equal to |W.FlocChannelMaxPlate|.

            
In order to find the necessary number of channels, it is assumed that the width of each channel will be as wide as possible. If this means that the baffle spacing is decreased until the H/S radius is above the efficient range, obstacles will be added to the baffle spacing to reduce the length of the expansions. Using the maximum width in the number of channels calculation produces the minimum number of channels, thus reducing construction costs.

            
If all flocculator channels contributed equally to flocculation, the number of channels would be found by the following equation, rounding up.

            
.. _:

            
            
                | Where:

                |  = the length of the channels corresponding to the length of the sedimentation tanks = |L.Floc|

            
            
However, from the total volume you have to subtract the volume that the entrance tank occupies and the inactive space at the end of the flocculator where the water enters the inlet channel of the sedimentation tanks. In addition, there must be an even number of channels. The actual number of channels, equal to |N.FlocChannels|, is found by:

            
.. _:

            
            
                | Where:

                | The function  rounds up the x value to the nearest even number

                |  = maximum length of the entrance tank on the first channel = |L.EtMax|

                |  = thickness of the entrance tank wall = |T.FlocDividingWall|

                |  = the width of the sedimentation tanks inlet channel = |W.SedInletChannelPreWeir|

            
            
With the number of channels you can already calculate the minimum width of each channel to reach the total volume calculated above, equal to |W.FlocChannelCP|:

            


            
Finally, the maximum width calculated to reach the volume and minimum width that came out of the two previous restrictions is taken and rounded up to the nearest centimeter for ease of construction. The width of the channels will be |W.FlocChannel|.

            
.. _heading_6_separación_entre_expansiones:

        
        

            6. Separation between expansions
--------------------------------


            There is an option to place obstacles between the baffles that cause the same expansion as happens after the turn around a baffle, to reduce the gap between expansions and keep the H/S radius within the efficient range. Given the width of the channels, the rate of energy dissipation gives us the maximum separation between obstacles that maintains the efficient geometry (see :std std-ref:`Flocculator Design Concepts`):

            
.. _:

            
            
                | Where:

                |  = the separation between expansions, which could be caused by obstacles or deflectors

            
            
The number of expansions between each two baffles is found by the depth of the tank between the maximum separation, equal to |N.FlocSpaceExpansions|:

            
.. _:

            
            Finally, the real separation between expansions, equal to |H.FlocObs|, is:

            
.. _:

            
            .. _heading_7_separación_entre_deflectores:

        
        

            7. Deflector spacing
--------------------


            Already with the other dimensions determined, the separation between deflectors, equal to |S.FlocBaffleMin|, which corresponds to the rate of energy dissipation calculated above is found by:

            


            
However, there must be an integer number of baffles in the channel of predetermined length. The number of baffle spaces that maintain the minimum spacing is found per:

            
.. _:

            
            
                | Where:

                |  = the number of spaces between deflectors in each channel = |N.FlocChannelSpaces|

                | The function  rounds up the value  to the nearest even number

                |  = the length of the channel = |L.Floc|

                |  = the thickness of the polycarbonate sheet used for the baffles = |T.FlocBaffle|

            
            
This number of spaces corresponds to |N.FlocChannelBaffles| deflectors on each channel.

            
Finally the precise separation between the baffles is calculated, equal to |S.FlocBaffle|:

            
.. _:

            
            
                | Where:

                |  = the separation between the deflectors = |S.FlocBaffle|

                |  = the number of deflectors on each channel = |N.FlocChannelBaffles|

            
            
This step that corrects the separation by the need to have an integer number of baffles in each channel is the cause of the difference between the design values and the final values of the pressure drop (|HL.Floc| instead of |HL.FlocBod|), the average rate of energy dissipation (|ED.FlocAve| instead of |ED.FlocAveBod|), and the potential for collisions (|CP.Floc| instead of |CP.FlocBod|). Since the correction always reduces the gap, which increases the rate of energy dissipation, all these parameters end up being higher than the original design values.

            
.. _heading_8_cálculo_de_los_parámetros_finales:

        
        

            8. Calculation of the end parameters
------------------------------------

            
                
1. 
                       The potential for collisions caused by a single expansion:

                       
                               
       .. _:

                               
                               
                                          | Where:

                                          |  = the collision potential for an expansion = |CP.FlocExpansion|

                                          |  = the separation between expansions = |H.FlocObs|

                               
                               
       The total collision potential of the flocculator:

                               
       .. _:

                               
                               
                                          | Where:

                                          |  = the total collision potential of the flocculator = |CP.Floc|

                                          |  = the number of expansions in the flocculator = |N.FlocExpansions|

                               
                           
                   
                
2. 
                       The average speed of the fluid:

                       
                               
       .. _:

                               
                               
                                          | Where:

                                          |  = the average velocity of the fluid = |V.Floc|

                                          |  = the separation between deflectors = |S.FlocBaffle|

                                          |  = the width of the channels = |W.FlocChannel|

                               
                           
                   
                
3. 
                       The head loss:

                       
                               
       .. _:

                               
                               
                                          | Where:

                                          |  = the total head loss of the flocculator = |HL.Floc|

                                          |  = the average velocity of the fluid = |V.Floc|

                                          |  = the acceleration due to gravity = 

                               
                           
                   
                4. 
                       The actual rate of energy dissipation after correction of the deflector gap, equal to |ED.FlocAve|:

                       
                               
       .. _:

                               
                                      And the corresponding maximum rate of energy dissipation, equal to |ED.FlocMax|:

                               
       .. _:

                               
                           
                   
                5. 
                       The average speed gradient, equal to |G.FlocAve|:

                       
                               
       .. _:

                               
                                      Where  is the kinematic viscosity of water, equal to |Nu.Water|.

                           
                   
                
6. 
                       The total retention time, including the inactive space at the end of the last channel and contributed by the head loss, equals |Ti.Floc|:

                       
                               
       .. _:

                               
                                      .. _:

                               
                                      The active retention time is calculated by subtracting the inactive volume, and is equal to |Ti.FlocActive|.

                           
                   
            
            
.. _heading_9_diseño_de_los_obstáculos:

        
        

            9. Design of the obstacles
--------------------------


            Each obstacle is two pieces of PVC pipe between which water has to flow (). The expansions caused by the obstacles must be equal to those caused by the deflectors. It is assumed that, because of the round shape of the pipes and the gradual curve of the flow lines, there is no contraction vein following the obstacle in the flow, but an immediate expansion. Therefore, the width of the space between the tubes should be equal to the width of the narrowest part of the contracted vein that follows after the turn around a baffle:

            .. _:

            
            
                | Where:

                |  = the width of the space between the tubes = |W.FlocObstacleWake|

                |  = the separation between deflectors = |S.FlocBaffle|

                |  = vein coefficient contracted to fly around a deflector = |Pi.VCBaffle|

            
            
.. _:

            
.. figure:: 
                   Flocculation\Images/deflectors_lateral.png
   :align: center
   :candidates: {'*': 'Flocculation\\Images/deflectors_lateral.png'}
   :width: 300px


                      Side view of the obstacles between the deflectors.

               
            
Finally, the algorithm looks for the minimum size of the tube that takes up the necessary space, equal to |ND.FlocObs|.

            
.. _heading_10_alturas:

        
        

            10. Heights
-----------


            The height of the flocculator is calculated as the sum of the water level in the inlet channel of the sedimentation tank:

            
.. _:

            
            
                | Where:

                |  = the total height of the tank = |H.Floc|

                |  = the water depth at the end of the flocculator, determined by the inlet channel to the sedimentation tank = |HW.FlocEnd|

                |  = the total head loss of the flocculator = |HL.Floc|

                |  = the free space at the top of the tank = |H.PlantFreeboard|

            
            
The height of the flocculator slab is relative to the bottom slab that holds the sedimentation tanks and the flocculator. The bottom of this slab is the zero level in the AutoCAD drawing. The bottom of the flocculator slab is at the same level as the bottom of the slab, so the level of the tank bottom only depends on the thickness of the slab |T.FlocSlab|.

            
.. _heading_11_las_compuertas_entre_los_canales:

        
        

            11. The gates between the channels
----------------------------------


            In the design of the gates the area perpendicular to the water flow is conserved in such a way that there are no regions with energy dissipation rates far above the design limit. That is, the area of the gate is equal to the area of the space between the baffles. The damper must fit into the space before the first baffle in the channel. Therefore, the width is calculated based on the spacing between the baffles:

            
.. _:

            
            
                | Where:

                |  = the width of the gate = |W.FlocPort|

                |  = the separation between deflectors = |S.FlocBaffle|

                |  = the gap between the edge of the gate and the first deflector = |S.FlocBaffleSetBackPlastic|

            
            
In order to preserve the area perpendicular to the flow along the entire length of the flocculator, the height of the gate is calculated as:

            
.. _:

            
            Where  = the height of the gate = |H.FlocPort|.

            
.. _heading_12_desagües_de_los_canales:

        
        

            12. Channel drains
------------------


            With the exception of the first one, all flocculator channels have a drain attached to the plant’s cleaning channel. They are designed so that all the water leaves the flocculator within |Ti.FlocDrain|, which gives the following design flow rate:

            
.. _:

            
            
                | Where:

                |  = the design flow rate of each drain = |Q.FlocDrain|

                |  = the total volume of water in the flocculator when full = |Vol.Floc|

                |  = the number of channels in the flocculator = |N.FlocChannels|

                |  = the maximum time it takes to empty the flocculator = |Ti.FlocDrain|

            
        
    