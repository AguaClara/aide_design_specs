.. include:: ../global.rst

.. _title_floc_Design_Data:

********************
Design Data
********************

.. _table_floc_data:

.. csv-table:: Flocculator data

    **Constructive Data**
    Length of channels, |channelLength|
    Width of the channels, |W.FlocChannel|
    Channel depth, |H.Floc|
    Number of channels, |N.FlocChannels|
    Number of baffles in each channel, "|N.FlocFirstChannelBaffles| on the first, |N.FlocLastChannelBaffles| on the last, |N.FlocChannelBaffles| on the others if there are more than 2 channels"
    Height of the upper deflectors, |H.FlocBaffleHigh|
    Height of lower deflectors, |H.FlocBaffleLow|
    Deflector spacing, |S.FlocBaffle|
    Height of the gate between the channels, |H.FlocPort|
    Width of the gate between the channels, |W.FlocPort|
    Number of obstacles between every two deflectors, |N.FlocSpaceObstacles|
    Width of water flow through the obstacle, |W.FlocObstacleWake|
    **Hydraulic Parameters**
    Average speed gradient, |G.Floc|
    Total head loss at maximum design flow, |HL.Floc|
    Minimum retention time, |Ti.Floc|
    Collision potential (Camp’s number), |Gt.Floc|
    Average speed gradient (calculated retroactively), |G.Floc|
    **Pipeline Data**
    The drains, "|ND.FlocDrain|, |PS.FlocDrainStr|"
    The obstacles, "|ND.FlocObs|, |PS.FlocObsStr|"
    Deflector spacers, "|ND.FlocSpacer|, |PS.FlocSpacerStr|"
    The connectors of the deflectors, "|ND.FlocMod|, |PS.FlocModStr|"
