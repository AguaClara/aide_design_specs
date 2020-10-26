
    .. _design algorithm:

    

        Design Algorithm
================


        
.. _sedimentation plates:

        

            Sedimentation plates
--------------------


            The number of sedimentation plates required to achieve the design capture rate is related to the length of the plates. By increasing the length, fewer plates are required. The total length of the plate module,

            
.. _:

            
.. figure:: 
                   Entrance_Tank\Images/plate_module.png
   :align: center
   :candidates: {'*': 'Entrance_Tank\\Images/plate_module.png'}
   :width: 500px


                      Side view of the plate module. The total length  of the module depends on both the number of plates  and the length of the plates . Since the effect of fewer plates can be compensated for by longer plates there is an optimal number to minimize the total length.

               
            .. _:

            
            
                | Where:

                |  = the number of plates = |N.EtPlates|

                | The function  rounds up the value  to the nearest whole number

                |  = the design flow

                |  = the perpendicular separation between the plates = |S.EtPlate|

                |  = the thickness of the plates = |T.EtPlate|

                |  = the width of the tank = |W.Et|

                |  = the design capture rate = |V.EtCaptureBod|

                |  = the angle of inclination of the plates = |AN.EtPlate|

            
            
The length of the plates corresponding to the optimal number is per:

            
.. _:

            
            
                | Where:

                |  = the length of the plates = |L.EtPlate|

                | The function  rounds up the value  to the nearest multiple of 10cm

            
            
The length of the plates are rounded up to the nearest 10cm manifold to 1) facilitate fabrication of the plate module and 2) produce a conservative design with respect to capture rate, to compensate for any inefficiencies due to flow distribution between the plates.

        
    