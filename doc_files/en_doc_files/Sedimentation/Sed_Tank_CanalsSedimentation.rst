
    .. _sedimentation tank channels:

    

        Sedimentation Tank Channels
===========================


        At one end of the sedimentation tanks there is a system of inlet and outlet channels (). A wall running along the channels divides them into two sections: the **distribution channel** (inlet) and the **collection channel** (outlet).

        
The effluent from the flocculator is distributed between the sedimentation tanks through the inlet channel. This is divided into two sections by a landfill: the first where the inlets to the sedimentation tanks are located, and the second which is only used to dump water in the event of a treatment failure.

        
.. _first section entrance channel:

        

            First section entrance channel
------------------------------


            
.. image:: Sedimentation\Images/canal.png
   :align: center
   :candidates: {'*': 'Sedimentation\\Images/canal.png'}
   :width: 250px


            
The first section of the channel is designed to have a maximum velocity low enough to maintain an even flow distribution to the various sedimentation tanks. New tests at Cornell Labs show that floc breakage in the channel has no significant effect on sedimentation tank performance. Flocs, even if very small, with a velocity greater than the capture rate will be captured by the sedimentation plates. It is also designed with a high enough velocity that the flocs will not settle in the channel. Other restrictions on channel sizing are:

            
                    
                    
    - 
                              It has to be wide enough for the tubes connecting it to the sedimentation tanks

                          
                    
    - 
                              It must be deep enough to support the outlet collecting pipes of the sedimentation tanks (there is only one slab for all the channels)

                          
                    
    - 
                              It can’t be so deep that construction and access become difficult

                          
                
                
            
Consideration of the uniformity of flow distribution between the sedimentation tanks is taken into account by setting the maximum head loss, , in this channel to no more than ten percent of the total head loss through a tank. With this head loss, the width is calculated by:

            .. _:

            
            
                | Where

                |  = the flow rate of the plant = |Q.Plant|

                |  = the maximum water level in the inlet channel = |HW.SedInletChannelMax|

                |  = the maximum head loss on the input channel = |HL.SedInletChannelMax|

                |  = the length of the input channel = |L.SedChannel|

                |  = the coefficient of friction for a rectangular channel

                |  = the Reynolds number for a rectangular channel

            
            
*The values of the fluid coefficients vary with the dimensions of the channel, so this width must be calculated iteratively by updating the coefficients until a constant value of this width is reached.

            
.. _second section input channel:

        
        

            Second section input channel
----------------------------


            The purpose of this second section is to dump water in the event of treatment failure, and to maintain the water level in the flocculator so that flocculation can be recovered without dirty water leaving the sedimentation tanks. The height of the landfill separating the two sections is just above the maximum water level in the first section at the design flow rate, so that it does not fill with dirty water during normal operation.

            
.. _output channel:

        
        

            Output channel
--------------


            The collecting pipes deliver the clean water to the first section of the outlet channel. This channel has another spillway that maintains the water level in the tanks. Since the water is not flowing along the first part of the channel, so there is no head loss, the only restriction with respect to width is that you need to be able to put in and take out the collection tube caps. On the other side of the chute, the width is based on:

            
                    
                    
    - 
                              a maximum head loss

                          
                    
    - 
                              a minimum width for ease of construction

                          
                    
    - 
                              the diameter of the pipe that comes out to the filters

                          
                
                
            
All red PVC fittings are removable, including the nipples that cover the inlets of the chambers, the plugs on the outlets of the collecting pipes, the nipple that covers the drainage of the inlet channel, and the plugs of the surface cleaning pipes of the tanks.

            
.. _:

            
.. figure:: 
                   Sedimentation\Images/sed_tank_channels.png
   :align: center
   :candidates: {'*': 'Sedimentation\\Images/sed_tank_channels.png'}
   :width: 750px


                      Channels of the sedimentation tanks.

               
            
.. _table_channel_datar:

            

                    
                    
                    
                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Longitude                                        |
                             |L.SedChannel| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Width - Entrance, first section (closest to the corridor) |
                             |W.SedInletChannelPreWeir| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Width - Entrance, second section                 |
                             |W.SedInletChannelPostWeir| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Width - Entrance with the two sections and the chute |
                             |W.SedInletChannel| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Width - Exit, first section (the one closest to the tank) |
                             |W.SedExitChannelPreWeir| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Width - Exit, second section                     |
                             |W.SedExitChannelPostWeir| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Width - Exit with both sections                  |
                             |W.SedExitChannel| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Total height, measured from the slab to the outer walls |
                             |H.SedInletChannel| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Landfill height - inlet channel                  |
                             |H.SedWeirInlet| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Height of chute - exit channel                   |
                             |H.SedWeirExit| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Maximum water depth during normal operation - inlet channel |
                             |HW.SedInletChannel| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Maximum water depth - exit channel               |
                             |HW.SedExitChannel| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Increasing the slope between every two inputs - inlet channel |
                             |H.SedIChanStep| |
                        
|
                                                                              |
                              |
                        

                        +--------------------------------------------------+--------------------------------------------------+
|
                                                                              |
                                                              |
                        
|
                             Total height of the slope, measured from the slab to the top |
                             |H.SedIChanLastCoupling| |
                        
|
                                                                              |
                              |
                        

                    
                
Sedimentation tank channel data

        
    