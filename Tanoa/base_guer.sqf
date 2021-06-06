// Export of 'base_guer.Tanoa' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer168 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer390 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer41 = (_allWhitelisted || {"camp site #08" in _layerWhiteList}) && {!("camp site #08" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item102 = grpNull;
if (_layerRoot) then {
	_item102 = createGroup resistance;
	_this = _item102;
	_groups pushback _this;
	_groupIDs pushback 102;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layer41) then {
	_item0 = createVehicle ["Land_WoodenCrate_01_stack_x3_F",[10273.2,10324.5,0.437546],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [10273.2,10324.5,236.086];
	_this setVectorDirAndUp [[-0.397986,0.917392,0.000274724],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1 = objNull;
if (_layer41) then {
	_item1 = createVehicle ["Land_WoodenCrate_01_stack_x3_F",[10287.2,10321.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [10287.2,10321.9,235.904];
	_this setVectorDirAndUp [[-0.43709,0.890878,0.123645],[-0.0373079,-0.155313,0.987161]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item3 = objNull;
if (_layer41) then {
	_item3 = createSimpleObject ["Land_MetalBarrel_F",[10288.5,10323.4,235.639]];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [10288.5,10323.4,236.048];
	_this setVectorDirAndUp [[0.133616,0.961208,0.241302],[-0.113923,-0.226974,0.967215]];
	0 remoteExec ['setFeatureType', _this];
};

private _item4 = objNull;
if (_layer41) then {
	_item4 = createSimpleObject ["Land_MetalBarrel_F",[10288.3,10322.5,235.408]];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [10288.3,10322.5,235.817];
	_this setVectorDirAndUp [[-0.916383,0.400056,-0.0140552],[-0.113923,-0.226974,0.967215]];
	0 remoteExec ['setFeatureType', _this];
};

private _item5 = objNull;
if (_layer41) then {
	_item5 = createSimpleObject ["Land_MetalBarrel_F",[10285.8,10321.6,235.076]];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [10285.8,10321.6,235.492];
	_this setVectorDirAndUp [[0.377789,-0.919575,-0.107965],[-0.0955612,-0.154709,0.983328]];
	0 remoteExec ['setFeatureType', _this];
};

private _item6 = objNull;
if (_layer41) then {
	_item6 = createVehicle ["Land_Pallets_F",[10270.3,10318,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [10270.3,10318,234.544];
	_this setVectorDirAndUp [[-0.857966,-0.464352,-0.219709],[-0.170789,-0.145525,0.974502]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item8 = objNull;
if (_layer41) then {
	_item8 = createVehicle ["Land_BagFence_01_long_green_F",[10252.9,10316.9,0],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [10252.9,10316.9,232.506];
	_this setVectorDirAndUp [[-0.914129,-0.391479,-0.105414],[-0.077101,-0.0874005,0.993185]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item9 = objNull;
if (_layer41) then {
	_item9 = createVehicle ["Land_BagFence_01_long_green_F",[10257.1,10315.1,0.00819397],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [10257.1,10315.1,232.619];
	_this setVectorDirAndUp [[-0.399041,0.912928,0.0856051],[-0.0293222,-0.106018,0.993932]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item11 = objNull;
if (_layer41) then {
	_item11 = createVehicle ["Land_BagFence_01_round_green_F",[10254.5,10314.7,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [10254.5,10314.7,232.414];
	_this setVectorDirAndUp [[0.364941,0.92236,0.126765],[-0.077101,-0.105747,0.991399]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item12 = objNull;
if (_layer41) then {
	_item12 = createVehicle ["Land_Sacks_heap_F",[10286.5,10323.5,0],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [10286.5,10323.5,235.804];
	_this setVectorDirAndUp [[-0.778304,-0.615077,-0.126186],[-0.0373079,-0.155313,0.987161]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer41) then {
	_item13 = createSimpleObject ["Land_Ammobox_rounds_F",[10265.2,10336.7,235.054]];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [10265.2,10336.7,235.16];
	_this setVectorDirAndUp [[-0.973459,0.228861,0.000475152],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item14 = objNull;
if (_layer41) then {
	_item14 = createSimpleObject ["Land_Ammobox_rounds_F",[10267,10337.5,235.054]];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [10267,10337.5,235.159];
	_this setVectorDirAndUp [[-0.684942,-0.728598,0.000334324],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item15 = objNull;
if (_layer41) then {
	_item15 = createSimpleObject ["Land_Ammobox_rounds_F",[10267.3,10337.4,235.053]];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [10267.3,10337.4,235.159];
	_this setVectorDirAndUp [[-0.998435,-0.0559257,0.000487342],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item16 = objNull;
if (_layer41) then {
	_item16 = createSimpleObject ["Land_Ammobox_rounds_F",[10265.3,10336.3,235.054]];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [10265.3,10336.3,235.16];
	_this setVectorDirAndUp [[-0.547635,0.836717,0.000267304],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item17 = objNull;
if (_layer41) then {
	_item17 = createVehicle ["Land_Camping_Light_F",[10267.2,10337.1,0.614899],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [10267.2,10337.1,235.172];
	_this setVectorDirAndUp [[-0.997669,0.0682419,0.000486969],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item18 = objNull;
if (_layer41) then {
	_item18 = createVehicle ["Land_WoodenCrate_01_stack_x3_F",[10266.6,10331.7,0.525574],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [10266.6,10331.7,235.762];
	_this setVectorDirAndUp [[-0.822203,-0.569194,0.000401323],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item19 = objNull;
if (_layer41) then {
	_item19 = createSimpleObject ["Land_WoodenCrate_01_F",[10264.8,10331.1,234.384]];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [10264.8,10331.1,234.731];
	_this setVectorDirAndUp [[-0.570034,0.820811,-0.0364808],[-0.063867,0,0.997958]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 3] call ace_cargo_fnc_setSize;;
};

private _item20 = objNull;
if (_layer41) then {
	_item20 = createVehicle ["Land_GarbageHeap_02_F",[10263.7,10331.8,0.0239563],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [10263.7,10331.8,234.45];
	_this setVectorDirAndUp [[0.802546,0.579953,0.139911],[-0.128084,-0.061552,0.989851]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer41) then {
	_item21 = createSimpleObject ["Land_Canteen_F",[10264.9,10336.4,235.054]];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [10264.9,10336.4,235.185];
	_this setVectorDirAndUp [[-0.644497,0.764607,0.000314583],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item22 = objNull;
if (_layer41) then {
	_item22 = createSimpleObject ["Land_Canteen_F",[10264,10336.2,235.055]];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [10264,10336.2,235.185];
	_this setVectorDirAndUp [[-0.942163,0.335156,0.000459876],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item26 = objNull;
if (_layer41) then {
	_item26 = createVehicle ["Land_Sleeping_bag_F",[10268.3,10336.5,0.584473],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [10268.3,10336.5,235.116];
	_this setVectorDirAndUp [[-0.412961,0.910749,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer41) then {
	_item27 = createSimpleObject ["Land_PainKillers_F",[10263.8,10335.9,235.055]];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [10263.8,10335.9,235.098];
	_this setVectorDirAndUp [[-0.948401,-0.317072,0.000462921],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item28 = objNull;
if (_layer41) then {
	_item28 = createSimpleObject ["Land_DuctTape_F",[10264.8,10336.8,235.055]];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [10264.8,10336.8,235.08];
	_this setVectorDirAndUp [[-0.98471,0.174199,0.000480643],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item29 = objNull;
if (_layer41) then {
	_item29 = createVehicle ["Land_Sleeping_bag_blue_F",[10266.3,10336,0.600235],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [10266.3,10336,235.121];
	_this setVectorDirAndUp [[-0.312616,0.94988,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer41) then {
	_item30 = createVehicle ["Land_Sleeping_bag_brown_F",[10264.5,10334.7,0.544724],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [10264.5,10334.7,235.124];
	_this setVectorDirAndUp [[-0.615592,0.788065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer41) then {
	_item32 = createVehicle ["Land_CratesWooden_F",[10279.2,10335.3,0],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [10279.2,10335.3,236.044];
	_this setVectorDirAndUp [[-0.26879,0.963076,0.0153689],[-0.113918,-0.0476301,0.992348]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer41) then {
	_item35 = createVehicle ["Land_Sacks_heap_F",[10281.2,10336.1,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [10281.2,10336.1,235.967];
	_this setVectorDirAndUp [[-0.939273,0.330622,-0.0919567],[-0.113918,-0.0476301,0.992348]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer41) then {
	_item36 = createVehicle ["Land_CratesPlastic_F",[10281.8,10338.5,0],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [10281.8,10338.5,235.972];
	_this setVectorDirAndUp [[0.147473,-0.988779,-0.0238113],[-0.106067,-0.039746,0.993564]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer41) then {
	_item40 = createVehicle ["Land_Sacks_heap_F",[10281.6,10339.7,0.00367737],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [10281.6,10339.7,236.171];
	_this setVectorDirAndUp [[-0.976966,-0.194836,-0.087038],[-0.0823851,-0.0318743,0.996091]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer41) then {
	_item42 = createVehicle ["I_C_Offroad_02_unarmed_F",[10290.4,10325.1,-0.000747681],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [10290.2,10325,237.547];
	_this setVectorDirAndUp [[0.102438,0.992755,0.0627947],[-0.0955606,-0.0530136,0.994011]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""FirstAidKit""],[2]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitfuel"",""hitengine"",""hitbody"",""hitglass1"",""hitrglass"",""hitlglass"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""#light_1"",""#light_2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item46 = objNull;
if (_layerRoot) then {
	_item46 = createSimpleObject ["Land_Ammobox_rounds_F",[10275.6,10319.9,236.343]];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [10275.6,10319.9,236.448];
	_this setVectorDirAndUp [[-0.926042,-0.37742,0.000639233],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item47 = objNull;
if (_layerRoot) then {
	_item47 = createSimpleObject ["Land_Ammobox_rounds_F",[10275.4,10319.9,235.996]];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [10275.4,10319.9,236.102];
	_this setVectorDirAndUp [[0.789877,-0.613265,-0.00054524],[0.000690285,3.56967e-011,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item49 = objNull;
if (_layerRoot) then {
	_item49 = createSimpleObject ["Land_Bucket_F",[10275.1,10319.7,236.344]];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [10275.1,10319.7,236.51];
	_this setVectorDirAndUp [[0.604238,-0.796804,-0.000417096],[0.000690285,2.319e-011,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item50 = objNull;
if (_layerRoot) then {
	_item50 = createSimpleObject ["Box_Syndicate_Wps_F",[10275.3,10319.8,235.684]];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [10275.3,10319.8,235.754];
	_this setVectorDirAndUp [[-0.377421,0.926042,0.000260528],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item70 = objNull;
if (_layerRoot) then {
	_item70 = createSimpleObject ["Land_ChairWood_F",[10277.4,10326.6,235.37]];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [10277.4,10326.6,235.369];
	_this setVectorDirAndUp [[-0.999493,-0.0318311,0.000689935],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item71 = objNull;
if (_layerRoot) then {
	_item71 = createSimpleObject ["Land_ShelvesWooden_F",[10275.4,10319.8,235.364]];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [10275.4,10319.8,235.866];
	_this setVectorDirAndUp [[-0.926042,-0.37742,0.000639233],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item74 = objNull;
if (_layerRoot) then {
	_item74 = createSimpleObject ["Land_Can_V3_F",[10278.6,10327,236.23]];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [10278.6,10327,236.271];
	_this setVectorDirAndUp [[0.873143,0.487464,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item75 = objNull;
if (_layerRoot) then {
	_item75 = createSimpleObject ["Land_EmergencyBlanket_01_stack_F",[10276.2,10320.1,235.354]];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [10276.2,10320.1,235.557];
	_this setVectorDirAndUp [[-0.377421,0.926042,0.000260528],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item76 = objNull;
if (_layerRoot) then {
	_item76 = createVehicle ["Land_PaperBox_01_small_ransacked_brown_F",[10277.2,10320.8,0.617432],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [10277.2,10320.8,235.589];
	_this setVectorDirAndUp [[0.990686,-0.136165,-0.000683856],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layerRoot) then {
	_item86 = createSimpleObject ["Land_ChairWood_F",[10279.5,10326.1,235.368]];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [10279.5,10326.1,235.368];
	_this setVectorDirAndUp [[0.85833,-0.513098,-0.000592493],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item87 = objNull;
if (_layerRoot) then {
	_item87 = createSimpleObject ["Land_BottlePlastic_V1_F",[10278.8,10327.2,236.186]];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [10278.8,10327.2,236.286];
	_this setVectorDirAndUp [[0.684216,-0.729279,-0.000472304],[0.000690285,6.36744e-011,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item88 = objNull;
if (_layerRoot) then {
	_item88 = createSimpleObject ["Land_WoodenTable_small_F",[10278.7,10326.8,235.324]];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [10278.7,10326.8,235.756];
	_this setVectorDirAndUp [[-0.926042,-0.37742,0.000639233],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item89 = objNull;
if (_layerRoot) then {
	_item89 = createVehicle ["Box_Syndicate_Wps_F",[10281.7,10322.4,1.27786],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [10281.7,10322.4,236.306];
	_this setVectorDirAndUp [[0.479511,-0.877536,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""arifle_AKM_F"",""arifle_AKS_F"",""LMG_03_F"",""arifle_AK12_F"",""arifle_AK12_GL_F"",""hgun_Pistol_01_F""],[2,2,2,2,2,2]],[[""30Rnd_762x39_Mag_F"",""30Rnd_762x39_AK12_Mag_F"",""30Rnd_545x39_Mag_F"",""200Rnd_556x45_Box_F"",""10Rnd_9x21_Mag""],[6,6,2,2,2]],[[""V_BandollierB_cbr""],[6]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item90 = objNull;
if (_layerRoot) then {
	_item90 = createVehicle ["Box_Syndicate_Ammo_F",[10280.6,10322.1,1.29416],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [10280.6,10322.1,236.447];
	_this setVectorDirAndUp [[0.963417,0.268005,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[""30Rnd_762x39_Mag_F"",""30Rnd_762x39_AK12_Mag_F"",""30Rnd_545x39_Mag_F"",""200Rnd_556x45_Box_F"",""10Rnd_9x21_Mag"",""1Rnd_HE_Grenade_shell"",""RPG7_F"",""HandGrenade"",""MiniGrenade""],[24,24,12,4,6,6,1,6,6]],[[""V_TacChestrig_cbr_F""],[6]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item91 = objNull;
if (_layerRoot) then {
	_item91 = createVehicle ["Box_Syndicate_WpsLaunch_F",[10279.2,10321.3,1.35994],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [10279.2,10321.3,236.418];
	_this setVectorDirAndUp [[0.386315,-0.922367,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""launch_RPG7_F""],[3]],[[""RPG7_F"",""DemoCharge_Remote_Mag"",""SatchelCharge_Remote_Mag"",""APERSTripMine_Wire_Mag"",""APERSMine_Range_Mag""],[15,5,5,5,5]],[[],[]],[[""B_FieldPack_cbr"",""B_Kitbag_cbr""],[3,3]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item92 = objNull;
if (_layerRoot) then {
	_item92 = createSimpleObject ["Land_WoodenTable_large_F",[10281.3,10322.2,235.372]];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [10281.3,10322.2,235.804];
	_this setVectorDirAndUp [[-0.936094,-0.351751,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item93 = objNull;
if (_layerRoot) then {
	_item93 = createSimpleObject ["Land_WoodenTable_large_F",[10279.2,10321.4,235.373]];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [10279.2,10321.4,235.806];
	_this setVectorDirAndUp [[-0.936094,-0.351751,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item94 = objNull;
if (_layerRoot) then {
	_item94 = createVehicle ["Land_PortableLight_02_single_yellow_F",[10280.3,10327.7,0.149399],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [10280.3,10327.7,235.914];
	_this setVectorDirAndUp [[0.135891,0.990724,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item95 = objNull;
if (_layerRoot) then {
	_item95 = createVehicle ["Land_PortableLight_02_single_folded_yellow_F",[10275.3,10319.8,1.91823],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [10275.3,10319.8,236.464];
	_this setVectorDirAndUp [[0.210531,-0.977587,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item96 = objNull;
if (_layerRoot) then {
	_item96 = createVehicle ["Land_PortableLight_02_single_yellow_F",[10280.8,10340.6,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [10280.8,10340.6,236.281];
	_this setVectorDirAndUp [[0.585817,0.810444,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item97 = objNull;
if (_layerRoot) then {
	_item97 = createSimpleObject ["Land_laptop_03_closed_black_F",[10279.1,10326.7,236.189]];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [10279.1,10326.7,236.356];
	_this setVectorDirAndUp [[-0.66571,0.746211,0.00045953],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item99 = objNull;
if (_layerRoot) then {
	_item99 = createSimpleObject ["Land_Map_Tanoa_F",[10278.3,10326.8,236.176]];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [10278.3,10326.8,236.181];
	_this setVectorDirAndUp [[0.285571,-0.958358,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item100 = objNull;
if (_layerRoot) then {
	_item100 = createSimpleObject ["Land_Compass_F",[10278.2,10327,236.182]];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [10278.2,10327,236.187];
	_this setVectorDirAndUp [[0,1,0],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item101 = objNull;
if (_layerRoot) then {
	_item101 = createVehicle ["Land_ChairWood_F",[10274.2,10320.3,0.904541],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [10274.2,10320.2,235.377];
	_this setVectorDirAndUp [[-0.831448,-0.555602,0.000573937],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layerRoot) then {
	_item104 = _item102 createUnit ["I_C_Soldier_Para_1_F",[10287.5,10325.9,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [10287.5,10325.9,235.678];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Sefa Maraiwai";;
	_this setface "TanoanHead_A3_03";;
	_this setspeaker "Male02FRE";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["RELAX_2",["Acts_Ambient_Relax_2"],false,true] # 0 isEqualTo '') then      {        ["RELAX_2",["Acts_Ambient_Relax_2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item105 = objNull;
if (_layerRoot) then {
	_item105 = _item102 createUnit ["I_C_Soldier_Para_1_F",[10277.4,10326.6,0.194016],[],0,"CAN_COLLIDE"];
	_item102 selectLeader _item105;
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [10277.4,10326.6,235.376];
	_this setVectorDirAndUp [[0.996712,-0.081023,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_I_C_Soldier_Para_1_F",[]],["V_Chestrig_khk",[]],[],"","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Akamu Naivalu";;
	_this setface "TanoanHead_A3_03";;
	_this setspeaker "Male03FRE";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item106 = objNull;
if (_layerRoot) then {
	_item106 = _item102 createUnit ["I_C_Soldier_Para_1_F",[10287.4,10327.9,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [10287.4,10327.9,235.779];
	_this setVectorDirAndUp [[0.194166,-0.980969,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Iram Potaka";;
	_this setface "TanoanHead_A3_04";;
	_this setspeaker "Male03FRE";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,true] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item107 = objNull;
if (_layerRoot) then {
	_item107 = _item102 createUnit ["I_C_Soldier_Para_1_F",[10279.5,10326.1,0.117905],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [10279.5,10326.1,235.375];
	_this setVectorDirAndUp [[-0.839242,0.543759,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Tane Katalou";;
	_this setface "TanoanHead_A3_07";;
	_this setspeaker "Male03FRE";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT1",["hubsittingchaira_idle1","hubsittingchaira_idle2","hubsittingchaira_idle3","hubsittingchaira_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT1",["hubsittingchaira_idle1","hubsittingchaira_idle2","hubsittingchaira_idle3","hubsittingchaira_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item108 = objNull;
if (_layerRoot) then {
	_item108 = _item102 createUnit ["I_C_Soldier_Para_1_F",[10268.4,10336.6,0.618622],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [10268.4,10336.7,235.118];
	_this setVectorDirAndUp [[0.495749,-0.868466,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_I_C_Soldier_Para_1_F",[]],["V_Chestrig_khk",[]],[],"","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Malo Rambuka";;
	_this setface "TanoanHead_A3_03";;
	_this setspeaker "Male03FRE";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WAKING",["Acts_Waking_Up_Player"],false,true] # 0 isEqualTo '') then      {        ["WAKING",["Acts_Waking_Up_Player"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item110 = objNull;
if (_layerRoot) then {
	_item110 = _item102 createUnit ["I_C_Soldier_Para_1_F",[10254.9,10317.2,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [10254.9,10317.3,232.274];
	_this setVectorDirAndUp [[-0.98415,-0.177341,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Fale Serevi";;
	_this setface "TanoanHead_A3_02";;
	_this setspeaker "Male03FRE";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH2",["inbasemoves_patrolling2"],false,true] # 0 isEqualTo '') then      {        ["WATCH2",["inbasemoves_patrolling2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item161 = objNull;
if (_layer390) then {
	_item161 = createVehicle ["Land_InfoStand_V1_F",[10282.3,10326.8,-0.00975037],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [10282.3,10326.8,235.698];
	_this setVectorDirAndUp [[-0.948087,-0.314487,0.0472108],[0.0532564,-0.0106542,0.998524]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item391 = objNull;
if (_layer168 && _layer390) then {
	_item391 = createVehicle ["Land_WorkStand_F",[10271.3,10335,-0.00106812],[],0,"CAN_COLLIDE"];
	_this = _item391;
	_objects pushback _this;
	_objectIDs pushback 391;
	_this setPosWorld [10271.3,10335,234.644];
	_this setVectorDirAndUp [[-0.829912,-0.55602,-0.0456879],[-0.0850262,0.0451215,0.995357]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
};

private _item392 = objNull;
if (_layerRoot) then {
	_item392 = createSimpleObject ["Land_FirstAidKit_01_closed_F",[10280.5,10344.5,236.148]];
	_this = _item392;
	_objects pushback _this;
	_objectIDs pushback 392;
	_this setPosWorld [10280.5,10344.5,236.326];
	_this setVectorDirAndUp [[0.928845,0.370469,-0.000700596],[0,0.0018911,0.999998]];
	0 remoteExec ['setFeatureType', _this];
};

private _item393 = objNull;
if (_layerRoot) then {
	_item393 = createSimpleObject ["Land_FirstAidKit_01_open_F",[10280.1,10344.2,236.148]];
	_this = _item393;
	_objects pushback _this;
	_objectIDs pushback 393;
	_this setPosWorld [10280.1,10344.2,236.211];
	_this setVectorDirAndUp [[-0.808089,-0.58906,0.00111398],[0,0.0018911,0.999998]];
	0 remoteExec ['setFeatureType', _this];
};

private _item395 = objNull;
if (_layerRoot) then {
	_item395 = createVehicle ["MedicalGarbage_01_1x1_v2_F",[10278.1,10341.1,0.59906],[],0,"CAN_COLLIDE"];
	_this = _item395;
	_objects pushback _this;
	_objectIDs pushback 395;
	_this setPosWorld [10278.1,10341.1,236.183];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item398 = objNull;
if (_layerRoot) then {
	_item398 = createVehicle ["Land_PortableLight_02_single_yellow_F",[10284.2,10335.7,0],[],0,"CAN_COLLIDE"];
	_this = _item398;
	_objects pushback _this;
	_objectIDs pushback 398;
	_this setPosWorld [10284.2,10335.7,236.247];
	_this setVectorDirAndUp [[-0.890027,0.455908,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item399 = objNull;
if (_layerRoot) then {
	_item399 = createVehicle ["Land_PortableLight_02_single_yellow_F",[10257.7,10325,0],[],0,"CAN_COLLIDE"];
	_this = _item399;
	_objects pushback _this;
	_objectIDs pushback 399;
	_this setPosWorld [10257.7,10325,233.876];
	_this setVectorDirAndUp [[0.405888,0.913923,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item163 = objNull;
if (_layer390) then {
	_item163 = createTrigger ["EmptyDetectorArea10x10",[10279.2,10342.8,0.449005],false];
	_this = _item163;
	_triggers pushback _this;
	_triggerIDs pushback 163;
	_item163 setPosATL [10279.2,10342.8,0.449005];
	_this setTriggerArea [2,2,348.749,true,2];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item102;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "Camp"] call CBA_fnc_setCallsign;
	    //  if (!is3DEN && (["","ColorGUER","Camp",true] # 0 != '') then      {        [_this, ["","ColorGUER","Camp",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorGUER","Camp",true]'];          ["","ColorGUER","Camp",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorGUER","Camp",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorGUER","Camp",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item164 = objNull;
if (_layer390) then {
	_item164 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[10274.8,10335.4,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_logics pushback _this;
	_logicIDs pushback 164;
	_this setPosWorld [10274.8,10335.4,234.95];
	_this setVectorDirAndUp [[0.789211,0.583569,0.191293],[-0.191079,-0.06269,0.979571]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer168) then {missionNamespace setVariable ["base_guer_Repair Station",[[_item391],[]]];};
if (_layer390) then {missionNamespace setVariable ["base_guer_SIA ZGM Essentials",[[_item161,_item163,_item164,_item391],[]]];};
if (_layer41) then {missionNamespace setVariable ["base_guer_Camp Site #08",[[_item0,_item1,_item3,_item4,_item5,_item6,_item8,_item9,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item26,_item27,_item28,_item29,_item30,_item32,_item35,_item36,_item40,_item42],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item89) then {
		this = _item89;
		call{arsenals pushBack this};
	};
	if !(isnull _item90) then {
		this = _item90;
		call{arsenals pushBack this};
	};
	if !(isnull _item91) then {
		this = _item91;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
