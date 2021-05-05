// Export of 'temp.Altis' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer12 = (_allWhitelisted || {"canteen #1" in _layerWhiteList}) && {!("canteen #1" in _layerBlackList)};
private _layer501 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer130 = (_allWhitelisted || {"medical laboratory [blu]" in _layerWhiteList}) && {!("medical laboratory [blu]" in _layerBlackList)};
private _layer69 = (_allWhitelisted || {"checkpoint [blu]" in _layerWhiteList}) && {!("checkpoint [blu]" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item129 = "";
if (_layerRoot) then {
	_item129 = createMarker ["marker_0",[15055.2,17309,0]];
	_this = _item129;
	_markers pushback _this;
	_markerIDs pushback 129;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Service";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item146 = "";
if (_layerRoot) then {
	_item146 = createMarker ["marker_1",[15301.7,17392.3,0]];
	_this = _item146;
	_markers pushback _this;
	_markerIDs pushback 146;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Medical";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item147 = "";
if (_layerRoot) then {
	_item147 = createMarker ["respawn_west",[15193.5,17310.6,0]];
	_this = _item147;
	_markers pushback _this;
	_markerIDs pushback 147;
	_this setMarkerType "b_hq";
	_this setMarkerText "Shafter AB";
	_this setMarkerShape "ICON";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item94 = grpNull;
if (_layerRoot) then {
	_item94 = createGroup west;
	_this = _item94;
	_groups pushback _this;
	_groupIDs pushback 94;
};

private _item109 = grpNull;
if (_layerRoot) then {
	_item109 = createGroup west;
	_this = _item109;
	_groups pushback _this;
	_groupIDs pushback 109;
};

private _item175 = grpNull;
if (_layerRoot) then {
	_item175 = createGroup west;
	_this = _item175;
	_groups pushback _this;
	_groupIDs pushback 175;
};

private _item502 = grpNull;
if (_layerRoot) then {
	_item502 = createGroup west;
	_this = _item502;
	_groups pushback _this;
	_groupIDs pushback 502;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item70 = objNull;
if (_layer69) then {
	_item70 = createSimpleObject ["RoadCone_F",[15300.1,17533.2,16.6155]];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [15300.1,17533.2,16.8834];
	_this setVectorDirAndUp [[0.661324,0.749875,0.0183957],[-0.0293202,0.00133664,0.999569]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item71 = objNull;
if (_layer69) then {
	_item71 = createSimpleObject ["RoadCone_F",[15304.8,17539.6,16.5871]];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [15304.8,17539.6,16.8551];
	_this setVectorDirAndUp [[0.0624047,-0.998047,0.00289629],[-0.00399675,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item72 = objNull;
if (_layer69) then {
	_item72 = createSimpleObject ["RoadCone_F",[15297.3,17530.2,16.5946]];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [15297.3,17530.2,16.8626];
	_this setVectorDirAndUp [[-0.998019,-0.0624157,-0.00790185],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item73 = objNull;
if (_layer69) then {
	_item73 = createSimpleObject ["RoadCone_F",[15293.7,17527,16.6024]];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [15293.7,17527,16.8703];
	_this setVectorDirAndUp [[0.980169,-0.197839,0.0113012],[-0.00533768,0.0306509,0.999516]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item74 = objNull;
if (_layer69) then {
	_item74 = createSimpleObject ["RoadCone_F",[15302.9,17536.4,16.6004]];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [15302.9,17536.4,16.8684];
	_this setVectorDirAndUp [[0.749855,-0.661588,0.00440576],[0,0.00665923,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item75 = objNull;
if (_layer69) then {
	_item75 = createSimpleObject ["RoadCone_F",[15304,17541.4,16.5789]];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [15304,17541.4,16.8469];
	_this setVectorDirAndUp [[0.661603,0.749854,0.000655636],[-0.00399675,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item76 = objNull;
if (_layer69) then {
	_item76 = createSimpleObject ["RoadCone_F",[15311.9,17533.4,16.6923]];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [15311.9,17533.4,16.96];
	_this setVectorDirAndUp [[0.0624052,-0.996962,0.0466075],[-0.00133721,0.0466149,0.998912]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item77 = objNull;
if (_layer69) then {
	_item77 = createSimpleObject ["RoadCone_F",[15303.9,17524.6,16.7874]];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [15303.9,17524.6,17.0552];
	_this setVectorDirAndUp [[0.749532,-0.661077,0.0343294],[-0.0293202,0.0186548,0.999396]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item78 = objNull;
if (_layer69) then {
	_item78 = createSimpleObject ["RoadCone_F",[15300.2,17521.5,16.8083]];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [15300.2,17521.5,17.0761];
	_this setVectorDirAndUp [[-0.749743,0.660892,-0.0332665],[-0.0173282,0.0306468,0.99938]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item79 = objNull;
if (_layer69) then {
	_item79 = createSimpleObject ["RoadCone_F",[15308.9,17530.2,16.7809]];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [15308.9,17530.2,17.0487];
	_this setVectorDirAndUp [[0.0623958,-0.997549,0.0316725],[-0.0173282,0.0306468,0.99938]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item80 = objNull;
if (_layer69) then {
	_item80 = createSimpleObject ["RoadCone_F",[15314.2,17536.2,16.6152]];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [15314.2,17536.2,16.8832];
	_this setVectorDirAndUp [[-0.833125,-0.55308,0.00221054],[0,0.00399675,0.999992]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item81 = objNull;
if (_layer69) then {
	_item81 = createSimpleObject ["RoadCone_F",[15306.6,17527.6,16.8123]];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [15306.6,17527.6,17.0801];
	_this setVectorDirAndUp [[0.0623784,-0.998048,0.00316434],[-0.0293202,0.00133664,0.999569]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item82 = objNull;
if (_layer69) then {
	_item82 = createVehicle ["Land_CncBarrier_stripes_F",[15298.5,17541.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [15298.5,17541.9,16.9355];
	_this setVectorDirAndUp [[-0.0362552,0.999318,-0.00700201],[-0.0093285,0.00666789,0.999934]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer69) then {
	_item83 = createVehicle ["Land_CncBarrier_stripes_F",[15293.3,17541.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [15293.3,17541.8,16.8884];
	_this setVectorDirAndUp [[-0.076361,0.997053,-0.00736105],[-0.0093285,0.00666789,0.999934]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer69) then {
	_item84 = createVehicle ["Land_CncBarrier_stripes_F",[15302.2,17541.8,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [15302.2,17541.8,16.9564];
	_this setVectorDirAndUp [[-0.0362598,0.999339,-0.00279608],[-0.00399679,0.00265288,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer130) then {
	_item131 = createVehicle ["Land_Cargo20_white_F",[15288.2,17388.5,0.00304794],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [15288.2,17388.5,19.2094];
	_this setVectorDirAndUp [[-0.691094,-0.722755,0.00374957],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item132 = objNull;
if (_layer130) then {
	_item132 = createVehicle ["Land_Cargo20_white_F",[15285.7,17385.9,0.00304794],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [15285.7,17385.9,19.2231];
	_this setVectorDirAndUp [[-0.691094,-0.722755,0.00374957],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item133 = objNull;
if (_layer130) then {
	_item133 = createVehicle ["Land_HBarrier_5_F",[15282.2,17388.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [15282.2,17388.2,18.6394];
	_this setVectorDirAndUp [[-0.72276,0.691099,8.39335e-005],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer130) then {
	_item134 = createVehicle ["Land_HBarrier_5_F",[15286,17392.2,0.00354576],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [15286,17392.2,18.6213];
	_this setVectorDirAndUp [[-0.722757,0.691103,0.000126477],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer130) then {
	_item135 = createVehicle ["Land_LampShabby_F",[15303.5,17392.6,0],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [15303.5,17392.6,21.4985];
	_this setVectorDirAndUp [[0.722762,-0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item136 = objNull;
if (_layer130) then {
	_item136 = createVehicle ["Land_HBarrier_5_F",[15322.3,17404.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [15322.3,17404.1,17.9601];
	_this setVectorDirAndUp [[-0.691008,-0.722651,0.0168328],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer130) then {
	_item137 = createVehicle ["Land_HBarrier_5_F",[15316.3,17409.8,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [15316.3,17409.8,18.012];
	_this setVectorDirAndUp [[-0.691008,-0.722651,0.0168328],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer130) then {
	_item138 = createVehicle ["Land_HBarrier_5_F",[15310.6,17415.4,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [15310.6,17415.4,18.0781];
	_this setVectorDirAndUp [[-0.690959,-0.722723,0.0157512],[0.0199947,0.00267389,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer130) then {
	_item139 = createVehicle ["Land_HelipadRescue_F",[15282.9,17409.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [15282.9,17409.7,17.8317];
	_this setVectorDirAndUp [[-0.71644,0.697648,0.00108011],[0.00800059,0.00666796,0.999946]];
	0 remoteExec ['setFeatureType', _this];
};

private _item503 = objNull;
if (_layer501) then {
	_item503 = createVehicle ["Gunrack1",[15194.7,17290.6,0.0400009],[],0,"CAN_COLLIDE"];
	_this = _item503;
	_objects pushback _this;
	_objectIDs pushback 503;
	_this setPosWorld [15194.7,17290.6,18.4844];
	_this setVectorDirAndUp [[-0.724689,-0.689076,-0.000935967],[-0.00129154,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item504 = objNull;
if (_layer501) then {
	_item504 = createVehicle ["Gunrack1",[15192.4,17288.1,0.0400906],[],0,"CAN_COLLIDE"];
	_this = _item504;
	_objects pushback _this;
	_objectIDs pushback 504;
	_this setPosWorld [15192.4,17288.1,18.4814];
	_this setVectorDirAndUp [[-0.724689,-0.689076,-0.000936205],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer12) then {
	_item13 = createVehicle ["Land_Garbage_square5_F",[15148.6,17340.1,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [15148.6,17340.1,17.8678];
	_this setVectorDirAndUp [[0.893348,-0.449264,0.00954095],[-0.0080009,0.00532633,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layer12) then {
	_item14 = createSimpleObject ["Land_GarbageContainer_open_F",[15154.9,17338.9,17.8544]];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [15154.9,17338.9,18.5929];
	_this setVectorDirAndUp [[0.835798,0.549035,0.0014824],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item15 = objNull;
if (_layer12) then {
	_item15 = createSimpleObject ["Land_Sink_F",[15151.2,17334.4,17.8507]];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [15151.2,17334.4,18.4684];
	_this setVectorDirAndUp [[0.65373,-0.756723,0.00274563],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item16 = objNull;
if (_layer12) then {
	_item16 = createSimpleObject ["Land_CampingTable_F",[15149.5,17337.1,17.84]];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [15149.5,17337.1,18.2515];
	_this setVectorDirAndUp [[-0.681751,-0.73157,-0.00447653],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item17 = objNull;
if (_layer12) then {
	_item17 = createSimpleObject ["Land_CampingTable_F",[15148.7,17339,17.831]];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [15148.7,17339,18.2425];
	_this setVectorDirAndUp [[0.685203,0.728338,0.00450848],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item18 = objNull;
if (_layer12) then {
	_item18 = createSimpleObject ["Land_CampingTable_F",[15150.1,17337.7,17.8432]];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [15150.1,17337.7,18.2548];
	_this setVectorDirAndUp [[0.672007,0.740544,0.000791933],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item19 = objNull;
if (_layer12) then {
	_item19 = createSimpleObject ["Land_CampingTable_F",[15148.1,17338.4,17.8273]];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [15148.1,17338.4,18.2388];
	_this setVectorDirAndUp [[-0.672698,-0.739904,-0.00439296],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item20 = objNull;
if (_layer12) then {
	_item20 = createVehicle ["Land_CratesShabby_F",[15153.6,17338.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [15153.6,17338.7,18.6113];
	_this setVectorDirAndUp [[0.893373,-0.449305,0.00297009],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer12) then {
	_item21 = createSimpleObject ["Land_WheelieBin_01_F",[15153.6,17339.5,17.8503]];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [15153.6,17339.5,18.3673];
	_this setVectorDirAndUp [[-0.449346,-0.893358,2.91935e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item22 = objNull;
if (_layer12) then {
	_item22 = createSimpleObject ["Land_WaterCooler_01_old_F",[15152.8,17338.4,17.8496]];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [15152.8,17338.4,18.5816];
	_this setVectorDirAndUp [[0.449401,0.89333,-2.73832e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item23 = objNull;
if (_layer12) then {
	_item23 = createVehicle ["Land_CratesPlastic_F",[15154.1,17337.9,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [15154.1,17337.9,18.0862];
	_this setVectorDirAndUp [[0.314002,-0.94942,0.00210233],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer12) then {
	_item24 = createVehicle ["Land_Garbage_square5_F",[15152.4,17337.1,0],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [15152.4,17337.1,17.8898];
	_this setVectorDirAndUp [[0.893373,-0.449305,0.00297009],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer12) then {
	_item25 = createSimpleObject ["Land_CampingTable_F",[15156.4,17333.8,17.8652]];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [15156.4,17333.8,18.2768];
	_this setVectorDirAndUp [[-0.549031,0.835798,-0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item26 = objNull;
if (_layer12) then {
	_item26 = createSimpleObject ["Land_BarrelTrash_grey_F",[15145.9,17335.2,17.8172]];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [15145.9,17335.2,18.222];
	_this setVectorDirAndUp [[0.893362,-0.44929,0.00655431],[-0.0053265,0.00399669,0.999978]];
	0 remoteExec ['setFeatureType', _this];
};

private _item27 = objNull;
if (_layer12) then {
	_item27 = createSimpleObject ["Land_CampingTable_F",[15156.8,17333.2,17.8671]];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [15156.8,17333.2,18.2787];
	_this setVectorDirAndUp [[0.549032,-0.835797,0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item28 = objNull;
if (_layer12) then {
	_item28 = createSimpleObject ["Land_CampingTable_F",[15155.2,17332.2,17.8639]];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [15155.2,17332.2,18.2754];
	_this setVectorDirAndUp [[0.549789,-0.835302,0.00145807],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item29 = objNull;
if (_layer12) then {
	_item29 = createSimpleObject ["Land_CampingTable_F",[15154.8,17332.8,17.8624]];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [15154.8,17332.8,18.274];
	_this setVectorDirAndUp [[-0.549031,0.835798,-0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item30 = objNull;
if (_layer12) then {
	_item30 = createVehicle ["Land_Garbage_square5_F",[15156.1,17332.1,0],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [15156.1,17332.1,17.9056];
	_this setVectorDirAndUp [[0.893373,-0.449309,0.00236927],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer12) then {
	_item31 = createSimpleObject ["Land_CampingChair_V2_F",[15148.6,17336.7,17.8333]];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [15148.6,17336.7,18.3398];
	_this setVectorDirAndUp [[-0.448689,-0.893685,-0.00239499],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item32 = objNull;
if (_layer12) then {
	_item32 = createSimpleObject ["Land_CampingChair_V2_F",[15148,17337.6,17.8273]];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [15148,17337.6,18.3338];
	_this setVectorDirAndUp [[-0.665214,-0.746641,-0.00432406],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item33 = objNull;
if (_layer12) then {
	_item33 = createSimpleObject ["Land_CampingChair_V2_F",[15147.1,17338.3,17.8189]];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [15147.1,17338.3,18.3254];
	_this setVectorDirAndUp [[0.97919,-0.202782,0.00810582],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item34 = objNull;
if (_layer12) then {
	_item34 = createSimpleObject ["Land_CampingChair_V2_F",[15149,17340.2,17.831]];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [15149,17340.2,18.3374];
	_this setVectorDirAndUp [[0.949397,0.314023,0.00592371],[-0.0080009,0.00532633,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item35 = objNull;
if (_layer12) then {
	_item35 = createSimpleObject ["Land_CampingChair_V2_F",[15150.8,17337.6,17.8453]];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [15150.8,17337.6,18.3517];
	_this setVectorDirAndUp [[0.665219,0.746648,0.000765771],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item36 = objNull;
if (_layer12) then {
	_item36 = createSimpleObject ["Land_CampingChair_V2_F",[15149.6,17339.3,17.8378]];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [15149.6,17339.3,18.3442];
	_this setVectorDirAndUp [[0.449372,0.893341,0.00240091],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item37 = objNull;
if (_layer12) then {
	_item37 = createSimpleObject ["Land_CampingChair_V2_F",[15150.4,17338.6,17.843]];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [15150.4,17338.6,18.3495];
	_this setVectorDirAndUp [[0.835856,0.548947,0.00148268],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item38 = objNull;
if (_layer12) then {
	_item38 = createSimpleObject ["Land_CampingChair_V2_F",[15156.6,17334.8,17.8644]];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [15156.6,17334.8,18.3709];
	_this setVectorDirAndUp [[0.202724,0.979236,-0.000771813],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item39 = objNull;
if (_layer12) then {
	_item39 = createSimpleObject ["Land_CampingChair_V2_F",[15157.5,17333,17.8692]];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [15157.5,17333,18.3757];
	_this setVectorDirAndUp [[0.746635,-0.665228,0.00286967],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item40 = objNull;
if (_layer12) then {
	_item40 = createSimpleObject ["Land_CampingChair_V2_F",[15149.3,17336,17.8401]];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [15149.3,17336,18.3465];
	_this setVectorDirAndUp [[-0.949413,-0.313947,-0.00717659],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item41 = objNull;
if (_layer12) then {
	_item41 = createSimpleObject ["Land_CampingChair_V2_F",[15154.7,17333.6,17.8611]];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [15154.7,17333.6,18.3676];
	_this setVectorDirAndUp [[0.44926,0.893401,-3.20573e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item42 = objNull;
if (_layer12) then {
	_item42 = createSimpleObject ["Land_CampingChair_V2_F",[15156.7,17332.3,17.8679]];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [15156.7,17332.3,18.3744];
	_this setVectorDirAndUp [[0.549045,-0.835791,0.0014561],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item43 = objNull;
if (_layer12) then {
	_item43 = createSimpleObject ["Land_CampingChair_V2_F",[15153.8,17331.6,17.8602]];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [15153.8,17331.6,18.3667];
	_this setVectorDirAndUp [[-0.893381,0.449293,-0.00236929],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item44 = objNull;
if (_layer12) then {
	_item44 = createSimpleObject ["Land_CampingChair_V2_F",[15155.1,17331.4,17.8636]];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [15155.1,17331.4,18.3701];
	_this setVectorDirAndUp [[0.549116,-0.835745,0.00145629],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item45 = objNull;
if (_layer12) then {
	_item45 = createSimpleObject ["Land_CampingChair_V2_F",[15153.9,17333.1,17.8597]];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [15153.9,17333.1,18.3662];
	_this setVectorDirAndUp [[-0.746689,0.665167,-0.00286973],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item46 = objNull;
if (_layer12) then {
	_item46 = createVehicle ["CamoNet_BLUFOR_open_F",[15152,17334.7,0],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [15152,17334.7,19.0203];
	_this setVectorDirAndUp [[0.691586,0.722293,0.000864022],[-0.0026529,0.0013439,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item47 = objNull;
if (_layer12) then {
	_item47 = createSimpleObject ["Land_Can_V1_F",[15149.3,17337,18.6537]];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [15149.3,17337,18.6937];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item48 = objNull;
if (_layer12) then {
	_item48 = createSimpleObject ["Land_Canteen_F",[15149.8,17336.7,18.6588]];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [15149.8,17336.7,18.7891];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item49 = objNull;
if (_layer12) then {
	_item49 = createSimpleObject ["Land_CerealsBox_F",[15148.8,17338.7,18.6478]];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [15148.8,17338.7,18.8063];
	_this setVectorDirAndUp [[-0.973222,-0.229744,-0.00747969],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item50 = objNull;
if (_layer12) then {
	_item50 = createSimpleObject ["Land_Tableware_01_fork_F",[15149.3,17338.8,18.6519]];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [15149.3,17338.8,18.6567];
	_this setVectorDirAndUp [[0.813442,0.581618,0.00573073],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item51 = objNull;
if (_layer12) then {
	_item51 = createSimpleObject ["Land_FoodContainer_01_F",[15155,17332.8,18.6786]];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [15155,17332.8,18.9064];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item52 = objNull;
if (_layer12) then {
	_item52 = createSimpleObject ["Land_Ketchup_01_F",[15155.2,17332.5,18.6795]];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [15155.2,17332.5,18.7826];
	_this setVectorDirAndUp [[0,1,0],[-0.00262947,0,0.999997]];
	0 remoteExec ['setFeatureType', _this];
};

private _item53 = objNull;
if (_layer12) then {
	_item53 = createVehicle ["Land_LampHalogen_F",[15132.1,17339.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [15132.1,17339.7,23.5835];
	_this setVectorDirAndUp [[-0.142908,-0.989736,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item54 = objNull;
if (_layer12) then {
	_item54 = createSimpleObject ["Land_LiquidDispenser_01_F",[15157,17334.1,18.6822]];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [15157,17334.1,19.057];
	_this setVectorDirAndUp [[0.854321,0.519743,0.0015707],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item55 = objNull;
if (_layer12) then {
	_item55 = createSimpleObject ["Land_Mustard_01_F",[15155.3,17332.6,18.6797]];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [15155.3,17332.6,18.7829];
	_this setVectorDirAndUp [[0,1,0],[-0.00262947,0,0.999997]];
	0 remoteExec ['setFeatureType', _this];
};

private _item56 = objNull;
if (_layer12) then {
	_item56 = createSimpleObject ["Land_Tableware_01_napkin_F",[15150.2,17337.9,18.6589]];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [15150.2,17337.9,18.6615];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item57 = objNull;
if (_layer12) then {
	_item57 = createSimpleObject ["Land_Tableware_01_cup_F",[15157.3,17333.9,18.6833]];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [15157.3,17333.9,18.7337];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item58 = objNull;
if (_layer12) then {
	_item58 = createSimpleObject ["Land_Tableware_01_tray_F",[15149.2,17338.7,18.6507]];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [15149.2,17338.7,18.6574];
	_this setVectorDirAndUp [[-0.63987,0.768459,-0.00614729],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item59 = objNull;
if (_layer12) then {
	_item59 = createVehicle ["Camp",[15170.4,17324.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [15170.4,17324.6,19.0292];
	_this setVectorDirAndUp [[-0.694171,0.719804,0.00287684],[0,-0.00399666,0.999992]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item60 = objNull;
if (_layer12) then {
	_item60 = createVehicle ["Camp",[15163.9,17317.9,0],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [15163.9,17317.9,19.0225];
	_this setVectorDirAndUp [[-0.660392,0.750921,0.000852947],[0.00129158,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item61 = objNull;
if (_layer12) then {
	_item61 = createVehicle ["Camp",[15154.4,17322.2,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [15154.4,17322.2,19.0269];
	_this setVectorDirAndUp [[0.727602,0.685998,0.000939969],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item62 = objNull;
if (_layer12) then {
	_item62 = createVehicle ["Camp",[15146.8,17330.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [15146.8,17330.4,18.9969];
	_this setVectorDirAndUp [[0.727593,0.686003,0.00295825],[-0.0053265,0.00133719,0.999985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item63 = objNull;
if (_layer12) then {
	_item63 = createVehicle ["Camp",[15145.5,17348.9,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [15145.5,17348.9,18.9236];
	_this setVectorDirAndUp [[0.712181,-0.701889,0.0122758],[-0.0106641,0.0066678,0.999921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item64 = objNull;
if (_layer12) then {
	_item64 = createVehicle ["Camp",[15138.9,17342.3,0],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [15138.9,17342.3,18.8648];
	_this setVectorDirAndUp [[0.71213,-0.701842,0.0170046],[-0.0159977,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item65 = objNull;
if (_layer12) then {
	_item65 = createSimpleObject ["Land_BottlePlastic_V2_F",[15150.2,17337.9,18.6589]];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [15150.2,17337.9,18.7897];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item66 = objNull;
if (_layer12) then {
	_item66 = createVehicle ["Land_WaterTank_03_F",[15152.5,17335.4,0],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [15152.5,17335.4,18.6474];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item67 = objNull;
if (_layer12) then {
	_item67 = createVehicle ["WaterTrail_01_Old_F",[15157.7,17334.5,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [15157.7,17334.5,17.8724];
	_this setVectorDirAndUp [[-0.855882,-0.517171,0.000668118],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item0 = objNull;
if (_layerRoot) then {
	_item0 = createVehicle ["Land_HelipadSquare_F",[15136.2,17287.5,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [15136.2,17287.5,17.7729];
	_this setVectorDirAndUp [[-0.712611,0.7014,0.0149417],[-0.00265204,-0.0239909,0.999709]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1 = objNull;
if (_layerRoot) then {
	_item1 = createVehicle ["Land_HelipadSquare_F",[15158.7,17266.1,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [15158.7,17266.1,17.9085];
	_this setVectorDirAndUp [[-0.720575,0.693377,-0.000895754],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item2 = objNull;
if (_layerRoot) then {
	_item2 = createVehicle ["PortableHelipadLight_01_blue_F",[15136.1,17295.5,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [15136.1,17295.5,17.9634];
	_this setVectorDirAndUp [[0,0.999996,0.00265199],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item3 = objNull;
if (_layerRoot) then {
	_item3 = createVehicle ["PortableHelipadLight_01_blue_F",[15144.1,17287.6,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [15144.1,17287.6,17.9172];
	_this setVectorDirAndUp [[0,0.999956,0.00932853],[-0.0093285,-0.00932813,0.999913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item4 = objNull;
if (_layerRoot) then {
	_item4 = createVehicle ["PortableHelipadLight_01_blue_F",[15136.2,17279.6,4.19617e-005],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [15136.2,17279.6,17.9279];
	_this setVectorDirAndUp [[0,0.999304,-0.0373063],[0.0306514,0.0372888,0.998834]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item5 = objNull;
if (_layerRoot) then {
	_item5 = createVehicle ["PortableHelipadLight_01_blue_F",[15128.2,17287.4,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [15128.2,17287.4,17.9174];
	_this setVectorDirAndUp [[0,0.999956,-0.0093285],[0.00532655,0.00932837,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item6 = objNull;
if (_layerRoot) then {
	_item6 = createVehicle ["PortableHelipadLight_01_green_F",[15136.4,17287.3,-1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [15136.4,17287.3,17.8785];
	_this setVectorDirAndUp [[0,0.999712,0.023991],[-0.00265204,-0.0239909,0.999709]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item7 = objNull;
if (_layerRoot) then {
	_item7 = createVehicle ["PortableHelipadLight_01_yellow_F",[15166.6,17266.3,0],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [15166.6,17266.3,18.0207];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item8 = objNull;
if (_layerRoot) then {
	_item8 = createVehicle ["PortableHelipadLight_01_yellow_F",[15158.5,17274.1,0],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [15158.5,17274.1,18.0099];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item9 = objNull;
if (_layerRoot) then {
	_item9 = createVehicle ["PortableHelipadLight_01_yellow_F",[15150.6,17266,0],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [15150.6,17266,18.0181];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item10 = objNull;
if (_layerRoot) then {
	_item10 = createVehicle ["PortableHelipadLight_01_yellow_F",[15158.9,17258.2,0],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [15158.9,17258.2,18.0207];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item11 = objNull;
if (_layerRoot) then {
	_item11 = createVehicle ["PortableHelipadLight_01_green_F",[15159,17265.8,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [15159,17265.8,18.0196];
	_this setVectorDirAndUp [[0.819687,-0.572811,0.000739998],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item85 = objNull;
if (_layerRoot) then {
	_item85 = createVehicle ["Land_BarGate_F",[15301.3,17528.9,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [15301.3,17528.9,20.7069];
	_this setVectorDirAndUp [[-0.713408,-0.700464,-0.0199829],[-0.0293173,0.00134333,0.999569]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item87 = objNull;
if (_layerRoot) then {
	_item87 = createVehicle ["Land_Cargo_Patrol_V1_F",[15323.1,17535.6,6.86646e-005],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [15323.1,17535.6,21.4615];
	_this setVectorDirAndUp [[-0.126062,-0.992022,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item88 = objNull;
if (_layerRoot) then {
	_item88 = createVehicle ["Land_New_WiredFence_5m_F",[15319,17535.9,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [15319,17535.9,17.6874];
	_this setVectorDirAndUp [[0.753463,-0.65749,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layerRoot) then {
	_item90 = createVehicle ["Land_GuardShed",[15295.4,17530.8,0],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [15295.4,17530.8,17.1861];
	_this setVectorDirAndUp [[-0.68727,-0.726402,-0.000757559],[-0.0053265,0.00399669,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layerRoot) then {
	_item91 = createVehicle ["Land_PortableLight_double_F",[15294.4,17534.6,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [15294.4,17534.6,17.6493];
	_this setVectorDirAndUp [[-0.873944,-0.486026,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item92 = objNull;
if (_layerRoot) then {
	_item92 = createVehicle ["Land_Sign_WarningMilitaryArea_F",[15305.9,17525.6,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [15305.9,17525.6,17.8666];
	_this setVectorDirAndUp [[-0.74395,-0.668235,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\signs_f\signm\data\signm_warningmilitaryarea_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item93 = objNull;
if (_layerRoot) then {
	_item93 = createVehicle ["CUP_sign_stop_new",[15296.7,17532.4,-2.16378],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [15296.7,17532.4,16.0448];
	_this setVectorDirAndUp [[-0.682527,-0.73086,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item95 = objNull;
if (_layerRoot) then {
	_item95 = _item94 createUnit ["rhsusf_army_ocp_rifleman_m16",[15219.4,17303.2,0],[],0,"CAN_COLLIDE"];
	_item94 selectLeader _item95;
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [15219.4,17303.2,17.9749];
	_this setVectorDirAndUp [[0.992134,0.125177,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["VSM_OCP_Crye_SS_tan_pants_Camo",[]],["rhsusf_spcs_ucp",[]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Max Coburn";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male12ENG";;
	_this setpitch 0.95;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item96 = objNull;
if (_layerRoot) then {
	_item96 = _item94 createUnit ["rhsusf_army_ocp_rifleman",[15221.1,17303.7,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [15221.1,17303.7,17.9778];
	_this setVectorDirAndUp [[-0.945587,-0.32537,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"H_Cap_oli","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Henry Watson";;
	_this setface "Barklem";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item97 = objNull;
if (_layerRoot) then {
	_item97 = _item94 createUnit ["rhsusf_army_ocp_rifleman",[15165.7,17369.2,4.145],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [15165.7,17369.2,22.0473];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Liam Campbell";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH2",["inbasemoves_patrolling2"],false,false] # 0 isEqualTo '') then      {        ["WATCH2",["inbasemoves_patrolling2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item98 = objNull;
if (_layerRoot) then {
	_item98 = _item94 createUnit ["B_Soldier_F",[15295.2,17532.3,0],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [15295.2,17532.4,16.5766];
	_this setVectorDirAndUp [[0.941339,0.337461,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4","","acc_pointer_IR","optic_Aco",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["rhs_uniform_acu_oefcp",[["FirstAidKit",1]]],["V_Safety_yellow_F",[]],[],"rhsusf_ach_helmet_headset_ocp","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Joseph Wilson";;
	_this setface "AfricanHead_02";;
	_this setspeaker "Male08ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["LEAN",["inbasemoves_lean1"],false,true] # 0 isEqualTo '') then      {        ["LEAN",["inbasemoves_lean1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item100 = objNull;
if (_layerRoot) then {
	_item100 = _item94 createUnit ["B_soldier_repair_F",[15210.9,17458.7,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [15210.9,17458.7,17.1206];
	_this setVectorDirAndUp [[0.638114,-0.769942,0],[0,0,1]];
	_this setUnitLoadout [[],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["rhs_uniform_acu_oefcp",[]],["V_Safety_orange_F",[]],["B_AssaultPack_rgr_Repair",[]],"H_Construction_basic_orange_F","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Keith Morgan";;
	_this setface "WhiteHead_09";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] # 0 isEqualTo '') then      {        ["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', true];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(1 == ([0, 1] select (_this getUnitTrait 'engineer')) || {1 == -1}) then {_this setVariable ['s', 1, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item101 = objNull;
if (_layerRoot) then {
	_item101 = _item94 createUnit ["B_Soldier_unarmed_F",[15212.1,17457.4,0],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [15212.1,17457.4,17.1417];
	_this setVectorDirAndUp [[-0.711769,0.702414,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1]]],["V_Safety_orange_F",[]],[],"rhsusf_cvc_green_ess","rhs_googles_black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Lewis Smith";;
	_this setface "WhiteHead_21";;
	_this setspeaker "Male04ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item102 = objNull;
if (_layerRoot) then {
	_item102 = _item94 createUnit ["rhsusf_army_ocp_rifleman_m4",[15187.2,17525,4.35],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [15187.2,17525,19.7565];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Fred Robinson";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item103 = objNull;
if (_layerRoot) then {
	_item103 = _item94 createUnit ["B_Soldier_lite_F",[15148.6,17336.8,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [15148.6,17336.8,17.8348];
	_this setVectorDirAndUp [[0.472971,0.881078,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["VSM_OCP_Crye_SS_grey_pants_Camo",[]],[],[],"","rhs_googles_black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Aaron Santorum";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male01ENG";;
	_this setpitch 1.03;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U3",["hubsittingchairuc_idle1","hubsittingchairuc_idle2","hubsittingchairuc_idle3","hubsittingchairuc_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U3",["hubsittingchairuc_idle1","hubsittingchairuc_idle2","hubsittingchairuc_idle3","hubsittingchairuc_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item104 = objNull;
if (_layerRoot) then {
	_item104 = _item94 createUnit ["B_Soldier_lite_F",[15150.3,17338.5,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [15150.3,17338.5,17.8443];
	_this setVectorDirAndUp [[-0.74672,-0.665139,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["VSM_OCP_Crye_SS_grey_shirt_Camo",[]],[],[],"H_Cap_usblack","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Benjamin Ryan";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U1",["hubsittingchairua_idle1","hubsittingchairua_idle2","hubsittingchairua_idle3","hubsittingchairua_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U1",["hubsittingchairua_idle1","hubsittingchairua_idle2","hubsittingchairua_idle3","hubsittingchairua_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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
	_item105 = createVehicle ["Land_LampHalogen_F",[15239.8,17323,-2.86102e-005],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [15239.8,17323,23.9894];
	_this setVectorDirAndUp [[0.181383,0.983413,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item106 = objNull;
if (_layerRoot) then {
	_item106 = createVehicle ["Land_LampHalogen_F",[15193.9,17276,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [15193.9,17276,23.9154];
	_this setVectorDirAndUp [[0.99211,0.125367,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item107 = objNull;
if (_layerRoot) then {
	_item107 = createVehicle ["Land_LampHalogen_F",[15182.5,17387,0.000137329],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [15182.5,17387,23.899];
	_this setVectorDirAndUp [[-0.986538,-0.163534,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item108 = objNull;
if (_layerRoot) then {
	_item108 = createVehicle ["Land_LampHalogen_F",[15116.7,17328.3,0.000335693],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [15116.7,17328.3,23.4271];
	_this setVectorDirAndUp [[-0.976489,-0.215566,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item110 = objNull;
if (_layerRoot) then {
	_item110 = _item109 createUnit ["rhsusf_army_ocp_helipilot",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_item109 selectLeader _item110;
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [15163,17263.1,19.3941];
	_this setVectorDirAndUp [[-0.240837,-0.970566,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Adam Murphy";;
	_this setface "WhiteHead_19";;
	_this setspeaker "male10eng";;
	_this setpitch 1.01362;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item111 = objNull;
if (_layerRoot) then {
	_item111 = _item109 createUnit ["rhsusf_army_ocp_helipilot",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [15163.5,17264,19.3934];
	_this setVectorDirAndUp [[0.737285,0.675582,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Oliver Abbey";;
	_this setface "AfricanHead_02";;
	_this setspeaker "male10eng";;
	_this setpitch 1.0011;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item112 = objNull;
if (_layerRoot) then {
	_item112 = _item109 createUnit ["rhsusf_army_ocp_helicrew",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [15162.6,17264.7,19.6514];
	_this setVectorDirAndUp [[0.405127,0.914261,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Chad Clarke";;
	_this setface "Barklem";;
	_this setspeaker "male10eng";;
	_this setpitch 0.980079;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item113 = objNull;
if (_layerRoot) then {
	_item113 = _item109 createUnit ["rhsusf_army_ocp_helicrew",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [15161.9,17263.3,19.6345];
	_this setVectorDirAndUp [[-0.515018,-0.857179,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Samuel Young";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male07eng";;
	_this setpitch 0.963306;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item191 = objNull;
if (_layerRoot) then {
	_item191 = createVehicle ["RHS_UH60M_d",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [15159.2,17265.7,20.7029];
	_this setVectorDirAndUp [[0.876987,-0.480514,0.000620605],[0,0.00129154,0.999999]];
	_this setPylonLoadout [1,"rhsusf_M130_CMFlare_Chaff_Magazine_x2"];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit"",""Medikit""],[2,10,2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,4,2,2,4]],[[],[]],[[""B_Parachute""],[4]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVehicleReportOwnPosition true;
	parseSimpleArray "[[""hithull"",""hitengine1"",""hitengine2"",""hitengine"",""hittail"",""hitvrotor"",""hithrotor"",""hitwinch"",""hitglass7"",""hithydraulics"",""hittransmission"",""hithstabilizerl1"",""hithstabilizerr1"",""hitpylon1"",""hitpylon2"",""hitpylon3"",""hitpylon4"",""hitfuel"",""hitavionics"",""hitmissiles"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitrglass"",""hitlglass"",""hitengine3"",""hitlight"",""hitgear"",""hitvstabilizer1"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""#p svetlo"",""#l svetlo"",""#cabin_light"",""#cargo_light_1"",""#cargo_light_2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	[_this] call ace_fastroping_fnc_equipFRIES;
};

private _item114 = objNull;
if (_layerRoot) then {
	_item114 = createVehicle ["Land_New_WiredFence_5m_F",[15191.5,17538.2,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [15191.5,17538.2,16.7624];
	_this setVectorDirAndUp [[0.641608,0.767033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layerRoot) then {
	_item115 = createVehicle ["Land_New_WiredFence_5m_F",[15180.8,17539.9,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [15180.8,17539.9,16.7591];
	_this setVectorDirAndUp [[0.713736,-0.700415,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layerRoot) then {
	_item116 = createVehicle ["Land_New_WiredFence_5m_F",[15187.6,17541.5,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [15187.6,17541.5,16.8122];
	_this setVectorDirAndUp [[0.641608,0.767033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layerRoot) then {
	_item117 = createVehicle ["Land_RepairDepot_01_civ_F",[15060,17317.3,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [15060,17317.3,19.5616];
	_this setVectorDirAndUp [[-0.730699,0.682598,-0.0118314],[0,0.0173303,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item118 = objNull;
if (_layerRoot) then {
	_item118 = createSimpleObject ["Land_Pallets_stack_F",[15053.6,17317.8,17.0326]];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [15053.6,17317.8,17.4616];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146643,0.0466113,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item119 = objNull;
if (_layerRoot) then {
	_item119 = createSimpleObject ["Land_DrillAku_F",[15053.3,17317.4,17.9269]];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [15053.3,17317.4,18.0688];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item120 = objNull;
if (_layerRoot) then {
	_item120 = createVehicle ["ACE_Wheel",[15053.9,17317.9,0.881086],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [15053.9,17317.9,18.0702];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item121 = objNull;
if (_layerRoot) then {
	_item121 = createVehicle ["ACE_Wheel",[15054.6,17318,0.260969],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [15054.6,17318,17.4548];
	_this setVectorDirAndUp [[-0.0797611,0.986334,0.144163],[0.974348,0.0466124,0.220165]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item122 = objNull;
if (_layerRoot) then {
	_item122 = createSimpleObject ["Land_Wrench_F",[15053.2,17317.3,17.9306]];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [15053.2,17317.3,17.9331];
	_this setVectorDirAndUp [[0.770311,-0.636347,0.0410186],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item123 = objNull;
if (_layerRoot) then {
	_item123 = createSimpleObject ["Land_RefuelingHose_01_F",[15058.9,17296.5,17.3275]];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [15058.9,17296.5,17.4077];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0.00133688,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item124 = objNull;
if (_layerRoot) then {
	_item124 = createSimpleObject ["Land_CanisterFuel_F",[15058.7,17295.9,17.3288]];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [15058.7,17295.9,17.6023];
	_this setVectorDirAndUp [[0,0.999999,-0.00129187],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item125 = objNull;
if (_layerRoot) then {
	_item125 = createVehicle ["B_Slingload_01_Fuel_F",[15055.1,17297.1,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [15055.1,17297.1,18.6897];
	_this setVectorDirAndUp [[0.72122,-0.692706,0.000894887],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item126 = objNull;
if (_layerRoot) then {
	_item126 = createVehicle ["Oil_Spill_F",[15059,17297,0],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [15059,17297,17.3261];
	_this setVectorDirAndUp [[0,0.999996,-0.0026529],[0.00134403,0.00265289,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layerRoot) then {
	_item127 = createVehicle ["Box_NATO_AmmoVeh_F",[15047.4,17304.5,0],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [15047.4,17304.5,18.0467];
	_this setVectorDirAndUp [[0.671275,0.740732,-0.0265764],[0.00133688,0.0346455,0.999399]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item128 = objNull;
if (_layerRoot) then {
	_item128 = createVehicle ["B_Quadbike_01_F",[15043.3,17314.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [15043.2,17314.7,18.4627];
	_this setVectorDirAndUp [[0.743046,-0.667544,0.0476227],[-0.0293202,0.0386199,0.998824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitengine"",""hitfuel"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitrglass"",""hitlglass"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
};

private _item141 = objNull;
if (_layerRoot) then {
	_item141 = createVehicle ["PortableHelipadLight_01_red_F",[15282.8,17417.3,-5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [15282.8,17417.3,17.899];
	_this setVectorDirAndUp [[0,0.999986,-0.0053265],[0.00932853,0.00532627,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item142 = objNull;
if (_layerRoot) then {
	_item142 = createVehicle ["PortableHelipadLight_01_red_F",[15290.5,17409.9,1.90735e-005],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [15290.5,17409.9,17.8503];
	_this setVectorDirAndUp [[0,0.999968,-0.00799344],[0.0146639,0.00799259,0.999861]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item143 = objNull;
if (_layerRoot) then {
	_item143 = createVehicle ["PortableHelipadLight_01_red_F",[15282.8,17402,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [15282.8,17402,17.9739];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item144 = objNull;
if (_layerRoot) then {
	_item144 = createVehicle ["PortableHelipadLight_01_red_F",[15275,17409.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [15275,17409.7,17.9845];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item145 = objNull;
if (_layerRoot) then {
	_item145 = createVehicle ["PortableHelipadLight_01_yellow_F",[15282.9,17409.7,2.09808e-005],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [15282.9,17409.7,17.943];
	_this setVectorDirAndUp [[0,0.999978,-0.00666818],[0.00800059,0.00666796,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item148 = objNull;
if (_layerRoot) then {
	_item148 = createVehicle ["Desk",[15214.8,17337.3,0.582422],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [15214.8,17337.3,18.9624];
	_this setVectorDirAndUp [[0.697416,-0.716666,-0.000481416],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layerRoot) then {
	_item149 = createSimpleObject ["Land_OfficeCabinet_01_F",[15220,17335.7,18.5513]];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [15220,17335.7,19.3318];
	_this setVectorDirAndUp [[0.750048,0.661383,-0.000517747],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item150 = objNull;
if (_layerRoot) then {
	_item150 = createSimpleObject ["Land_OfficeChair_01_F",[15215.8,17336.5,18.5544]];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [15215.8,17336.5,19.2289];
	_this setVectorDirAndUp [[0.900738,-0.434362,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item151 = objNull;
if (_layerRoot) then {
	_item151 = createVehicle ["Land_MapBoard_01_Wall_F",[15206.2,17325.7,2.15606],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [15206.2,17325.7,20.6632];
	_this setVectorDirAndUp [[-0.721387,-0.692532,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item152 = objNull;
if (_layerRoot) then {
	_item152 = createSimpleObject ["MapBoard_seismic_F",[15213.9,17341.3,18.5491]];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [15213.9,17341.3,19.518];
	_this setVectorDirAndUp [[0.464438,0.885605,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f_epc\civ\infoboards\data\mapboard_seismic_co.paa"];
};

private _item153 = objNull;
if (_layerRoot) then {
	_item153 = createVehicle ["Land_CampingChair_V2_white_F",[15221.1,17328.5,0.560953],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [15221.1,17328.5,19.057];
	_this setVectorDirAndUp [[-0.71093,-0.703262,0.000490922],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item154 = objNull;
if (_layerRoot) then {
	_item154 = createVehicle ["Land_CampingChair_V2_white_F",[15220.3,17329.3,0.563667],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [15220.3,17329.3,19.0576];
	_this setVectorDirAndUp [[-0.838641,-0.544684,0.00057911],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item155 = objNull;
if (_layerRoot) then {
	_item155 = createVehicle ["Land_GymRack_03_F",[15224.5,17316.3,0.550093],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [15224.5,17316.3,19.1306];
	_this setVectorDirAndUp [[0.696921,-0.717148,-0.000481074],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layerRoot) then {
	_item156 = createVehicle ["Land_GymBench_01_F",[15222.8,17314.8,0.555876],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [15222.8,17314.8,19.1386];
	_this setVectorDirAndUp [[0.677791,-0.735255,-0.000467869],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layerRoot) then {
	_item157 = createSimpleObject ["Fridge_01_closed_F",[15216.2,17321.6,18.5543]];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [15216.2,17321.6,19.0728];
	_this setVectorDirAndUp [[0.675017,-0.737802,-0.000465955],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item158 = objNull;
if (_layerRoot) then {
	_item158 = createSimpleObject ["Land_WaterCooler_01_new_F",[15215.6,17320.9,18.5548]];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [15215.6,17320.9,19.2869];
	_this setVectorDirAndUp [[0.675013,-0.737805,-0.000465952],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item159 = objNull;
if (_layerRoot) then {
	_item159 = createSimpleObject ["Land_PCSet_01_screen_F",[15214.6,17337.2,19.3764]];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [15214.6,17337.2,19.6311];
	_this setVectorDirAndUp [[-0.908626,0.417584,0.00468656],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item160 = objNull;
if (_layerRoot) then {
	_item160 = createSimpleObject ["Land_PCSet_01_screen_F",[15215,17337.6,19.378]];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [15215,17337.6,19.6326];
	_this setVectorDirAndUp [[-0.461859,0.886953,0.000318814],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item161 = objNull;
if (_layerRoot) then {
	_item161 = createSimpleObject ["Land_PCSet_01_keyboard_F",[15215,17337.2,19.378]];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [15215,17337.2,19.3859];
	_this setVectorDirAndUp [[-0.690211,0.72357,0.00743816],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item162 = objNull;
if (_layerRoot) then {
	_item162 = createSimpleObject ["Land_PCSet_01_mouse_F",[15215.3,17337.5,19.3777]];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [15215.3,17337.5,19.403];
	_this setVectorDirAndUp [[-0.656072,0.754698,0.000452877],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item163 = objNull;
if (_layerRoot) then {
	_item163 = createVehicle ["Desk",[15214.2,17338.1,0.584808],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [15214.2,17338.1,18.9629];
	_this setVectorDirAndUp [[-0.665593,0.746315,0.000459449],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layerRoot) then {
	_item164 = createSimpleObject ["Land_OfficeChair_01_F",[15213.5,17338.7,18.5247]];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [15213.5,17338.7,19.1991];
	_this setVectorDirAndUp [[-0.646559,0.762864,0.00044631],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item165 = objNull;
if (_layerRoot) then {
	_item165 = createSimpleObject ["Land_PCSet_01_screen_F",[15214.4,17338.3,19.3783]];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [15214.4,17338.3,19.633];
	_this setVectorDirAndUp [[0.889608,-0.456712,0.00348723],[0.000976388,0.00953701,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item166 = objNull;
if (_layerRoot) then {
	_item166 = createSimpleObject ["Land_PCSet_01_screen_F",[15214,17337.9,19.3774]];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [15214,17337.9,19.6321];
	_this setVectorDirAndUp [[0.422854,-0.906198,-0.00029189],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item167 = objNull;
if (_layerRoot) then {
	_item167 = createSimpleObject ["Land_PCSet_01_keyboard_F",[15214,17338.3,19.3777]];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [15214,17338.3,19.3857];
	_this setVectorDirAndUp [[0.658093,-0.752908,0.00653824],[0.000976388,0.00953701,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item168 = objNull;
if (_layerRoot) then {
	_item168 = createSimpleObject ["Land_PCSet_01_mouse_F",[15213.6,17338,19.3756]];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [15213.6,17338,19.4008];
	_this setVectorDirAndUp [[0.622635,-0.782512,-0.000429796],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item169 = objNull;
if (_layerRoot) then {
	_item169 = createVehicle ["Desk",[15207.3,17328.9,0.59997],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [15207.3,17328.9,18.9682];
	_this setVectorDirAndUp [[0.697416,-0.716666,-0.000481416],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layerRoot) then {
	_item170 = createSimpleObject ["Land_OfficeChair_01_F",[15207.9,17328.3,18.5463]];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [15207.9,17328.3,19.2207];
	_this setVectorDirAndUp [[0.724052,-0.689745,-0.000499803],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item171 = objNull;
if (_layerRoot) then {
	_item171 = createVehicle ["Land_Laptop_unfolded_F",[15207.4,17328.8,1.4194],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [15207.4,17328.8,19.5369];
	_this setVectorDirAndUp [[0.703705,-0.710454,-0.00740374],[0.00556687,-0.00490686,0.999972]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"];
};

private _item172 = objNull;
if (_layerRoot) then {
	_item172 = createSimpleObject ["Land_Document_01_F",[15207.1,17328.6,19.3838]];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [15207.1,17328.6,19.3891];
	_this setVectorDirAndUp [[-0.784175,0.620506,0.00652709],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item173 = objNull;
if (_layerRoot) then {
	_item173 = createSimpleObject ["Land_File1_F",[15207.7,17329.3,19.3836]];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [15207.7,17329.3,19.3922];
	_this setVectorDirAndUp [[-0.552097,0.83378,0.000381105],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item174 = objNull;
if (_layerRoot) then {
	_item174 = createSimpleObject ["Land_PencilYellow_F",[15208,17329.2,19.3835]];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [15208,17329.2,19.3876];
	_this setVectorDirAndUp [[0,1,0],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item176 = objNull;
if (_layerRoot) then {
	_item176 = _item175 createUnit ["B_officer_F",[15207.9,17328.4,0.613001],[],0,"CAN_COLLIDE"];
	_item175 selectLeader _item176;
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [15207.9,17328.4,18.5772];
	_this setVectorDirAndUp [[-0.783867,0.620929,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_abu",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Callum Robinson";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_AT_TABLE",["hubsittingattableu_idle1","hubsittingattableu_idle2","hubsittingattableu_idle3"],false,true] # 0 isEqualTo '') then      {        ["SIT_AT_TABLE",["hubsittingattableu_idle1","hubsittingattableu_idle2","hubsittingattableu_idle3"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item177 = objNull;
if (_layerRoot) then {
	_item177 = _item175 createUnit ["B_officer_F",[15213.5,17339.5,0.587999],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [15213.5,17339.5,18.5586];
	_this setVectorDirAndUp [[0.678942,-0.734192,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_abu",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Henry Clarke";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male04ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] # 0 isEqualTo '') then      {        ["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item178 = objNull;
if (_layerRoot) then {
	_item178 = _item175 createUnit ["B_officer_F",[15213.5,17338.6,0.642],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [15213.5,17338.7,18.6129];
	_this setVectorDirAndUp [[0.774161,-0.632989,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_abu",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Montgomery Cooper";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.99;;
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

private _item179 = objNull;
if (_layerRoot) then {
	_item179 = _item175 createUnit ["B_officer_F",[15218.8,17315.5,0.563248],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [15218.8,17315.6,18.5538];
	_this setVectorDirAndUp [[-0.854894,-0.518803,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_ocp",[]],[],[],"rhsusf_patrolcap_ocp","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Nathan Morgan";;
	_this setface "AfricanHead_02";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_IDLE",["Acts_CivilIdle_1","Acts_CivilIdle_2"],false,true] # 0 isEqualTo '') then      {        ["STAND_IDLE",["Acts_CivilIdle_1","Acts_CivilIdle_2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item180 = objNull;
if (_layerRoot) then {
	_item180 = createVehicle ["Land_MapBoard_01_Wall_Altis_F",[15222.9,17333.1,1.76247],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [15222.9,17333.1,20.3012];
	_this setVectorDirAndUp [[0.74264,0.669691,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_altis_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item181 = objNull;
if (_layerRoot) then {
	_item181 = createSimpleObject ["Land_PortableCabinet_01_bookcase_sand_F",[15220.6,17335.1,18.5509]];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [15220.6,17335.1,18.9689];
	_this setVectorDirAndUp [[0.758414,0.651773,-0.000523522],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [1,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [2,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [3,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [4,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [5,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [6,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [7,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [8,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [9,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
};

private _item187 = objNull;
if (_layerRoot) then {
	_item187 = createVehicle ["Land_PaperBox_closed_F",[15194.7,17285.7,0.0399895],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [15194.7,17285.7,18.6227];
	_this setVectorDirAndUp [[-0.699657,-0.714478,-0.000903868],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item189 = objNull;
if (_layerRoot) then {
	_item189 = createVehicle ["CUP_vending_machine",[15217.1,17314.8,0.56875],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [15217.1,17314.8,19.5951];
	_this setVectorDirAndUp [[-0.751712,-0.659492,0.000518896],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item192 = objNull;
if (_layerRoot) then {
	_item192 = createVehicle ["rhsusf_m1240a1_m240_usarmy_d",[15168.3,17306.1,-7.43866e-005],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [15168.3,17306.2,20.747];
	_this setVectorDirAndUp [[0.709621,-0.704553,0.00657271],[0,0.0093285,0.999956]];
	[_this,"rhs_desert"] call bis_fnc_initVehicle;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""rhs_weap_M136_hedp""],[2,2]],[[""rhs_m136_hedp_mag"",""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhsusf_100Rnd_556x45_soft_pouch"",""rhs_mag_M441_HE"",""rhs_mag_m714_White"",""rhs_mag_m662_red"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[2,20,8,16,4,2,4,2,2,4]],[[""FirstAidKit"",""ToolKit""],[4,1]],[[""rhsusf_falconii""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	if (local _this) then {if (isSimpleObject _this) then {_this setVariable ['bis_fnc_initVehicle_customization',[[],["hide_ogpkover",0,"hide_ogpknet",0,"hide_ogpkbust",0,"hide_rhino",1,"DoorLF",0,"DoorRF",0,"DoorLB",0,"DoorRB",0,"DUKE_Hide",0,"hide_spare",0]]]} else {([_this] + [[],["hide_ogpkover",0,"hide_ogpknet",0,"hide_ogpkbust",0,"hide_rhino",1,"DoorLF",0,"DoorRF",0,"DoorLB",0,"DoorRB",0,"DUKE_Hide",0,"hide_spare",0]] + [true]) call (uinamespace getvariable 'bis_fnc_initVehicle');};};;
	_this setVehicleReportRemoteTargets true;
	_this setVehicleReceiveRemoteTargets true;
	_this setVehicleReportOwnPosition true;
	parseSimpleArray "[[""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitglass15"",""hit_rhino"",""hithull"",""hitfuel"",""hitengine"",""hitduke1"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
	_this animateDoor ['rhino',0,true];
};

private _item193 = objNull;
if (_layerRoot) then {
	_item193 = createVehicle ["rhsusf_m1025_d",[15178.9,17318.4,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [15178.9,17318.4,19.833];
	_this setVectorDirAndUp [[0.677332,-0.735676,0.00157643],[-0.00666818,-0.00399657,0.99997]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""rhs_weap_M136_hedp""],[2,2]],[[""rhs_m136_hedp_mag"",""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhsusf_100Rnd_556x45_soft_pouch"",""rhs_mag_M441_HE"",""rhs_mag_m714_White"",""rhs_mag_m662_red"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[2,20,8,16,4,2,4,2,2,4]],[[""FirstAidKit""],[4]],[[""rhsusf_falconii""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitwindshield_1"",""hitwindshield_2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitfuel"",""hitlfwheel"",""hitrfwheel"",""hitlf2wheel"",""hitrf2wheel"",""hitengine"",""hithull"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_2"",""#light_hd_1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
	if(0 != 'NoChange')then{ [_this,'unitdecals_1',0] call rhs_fnc_hmmwv_setDecal};
	if(0 != 'NoChange')then{ [_this,'unitdecals_2',0] call rhs_fnc_hmmwv_setDecal};
	_this animate ['hide_CIP',0,true];
	_this animate ['hide_BFT',0,true];
	_this animate ['hide_Antenna',0,true];
	_this animate ['hide_A2_Parts',0,true];
	_this animateDoor ['Door_LF',0,true];
	_this animateDoor ['ani_window_1',0,true];
	_this animateDoor ['Door_RF',0,true];
	_this animateDoor ['ani_window_2',0,true];
	_this animateDoor ['Door_LB',0,true];
	_this animateDoor ['ani_window_3',0,true];
	_this animateDoor ['Door_RB',0,true];
	_this animateDoor ['ani_window_4',0,true];
	_this animate ['ani_trunk_1',0,true];
};

private _item194 = objNull;
if (_layerRoot) then {
	_item194 = createVehicle ["CampEast",[15194.5,17288.4,0],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [15194.5,17288.4,19.2912];
	_this setVectorDirAndUp [[0.709287,-0.704919,0.000916076],[-0.00129154,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item195 = objNull;
if (_layerRoot) then {
	_item195 = createVehicle ["Land_Pallet_MilBoxes_F",[15197.2,17288.1,0.0428505],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [15197.2,17288.1,18.433];
	_this setVectorDirAndUp [[0.710492,0.703705,0.000917864],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (!is3DEN) then {[_this, +[["arifle_MX_F","arifle_MX_Black_F","arifle_MX_GL_F","arifle_MX_GL_Black_F","arifle_MX_SW_F","arifle_MX_SW_Black_F","arifle_MXC_F","arifle_MXC_Black_F","arifle_MXM_F","arifle_MXM_Black_F","SMG_01_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_snd_F","arifle_SPAR_01_GL_blk_F","arifle_SPAR_01_GL_snd_F","arifle_SPAR_02_blk_F","arifle_SPAR_02_snd_F","arifle_SPAR_03_blk_F","arifle_SPAR_03_snd_F","MMG_02_black_F","MMG_02_camo_F","MMG_02_sand_F","srifle_EBR_F","srifle_DMR_03_tan_F","srifle_DMR_03_F","launch_NLAW_F","launch_MRAWS_sand_F","rhs_weap_M136_hedp","rhs_weap_M136","rhs_weap_M136_hp","hgun_P07_F","optic_Holosight_blk_F","optic_Holosight","ACE_optic_Hamr_2D","ACE_optic_Hamr_PIP","optic_Hamr","acc_flashlight","acc_flashlight_smg_01","acc_pointer_IR","ACE_acc_pointer_green","muzzle_snds_H","muzzle_snds_H_khk_F","muzzle_snds_H_snd_F","muzzle_snds_65_TI_blk_F","muzzle_snds_65_TI_hex_F","muzzle_snds_65_TI_ghex_F","ACE_muzzle_mzls_H","muzzle_snds_H_MG","muzzle_snds_H_MG_blk_F","muzzle_snds_H_MG_khk_F","muzzle_snds_acp","ACE_muzzle_mzls_smg_01","muzzle_snds_M","muzzle_snds_m_khk_F","muzzle_snds_m_snd_F","ACE_muzzle_mzls_L","muzzle_snds_B","muzzle_snds_B_khk_F","muzzle_snds_B_snd_F","muzzle_snds_B_arid_F","muzzle_snds_B_lush_F","ACE_muzzle_mzls_B","muzzle_snds_338_black","muzzle_snds_338_green","muzzle_snds_338_sand","ACE_muzzle_mzls_338","muzzle_snds_L","ACE_muzzle_mzls_smg_02","bipod_01_F_blk","bipod_01_F_snd","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_mag_Tracer","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_black_mag","100Rnd_65x39_caseless_mag_Tracer","100Rnd_65x39_caseless_black_mag_tracer","1Rnd_HE_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","rhs_mag_m4009","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green","30Rnd_45ACP_Mag_SMG_01_Tracer_Red","30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Sand_red","30Rnd_556x45_Stanag_Sand_Tracer_Red","150Rnd_556x45_Drum_Mag_F","150Rnd_556x45_Drum_Mag_Tracer_F","150Rnd_556x45_Drum_Sand_Mag_F","150Rnd_556x45_Drum_Sand_Mag_Tracer_F","20Rnd_762x51_Mag","130Rnd_338_Mag","10Rnd_Mk14_762x51_Mag","MRAWS_HEAT_F","MRAWS_HE_F","MRAWS_HEAT55_F","16Rnd_9x21_Mag","16Rnd_9x21_red_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Red_Mag","30Rnd_65x39_caseless_black_mag_Tracer","ACE_SpareBarrel","H_HelmetB_light","H_HelmetB_light_black","H_HelmetB_light_desert","H_HelmetB_light_grass","H_HelmetB_light_sand","H_HelmetB_light_snakeskin","H_HelmetSpecB","H_HelmetSpecB_blk","H_HelmetSpecB_paint2","H_HelmetSpecB_paint1","H_HelmetSpecB_sand","H_HelmetSpecB_snakeskin","H_HelmetB","H_HelmetB_black","H_HelmetB_camo","H_HelmetB_desert","H_HelmetB_grass","H_HelmetB_sand","H_HelmetB_snakeskin","rhsusf_bowman_cap","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam","V_TacVest_oli","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrierGL_rgr","V_PlateCarrierSpec_rgr","V_PlateCarrierSpec_mtp","V_Chestrig_rgr","B_Kitbag_rgr","B_Kitbag_mcamo","B_FieldPack_green_F","B_Carryall_mcamo","B_Carryall_green_F","B_AssaultPack_rgr","B_AssaultPack_mcamo","rhs_googles_black","rhs_googles_clear","rhs_googles_yellow","rhs_googles_orange","rhs_ess_black","G_Tactical_Clear","G_Tactical_Black","rhsusf_oakley_goggles_ylw","rhsusf_oakley_goggles_clr","rhsusf_oakley_goggles_blk","rhsusf_ANPVS_15","NVGoggles","Binocular","ACE_VectorDay","ACE_Vector","ItemMap","ItemCompass","ItemWatch","ACE_Altimeter","Chemlight_blue","Chemlight_green","ACE_Chemlight_Orange","Chemlight_red","ACE_Chemlight_IR","ACE_Chemlight_White","Chemlight_yellow","B_IR_Grenade","ACE_HandFlare_Yellow","ACE_HandFlare_Red","ACE_HandFlare_White","ACE_HandFlare_Green","HandGrenade","SmokeShellYellow","SmokeShellRed","SmokeShellPurple","SmokeShellOrange","SmokeShellGreen","SmokeShellBlue","ACE_M84","DemoCharge_Remote_Mag","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_bodyBag","ACE_CableTie","ACE_DefusalKit","ACE_EarPlugs","ACE_DAGR","ACE_EntrenchingTool","ACE_epinephrine","ACE_Kestrel4500","ACE_Clacker","ACE_Flashlight_XL50","ACE_MapTools","ACE_microDAGR","ACE_morphine","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_RangeCard","ACE_rope12","ACE_rope15","ACE_rope18","ACE_rope27","ACE_rope36","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_Sandbag_empty","ACE_splint","ACE_SpottingScope","ACE_SpraypaintBlack","ACE_SpraypaintGreen","ACE_SpraypaintBlue","ACE_SpraypaintRed","ACE_Tripod","ACE_surgicalKit","ToolKit","ACE_tourniquet","ACE_UAVBattery","ACE_wirecutter","ACE_ATragMX","ACE_adenosine","ACE_artilleryTable","ACE_RangeTable_82mm","TFAR_anprc152","TFAR_rf7800str","TFAR_rt1523g_green","TFAR_rt1523g","TFAR_rt1523g_big_rhs","B_RadioBag_01_mtp_F"],0]] call ace_arsenal_fnc_attributeInit};
};

private _item197 = objNull;
if (_layerRoot) then {
	_item197 = createVehicle ["CampEast",[15187.9,17366.3,-1.14441e-005],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [15187.9,17366.3,19.277];
	_this setVectorDirAndUp [[0.747711,0.664024,0.000857638],[0,-0.00129158,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item452 = objNull;
if (_layerRoot) then {
	_item452 = createVehicle ["Land_InfoStand_V1_F",[15192,17292.6,0],[],0,"CAN_COLLIDE"];
	_this = _item452;
	_objects pushback _this;
	_objectIDs pushback 452;
	_this setPosWorld [15192,17292.6,18.5114];
	_this setVectorDirAndUp [[0.689379,-0.724401,0.000890363],[-0.00129154,0,0.999999]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item453 = objNull;
if (_layerRoot) then {
	_item453 = createVehicle ["US_WarfareBFieldhHospital_Base_EP1",[15301.9,17395.1,0],[],0,"CAN_COLLIDE"];
	_this = _item453;
	_objects pushback _this;
	_objectIDs pushback 453;
	_this setPosWorld [15301.9,17395.1,16.6625];
	_this setVectorDirAndUp [[-0.697301,-0.716506,0.0197803],[0.0146639,0.0133302,0.999804]];
	0 remoteExec ['setFeatureType', _this];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item454 = objNull;
if (_layerRoot) then {
	_item454 = createVehicle ["rhsusf_M1230a1_usarmy_d",[15312.1,17403.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item454;
	_objects pushback _this;
	_objectIDs pushback 454;
	_this setPosWorld [15312.1,17404,20.5214];
	_this setVectorDirAndUp [[0.708669,-0.705518,-0.00572234],[0.0239934,0.0159931,0.999584]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle""],[2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""FirstAidKit"",""ToolKit"",""Medikit""],[20,1,2]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hithull"",""hitfuel"",""hitengine"",""hitduke1"",""hitduke2"",""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitglass15"",""hitglass16"",""hitglass17"",""hitglass18"",""hitglass19"",""hitglass20"",""hitglass21"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#cabin_light1"",""#cabin_light2"",""#cabin_light3""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	_this setVariable ["ace_medical_isMedicalVehicle", true, true];
	_this animate ['DUKE_Hide',0,true];if(0 isEqualTo 1)then{_this removeWeaponTurret ['rhsusf_weap_duke',[-1]]};;
	_this animateDoor ['DoorB',0,true];
	_this animateDoor ['DoorL',0,true];
	_this animateDoor ['DoorR',0,true];
};

private _item455 = objNull;
if (_layerRoot) then {
	_item455 = createVehicle ["rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy",[15213.7,17460.2,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item455;
	_objects pushback _this;
	_objectIDs pushback 455;
	_this setPosWorld [15213.6,17460.3,19.2542];
	_this setVectorDirAndUp [[-0.691291,0.722397,-0.0160812],[-0.0093285,0.0133311,0.999868]];
	_this lock 2;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit""],[2,4]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""ToolKit""],[1]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitfuel"",""hitengine"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hithull"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#cabin_light1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
};

private _item456 = objNull;
if (_layerRoot) then {
	_item456 = createVehicle ["rhsusf_M977A4_AMMO_usarmy_d",[15220.8,17466.8,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item456;
	_objects pushback _this;
	_objectIDs pushback 456;
	_this setPosWorld [15220.8,17466.8,19.1009];
	_this setVectorDirAndUp [[0.682024,-0.731176,0.0150029],[-0.011995,0.00932783,0.999885]];
	_this lock 2;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit""],[2,4]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""ToolKit""],[1]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitfuel"",""hitengine"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hithull"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#cabin_light""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
};

private _item482 = objNull;
if (_layerRoot) then {
	_item482 = createVehicle ["Flag_US_F",[15196.3,17345.4,0],[],0,"CAN_COLLIDE"];
	_this = _item482;
	_objects pushback _this;
	_objectIDs pushback 482;
	_this setPosWorld [15196.3,17345.4,21.8891];
	_this setVectorDirAndUp [[-0.768496,-0.639855,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item486 = objNull;
if (_layerRoot) then {
	_item486 = createVehicle ["rhsusf_m1151_m2_v2_usarmy_d",[15173.1,17312.7,0],[],0,"CAN_COLLIDE"];
	_this = _item486;
	_objects pushback _this;
	_objectIDs pushback 486;
	_this setPosWorld [15173.1,17312.7,19.6723];
	_this setVectorDirAndUp [[0.680207,-0.732998,0.00570652],[-0.0026529,0.00532321,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""rhs_weap_M136_hedp"",""FirstAidKit""],[2,2,4]],[[""rhs_m136_hedp_mag"",""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhsusf_100Rnd_556x45_soft_pouch"",""rhs_mag_M441_HE"",""rhs_mag_m714_White"",""rhs_mag_m662_red"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[2,20,8,16,4,2,4,2,2,4]],[[],[]],[[""rhsusf_falconii""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitglass15"",""hit_rhino"",""hithull"",""hitfuel"",""hitengine"",""hitduke1"",""hitduke2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitbody"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item505 = objNull;
if (_layerRoot) then {
	_item505 = createVehicle ["Land_CampingChair_V2_white_F",[15219,17330.9,0.568277],[],0,"CAN_COLLIDE"];
	_this = _item505;
	_objects pushback _this;
	_objectIDs pushback 505;
	_this setPosWorld [15219,17330.9,19.0587];
	_this setVectorDirAndUp [[-0.838641,-0.544684,0.00057911],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item485 = objNull;
if (_layerRoot) then {
	_item485 = createVehicle ["ProtectionZone_Invisible_F",[15199.5,17316.2,0],[],0,"CAN_COLLIDE"];
	_this = _item485;
	_objects pushback _this;
	_objectIDs pushback 485;
	_this setPosWorld [15199.5,17316.2,22.6763];
	_this setVectorDirAndUp [[0.709201,-0.705003,0.00189178],[-0.00399675,-0.0013372,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item99 = objNull;
if (_layerRoot) then {
	_item99 = _item502 createUnit ["rhsusf_army_ocp_rifleman",[15324,17536.9,4.346],[],0,"CAN_COLLIDE"];
	_item502 selectLeader _item99;
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [15324,17536.9,20.8611];
	_this setVectorDirAndUp [[0.156159,0.987732,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Archie Evans";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item506 = objNull;
if (_layerRoot) then {
	_item506 = createVehicle ["Land_CampingChair_V2_white_F",[15219.8,17330,0.565567],[],0,"CAN_COLLIDE"];
	_this = _item506;
	_objects pushback _this;
	_objectIDs pushback 506;
	_this setPosWorld [15219.7,17330,19.0581];
	_this setVectorDirAndUp [[-0.71093,-0.703262,0.000490922],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item86 = objNull;
if (_layerRoot) then {
	_item86 = createTrigger ["EmptyDetectorArea10x10",[15299.4,17526.9,0],true];
	_this = _item86;
	_triggers pushback _this;
	_triggerIDs pushback 86;
	_item86 setPosATL [15299.4,17526.9,0];
	_this setTriggerArea [5,23,44.51,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item190 = objNull;
if (_layerRoot) then {
	_item190 = createTrigger ["EmptyDetectorArea10x10",[15301.4,17394.5,0.0907421],true];
	_this = _item190;
	_triggers pushback _this;
	_triggerIDs pushback 190;
	_item190 setPosATL [15301.4,17394.5,0.0907421];
	_this setTriggerArea [8,5,132.928,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} foreach thislist }",""];
	_this setTriggerTimeout [15,15,15,true];
};

private _item484 = objNull;
if (_layerRoot) then {
	_item484 = createTrigger ["EmptyDetectorArea10x10",[15057,17307.6,0],true];
	_this = _item484;
	_triggers pushback _this;
	_triggerIDs pushback 484;
	_item484 setPosATL [15057,17307.6,0];
	_this setTriggerArea [8,7,223.832,true,5];
	repStation = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item94;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Kilo 2"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-1",true]'];          ["","ColorWEST","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item109;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "November"] call CBA_fnc_setCallsign;
	_this setBehaviour "SAFE";
	      if (!is3DEN && !(["b_air","ColorWEST","November 1",false] isEqualTo ['', '', '', true])) then      {        [_this, ["b_air","ColorWEST","November 1",false]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["b_air","ColorWEST","November 1",false]'];          ["b_air","ColorWEST","November 1",false] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["b_air","ColorWEST","November 1",false]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["b_air","ColorWEST","November 1",false] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item175;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-3",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-3",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-3",true]'];          ["","ColorWEST","Alpha 1-3",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-3",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-3",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item502;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-4"] call CBA_fnc_setCallsign;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-4",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-4",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-4",true]'];          ["","ColorWEST","Alpha 1-4",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-4",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-4",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item68 = objNull;
if (_layer12) then {
	_item68 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15152.1,17333.1,0.589996],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_logics pushback _this;
	_logicIDs pushback 68;
	_this setPosWorld [15152.1,17333.1,18.4447];
	_this setVectorDirAndUp [[0.649395,-0.760451,0],[0,0,1]];
	_this setVariable ["objectArea",[10,20,139.504,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item89 = objNull;
if (_layerRoot) then {
	_item89 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15295.5,17532.3,0],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_logics pushback _this;
	_logicIDs pushback 89;
	_this setPosWorld [15295.5,17532.3,16.5773];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item140 = objNull;
if (_layerRoot) then {
	_item140 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15268,17416.2,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_logics pushback _this;
	_logicIDs pushback 140;
	_this setPosWorld [15268,17416.2,17.8794];
	_this setVectorDirAndUp [[0.323727,-0.946148,0.00207645],[0.00133688,0.00265204,0.999996]];
	_this setVariable ["objectArea",[8,5,161.112,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item196 = objNull;
if (_layerRoot) then {
	_item196 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15188.7,17366.2,5.44572],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_logics pushback _this;
	_logicIDs pushback 196;
	_this setPosWorld [15188.7,17366.2,23.3707];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer12) then {missionNamespace setVariable ["temp_Canteen #1",[[_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68],[]]];};
if (_layer501) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item503,_item504],[]]];};
if (_layer130) then {missionNamespace setVariable ["temp_Medical Laboratory [BLU]",[[_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139],[]]];};
if (_layer69) then {missionNamespace setVariable ["temp_Checkpoint [BLU]",[[_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item110 && !isNull _item191) then {_item110 moveInDriver _item191;};
if (!isNull _item111 && !isNull _item191) then {_item111 moveInTurret [_item191,[0]];};
if (!isNull _item112 && !isNull _item191) then {_item112 moveInTurret [_item191,[1]];};
if (!isNull _item113 && !isNull _item191) then {_item113 moveInTurret [_item191,[2]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item503) then {
		this = _item503;
		call{arsenals pushBack this};
	};
	if !(isnull _item504) then {
		this = _item504;
		call{arsenals pushBack this};
	};
	if !(isnull _item117) then {
		this = _item117;
		call{_repair = this; 
 
[    
 _repair, "Repair Vehicles",    
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_loaddevice_ca.paa",    
 "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_loaddevice_ca.paa",    
  "_this distance _target < 4", "_caller distance _target < 4",    
  {},    
  {},    
  { {_x Setdamage 0} forEach (vehicles inAreaArray repStation);},    
  {},    
  [],    
  5,    
  997,    
  false, false    
] call BIS_fnc_holdActionAdd; 
};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item68) then {_item68 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item89) then {_item89 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item140) then {_item140 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item196) then {_item196 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
