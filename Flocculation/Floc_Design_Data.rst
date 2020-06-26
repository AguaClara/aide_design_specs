.. include:: ../global.rst

.. _title_floc_Datos_del_Diseño:

********************
Datos del Diseño
********************

.. _table_floc_data:

.. csv-table:: Datos del floculador

    **Datos Constructivos**,
    "Longitud de los canales", |channelLength|
    "Ancho de los canales", |W.FlocChannel|
    "Profundidad de los canales", |H.Floc|
    "Número de canales", |N.FlocChannels|
    "Número de deflectores en cada canal", "|N.FlocFirstChannelBaffles| en el primero, |N.FlocLastChannelBaffles| en el último, |N.FlocChannelBaffles| en los demás si hay más de 2 canales"
    "Altura de los deflectores superiores", |H.FlocBaffleHigh|
    "Altura de los deflectores inferiores", |H.FlocBaffleLow|
    "Separación entre los deflectores", |S.FlocBaffle|
    "Altura de la compuerta entre los canales", |H.FlocPort|
    "Ancho de la compuerta entre los canales", |W.FlocPort|
    "Número de obstáculos entre cada dos deflectores", |N.FlocSpaceObstacles|
    "Ancho del flujo de agua pasando por el obstáculo", |W.FlocObstacleWake|
    **Parámetros Hidráulicos**
    "Gradiente de velocidad medio", |G.Floc|
    "Pérdida de carga total con el caudal máximo de diseño", |HL.Floc|
    "Tiempo de retención mínimo", |Ti.Floc|
    "Potencial de colisiones (numero de Camp)", |Gt.Floc|
    "Gradiente de velocidad medio (calculado retroactivamente)", |G.Floc|
    **Datos de Tubería**,
    "Los desagües", "|ND.FlocDrain|, |PS.FlocDrainStr|"
    "Los obstáculos", "|ND.FlocObs|, |PS.FlocObsStr|"
    "Los separadores de los deflectores", "|ND.FlocSpacer|, |PS.FlocSpacerStr|"
    "Los conectores de los deflectores", "|ND.FlocMod|, |PS.FlocModStr|"
