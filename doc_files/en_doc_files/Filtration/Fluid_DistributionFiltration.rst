
    .. _flow distribution:

    

        Flow Distribution
=================


        Good filter performance depends on good water distribution throughout the sand bed, both during normal filtration and backwashing. The design restrictions during these two regimes are:

        

                
                
                
                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Normal Filtration                                |
                         Backwash |
                    
|
                                                                          |
                          |
                    

                
                
                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                                                                          |
                                                          |
                    
|
                         *                                                |
                         *  |
                    
|
                                                               The pressure loss through a layer of sand is significantly higher than the pressure recovery loss in the pipe, that the radius of the flow on the long path over the flow on the short path is not less than |Pi.FiManifoldQ| |
                                                               Holes and slots, instead of sand, provide uniform loss during backwashing |
                    
|
                                                                          |
                          |
                    
|
                                                                          |
                                                            |
                    
|
                                                                          |
                                                          |
                    
|
                         *                                                |
                         *  |
                    
|
                                                               The pressure drop through the slots takes into account the clogging of the slots by sand |
                                                               Pressure loss through holes or slots is significantly higher than pressure recovery losses in manifolds - manifolds need more area in their logs than the collective area of their ports |
                    
|
                                                                          |
                          |
                    
|
                                                                          |
                                                            |
                    
|
                                                                          |
                                                      |
                    

                
            
        
These restrictions, together with the construction restrictions of not using pipe larger than |ND.FiBwTrunkMax| diameter in the backwash line and |ND.FiTrunkMax| diameter in the other pipe, define the maximum flow rate of a filter. The maximum velocities and maximum flow rates that can occur in the logs during filtration and backwashing are:

        

                
                
                
                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Normal Filtration                                |
                         Backwash |
                    
|
                                                                          |
                          |
                    

                
                
                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         .. _:                                            |
                         .. _: |
                    
|
                                                                          |
                          |
                    
|
                                                                          |
                                                      |
                    
|
                                                     .. _:                |
                                                     .. _: |
                    
|
                                                                          |
                          |
                    
|
                                                                          |
                                                      |
                    
|
                                                                          |
                                                      |
                    
|
                                                         | Where          |
                                                         | Where |
                    
|
                                                                          |
                          |
                    
|
                                                         |  = the minimum pressure drop for a layer of clean sand (see :std std-ref:`Sand`) |
                                                         |  = the estimated pressure loss through the inlet holes during backwash = |HL.FiBwSlotsEst| |
                    
|
                                                                          |
                          |
                    
|
                                                         |  = the minimum radius of the flow on the long path over the flow on the short path = |Pi.FiManifoldQ| |
                                                         |  = the minimum radius of the flow on the long path over the flow on the short path = |Pi.FiManifoldQ| |
                    
|
                                                                          |
                          |
                    
|
                                                         |  = the estimated pressure recovery on a branch = |PR.FiManBranchEst| |
                                                         |  = the estimated pressure recovery on a branch = |PR.FiManBranchEst| |
                    
|
                                                                          |
                          |
                    
|
                                                         |  = the nominal maximum diameter of the upper trunk = |ND.FiTrunkMax| |
                                                         |  = the nominal maximum diameter of the lower trunk = |ND.FiBwTrunkMax| |
                    
|
                                                                          |
                          |
                    
|
                                                         |  = the number of layers of sand = |N.FiLayer| |
                                                      |
                    
|
                                                                          |
                                                  |
                    
|
                                                                          |
                          |
                    

                
            
        
The maximum flow rate per filter is defined as the lesser of the two maximum flow rates under the restrictions of the flow distribution. The total number of filters is defined accordingly so as not to exceed this limit:

        
.. _:

        
    