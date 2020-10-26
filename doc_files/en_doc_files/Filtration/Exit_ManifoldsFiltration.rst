
    .. _exit manifolds:

    

        Exit Manifolds
==============


        Unlike the entry manifolds, the exit manifolds have slotted pipes instead of perforated pipes for the branches. The slots are |W.FiManSlots| wide, so that water can enter the pipe but sand cannot.

        
.. _:

        
.. figure:: 
               Filtration\Images/exit_manifold_grooves.png
   :align: center
   :candidates: {'*': 'Filtration\\Images/exit_manifold_grooves.png'}
   :width: 300px


                  The slots in an exit manifold branch.

           
        
.. _:

        
.. figure:: 
               Filtration\Images/exit_manifold.png
   :align: center
   :candidates: {'*': 'Filtration\\Images/exit_manifold.png'}
   :width: 300px


                  The exit manifold with the slotted tubes.

           
        
The collective area of the slots per manifold is twice the collective area of the holes in the backwash manifold, because these exit manifolds extract the water from two sand layers each. The length of the slots is defined to achieve the desired collective area:

        
.. _:

        
        
            | Where

            |  = the beloved collective area = |A.FiOutletManSlots|

            |  = the separation of the slots = |B.FiManSlot|

            |  = the width of the slots = |W.FiManSlots|

            |  = the number of branches per manifold = |N.FiManBranch|

            |  = the slotted length of the branch = |L.FiOutletBranchSlotted|

            |  = the number of rows of slots per string = |N.FiSlotRows| (means both sides have slots)

        
        
The pressure drop through the slots during normal filtration is given by:

        
.. _:

        
        
            | Where

            |  = the flow rate of water through the manifold

            |  = the collective area of the slots in the manifold

            |  = the coefficient of vein contracted for an orifice = |Pi.VCOrifice|

            |  = the porosity of the sand bed = |ε.FiSand|

        
        
.. _table_exit_manifold_data:

        

                
                
                
                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Filter manifold trunk lines                      |
                         |ND.FiTrunk| |PS.FiTrunkStr| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Upper exit branches                              |
                         |ND.FiManBranch| |PS.FiBranchStr| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Number of strings in each exit manifold          |
                         |N.FiManBranch| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Length of the branches                           |
                         |L.FiManBranch| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Length of the part of the branch that enters the orifices in the trunk and the tube that receives the branch at the other end |
                         |L.FiManBranchExt| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Length of the slotted part of each branch        |
                         |L.FiOutletBranchSlotted| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Number of rows of slots in each branch           |
                         |N.FiSlotRows| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Gap between slots                                |
                         |B.FiManSlot| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Number of slots in each row                      |
                         |N.FiOutletManSlotsPerRow| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Number of slots in each branch                   |
                         |N.FiOutletManSlotsPerBranch| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Width of slots                                   |
                         |W.FiManSlots| |
                    
|
                                                                          |
                          |
                    

                    +--------------------------------------------------+--------------------------------------------------+
|
                                                                          |
                                                      |
                    
|
                         Internal length of the slots, measured in the pipe bend |
                         |L.FiOutletManSlotCurvedInner| |
                    
|
                                                                          |
                          |
                    

                
            
Exit Manifold Data

    