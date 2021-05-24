// Export of 'base_mil.chernarus' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer373 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer353 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer156 = (_allWhitelisted || {"shoothouse pit" in _layerWhiteList}) && {!("shoothouse pit" in _layerBlackList)};
private _layer376 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer145 = (_allWhitelisted || {"chernarusafb" in _layerWhiteList}) && {!("chernarusafb" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item143 = "";
if (_layer145) then {
	_item143 = createMarker ["marker_0",[4573.63,10162.6,0]];
	_this = _item143;
	_markers pushback _this;
	_markerIDs pushback 143;
	_this setMarkerType "b_hq";
	_this setMarkerText "Baker AB";
	_this setMarkerDir 358.768;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWEST";
};

private _item144 = "";
if (_layer145) then {
	_item144 = createMarker ["marker_2",[4745.57,10327.5,0]];
	_this = _item144;
	_markers pushback _this;
	_markerIDs pushback 144;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Vehicles";
	_this setMarkerDir 358.768;
	_this setMarkerShape "ICON";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item0 = grpNull;
if (_layerRoot) then {
	_item0 = createGroup west;
	_this = _item0;
	_groups pushback _this;
	_groupIDs pushback 0;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item33 = objNull;
if (_layer145) then {
	_item33 = createVehicle ["Land_RoadBarrier_01_F",[5215.42,9781.16,0.027832],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [5215.42,9781.16,338.22];
	_this setVectorDirAndUp [[0.979603,0.107241,-0.169933],[0.169508,0.0131387,0.985441]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item34 = objNull;
if (_layer145) then {
	_item34 = createVehicle ["Land_RoadBarrier_01_F",[4202.11,10351.9,0.000213623],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [4202.11,10351.9,342.488];
	_this setVectorDirAndUp [[-0.778233,-0.627976,0],[0,0,1]];
	gate2 = _this;
	_this setVehicleVarName "gate2";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item126 = objNull;
if (_layer145) then {
	_item126 = createVehicle ["Fort_Crate_wood",[4780.63,10256.4,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [4780.63,10256.4,339.488];
	_this setVectorDirAndUp [[0.662727,0.748861,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item127 = objNull;
if (_layer145) then {
	_item127 = createVehicle ["Fort_Crate_wood",[4779.22,10256.6,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [4779.22,10256.6,339.488];
	_this setVectorDirAndUp [[-0.979896,0.199507,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item43 = objNull;
if (_layer145) then {
	_item43 = createVehicle ["Land_Camping_Light_F",[4212.77,10347.7,0.958374],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [4212.77,10347.7,339.946];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item44 = objNull;
if (_layer145) then {
	_item44 = createVehicle ["Land_Camping_Light_F",[5208.68,9776.14,0.783966],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [5208.68,9776.14,336.575];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item32 = objNull;
if (_layer145) then {
	_item32 = createVehicle ["Land_BarGate_F",[4539.84,9857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [4539.84,9857.9,343.046];
	_this setVectorDirAndUp [[-0.0121374,-0.999925,0.00129178],[0,0.00129187,0.999999]];
	gate3 = _this;
	_this setVehicleVarName "gate3";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item45 = objNull;
if (_layer145) then {
	_item45 = createVehicle ["Land_Camping_Light_F",[4555.31,9867.37,0.286102],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [4555.31,9867.37,339.385];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item62 = objNull;
if (_layer145) then {
	_item62 = createVehicle ["Land_GuardBox_01_smooth_F",[4532.43,9858.23,0.281128],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [4532.43,9858.23,340.14];
	_this setVectorDirAndUp [[0.00334131,0.999994,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item107 = objNull;
if (_layer145) then {
	_item107 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[4534.05,9857.28,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [4534.05,9857.28,339.105];
	_this setVectorDirAndUp [[0.0862442,0.996274,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item35 = objNull;
if (_layer145) then {
	_item35 = createVehicle ["Land_RoadBarrier_01_F",[4760.43,10758.2,-0.0618896],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [4760.43,10758.2,340.684];
	_this setVectorDirAndUp [[-0.778228,-0.627982,0],[0,0,1]];
	gate4 = _this;
	_this setVehicleVarName "gate4";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item46 = objNull;
if (_layer145) then {
	_item46 = createVehicle ["Land_Camping_Light_F",[4755.29,10748.2,0.298645],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [4755.29,10748.2,338.251];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item67 = objNull;
if (_layer145) then {
	_item67 = createVehicle ["Land_LampIndustrial_01_F",[4766.75,10756,-0.0568237],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [4766.75,10756,341.344];
	_this setVectorDirAndUp [[0.804897,0.593414,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item60 = objNull;
if (_layer145) then {
	_item60 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[4784.69,10268.3,340.382]];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [4784.69,10268.3,340.598];
	_this setVectorDirAndUp [[-0.471561,-0.881834,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item101 = objNull;
if (_layer145) then {
	_item101 = createSimpleObject ["Fridge_01_closed_F",[4782.79,10269,339.039]];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [4782.79,10269,339.557];
	_this setVectorDirAndUp [[0.377387,0.926056,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item121 = objNull;
if (_layer145) then {
	_item121 = createSimpleObject ["Land_WaterCooler_01_old_F",[4782.22,10269.2,339.039]];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [4782.22,10269.2,339.771];
	_this setVectorDirAndUp [[0.394439,0.918922,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item89 = objNull;
if (_layer145) then {
	_item89 = createSimpleObject ["Land_Tableware_01_cup_F",[4782.65,10269,340.07]];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [4782.65,10269,340.12];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item108 = objNull;
if (_layer145) then {
	_item108 = createVehicle ["CUP_sink",[4785.44,10267.9,0.739838],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [4785.44,10267.9,339.74];
	_this setVectorDirAndUp [[0.390068,0.920786,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item90 = objNull;
if (_layer145) then {
	_item90 = createSimpleObject ["Land_Tableware_01_tray_F",[4779.91,10268.1,339.78]];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [4779.91,10268.1,339.787];
	_this setVectorDirAndUp [[0.396521,0.918026,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item120 = objNull;
if (_layer145) then {
	_item120 = createSimpleObject ["Land_BottlePlastic_V2_F",[4779.77,10267.5,339.766]];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [4779.77,10267.5,339.897];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item103 = objNull;
if (_layer145) then {
	_item103 = createSimpleObject ["Land_RiceBox_F",[4784.29,10262.5,339.779]];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [4784.29,10262.5,339.875];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item59 = objNull;
if (_layer145) then {
	_item59 = createSimpleObject ["Land_FoodSacks_01_large_brown_F",[4777.85,10263.3,339.039]];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [4777.85,10263.3,339.512];
	_this setVectorDirAndUp [[0.388691,0.921368,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item47 = objNull;
if (_layer145) then {
	_item47 = createSimpleObject ["Land_Can_V2_F",[4779.73,10268.3,339.771]];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [4779.73,10268.3,339.812];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item68 = objNull;
if (_layer145) then {
	_item68 = createSimpleObject ["Land_Ketchup_01_F",[4785.39,10265.5,339.753]];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [4785.39,10265.5,339.856];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item81 = objNull;
if (_layer145) then {
	_item81 = createSimpleObject ["Land_Mustard_01_F",[4785.39,10265.3,339.76]];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [4785.39,10265.3,339.863];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item128 = objNull;
if (_layer145) then {
	_item128 = createSimpleObject ["Land_WoodenTable_large_F",[4777.1,10266.5,339.001]];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [4777.1,10266.5,339.434];
	_this setVectorDirAndUp [[0.413285,0.910602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item122 = objNull;
if (_layer145) then {
	_item122 = createVehicle ["Land_MapBoard_01_Wall_F",[4770.52,10255.8,1.33768],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [4770.52,10255.8,340.889];
	_this setVectorDirAndUp [[-0.40982,-0.912166,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item124 = objNull;
if (_layer145) then {
	_item124 = createSimpleObject ["Land_WoodenCounter_01_F",[4772.9,10265.4,344.843]];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [4772.9,10265.4,345.319];
	_this setVectorDirAndUp [[0.910602,-0.413285,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item56 = objNull;
if (_layer145) then {
	_item56 = createVehicle ["Land_CratesPlastic_F",[4772.64,10264.8,6.78156],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [4772.64,10264.8,346.014];
	_this setVectorDirAndUp [[0.910602,-0.413285,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item30 = objNull;
if (_layer145) then {
	_item30 = createSimpleObject ["Land_Ammobox_rounds_F",[4773.21,10265.9,345.772]];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [4773.21,10265.9,345.878];
	_this setVectorDirAndUp [[0.772608,-0.634884,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item69 = objNull;
if (_layer145) then {
	_item69 = createVehicle ["Laptop_EP1",[4776.66,10266.1,0.865906],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [4776.66,10266.1,339.999];
	_this setVectorDirAndUp [[0.86481,-0.502099,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item48 = objNull;
if (_layer145) then {
	_item48 = createSimpleObject ["Land_ChairWood_F",[4779.09,10266.2,339]];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [4779.09,10266.2,338.999];
	_this setVectorDirAndUp [[-0.351656,0.936129,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item49 = objNull;
if (_layer145) then {
	_item49 = createSimpleObject ["Land_ChairWood_F",[4780.28,10268.9,339]];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [4780.28,10268.9,338.999];
	_this setVectorDirAndUp [[0.634884,0.772608,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item50 = objNull;
if (_layer145) then {
	_item50 = createSimpleObject ["Land_ChairWood_F",[4776.62,10266.6,339]];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [4776.62,10266.6,338.999];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item51 = objNull;
if (_layer145) then {
	_item51 = createSimpleObject ["Land_ChairWood_F",[4780.58,10267.4,339]];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [4780.58,10267.4,338.999];
	_this setVectorDirAndUp [[0.797134,-0.603802,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item52 = objNull;
if (_layer145) then {
	_item52 = createSimpleObject ["Land_ChairWood_F",[4785,10265.4,339]];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [4785,10265.4,338.999];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item53 = objNull;
if (_layer145) then {
	_item53 = createSimpleObject ["Land_ChairWood_F",[4785.82,10266,339]];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [4785.82,10266,338.999];
	_this setVectorDirAndUp [[0.936129,0.351656,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item54 = objNull;
if (_layer145) then {
	_item54 = createSimpleObject ["Land_ChairWood_F",[4777.64,10267.6,339]];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [4777.64,10267.6,338.999];
	_this setVectorDirAndUp [[0.813216,0.581962,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item55 = objNull;
if (_layer145) then {
	_item55 = createSimpleObject ["Land_ChairWood_F",[4783.7,10262.8,339]];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [4783.7,10262.8,338.999];
	_this setVectorDirAndUp [[-0.98654,0.163522,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item38 = objNull;
if (_layer145) then {
	_item38 = createSimpleObject ["Box_Syndicate_Ammo_F",[4773.27,10266,345.04]];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [4773.27,10266,345.25];
	_this setVectorDirAndUp [[0.910602,-0.413285,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item79 = objNull;
if (_layer145) then {
	_item79 = createSimpleObject ["Land_Metal_rack_Tall_F",[4775.43,10260.1,339.001]];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [4775.43,10260.1,339.001];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item80 = objNull;
if (_layer145) then {
	_item80 = createSimpleObject ["Land_Metal_rack_Tall_F",[4774.81,10258.8,339.001]];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [4774.81,10258.8,339.001];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item123 = objNull;
if (_layer145) then {
	_item123 = createSimpleObject ["Land_WoodenBox_F",[4782.47,10256.8,339.039]];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [4782.47,10256.8,339.039];
	_this setVectorDirAndUp [[0.910602,-0.413285,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 3] call ace_cargo_fnc_setSize;;
};

private _item77 = objNull;
if (_layer145) then {
	_item77 = createSimpleObject ["Land_MetalCase_01_small_F",[4777.69,10268.7,344.876]];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [4777.69,10268.7,345.033];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item119 = objNull;
if (_layer145) then {
	_item119 = createVehicle ["Item_ItemWatch",[4804.56,10246.2,0.835114],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [4804.56,10246.2,340.486];
	_this setVectorDirAndUp [[0.772608,-0.634884,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item40 = objNull;
if (_layer145) then {
	_item40 = createVehicle ["Land_PaperBox_open_empty_F",[4783.28,10255.4,5.87653],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [4783.28,10255.4,345.484];
	_this setVectorDirAndUp [[0.910602,-0.413285,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item125 = objNull;
if (_layer145) then {
	_item125 = createSimpleObject ["Land_WoodenCounter_01_F",[4804.23,10246.4,339.061]];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [4804.23,10246.4,339.537];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item31 = objNull;
if (_layer145) then {
	_item31 = createSimpleObject ["Land_Ammobox_rounds_F",[4804.47,10247.1,340.007]];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [4804.47,10247.1,340.112];
	_this setVectorDirAndUp [[-0.581961,0.813217,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item74 = objNull;
if (_layer145) then {
	_item74 = createSimpleObject ["Land_Magazine_rifle_F",[4803.89,10246.1,340.001]];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [4803.89,10246.1,340.008];
	_this setVectorDirAndUp [[-0.98654,0.163522,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item75 = objNull;
if (_layer145) then {
	_item75 = createSimpleObject ["Land_Magazine_rifle_F",[4803.91,10246,340.001]];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [4803.91,10246,340.008];
	_this setVectorDirAndUp [[0.581962,-0.813216,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item61 = objNull;
if (_layer145) then {
	_item61 = createVehicle ["Land_Garbage_square5_F",[4799.61,10251.5,0.0483398],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [4799.61,10251.5,339.078];
	_this setVectorDirAndUp [[-0.315838,-0.948813,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item39 = objNull;
if (_layer145) then {
	_item39 = createVehicle ["Land_PaperBox_closed_F",[4785.1,10254.5,5.87653],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [4785.1,10254.5,345.52];
	_this setVectorDirAndUp [[0.413285,0.910602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item111 = objNull;
if (_layer145) then {
	_item111 = createSimpleObject ["Land_Pallets_stack_F",[4787.15,10258.7,341.756]];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [4787.15,10258.7,342.185];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item112 = objNull;
if (_layer145) then {
	_item112 = createSimpleObject ["Land_Pallets_stack_F",[4787.18,10258.8,342.626]];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [4787.18,10258.8,343.056];
	_this setVectorDirAndUp [[0.413285,0.910602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item113 = objNull;
if (_layer145) then {
	_item113 = createSimpleObject ["Land_Pallets_stack_F",[4781.94,10255.4,341.751]];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [4781.94,10255.4,342.181];
	_this setVectorDirAndUp [[0.413285,0.910602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item114 = objNull;
if (_layer145) then {
	_item114 = createSimpleObject ["Land_Pallets_stack_F",[4786.54,10257.2,341.746]];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [4786.54,10257.2,342.175];
	_this setVectorDirAndUp [[0.413285,0.910602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item115 = objNull;
if (_layer145) then {
	_item115 = createSimpleObject ["Land_Pallets_stack_F",[4781.94,10255.4,342.626]];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [4781.94,10255.4,343.056];
	_this setVectorDirAndUp [[0.910602,-0.413285,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item78 = objNull;
if (_layer145) then {
	_item78 = createSimpleObject ["Land_MetalCase_01_small_F",[4787.36,10264.3,344.876]];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [4787.36,10264.3,345.033];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item36 = objNull;
if (_layer145) then {
	_item36 = createVehicle ["Barrels",[4794.84,10257,0.0416565],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [4794.84,10257,339.74];
	_this setVectorDirAndUp [[0.413285,0.910602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item37 = objNull;
if (_layer145) then {
	_item37 = createVehicle ["Barrels",[4796.48,10256.2,0.0436707],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [4796.48,10256.2,339.74];
	_this setVectorDirAndUp [[0.413285,0.910602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item86 = objNull;
if (_layer145) then {
	_item86 = createSimpleObject ["Land_PlasticCase_01_small_olive_F",[4784.06,10265.9,344.877]];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [4784.06,10265.9,345.033];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item87 = objNull;
if (_layer145) then {
	_item87 = createSimpleObject ["Land_PlasticCase_01_small_olive_F",[4780.87,10267.3,344.877]];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [4780.87,10267.3,345.033];
	_this setVectorDirAndUp [[-0.910601,0.413286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item88 = objNull;
if (_layer145) then {
	_item88 = createSimpleObject ["Land_PlasticCase_01_small_olive_F",[4786.39,10257.4,342.62]];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [4786.39,10257.4,342.777];
	_this setVectorDirAndUp [[-0.0973851,0.995247,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item118 = objNull;
if (_layer145) then {
	_item118 = createVehicle ["CUP_vending_machine",[4785,10253.8,0.0388489],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [4785,10253.8,340.08];
	_this setVectorDirAndUp [[-0.393077,-0.919506,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item102 = objNull;
if (_layer145) then {
	_item102 = createVehicle ["Land_Repair_center",[4723.01,10309.8,0.00299072],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [4723.01,10309.8,341.522];
	_this setVectorDirAndUp [[0.528231,-0.849101,0],[0,0,1]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	if (-10 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, -10] call ace_rearm_fnc_makeSource};
	if (-10 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, -10] call ace_refuel_fnc_makeSource};
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
};

private _item66 = objNull;
if (_layer145) then {
	_item66 = createVehicle ["B_Slingload_01_Fuel_F",[4738.54,10310.1,0.0413208],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [4738.33,10309.9,340.364];
	_this setVectorDirAndUp [[0.594848,-0.803838,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item117 = objNull;
if (_layer145) then {
	_item117 = createVehicle ["Box_NATO_AmmoVeh_F",[4728.6,10308.6,0.990479],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [4728.6,10308.6,340.78];
	_this setVectorDirAndUp [[-0.84844,-0.529292,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item64 = objNull;
if (_layer145) then {
	_item64 = createVehicle ["Land_HelipadSquare_F",[4813.11,10193.7,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [4813.11,10193.7,339.002];
	_this setVectorDirAndUp [[0.863769,0.503888,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item65 = objNull;
if (_layer145) then {
	_item65 = createVehicle ["Land_HelipadSquare_F",[4823.5,10176.4,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [4823.5,10176.4,339.002];
	_this setVectorDirAndUp [[0.863769,0.503888,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item91 = objNull;
if (_layer145) then {
	_item91 = createVehicle ["PortableHelipadLight_01_blue_F",[4825.43,10184.1,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [4825.43,10184.1,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item92 = objNull;
if (_layer145) then {
	_item92 = createVehicle ["PortableHelipadLight_01_blue_F",[4815.92,10178.3,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [4815.92,10178.3,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item93 = objNull;
if (_layer145) then {
	_item93 = createVehicle ["PortableHelipadLight_01_blue_F",[4821.49,10168.7,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [4821.49,10168.7,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item94 = objNull;
if (_layer145) then {
	_item94 = createVehicle ["PortableHelipadLight_01_blue_F",[4831.18,10174.4,0.00311279],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [4831.18,10174.4,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item95 = objNull;
if (_layer145) then {
	_item95 = createVehicle ["PortableHelipadLight_01_green_F",[4812.66,10193.5,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [4812.66,10193.5,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item96 = objNull;
if (_layer145) then {
	_item96 = createVehicle ["PortableHelipadLight_01_green_F",[4823.4,10176.2,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [4823.4,10176.2,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item97 = objNull;
if (_layer145) then {
	_item97 = createVehicle ["PortableHelipadLight_01_white_F",[4811.1,10186.1,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [4811.1,10186.1,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item98 = objNull;
if (_layer145) then {
	_item98 = createVehicle ["PortableHelipadLight_01_white_F",[4820.65,10191.6,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [4820.65,10191.6,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item99 = objNull;
if (_layer145) then {
	_item99 = createVehicle ["PortableHelipadLight_01_white_F",[4814.97,10201.6,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [4814.97,10201.6,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item100 = objNull;
if (_layer145) then {
	_item100 = createVehicle ["PortableHelipadLight_01_white_F",[4805.5,10196,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [4805.5,10196,339.112];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item28 = objNull;
if (_layer145) then {
	_item28 = createVehicle ["ACE_medicalSupplyCrate_advanced",[4822.3,10301.7,0.155914],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [4822.3,10301.7,339.152];
	_this setVectorDirAndUp [[-0.780433,-0.625239,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[""kat_Painkiller""],[10]],[[""ACE_fieldDressing"",""ACE_packingBandage"",""ACE_elasticBandage"",""ACE_tourniquet"",""ACE_splint"",""ACE_morphine"",""ACE_adenosine"",""ACE_epinephrine"",""ACE_plasmaIV"",""ACE_plasmaIV_500"",""ACE_plasmaIV_250"",""ACE_salineIV"",""ACE_salineIV_500"",""ACE_salineIV_250"",""ACE_bloodIV"",""ACE_bloodIV_500"",""ACE_bloodIV_250"",""ACE_quikclot"",""ACE_personalAidKit"",""ACE_surgicalKit"",""ACE_bodyBag"",""kat_larynx"",""kat_guedel"",""kat_accuvac"",""kat_X_AED"",""kat_AED"",""kat_Pulseoximeter"",""kat_chestSeal"",""kat_aatKit""],[25,25,25,15,15,15,15,15,7,7,7,7,7,7,7,7,7,20,3,2,5,15,15,1,1,1,3,25,10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item57 = objNull;
if (_layer145) then {
	_item57 = createVehicle ["USMC_WarfareBFieldhHospital",[4819.71,10297.7,0.00131226],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [4819.71,10297.7,337.94];
	_this setVectorDirAndUp [[-0.52375,0.851872,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item29 = objNull;
if (_layer145) then {
	_item29 = createVehicle ["ACE_medicalSupplyCrate_advanced",[4823.04,10300.5,0.15451],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [4823.04,10300.5,339.149];
	_this setVectorDirAndUp [[-0.919977,-0.391972,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[""kat_Painkiller""],[10]],[[""ACE_fieldDressing"",""ACE_packingBandage"",""ACE_elasticBandage"",""ACE_tourniquet"",""ACE_splint"",""ACE_morphine"",""ACE_adenosine"",""ACE_epinephrine"",""ACE_plasmaIV"",""ACE_plasmaIV_500"",""ACE_plasmaIV_250"",""ACE_salineIV"",""ACE_salineIV_500"",""ACE_salineIV_250"",""ACE_bloodIV"",""ACE_bloodIV_500"",""ACE_bloodIV_250"",""ACE_quikclot"",""ACE_personalAidKit"",""ACE_surgicalKit"",""ACE_bodyBag"",""kat_larynx"",""kat_guedel"",""kat_accuvac"",""kat_X_AED"",""kat_AED"",""kat_Pulseoximeter"",""kat_chestSeal"",""kat_aatKit""],[25,25,25,15,15,15,15,15,7,7,7,7,7,7,7,7,7,20,3,2,5,15,15,1,1,1,3,25,10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item104 = objNull;
if (_layer145) then {
	_item104 = createVehicle ["Land_PortableCabinet_01_medical_F",[4818.37,10300.1,0.0933838],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [4818.37,10300.1,339.507];
	_this setVectorDirAndUp [[-0.878289,-0.47813,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[""ACE_bloodIV""],[20]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this animate ['Drawer_1_move_source',0,true];
	_this animate ['Drawer_2_move_source',0,true];
	_this animate ['Drawer_3_move_source',0,true];
	_this animate ['Drawer_4_move_source',0,true];
	_this animate ['Drawer_5_move_source',0,true];
	_this animate ['Drawer_6_move_source',0,true];
	_this animate ['Drawer_1_hide_source',0,true];
	_this animate ['Drawer_2_hide_source',0,true];
	_this animate ['Drawer_3_hide_source',0,true];
	_this animate ['Drawer_4_hide_source',0,true];
	_this animate ['Drawer_5_hide_source',0,true];
	_this animate ['Drawer_6_hide_source',0,true];
};

private _item106 = objNull;
if (_layer145) then {
	_item106 = createVehicle ["Land_PortableLight_02_double_yellow_F",[4815.4,10305,0.0928955],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [4815.4,10305,340.031];
	_this setVectorDirAndUp [[-0.703963,0.710236,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',0,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
	_this animateSource ['Light_2_pitch_source',0,true];
	_this animateSource ['Light_2_yaw_source',0,true];
	_this animateSource ['Light_2_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_2',0];;
};

private _item109 = objNull;
if (_layer145) then {
	_item109 = createVehicle ["ACE_Wheel",[4726.04,10309.8,0.99585],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [4726.04,10309.8,340.152];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item110 = objNull;
if (_layer145) then {
	_item110 = createVehicle ["ACE_Wheel",[4725.41,10310.9,0.995056],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [4725.41,10310.9,340.151];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item116 = objNull;
if (_layer145) then {
	_item116 = createVehicle ["Item_ToolKit",[4725.03,10311.7,0.994598],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [4725.03,10311.7,340.656];
	_this setVectorDirAndUp [[-0.8488,-0.528714,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item58 = objNull;
if (_layer145) then {
	_item58 = createVehicle ["Flag_US_F",[4740.75,10281.8,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [4740.75,10281.8,342.978];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item384 = objNull;
if (_layer145) then {
	_item384 = createVehicle ["Land_TentLamp_01_suspended_F",[4804.07,10246.5,4.72586],[],0,"CAN_COLLIDE"];
	_this = _item384;
	_objects pushback _this;
	_objectIDs pushback 384;
	_this setPosWorld [4804.07,10246.5,343.76];
	_this setVectorDirAndUp [[0.414422,0.910085,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1 = objNull;
if (_layerRoot) then {
	_item1 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_m4",[4775.23,10261.4,0.0369873],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [4775.23,10261.5,339.038];
	_this setVectorDirAndUp [[-0.860618,0.509252,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1]]],["rhsusf_spc",[]],[],"rhsusf_lwh_helmet_marpatwd","rhs_googles_clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "George Wright";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male12ENG";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["GUARD",["inbasemoves_handsbehindback1","inbasemoves_handsbehindback2"],false,false] # 0 isEqualTo '') then      {        ["GUARD",["inbasemoves_handsbehindback1","inbasemoves_handsbehindback2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item2 = objNull;
if (_layerRoot) then {
	_item2 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman",[5210.82,9788.51,5.24261],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [5210.82,9788.56,340.497];
	_this setVectorDirAndUp [[0.955127,0.296197,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "William Walker";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],true,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],true,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item3 = objNull;
if (_layerRoot) then {
	_item3 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_m4",[5207.69,9775.01,0.621002],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [5207.69,9775.06,336.458];
	_this setVectorDirAndUp [[-0.0074408,0.999972,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4_carryhandle_grip3","","rhsusf_acc_anpeq16a","rhsusf_acc_ACOG_USMC",["rhs_mag_30Rnd_556x45_M855_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_30Rnd_556x45_M855_Stanag",1,30]]],["rhsusf_spc_rifleman",[["rhs_mag_30Rnd_556x45_M855_Stanag",7,30],["rhs_mag_m67",2,1],["rhs_mag_an_m8hc",1,1]]],[],"rhs_8point_marpatwd","rhs_googles_clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Matthew Griffiths";;
	_this setface "Sturrock";;
	_this setspeaker "Male09ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item4 = objNull;
if (_layerRoot) then {
	_item4 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman",[4199.34,10358,5.06784],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [4199.34,10358,343.908];
	_this setVectorDirAndUp [[-0.769724,-0.638376,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Finlay Griffiths";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],true,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],true,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item5 = objNull;
if (_layerRoot) then {
	_item5 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_m4",[4214.44,10350.1,0.273743],[],0,"CAN_COLLIDE"];
	_item0 selectLeader _item5;
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [4214.44,10350.2,339.163];
	_this setVectorDirAndUp [[-0.516222,0.856455,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4_carryhandle_grip3","","rhsusf_acc_anpeq16a","rhsusf_acc_ACOG_USMC",["rhs_mag_30Rnd_556x45_M855_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_30Rnd_556x45_M855_Stanag",1,30]]],["rhsusf_spc_rifleman",[["rhs_mag_30Rnd_556x45_M855_Stanag",7,30],["rhs_mag_m67",2,1],["rhs_mag_an_m8hc",1,1]]],[],"rhs_8point_marpatwd","rhs_googles_clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Terrence Smith";;
	_this setface "WhiteHead_17";;
	_this setspeaker "Male09ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item6 = objNull;
if (_layerRoot) then {
	_item6 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman",[4556.95,9842.64,5.05392],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [4556.95,9842.69,344.055];
	_this setVectorDirAndUp [[-0.982071,0.188513,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Harvey Byrne";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],true,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],true,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item7 = objNull;
if (_layerRoot) then {
	_item7 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_m4",[4546.6,9870.11,0.284576],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [4546.6,9870.16,339.266];
	_this setVectorDirAndUp [[0.406416,-0.913688,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4_carryhandle_grip3","","rhsusf_acc_anpeq16a","rhsusf_acc_ACOG_USMC",["rhs_mag_30Rnd_556x45_M855_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_30Rnd_556x45_M855_Stanag",1,30]]],["rhsusf_spc_rifleman",[["rhs_mag_30Rnd_556x45_M855_Stanag",7,30],["rhs_mag_m67",2,1],["rhs_mag_an_m8hc",1,1]]],[],"rhs_8point_marpatwd","rhs_googles_clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Dwan Jones";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male09ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item8 = objNull;
if (_layerRoot) then {
	_item8 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman",[4755.5,10763.4,5.15039],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [4755.5,10763.5,342.346];
	_this setVectorDirAndUp [[0.876284,0.481795,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "George Clark";;
	_this setface "Sturrock";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],true,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],true,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item9 = objNull;
if (_layerRoot) then {
	_item9 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_m4",[4755.8,10748.3,0.333435],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [4755.8,10748.4,338.132];
	_this setVectorDirAndUp [[-0.516222,0.856455,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4_carryhandle_grip3","","rhsusf_acc_anpeq16a","rhsusf_acc_ACOG_USMC",["rhs_mag_30Rnd_556x45_M855_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_30Rnd_556x45_M855_Stanag",1,30]]],["rhsusf_spc_rifleman",[["rhs_mag_30Rnd_556x45_M855_Stanag",7,30],["rhs_mag_m67",2,1],["rhs_mag_an_m8hc",1,1]]],[],"rhs_8point_marpatwd","rhs_googles_clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Luke Ward";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male09ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item10 = objNull;
if (_layerRoot) then {
	_item10 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_light",[4780.32,10268.9,0],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [4780.32,10268.9,339.001];
	_this setVectorDirAndUp [[-0.443503,-0.896273,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_an_m8hc",1,1]]],[],[],"","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ben Davis";;
	_this setface "WhiteHead_06";;
	_this setspeaker "Male04ENG";;
	_this setpitch 1.02;;
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

private _item11 = objNull;
if (_layerRoot) then {
	_item11 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_light",[4780.59,10267.4,0.037323],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [4780.59,10267.4,339.039];
	_this setVectorDirAndUp [[-0.765781,0.643102,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_an_m8hc",1,1]]],[],[],"","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Rhys Walker";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.96;;
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

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_light",[4779.13,10258,0.0369873],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [4779.13,10258.1,339.038];
	_this setVectorDirAndUp [[0.987145,-0.159829,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_an_m8hc",1,1]]],["V_Safety_yellow_F",[]],[],"","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Joseph Jones";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,true] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item15 = objNull;
if (_layerRoot) then {
	_item15 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_light",[4780.59,10257.4,0.0369873],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [4780.59,10257.5,339.038];
	_this setVectorDirAndUp [[-0.765775,0.643108,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_an_m8hc",1,1]]],["rhsusf_spc",[]],[],"","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Sykes Spiegelman";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,true] # 0 isEqualTo '') then      {        ["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item16 = objNull;
if (_layerRoot) then {
	_item16 = _item0 createUnit ["rhsusf_usmc_marpat_wd_rifleman_light",[4785.75,10255.5,0.0369873],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [4785.75,10255.5,339.038];
	_this setVectorDirAndUp [[-0.309681,-0.950841,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_wd",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_an_m8hc",1,1]]],["V_Safety_yellow_F",[]],[],"","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Mike Watson";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.96;;
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

private _item24 = objNull;
if (_layerRoot) then {
	_item24 = _item0 createUnit ["rhsusf_usmc_marpat_wd_engineer",[4727.52,10310,0.98999],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [4727.52,10310,339.991];
	_this setVectorDirAndUp [[0.855798,0.51731,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_wd",[]],["rhsusf_spc_light",[]],["rhsusf_assault_eagleaiii_coy_engineer",[]],"rhsusf_lwh_helmet_marpatwd_ess","rhs_googles_clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Andy Collins";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', true];
	_this setUnitTrait ['ExplosiveSpecialist', true];
	_this setUnitTrait ['UAVHacker', false];
	if !(1 == ([0, 1] select (_this getUnitTrait 'engineer')) || {1 == -1}) then {_this setVariable ['s', 1, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', true, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item147 = objNull;
if (_layer376) then {
	_item147 = createVehicle ["Land_InfoStand_V1_F",[4795.74,10242.8,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [4795.74,10242.8,339.574];
	_this setVectorDirAndUp [[0.416363,0.909197,-0.00177242],[0.00133688,0.00133721,0.999998]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item157 = objNull;
if (_layer156 && _layer376) then {
	_item157 = createVehicle ["Land_InfoStand_V1_F",[4242.87,10447.7,0],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [4242.87,10447.7,339.565];
	_this setVectorDirAndUp [[0.549826,-0.835279,0],[0,0,1]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item158 = objNull;
if (_layer156 && _layer376) then {
	_item158 = createVehicle ["Land_Scaffolding_New_F",[4252.24,10445,0.568085],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [4252.24,10445,342.307];
	_this setVectorDirAndUp [[-0.85717,-0.515033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item163 = objNull;
if (_layer156 && _layer376) then {
	_item163 = createVehicle ["Land_Shoot_House_Panels_Window_F",[4258.13,10428.2,0.0680542],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [4258.13,10428.2,340.734];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer156 && _layer376) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[4276.92,10421.8,0.00643921],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [4276.92,10421.8,340.682];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer156 && _layer376) then {
	_item167 = createVehicle ["Land_Shoot_House_Wall_F",[4269.79,10428.1,0.157013],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [4269.79,10428.1,340.826];
	_this setVectorDirAndUp [[-0.506067,0.862494,-0.000653773],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer156 && _layer376) then {
	_item168 = createVehicle ["Land_Shoot_House_Wall_F",[4266.34,10426.1,0.0680542],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [4266.34,10426.1,340.734];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer156 && _layer376) then {
	_item169 = createVehicle ["Land_Shoot_House_Wall_F",[4272.88,10428.7,0.180389],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [4272.88,10428.7,340.853];
	_this setVectorDirAndUp [[-0.862493,-0.506068,-0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer156 && _layer376) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[4278.59,10417,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [4278.59,10417,340.676];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer156 && _layer376) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[4273.42,10414,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [4273.42,10414,340.669];
	_this setVectorDirAndUp [[-0.506067,0.862494,0.000476329],[-0.00133721,-0.00133688,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer156 && _layer376) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[4275.15,10415,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [4275.15,10415,340.672];
	_this setVectorDirAndUp [[-0.506067,0.862494,0.000476329],[-0.00133721,-0.00133688,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer156 && _layer376) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[4275.91,10423.6,0.056366],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [4275.91,10423.6,340.732];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer156 && _layer376) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[4273.89,10427,0.149719],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [4273.89,10427,340.824];
	_this setVectorDirAndUp [[-0.862493,-0.506068,-0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer156 && _layer376) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[4265.28,10422,0],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [4265.28,10422,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer156 && _layer376) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[4271.51,10429.1,0.1828],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [4271.51,10429.1,340.854];
	_this setVectorDirAndUp [[-0.506067,0.862494,-0.000653773],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer156 && _layer376) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[4274.9,10425.3,0.109436],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [4274.9,10425.3,340.785];
	_this setVectorDirAndUp [[-0.862493,-0.506068,-0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer156 && _layer376) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[4278.95,10418.4,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [4278.95,10418.4,340.676];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer156 && _layer376) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[4270.33,10413.3,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [4270.33,10413.3,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer156 && _layer376) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[4276.87,10416,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [4276.87,10416,340.676];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer156 && _layer376) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[4268.42,10428.4,0.159607],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [4268.42,10428.4,340.826];
	_this setVectorDirAndUp [[-0.862493,-0.506068,-0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer156 && _layer376) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[4264.82,10428.7,0.12735],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [4264.82,10428.7,340.793];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer156 && _layer376) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[4265.83,10426.9,0.0900879],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [4265.83,10426.9,340.756];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer156 && _layer376) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[4263.81,10430.4,0.164642],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [4263.81,10430.4,340.83];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer156 && _layer376) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[4266.4,10431.9,0.2229],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [4266.4,10431.9,340.888];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer156 && _layer376) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[4271.7,10413,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [4271.7,10413,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer156 && _layer376) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[4269.32,10415.1,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [4269.32,10415.1,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer156 && _layer376) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[4259.5,10427.9,0.0446472],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [4259.5,10427.9,340.71];
	_this setVectorDirAndUp [[0.862494,0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer156 && _layer376) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[4260.51,10426.1,0],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [4260.51,10426.1,340.665];
	_this setVectorDirAndUp [[0.862494,0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer156 && _layer376) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[4266.73,10413.5,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [4266.73,10413.5,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer156 && _layer376) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[4262.28,10419.1,0],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [4262.28,10419.1,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer156 && _layer376) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[4266.98,10414.9,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [4266.98,10414.9,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer156 && _layer376) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[4269.98,10411.9,0],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [4269.98,10411.9,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer156 && _layer376) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[4266.28,10420.2,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [4266.28,10420.2,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer156 && _layer376) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[4262.92,10424,0],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [4262.92,10424,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer156 && _layer376) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[4261.19,10423,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [4261.19,10423,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer156 && _layer376) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[4267.41,10430.2,0.190247],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [4267.41,10430.2,340.856];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer156 && _layer376) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[4273.78,10415.4,0],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [4273.78,10415.4,340.671];
	_this setVectorDirAndUp [[-0.862493,-0.506066,-0.00182989],[-0.00133721,-0.00133688,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer156 && _layer376) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[4271.76,10418.8,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [4271.76,10418.8,340.671];
	_this setVectorDirAndUp [[-0.862493,-0.506068,-0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer156 && _layer376) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[4267.65,10419.9,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [4267.65,10419.9,340.666];
	_this setVectorDirAndUp [[0.506067,-0.862494,0.000653774],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer156 && _layer376) then {
	_item203 = createVehicle ["Land_Shoot_House_Wall_F",[4269.38,10420.9,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [4269.38,10420.9,340.668];
	_this setVectorDirAndUp [[0.506067,-0.862494,0.000653774],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item204 = objNull;
if (_layer156 && _layer376) then {
	_item204 = createVehicle ["Land_Shoot_House_Wall_F",[4270.74,10420.5,0],[],0,"CAN_COLLIDE"];
	_this = _item204;
	_objects pushback _this;
	_objectIDs pushback 204;
	_this setPosWorld [4270.74,10420.5,340.67];
	_this setVectorDirAndUp [[-0.862493,-0.506068,-0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item205 = objNull;
if (_layer156 && _layer376) then {
	_item205 = createVehicle ["Land_Shoot_House_Wall_F",[4269.43,10426.7,0.128815],[],0,"CAN_COLLIDE"];
	_this = _item205;
	_objects pushback _this;
	_objectIDs pushback 205;
	_this setPosWorld [4269.43,10426.7,340.797];
	_this setVectorDirAndUp [[0.862493,0.506068,0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item206 = objNull;
if (_layer156 && _layer376) then {
	_item206 = createVehicle ["Land_Shoot_House_Wall_F",[4270.44,10425,0.0810547],[],0,"CAN_COLLIDE"];
	_this = _item206;
	_objects pushback _this;
	_objectIDs pushback 206;
	_this setPosWorld [4270.44,10425,340.75];
	_this setVectorDirAndUp [[0.862493,0.506068,0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item207 = objNull;
if (_layer156 && _layer376) then {
	_item207 = createVehicle ["Land_Shoot_House_Wall_F",[4271.81,10424.6,0.0762939],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [4271.81,10424.6,340.748];
	_this setVectorDirAndUp [[-0.506067,0.862494,-0.000653773],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item208 = objNull;
if (_layer156 && _layer376) then {
	_item208 = createVehicle ["Land_Shoot_House_Wall_F",[4272.46,10421.5,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [4272.46,10421.5,340.672];
	_this setVectorDirAndUp [[0.862493,0.506068,0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item209 = objNull;
if (_layer156 && _layer376) then {
	_item209 = createVehicle ["Land_Shoot_House_Wall_F",[4273.83,10421.2,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [4273.83,10421.2,340.674];
	_this setVectorDirAndUp [[-0.506067,0.862494,-0.000653773],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item210 = objNull;
if (_layer156 && _layer376) then {
	_item210 = createVehicle ["Land_Shoot_House_Wall_F",[4275.56,10422.2,0.00997925],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [4275.56,10422.2,340.685];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item211 = objNull;
if (_layer156 && _layer376) then {
	_item211 = createVehicle ["Land_Shoot_House_Wall_F",[4265.87,10418.9,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [4265.87,10418.9,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item212 = objNull;
if (_layer156 && _layer376) then {
	_item212 = createVehicle ["Land_Shoot_House_Wall_F",[4269.73,10422.3,0],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [4269.73,10422.3,340.668];
	_this setVectorDirAndUp [[0.862493,0.506068,0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item213 = objNull;
if (_layer156 && _layer376) then {
	_item213 = createVehicle ["Land_Shoot_House_Wall_F",[4267.71,10425.7,0.0704956],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [4267.71,10425.7,340.736];
	_this setVectorDirAndUp [[0.862493,0.506068,0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item214 = objNull;
if (_layer156 && _layer376) then {
	_item214 = createVehicle ["Land_Shoot_House_Wall_F",[4256.85,10420.5,0],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [4256.85,10420.5,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item215 = objNull;
if (_layer156 && _layer376) then {
	_item215 = createVehicle ["Land_Shoot_House_Wall_F",[4264.29,10409.8,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [4264.29,10409.8,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item216 = objNull;
if (_layer156 && _layer376) then {
	_item216 = createVehicle ["Land_Shoot_House_Wall_F",[4252.63,10409.9,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [4252.63,10409.9,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item217 = objNull;
if (_layer156 && _layer376) then {
	_item217 = createVehicle ["Land_Shoot_House_Wall_F",[4263.94,10408.4,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [4263.94,10408.4,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item218 = objNull;
if (_layer156 && _layer376) then {
	_item218 = createVehicle ["Land_Shoot_House_Wall_F",[4253.4,10418.5,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [4253.4,10418.5,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item219 = objNull;
if (_layer156 && _layer376) then {
	_item219 = createVehicle ["Land_Shoot_House_Wall_F",[4262.27,10413.2,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [4262.27,10413.2,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item220 = objNull;
if (_layer156 && _layer376) then {
	_item220 = createVehicle ["Land_Shoot_House_Wall_F",[4258.22,10420.1,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [4258.22,10420.1,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item221 = objNull;
if (_layer156 && _layer376) then {
	_item221 = createVehicle ["Land_Shoot_House_Wall_F",[4260.49,10406.4,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [4260.49,10406.4,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item222 = objNull;
if (_layer156 && _layer376) then {
	_item222 = createVehicle ["Land_Shoot_House_Wall_F",[4258.76,10405.4,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [4258.76,10405.4,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item223 = objNull;
if (_layer156 && _layer376) then {
	_item223 = createVehicle ["Land_Shoot_House_Wall_F",[4257.04,10404.4,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [4257.04,10404.4,340.667];
	_this setVectorDirAndUp [[-0.506067,0.862494,-0.000476789],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item224 = objNull;
if (_layer156 && _layer376) then {
	_item224 = createVehicle ["Land_Shoot_House_Wall_F",[4255.67,10404.7,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [4255.67,10404.7,340.668];
	_this setVectorDirAndUp [[-0.862493,-0.506066,0.00182977],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item225 = objNull;
if (_layer156 && _layer376) then {
	_item225 = createVehicle ["Land_Shoot_House_Wall_F",[4254.66,10406.5,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [4254.66,10406.5,340.667];
	_this setVectorDirAndUp [[-0.862493,-0.506066,0.00182977],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item226 = objNull;
if (_layer156 && _layer376) then {
	_item226 = createVehicle ["Land_Shoot_House_Wall_F",[4253.64,10408.2,0],[],0,"CAN_COLLIDE"];
	_this = _item226;
	_objects pushback _this;
	_objectIDs pushback 226;
	_this setPosWorld [4253.64,10408.2,340.666];
	_this setVectorDirAndUp [[-0.862493,-0.506066,0.00182977],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item227 = objNull;
if (_layer156 && _layer376) then {
	_item227 = createVehicle ["Land_Shoot_House_Wall_F",[4249.95,10416.4,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_objects pushback _this;
	_objectIDs pushback 227;
	_this setPosWorld [4249.95,10416.4,340.669];
	_this setVectorDirAndUp [[-0.506067,0.862494,0.000653625],[0.00129158,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item228 = objNull;
if (_layer156 && _layer376) then {
	_item228 = createVehicle ["Land_Shoot_House_Wall_F",[4251.62,10411.6,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_objects pushback _this;
	_objectIDs pushback 228;
	_this setPosWorld [4251.62,10411.6,340.667];
	_this setVectorDirAndUp [[-0.862493,-0.506068,0.00111398],[0.00129158,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item229 = objNull;
if (_layer156 && _layer376) then {
	_item229 = createVehicle ["Land_Shoot_House_Wall_F",[4260.24,10416.7,0],[],0,"CAN_COLLIDE"];
	_this = _item229;
	_objects pushback _this;
	_objectIDs pushback 229;
	_this setPosWorld [4260.24,10416.7,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item230 = objNull;
if (_layer156 && _layer376) then {
	_item230 = createVehicle ["Land_Shoot_House_Wall_F",[4254.32,10424.8,0],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [4254.32,10424.8,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item231 = objNull;
if (_layer156 && _layer376) then {
	_item231 = createVehicle ["Land_Shoot_House_Wall_F",[4255.33,10423.1,0],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [4255.33,10423.1,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item232 = objNull;
if (_layer156 && _layer376) then {
	_item232 = createVehicle ["Land_Shoot_House_Wall_F",[4256.34,10421.4,0],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [4256.34,10421.4,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item233 = objNull;
if (_layer156 && _layer376) then {
	_item233 = createVehicle ["Land_Shoot_House_Wall_F",[4253.76,10419.8,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [4253.76,10419.8,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item234 = objNull;
if (_layer156 && _layer376) then {
	_item234 = createVehicle ["Land_Shoot_House_Wall_F",[4252.75,10421.6,0],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [4252.75,10421.6,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item235 = objNull;
if (_layer156 && _layer376) then {
	_item235 = createVehicle ["Land_Shoot_House_Wall_F",[4251.73,10423.3,0],[],0,"CAN_COLLIDE"];
	_this = _item235;
	_objects pushback _this;
	_objectIDs pushback 235;
	_this setPosWorld [4251.73,10423.3,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item238 = objNull;
if (_layer156 && _layer376) then {
	_item238 = createVehicle ["Land_Shoot_House_Wall_F",[4260.6,10418.1,0],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [4260.6,10418.1,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item240 = objNull;
if (_layer156 && _layer376) then {
	_item240 = createVehicle ["Land_Shoot_House_Wall_F",[4262.21,10407.4,0],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [4262.21,10407.4,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item241 = objNull;
if (_layer156 && _layer376) then {
	_item241 = createVehicle ["Land_Shoot_House_Wall_F",[4261.31,10420.8,0],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [4261.31,10420.8,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item242 = objNull;
if (_layer156 && _layer376) then {
	_item242 = createVehicle ["Land_Shoot_House_Wall_F",[4264.65,10411.2,0],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [4264.65,10411.2,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item244 = objNull;
if (_layer156 && _layer376) then {
	_item244 = createVehicle ["Land_Shoot_House_Wall_F",[4266.37,10412.2,0],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [4266.37,10412.2,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item245 = objNull;
if (_layer156 && _layer376) then {
	_item245 = createVehicle ["Land_Shoot_House_Wall_F",[4249.59,10415.1,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [4249.59,10415.1,340.669];
	_this setVectorDirAndUp [[-0.862493,-0.506068,0.00111398],[0.00129158,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item248 = objNull;
if (_layer156 && _layer376) then {
	_item248 = createVehicle ["Land_Shoot_House_Wall_F",[4263.67,10413,0],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [4263.67,10413,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item249 = objNull;
if (_layer156 && _layer376) then {
	_item249 = createVehicle ["Land_Shoot_House_Wall_F",[4251.68,10417.5,0],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [4251.68,10417.5,340.667];
	_this setVectorDirAndUp [[-0.506067,0.862494,0.000653625],[0.00129158,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item250 = objNull;
if (_layer156 && _layer376) then {
	_item250 = createVehicle ["Land_Shoot_House_Wall_F",[4253.91,10417.6,0],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [4253.91,10417.6,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item251 = objNull;
if (_layer156 && _layer376) then {
	_item251 = createVehicle ["Land_Shoot_House_Wall_F",[4254.92,10415.9,0],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [4254.92,10415.9,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item252 = objNull;
if (_layer156 && _layer376) then {
	_item252 = createVehicle ["Land_Shoot_House_Wall_F",[4255.93,10414.2,0],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [4255.93,10414.2,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item253 = objNull;
if (_layer156 && _layer376) then {
	_item253 = createVehicle ["Land_Shoot_House_Wall_F",[4255.58,10412.8,0],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [4255.58,10412.8,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item254 = objNull;
if (_layer156 && _layer376) then {
	_item254 = createVehicle ["Land_Shoot_House_Wall_F",[4259.94,10409.6,0],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [4259.94,10409.6,340.665];
	_this setVectorDirAndUp [[0.862494,0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item255 = objNull;
if (_layer156 && _layer376) then {
	_item255 = createVehicle ["Land_Shoot_House_Wall_F",[4258.57,10409.9,0],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [4258.57,10409.9,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item256 = objNull;
if (_layer156 && _layer376) then {
	_item256 = createVehicle ["Land_Shoot_House_Wall_F",[4256.84,10408.9,0],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [4256.84,10408.9,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item257 = objNull;
if (_layer156 && _layer376) then {
	_item257 = createVehicle ["Land_Shoot_House_Wall_F",[4255.48,10409.3,0],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [4255.48,10409.3,340.665];
	_this setVectorDirAndUp [[0.862494,0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item258 = objNull;
if (_layer156 && _layer376) then {
	_item258 = createVehicle ["Land_Shoot_House_Wall_F",[4254.11,10409.6,0],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [4254.11,10409.6,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item259 = objNull;
if (_layer156 && _layer376) then {
	_item259 = createVehicle ["Land_Shoot_House_Wall_F",[4259.59,10419.8,0],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [4259.59,10419.8,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item260 = objNull;
if (_layer156 && _layer376) then {
	_item260 = createVehicle ["Land_Shoot_House_Wall_F",[4253.48,10444,0.542969],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [4253.48,10444,341.21];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item261 = objNull;
if (_layer156 && _layer376) then {
	_item261 = createVehicle ["Land_Shoot_House_Wall_F",[4260.33,10436.5,0.323853],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [4260.33,10436.5,340.995];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item262 = objNull;
if (_layer156 && _layer376) then {
	_item262 = createVehicle ["Land_Shoot_House_Wall_F",[4253.07,10436.8,0.319641],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [4253.07,10436.8,340.985];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item263 = objNull;
if (_layer156 && _layer376) then {
	_item263 = createVehicle ["Land_Shoot_House_Wall_F",[4259.85,10429.2,0.110291],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [4259.85,10429.2,340.776];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item264 = objNull;
if (_layer156 && _layer376) then {
	_item264 = createVehicle ["Land_Shoot_House_Wall_F",[4251.76,10443,0.519928],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [4251.76,10443,341.185];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item265 = objNull;
if (_layer156 && _layer376) then {
	_item265 = createVehicle ["Land_Shoot_House_Wall_F",[4268.48,10434.3,0.290466],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [4268.48,10434.3,340.96];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item266 = objNull;
if (_layer156 && _layer376) then {
	_item266 = createVehicle ["Land_Shoot_House_Wall_F",[4266.75,10433.3,0.258789],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [4266.75,10433.3,340.925];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item267 = objNull;
if (_layer156 && _layer376) then {
	_item267 = createVehicle ["Land_Shoot_House_Wall_F",[4250.03,10442,0.468353],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [4250.03,10442,341.134];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item268 = objNull;
if (_layer156 && _layer376) then {
	_item268 = createVehicle ["Land_Shoot_House_Wall_F",[4250.03,10442,0.468353],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [4250.03,10442,341.134];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item269 = objNull;
if (_layer156 && _layer376) then {
	_item269 = createVehicle ["Land_Shoot_House_Wall_F",[4267.82,10437.4,0.363342],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [4267.82,10437.4,341.036];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item270 = objNull;
if (_layer156 && _layer376) then {
	_item270 = createVehicle ["Land_Shoot_House_Wall_F",[4258.61,10435.5,0.309509],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [4258.61,10435.5,340.977];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item271 = objNull;
if (_layer156 && _layer376) then {
	_item271 = createVehicle ["Land_Shoot_House_Wall_F",[4258.65,10447.1,0.468445],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [4258.65,10447.1,341.142];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item272 = objNull;
if (_layer156 && _layer376) then {
	_item272 = createVehicle ["Land_Shoot_House_Wall_F",[4266.81,10439.1,0.379333],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [4266.81,10439.1,341.054];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item273 = objNull;
if (_layer156 && _layer376) then {
	_item273 = createVehicle ["Land_Shoot_House_Wall_F",[4263.77,10444.3,0.420685],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [4263.77,10444.3,341.096];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item274 = objNull;
if (_layer156 && _layer376) then {
	_item274 = createVehicle ["Land_Shoot_House_Wall_F",[4262.76,10446,0.433044],[],0,"CAN_COLLIDE"];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [4262.76,10446,341.109];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item275 = objNull;
if (_layer156 && _layer376) then {
	_item275 = createVehicle ["Land_Shoot_House_Wall_F",[4261.58,10430.2,0.152435],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [4261.58,10430.2,340.818];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item276 = objNull;
if (_layer156 && _layer376) then {
	_item276 = createVehicle ["Land_Shoot_House_Wall_F",[4262.44,10430.7,0.173584],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [4262.44,10430.7,340.839];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item277 = objNull;
if (_layer156 && _layer376) then {
	_item277 = createVehicle ["Land_Shoot_House_Wall_F",[4268.83,10435.6,0.326447],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [4268.83,10435.6,340.998];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item278 = objNull;
if (_layer156 && _layer376) then {
	_item278 = createVehicle ["Land_Shoot_House_Wall_F",[4256.52,10438.9,0.408752],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [4256.52,10438.9,341.078];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item279 = objNull;
if (_layer156 && _layer376) then {
	_item279 = createVehicle ["Land_Shoot_House_Wall_F",[4251.76,10443,0.519928],[],0,"CAN_COLLIDE"];
	_this = _item279;
	_objects pushback _this;
	_objectIDs pushback 279;
	_this setPosWorld [4251.76,10443,341.185];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item280 = objNull;
if (_layer156 && _layer376) then {
	_item280 = createVehicle ["Land_Shoot_House_Wall_F",[4260.38,10448.1,0.445831],[],0,"CAN_COLLIDE"];
	_this = _item280;
	_objects pushback _this;
	_objectIDs pushback 280;
	_this setPosWorld [4260.38,10448.1,341.121];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item281 = objNull;
if (_layer156 && _layer376) then {
	_item281 = createVehicle ["Land_Shoot_House_Wall_F",[4262.06,10437.5,0.341217],[],0,"CAN_COLLIDE"];
	_this = _item281;
	_objects pushback _this;
	_objectIDs pushback 281;
	_this setPosWorld [4262.06,10437.5,341.013];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item282 = objNull;
if (_layer156 && _layer376) then {
	_item282 = createVehicle ["Land_Shoot_House_Wall_F",[4256.1,10443.5,0.502289],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [4256.1,10443.5,341.173];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item283 = objNull;
if (_layer156 && _layer376) then {
	_item283 = createVehicle ["Land_Shoot_House_Wall_F",[4258.24,10439.9,0.427124],[],0,"CAN_COLLIDE"];
	_this = _item283;
	_objects pushback _this;
	_objectIDs pushback 283;
	_this setPosWorld [4258.24,10439.9,341.1];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item284 = objNull;
if (_layer156 && _layer376) then {
	_item284 = createVehicle ["Land_Shoot_House_Wall_F",[4261.69,10441.9,0.432495],[],0,"CAN_COLLIDE"];
	_this = _item284;
	_objects pushback _this;
	_objectIDs pushback 284;
	_this setPosWorld [4261.69,10441.9,341.108];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item285 = objNull;
if (_layer156 && _layer376) then {
	_item285 = createVehicle ["Land_Shoot_House_Wall_F",[4265.44,10439.5,0.382385],[],0,"CAN_COLLIDE"];
	_this = _item285;
	_objects pushback _this;
	_objectIDs pushback 285;
	_this setPosWorld [4265.44,10439.5,341.057];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item286 = objNull;
if (_layer156 && _layer376) then {
	_item286 = createVehicle ["Land_Shoot_House_Wall_F",[4263.42,10442.9,0.420197],[],0,"CAN_COLLIDE"];
	_this = _item286;
	_objects pushback _this;
	_objectIDs pushback 286;
	_this setPosWorld [4263.42,10442.9,341.096];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item287 = objNull;
if (_layer156 && _layer376) then {
	_item287 = createVehicle ["Land_Shoot_House_Wall_F",[4254.79,10437.8,0.359283],[],0,"CAN_COLLIDE"];
	_this = _item287;
	_objects pushback _this;
	_objectIDs pushback 287;
	_this setPosWorld [4254.79,10437.8,341.025];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item288 = objNull;
if (_layer156 && _layer376) then {
	_item288 = createVehicle ["Land_Shoot_House_Wall_F",[4261.07,10431.1,0.197113],[],0,"CAN_COLLIDE"];
	_this = _item288;
	_objects pushback _this;
	_objectIDs pushback 288;
	_this setPosWorld [4261.07,10431.1,340.863];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item289 = objNull;
if (_layer156 && _layer376) then {
	_item289 = createVehicle ["Land_Shoot_House_Wall_F",[4257.21,10435.7,0.257233],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [4257.21,10435.7,340.923];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item290 = objNull;
if (_layer156 && _layer376) then {
	_item290 = createVehicle ["Land_Shoot_House_Wall_F",[4259.05,10434.5,0.301697],[],0,"CAN_COLLIDE"];
	_this = _item290;
	_objects pushback _this;
	_objectIDs pushback 290;
	_this setPosWorld [4259.05,10434.5,340.969];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item291 = objNull;
if (_layer156 && _layer376) then {
	_item291 = createVehicle ["Land_Shoot_House_Wall_F",[4253.43,10438.2,0.363678],[],0,"CAN_COLLIDE"];
	_this = _item291;
	_objects pushback _this;
	_objectIDs pushback 291;
	_this setPosWorld [4253.43,10438.2,341.029];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item292 = objNull;
if (_layer156 && _layer376) then {
	_item292 = createVehicle ["Land_Shoot_House_Wall_F",[4249.99,10436.1,0.293274],[],0,"CAN_COLLIDE"];
	_this = _item292;
	_objects pushback _this;
	_objectIDs pushback 292;
	_this setPosWorld [4249.99,10436.1,340.959];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item293 = objNull;
if (_layer156 && _layer376) then {
	_item293 = createVehicle ["Land_Shoot_House_Wall_F",[4251.4,10441.7,0.472046],[],0,"CAN_COLLIDE"];
	_this = _item293;
	_objects pushback _this;
	_objectIDs pushback 293;
	_this setPosWorld [4251.4,10441.7,341.138];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item294 = objNull;
if (_layer156 && _layer376) then {
	_item294 = createVehicle ["Land_Shoot_House_Wall_F",[4261.75,10447.7,0.442871],[],0,"CAN_COLLIDE"];
	_this = _item294;
	_objects pushback _this;
	_objectIDs pushback 294;
	_this setPosWorld [4261.75,10447.7,341.118];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item295 = objNull;
if (_layer156 && _layer376) then {
	_item295 = createVehicle ["Land_Shoot_House_Wall_F",[4258.6,10441.2,0.452118],[],0,"CAN_COLLIDE"];
	_this = _item295;
	_objects pushback _this;
	_objectIDs pushback 295;
	_this setPosWorld [4258.6,10441.2,341.126];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item296 = objNull;
if (_layer156 && _layer376) then {
	_item296 = createVehicle ["Land_Shoot_House_Wall_F",[4259.85,10429.2,0.110291],[],0,"CAN_COLLIDE"];
	_this = _item296;
	_objects pushback _this;
	_objectIDs pushback 296;
	_this setPosWorld [4259.85,10429.2,340.776];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item297 = objNull;
if (_layer156 && _layer376) then {
	_item297 = createVehicle ["Land_Shoot_House_Wall_F",[4264.78,10442.5,0.408295],[],0,"CAN_COLLIDE"];
	_this = _item297;
	_objects pushback _this;
	_objectIDs pushback 297;
	_this setPosWorld [4264.78,10442.5,341.084];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item298 = objNull;
if (_layer156 && _layer376) then {
	_item298 = createVehicle ["Land_Shoot_House_Wall_F",[4263.72,10438.4,0.372406],[],0,"CAN_COLLIDE"];
	_this = _item298;
	_objects pushback _this;
	_objectIDs pushback 298;
	_this setPosWorld [4263.72,10438.4,341.046];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item299 = objNull;
if (_layer156 && _layer376) then {
	_item299 = createVehicle ["Land_Shoot_House_Wall_F",[4246.58,10440,0.363342],[],0,"CAN_COLLIDE"];
	_this = _item299;
	_objects pushback _this;
	_objectIDs pushback 299;
	_this setPosWorld [4246.58,10440,341.029];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item300 = objNull;
if (_layer156 && _layer376) then {
	_item300 = createVehicle ["Land_Shoot_House_Wall_F",[4242.64,10427.2,0],[],0,"CAN_COLLIDE"];
	_this = _item300;
	_objects pushback _this;
	_objectIDs pushback 300;
	_this setPosWorld [4242.64,10427.2,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item301 = objNull;
if (_layer156 && _layer376) then {
	_item301 = createVehicle ["Land_Shoot_House_Wall_F",[4256.4,10427.2,0],[],0,"CAN_COLLIDE"];
	_this = _item301;
	_objects pushback _this;
	_objectIDs pushback 301;
	_this setPosWorld [4256.4,10427.2,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item302 = objNull;
if (_layer156 && _layer376) then {
	_item302 = createVehicle ["Land_Shoot_House_Wall_F",[4243.15,10438,0.149078],[],0,"CAN_COLLIDE"];
	_this = _item302;
	_objects pushback _this;
	_objectIDs pushback 302;
	_this setPosWorld [4243.15,10438,340.815];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item303 = objNull;
if (_layer156 && _layer376) then {
	_item303 = createVehicle ["Land_Shoot_House_Wall_F",[4250.36,10423.7,0],[],0,"CAN_COLLIDE"];
	_this = _item303;
	_objects pushback _this;
	_objectIDs pushback 303;
	_this setPosWorld [4250.36,10423.7,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item304 = objNull;
if (_layer156 && _layer376) then {
	_item304 = createVehicle ["Land_Shoot_House_Wall_F",[4253.37,10432.4,0.271606],[],0,"CAN_COLLIDE"];
	_this = _item304;
	_objects pushback _this;
	_objectIDs pushback 304;
	_this setPosWorld [4253.37,10432.4,340.937];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item305 = objNull;
if (_layer156 && _layer376) then {
	_item305 = createVehicle ["Land_Shoot_House_Wall_F",[4245.79,10437.3,0.200623],[],0,"CAN_COLLIDE"];
	_this = _item305;
	_objects pushback _this;
	_objectIDs pushback 305;
	_this setPosWorld [4245.79,10437.3,340.866];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item306 = objNull;
if (_layer156 && _layer376) then {
	_item306 = createVehicle ["Land_Shoot_House_Wall_F",[4243.65,10425.5,0],[],0,"CAN_COLLIDE"];
	_this = _item306;
	_objects pushback _this;
	_objectIDs pushback 306;
	_this setPosWorld [4243.65,10425.5,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item307 = objNull;
if (_layer156 && _layer376) then {
	_item307 = createVehicle ["Land_Shoot_House_Wall_F",[4238.95,10435.5,0],[],0,"CAN_COLLIDE"];
	_this = _item307;
	_objects pushback _this;
	_objectIDs pushback 307;
	_this setPosWorld [4238.95,10435.5,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item308 = objNull;
if (_layer156 && _layer376) then {
	_item308 = createVehicle ["Land_Shoot_House_Wall_F",[4240.61,10430.7,0],[],0,"CAN_COLLIDE"];
	_this = _item308;
	_objects pushback _this;
	_objectIDs pushback 308;
	_this setPosWorld [4240.61,10430.7,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item309 = objNull;
if (_layer156 && _layer376) then {
	_item309 = createVehicle ["Land_Shoot_House_Wall_F",[4239.6,10432.4,0],[],0,"CAN_COLLIDE"];
	_this = _item309;
	_objects pushback _this;
	_objectIDs pushback 309;
	_this setPosWorld [4239.6,10432.4,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item310 = objNull;
if (_layer156 && _layer376) then {
	_item310 = createVehicle ["Land_Shoot_House_Wall_F",[4251.64,10431.4,0.102905],[],0,"CAN_COLLIDE"];
	_this = _item310;
	_objects pushback _this;
	_objectIDs pushback 310;
	_this setPosWorld [4251.64,10431.4,340.768];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item311 = objNull;
if (_layer156 && _layer376) then {
	_item311 = createVehicle ["Land_Shoot_House_Wall_F",[4249.62,10434.8,0.210938],[],0,"CAN_COLLIDE"];
	_this = _item311;
	_objects pushback _this;
	_objectIDs pushback 311;
	_this setPosWorld [4249.62,10434.8,340.876];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item312 = objNull;
if (_layer156 && _layer376) then {
	_item312 = createVehicle ["Land_Shoot_House_Wall_F",[4248.64,10422.6,0],[],0,"CAN_COLLIDE"];
	_this = _item312;
	_objects pushback _this;
	_objectIDs pushback 312;
	_this setPosWorld [4248.64,10422.6,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item313 = objNull;
if (_layer156 && _layer376) then {
	_item313 = createVehicle ["Land_Shoot_House_Wall_F",[4248.15,10429.3,0],[],0,"CAN_COLLIDE"];
	_this = _item313;
	_objects pushback _this;
	_objectIDs pushback 313;
	_this setPosWorld [4248.15,10429.3,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item314 = objNull;
if (_layer156 && _layer376) then {
	_item314 = createVehicle ["Land_Shoot_House_Wall_F",[4244.01,10426.9,0],[],0,"CAN_COLLIDE"];
	_this = _item314;
	_objects pushback _this;
	_objectIDs pushback 314;
	_this setPosWorld [4244.01,10426.9,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item315 = objNull;
if (_layer156 && _layer376) then {
	_item315 = createVehicle ["Land_Shoot_House_Wall_F",[4247.04,10421.7,0],[],0,"CAN_COLLIDE"];
	_this = _item315;
	_objects pushback _this;
	_objectIDs pushback 315;
	_this setPosWorld [4247.04,10421.7,340.667];
	_this setVectorDirAndUp [[-0.506067,0.862494,-0.000476789],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item316 = objNull;
if (_layer156 && _layer376) then {
	_item316 = createVehicle ["Land_Shoot_House_Wall_F",[4244.49,10431.9,0],[],0,"CAN_COLLIDE"];
	_this = _item316;
	_objects pushback _this;
	_objectIDs pushback 316;
	_this setPosWorld [4244.49,10431.9,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item317 = objNull;
if (_layer156 && _layer376) then {
	_item317 = createVehicle ["Land_Shoot_House_Wall_F",[4247.89,10433.8,0.0542297],[],0,"CAN_COLLIDE"];
	_this = _item317;
	_objects pushback _this;
	_objectIDs pushback 317;
	_this setPosWorld [4247.89,10433.8,340.72];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item318 = objNull;
if (_layer156 && _layer376) then {
	_item318 = createVehicle ["Land_Shoot_House_Wall_F",[4245.68,10422.1,0],[],0,"CAN_COLLIDE"];
	_this = _item318;
	_objects pushback _this;
	_objectIDs pushback 318;
	_this setPosWorld [4245.68,10422.1,340.668];
	_this setVectorDirAndUp [[-0.862493,-0.506066,0.00182977],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item319 = objNull;
if (_layer156 && _layer376) then {
	_item319 = createVehicle ["Land_Shoot_House_Wall_F",[4255.75,10430.3,0],[],0,"CAN_COLLIDE"];
	_this = _item319;
	_objects pushback _this;
	_objectIDs pushback 319;
	_this setPosWorld [4255.75,10430.3,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item320 = objNull;
if (_layer156 && _layer376) then {
	_item320 = createVehicle ["Land_Shoot_House_Wall_F",[4254.79,10432,0],[],0,"CAN_COLLIDE"];
	_this = _item320;
	_objects pushback _this;
	_objectIDs pushback 320;
	_this setPosWorld [4254.79,10432,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item321 = objNull;
if (_layer156 && _layer376) then {
	_item321 = createVehicle ["Land_Shoot_House_Wall_F",[4247.72,10432.5,0],[],0,"CAN_COLLIDE"];
	_this = _item321;
	_objects pushback _this;
	_objectIDs pushback 321;
	_this setPosWorld [4247.72,10432.5,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item322 = objNull;
if (_layer156 && _layer376) then {
	_item322 = createVehicle ["Land_Shoot_House_Wall_F",[4246.84,10429.7,0],[],0,"CAN_COLLIDE"];
	_this = _item322;
	_objects pushback _this;
	_objectIDs pushback 322;
	_this setPosWorld [4246.84,10429.7,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item323 = objNull;
if (_layer156 && _layer376) then {
	_item323 = createVehicle ["Land_Shoot_House_Wall_F",[4244.4,10437.6,0.171082],[],0,"CAN_COLLIDE"];
	_this = _item323;
	_objects pushback _this;
	_objectIDs pushback 323;
	_this setPosWorld [4244.4,10437.6,340.837];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item324 = objNull;
if (_layer156 && _layer376) then {
	_item324 = createVehicle ["Land_Shoot_House_Wall_F",[4238.59,10434.1,0],[],0,"CAN_COLLIDE"];
	_this = _item324;
	_objects pushback _this;
	_objectIDs pushback 324;
	_this setPosWorld [4238.59,10434.1,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item325 = objNull;
if (_layer156 && _layer376) then {
	_item325 = createVehicle ["Land_Shoot_House_Wall_F",[4256.4,10427.2,0],[],0,"CAN_COLLIDE"];
	_this = _item325;
	_objects pushback _this;
	_objectIDs pushback 325;
	_this setPosWorld [4256.4,10427.2,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item326 = objNull;
if (_layer156 && _layer376) then {
	_item326 = createVehicle ["Land_Shoot_House_Wall_F",[4248.29,10441,0.414795],[],0,"CAN_COLLIDE"];
	_this = _item326;
	_objects pushback _this;
	_objectIDs pushback 326;
	_this setPosWorld [4248.29,10441,341.08];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item327 = objNull;
if (_layer156 && _layer376) then {
	_item327 = createVehicle ["Land_Shoot_House_Wall_F",[4246.2,10432.8,0],[],0,"CAN_COLLIDE"];
	_this = _item327;
	_objects pushback _this;
	_objectIDs pushback 327;
	_this setPosWorld [4246.2,10432.8,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item328 = objNull;
if (_layer156 && _layer376) then {
	_item328 = createVehicle ["Land_Shoot_House_Wall_F",[4241.43,10436.9,0.0158081],[],0,"CAN_COLLIDE"];
	_this = _item328;
	_objects pushback _this;
	_objectIDs pushback 328;
	_this setPosWorld [4241.43,10436.9,340.681];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item329 = objNull;
if (_layer156 && _layer376) then {
	_item329 = createVehicle ["Land_Shoot_House_Wall_F",[4249.92,10430.3,0],[],0,"CAN_COLLIDE"];
	_this = _item329;
	_objects pushback _this;
	_objectIDs pushback 329;
	_this setPosWorld [4249.92,10430.3,340.665];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item330 = objNull;
if (_layer156 && _layer376) then {
	_item330 = createVehicle ["Land_Shoot_House_Wall_F",[4258.49,10429.7,0],[],0,"CAN_COLLIDE"];
	_this = _item330;
	_objects pushback _this;
	_objectIDs pushback 330;
	_this setPosWorld [4258.49,10429.7,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item331 = objNull;
if (_layer156 && _layer376) then {
	_item331 = createVehicle ["Land_Shoot_House_Wall_F",[4250.61,10413.4,0],[],0,"CAN_COLLIDE"];
	_this = _item331;
	_objects pushback _this;
	_objectIDs pushback 331;
	_this setPosWorld [4250.61,10413.4,340.668];
	_this setVectorDirAndUp [[-0.862493,-0.506068,0.00111398],[0.00129158,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item332 = objNull;
if (_layer156 && _layer376) then {
	_item332 = createVehicle ["Land_Shoot_House_Wall_F",[4277.93,10420.1,0],[],0,"CAN_COLLIDE"];
	_this = _item332;
	_objects pushback _this;
	_objectIDs pushback 332;
	_this setPosWorld [4277.93,10420.1,340.676];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item333 = objNull;
if (_layer156 && _layer376) then {
	_item333 = createVehicle ["Land_Shoot_House_Wall_F",[4261.26,10415,0],[],0,"CAN_COLLIDE"];
	_this = _item333;
	_objects pushback _this;
	_objectIDs pushback 333;
	_this setPosWorld [4261.26,10415,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item334 = objNull;
if (_layer156 && _layer376) then {
	_item334 = createVehicle ["Land_Shoot_House_Wall_F",[4260.79,10421.7,0],[],0,"CAN_COLLIDE"];
	_this = _item334;
	_objects pushback _this;
	_objectIDs pushback 334;
	_this setPosWorld [4260.79,10421.7,340.665];
	_this setVectorDirAndUp [[0.862494,0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item335 = objNull;
if (_layer156 && _layer376) then {
	_item335 = createVehicle ["Land_Shoot_House_Wall_F",[4250.42,10437.4,0.313385],[],0,"CAN_COLLIDE"];
	_this = _item335;
	_objects pushback _this;
	_objectIDs pushback 335;
	_this setPosWorld [4250.42,10437.4,340.979];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item336 = objNull;
if (_layer156 && _layer376) then {
	_item336 = createVehicle ["Land_Shoot_House_Wall_F",[4241.62,10429,0],[],0,"CAN_COLLIDE"];
	_this = _item336;
	_objects pushback _this;
	_objectIDs pushback 336;
	_this setPosWorld [4241.62,10429,340.665];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item337 = objNull;
if (_layer156 && _layer376) then {
	_item337 = createVehicle ["Land_Shoot_House_Wall_F",[4244.7,10423.8,0],[],0,"CAN_COLLIDE"];
	_this = _item337;
	_objects pushback _this;
	_objectIDs pushback 337;
	_this setPosWorld [4244.7,10423.8,340.667];
	_this setVectorDirAndUp [[-0.862494,-0.506067,0.000653774],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item338 = objNull;
if (_layer156 && _layer376) then {
	_item338 = createVehicle ["Land_Shoot_House_Wall_F",[4265.78,10440.8,0.395355],[],0,"CAN_COLLIDE"];
	_this = _item338;
	_objects pushback _this;
	_objectIDs pushback 338;
	_this setPosWorld [4265.78,10440.8,341.071];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item339 = objNull;
if (_layer156 && _layer376) then {
	_item339 = createVehicle ["Land_Shoot_House_Wall_F",[4256.95,10446.1,0.493011],[],0,"CAN_COLLIDE"];
	_this = _item339;
	_objects pushback _this;
	_objectIDs pushback 339;
	_this setPosWorld [4256.95,10446.1,341.164];
	_this setVectorDirAndUp [[-0.506067,0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item340 = objNull;
if (_layer156 && _layer376) then {
	_item340 = createVehicle ["Land_Shoot_House_Wall_F",[4246.22,10438.6,0.289093],[],0,"CAN_COLLIDE"];
	_this = _item340;
	_objects pushback _this;
	_objectIDs pushback 340;
	_this setPosWorld [4246.22,10438.6,340.955];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item341 = objNull;
if (_layer156 && _layer376) then {
	_item341 = createVehicle ["Land_Shoot_House_Wall_F",[4256.58,10444.8,0.494812],[],0,"CAN_COLLIDE"];
	_this = _item341;
	_objects pushback _this;
	_objectIDs pushback 341;
	_this setPosWorld [4256.58,10444.8,341.166];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item342 = objNull;
if (_layer156 && _layer376) then {
	_item342 = createVehicle ["Land_Shoot_House_Wall_F",[4254.71,10443.8,0.521179],[],0,"CAN_COLLIDE"];
	_this = _item342;
	_objects pushback _this;
	_objectIDs pushback 342;
	_this setPosWorld [4254.71,10443.8,341.19];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item343 = objNull;
if (_layer156 && _layer376) then {
	_item343 = createVehicle ["Land_Shoot_House_Wall_F",[4271.85,10430.4,0.210236],[],0,"CAN_COLLIDE"];
	_this = _item343;
	_objects pushback _this;
	_objectIDs pushback 343;
	_this setPosWorld [4271.85,10430.4,340.882];
	_this setVectorDirAndUp [[-0.862493,-0.506068,-0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item344 = objNull;
if (_layer156 && _layer376) then {
	_item344 = createVehicle ["Land_Shoot_House_Wall_F",[4269.83,10433.9,0.285217],[],0,"CAN_COLLIDE"];
	_this = _item344;
	_objects pushback _this;
	_objectIDs pushback 344;
	_this setPosWorld [4269.83,10433.9,340.956];
	_this setVectorDirAndUp [[-0.862494,-0.506068,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item345 = objNull;
if (_layer156 && _layer376) then {
	_item345 = createVehicle ["Land_Shoot_House_Wall_F",[4270.84,10432.2,0.244965],[],0,"CAN_COLLIDE"];
	_this = _item345;
	_objects pushback _this;
	_objectIDs pushback 345;
	_this setPosWorld [4270.84,10432.2,340.915];
	_this setVectorDirAndUp [[-0.862493,-0.506068,-0.00111423],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item346 = objNull;
if (_layer156 && _layer376) then {
	_item346 = createVehicle ["Land_Shoot_House_Wall_F",[4240.19,10436.2,0],[],0,"CAN_COLLIDE"];
	_this = _item346;
	_objects pushback _this;
	_objectIDs pushback 346;
	_this setPosWorld [4240.19,10436.2,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item347 = objNull;
if (_layer156 && _layer376) then {
	_item347 = createVehicle ["Land_Shoot_House_Wall_F",[4248.63,10416.9,0],[],0,"CAN_COLLIDE"];
	_this = _item347;
	_objects pushback _this;
	_objectIDs pushback 347;
	_this setPosWorld [4248.63,10416.9,340.671];
	_this setVectorDirAndUp [[-0.862493,-0.506068,0.00111398],[0.00129158,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item348 = objNull;
if (_layer156 && _layer376) then {
	_item348 = createVehicle ["Land_Shoot_House_Wall_F",[4247.62,10418.6,0],[],0,"CAN_COLLIDE"];
	_this = _item348;
	_objects pushback _this;
	_objectIDs pushback 348;
	_this setPosWorld [4247.62,10418.6,340.671];
	_this setVectorDirAndUp [[-0.862493,-0.506066,0.00182977],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item349 = objNull;
if (_layer156 && _layer376) then {
	_item349 = createVehicle ["Land_Shoot_House_Wall_F",[4246.61,10420.3,0],[],0,"CAN_COLLIDE"];
	_this = _item349;
	_objects pushback _this;
	_objectIDs pushback 349;
	_this setPosWorld [4246.61,10420.3,340.67];
	_this setVectorDirAndUp [[-0.862493,-0.506066,0.00182977],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item350 = objNull;
if (_layer156 && _layer376) then {
	_item350 = createVehicle ["VR_Area_01_circle_4_yellow_F",[4242.21,10448.7,0],[],0,"CAN_COLLIDE"];
	_this = _item350;
	_objects pushback _this;
	_objectIDs pushback 350;
	_this setPosWorld [4242.21,10448.7,338.99];
	_this setVectorDirAndUp [[0.538199,-0.842818,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item354 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item354 = createVehicle ["Sign_Arrow_F",[4262.87,10429.5,0.124481],[],0,"CAN_COLLIDE"];
	_this = _item354;
	_objects pushback _this;
	_objectIDs pushback 354;
	_this setPosWorld [4262.87,10429.5,339.488];
	_this setVectorDirAndUp [[0.519093,-0.854718,0],[0,0,1]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item355 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item355 = createVehicle ["Sign_Arrow_F",[4263.81,10440,0.387299],[],0,"CAN_COLLIDE"];
	_this = _item355;
	_objects pushback _this;
	_objectIDs pushback 355;
	_this setPosWorld [4263.81,10440,339.761];
	_this setVectorDirAndUp [[-0.864926,-0.501899,0],[0,0,1]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item356 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item356 = createVehicle ["Sign_Arrow_F",[4250.07,10440.8,0.430878],[],0,"CAN_COLLIDE"];
	_this = _item356;
	_objects pushback _this;
	_objectIDs pushback 356;
	_this setPosWorld [4250.07,10440.8,339.794];
	_this setVectorDirAndUp [[0.505877,-0.862605,0],[0,0,1]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item357 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item357 = createVehicle ["Sign_Arrow_F",[4248.28,10424.8,0],[],0,"CAN_COLLIDE"];
	_this = _item357;
	_objects pushback _this;
	_objectIDs pushback 357;
	_this setPosWorld [4248.28,10424.8,339.363];
	_this setVectorDirAndUp [[0.879769,0.475401,0],[0,0,1]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item358 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item358 = createVehicle ["Sign_Arrow_F",[4241.8,10433.6,0],[],0,"CAN_COLLIDE"];
	_this = _item358;
	_objects pushback _this;
	_objectIDs pushback 358;
	_this setPosWorld [4241.8,10433.6,339.363];
	_this setVectorDirAndUp [[0.884637,0.46628,0],[0,0,1]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item359 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item359 = createVehicle ["Sign_Arrow_F",[4265.06,10412.4,0],[],0,"CAN_COLLIDE"];
	_this = _item359;
	_objects pushback _this;
	_objectIDs pushback 359;
	_this setPosWorld [4265.06,10412.4,339.363];
	_this setVectorDirAndUp [[-0.831098,-0.556127,0],[0,0,1]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item360 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item360 = createVehicle ["Sign_Arrow_F",[4266.81,10415.8,0],[],0,"CAN_COLLIDE"];
	_this = _item360;
	_objects pushback _this;
	_objectIDs pushback 360;
	_this setPosWorld [4266.81,10415.8,339.363];
	_this setVectorDirAndUp [[0.853047,0.521833,0],[0,0,1]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item361 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item361 = createVehicle ["Sign_Arrow_F",[4263.45,10422.8,0],[],0,"CAN_COLLIDE"];
	_this = _item361;
	_objects pushback _this;
	_objectIDs pushback 361;
	_this setPosWorld [4263.45,10422.8,339.363];
	_this setVectorDirAndUp [[0.847252,0.531191,0],[0,0,1]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item362 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item362 = createVehicle ["Sign_Arrow_F",[4261.01,10419.3,0],[],0,"CAN_COLLIDE"];
	_this = _item362;
	_objects pushback _this;
	_objectIDs pushback 362;
	_this setPosWorld [4261.01,10419.3,339.363];
	_this setVectorDirAndUp [[-0.860904,-0.508768,0],[0,0,1]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item363 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item363 = createVehicle ["Sign_Arrow_F",[4259.25,10426.5,0],[],0,"CAN_COLLIDE"];
	_this = _item363;
	_objects pushback _this;
	_objectIDs pushback 363;
	_this setPosWorld [4259.25,10426.5,339.363];
	_this setVectorDirAndUp [[-0.507036,0.861925,0],[0,0,1]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item364 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item364 = createVehicle ["Sign_Arrow_F",[4271.43,10426.6,0.133484],[],0,"CAN_COLLIDE"];
	_this = _item364;
	_objects pushback _this;
	_objectIDs pushback 364;
	_this setPosWorld [4271.43,10426.6,339.502];
	_this setVectorDirAndUp [[0.508318,-0.861169,0.000656681],[-0.00129187,0,0.999999]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item365 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item365 = createVehicle ["Sign_Arrow_F",[4249.05,10435.4,0.215424],[],0,"CAN_COLLIDE"];
	_this = _item365;
	_objects pushback _this;
	_objectIDs pushback 365;
	_this setPosWorld [4249.05,10435.4,339.579];
	_this setVectorDirAndUp [[0.505877,-0.862605,0],[0,0,1]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item366 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item366 = createVehicle ["Sign_Arrow_F",[4262.33,10415.3,0],[],0,"CAN_COLLIDE"];
	_this = _item366;
	_objects pushback _this;
	_objectIDs pushback 366;
	_this setPosWorld [4262.33,10415.3,339.363];
	_this setVectorDirAndUp [[0.505877,-0.862605,0],[0,0,1]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item367 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item367 = createVehicle ["Sign_Arrow_F",[4273.88,10422.1,0],[],0,"CAN_COLLIDE"];
	_this = _item367;
	_objects pushback _this;
	_objectIDs pushback 367;
	_this setPosWorld [4273.88,10422.1,339.372];
	_this setVectorDirAndUp [[0.505877,-0.862605,0.000653528],[-0.00129187,0,0.999999]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item368 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item368 = createVehicle ["Sign_Arrow_F",[4265.11,10437.9,0.36795],[],0,"CAN_COLLIDE"];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [4265.11,10437.9,339.738];
	_this setVectorDirAndUp [[-0.507036,0.861925,0],[0,0,1]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item369 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item369 = createVehicle ["Sign_Arrow_F",[4260.75,10433.8,0.275421],[],0,"CAN_COLLIDE"];
	_this = _item369;
	_objects pushback _this;
	_objectIDs pushback 369;
	_this setPosWorld [4260.75,10433.8,339.64];
	_this setVectorDirAndUp [[-0.507036,0.861925,0],[0,0,1]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item370 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item370 = createVehicle ["Sign_Arrow_F",[4257.52,10407.5,0],[],0,"CAN_COLLIDE"];
	_this = _item370;
	_objects pushback _this;
	_objectIDs pushback 370;
	_this setPosWorld [4257.52,10407.5,339.363];
	_this setVectorDirAndUp [[-0.507036,0.861925,0],[0,0,1]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item371 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item371 = createVehicle ["Sign_Arrow_F",[4261.28,10445.5,0.440216],[],0,"CAN_COLLIDE"];
	_this = _item371;
	_objects pushback _this;
	_objectIDs pushback 371;
	_this setPosWorld [4261.28,10445.5,339.813];
	_this setVectorDirAndUp [[0.519093,-0.854718,0],[0,0,1]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item372 = objNull;
if (_layer353 && _layer156 && _layer376) then {
	_item372 = createVehicle ["Sign_Arrow_F",[4271.11,10416.2,0],[],0,"CAN_COLLIDE"];
	_this = _item372;
	_objects pushback _this;
	_objectIDs pushback 372;
	_this setPosWorld [4271.11,10416.2,339.366];
	_this setVectorDirAndUp [[0.505877,-0.862606,-0.000476731],[-0.00133721,-0.00133688,0.999998]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item377 = objNull;
if (_layer156 && _layer376) then {
	_item377 = createVehicle ["Land_Shoot_House_Wall_F",[4268.32,10411,0],[],0,"CAN_COLLIDE"];
	_this = _item377;
	_objects pushback _this;
	_objectIDs pushback 377;
	_this setPosWorld [4268.32,10411,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item378 = objNull;
if (_layer156 && _layer376) then {
	_item378 = createVehicle ["Land_Shoot_House_Wall_F",[4266.62,10409.9,0],[],0,"CAN_COLLIDE"];
	_this = _item378;
	_objects pushback _this;
	_objectIDs pushback 378;
	_this setPosWorld [4266.62,10409.9,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item379 = objNull;
if (_layer156 && _layer376) then {
	_item379 = createVehicle ["Land_Shoot_House_Wall_F",[4265.31,10409.2,0],[],0,"CAN_COLLIDE"];
	_this = _item379;
	_objects pushback _this;
	_objectIDs pushback 379;
	_this setPosWorld [4265.31,10409.2,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item380 = objNull;
if (_layer156 && _layer376) then {
	_item380 = createVehicle ["Land_Shoot_House_Wall_F",[4267.95,10415.5,0],[],0,"CAN_COLLIDE"];
	_this = _item380;
	_objects pushback _this;
	_objectIDs pushback 380;
	_this setPosWorld [4267.95,10415.5,340.665];
	_this setVectorDirAndUp [[0.506068,-0.862494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item381 = objNull;
if (_layer376) then {
	_item381 = createVehicle ["Gunrack1",[4804.99,10248.7,0.0473328],[],0,"CAN_COLLIDE"];
	_this = _item381;
	_objects pushback _this;
	_objectIDs pushback 381;
	_this setPosWorld [4804.99,10248.7,339.542];
	_this setVectorDirAndUp [[-0.877079,0.480346,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item382 = objNull;
if (_layer376) then {
	_item382 = createVehicle ["Gunrack1",[4802.82,10244.4,0.0473328],[],0,"CAN_COLLIDE"];
	_this = _item382;
	_objects pushback _this;
	_objectIDs pushback 382;
	_this setPosWorld [4802.82,10244.4,339.542];
	_this setVectorDirAndUp [[-0.877079,0.480346,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item383 = objNull;
if (_layer376) then {
	_item383 = createVehicle ["Gunrack1",[4796.45,10244.3,0.041687],[],0,"CAN_COLLIDE"];
	_this = _item383;
	_objects pushback _this;
	_objectIDs pushback 383;
	_this setPosWorld [4796.45,10244.3,339.542];
	_this setVectorDirAndUp [[-0.877079,0.480346,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item385 = objNull;
if (_layerRoot) then {
	_item385 = createVehicle ["Land_ClutterCutter_medium_F",[4242.25,10448.7,0],[],0,"CAN_COLLIDE"];
	_this = _item385;
	_objects pushback _this;
	_objectIDs pushback 385;
	_this setPosWorld [4242.25,10448.7,338.99];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item129 = objNull;
if (_layer145) then {
	_item129 = createTrigger ["EmptyDetectorArea10x10",[5219.63,9789.92,1.73157],true];
	_this = _item129;
	_triggers pushback _this;
	_triggerIDs pushback 129;
	_item129 setPosATL [5219.63,9789.92,1.73157];
	_this setTriggerArea [5,20,264.307,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item130 = objNull;
if (_layer145) then {
	_item130 = createTrigger ["EmptyDetectorArea10x10",[4199.54,10349.8,0.000793457],true];
	_this = _item130;
	_triggers pushback _this;
	_triggerIDs pushback 130;
	_item130 setPosATL [4199.54,10349.8,0.000793457];
	_this setTriggerArea [5,20,232.965,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate2 animate [""Door_1_rot"", 1]}","call{gate2 animate [""Door_1_rot"", 0]}"];
};

private _item131 = objNull;
if (_layer145) then {
	_item131 = createTrigger ["EmptyDetectorArea10x10",[4539.68,9857.07,0],true];
	_this = _item131;
	_triggers pushback _this;
	_triggerIDs pushback 131;
	_item131 setPosATL [4539.68,9857.07,0];
	_this setTriggerArea [5,20,177.522,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate3 animate [""Door_1_rot"", 1]}","call{gate3 animate [""Door_1_rot"", 0]}"];
};

private _item132 = objNull;
if (_layer145) then {
	_item132 = createTrigger ["EmptyDetectorArea10x10",[4758.38,10756,-0.0577698],true];
	_this = _item132;
	_triggers pushback _this;
	_triggerIDs pushback 132;
	_item132 setPosATL [4758.38,10756,-0.0577698];
	_this setTriggerArea [5,20,232.966,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate4 animate [""Door_1_rot"", 1]}","call{gate4 animate [""Door_1_rot"", 0]}"];
};

private _item149 = objNull;
if (_layer376) then {
	_item149 = createTrigger ["EmptyDetectorArea10x10",[4820.93,10297,0.0932922],false];
	_this = _item149;
	_triggers pushback _this;
	_triggerIDs pushback 149;
	_item149 setPosATL [4820.93,10297,0.0932922];
	_this setTriggerArea [6,6,59.5653,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item351 = objNull;
if (_layer156 && _layer376) then {
	_item351 = createTrigger ["EmptyDetectorAreaR50",[4251.12,10421,0],false];
	_this = _item351;
	_triggers pushback _this;
	_triggerIDs pushback 351;
	_item351 setPosATL [4251.12,10421,0];
	_this setTriggerArea [30,30,239.951,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item352 = objNull;
if (_layer156 && _layer376) then {
	_item352 = createTrigger ["EmptyDetectorArea10x10",[4259.27,10426.1,0],true];
	_this = _item352;
	_triggers pushback _this;
	_triggerIDs pushback 352;
	_item352 setPosATL [4259.27,10426.1,0];
	_this setTriggerArea [18,13.5,-120.738,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item0;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	      //if (!is3DEN && !(["","ColorWEST","HQ",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ",true]'];          ["","ColorWEST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item135 = objNull;
if (_layer145) then {
	_item135 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[5214.62,9781.46,0],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_logics pushback _this;
	_logicIDs pushback 135;
	_this setPosWorld [5214.62,9781.46,334.665];
	_this setVectorDirAndUp [[-0.0211956,0.999728,-0.00968332],[0.169508,0.0131387,0.985441]];
	_this setVariable ["objectArea",[5,5,358.785,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item136 = objNull;
if (_layer145) then {
	_item136 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[4201.41,10351.7,0.000213623],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_logics pushback _this;
	_logicIDs pushback 136;
	_this setPosWorld [4201.41,10351.7,338.825];
	_this setVectorDirAndUp [[-0.528219,0.849108,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,328.115,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item137 = objNull;
if (_layer145) then {
	_item137 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[4539.8,9858.66,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_logics pushback _this;
	_logicIDs pushback 137;
	_this setPosWorld [4539.8,9858.66,338.995];
	_this setVectorDirAndUp [[0.99497,-0.100178,0.000129417],[0,0.00129187,0.999999]];
	_this setVariable ["objectArea",[5,5,95.7494,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item138 = objNull;
if (_layer145) then {
	_item138 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[4760.26,10757.9,-0.0616455],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_logics pushback _this;
	_logicIDs pushback 138;
	_this setPosWorld [4760.26,10757.9,337.051];
	_this setVectorDirAndUp [[-0.528219,0.849108,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,328.115,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item139 = objNull;
if (_layer145) then {
	_item139 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[4755.21,10315,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_logics pushback _this;
	_logicIDs pushback 139;
	_this setPosWorld [4755.21,10315,339.002];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	_this setVariable ["objectArea",[3,3,358.768,false,-1]];
	_this setVariable ["#filter",14];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item134 = objNull;
if (_layer145) then {
	_item134 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleEditTerrainObject_F",[4720.94,10342.1,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_logics pushback _this;
	_logicIDs pushback 134;
	_this setPosWorld [4720.94,10342.1,339];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	_this setVariable ["objectArea",[1,1,358.768,false,-1]];
	_this setVariable ["#name",""];
	_this setVariable ["#initServer",""];
	_this setVariable ["#init",""];
	_this setVariable ["#filter",7];
	_this setVariable ["#state",5];
	_this setVariable ["#allowDamage",true];
	_this setVariable ["#doorStates",[0,0,0]];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item140 = objNull;
if (_layer145) then {
	_item140 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[4738.51,10309.2,0.00152588],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_logics pushback _this;
	_logicIDs pushback 140;
	_this setPosWorld [4738.51,10309.2,339.002];
	_this setVectorDirAndUp [[-0.0215069,0.999769,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,358.768,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item150 = objNull;
if (_layer376) then {
	_item150 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[4790.73,10234.2,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_logics pushback _this;
	_logicIDs pushback 150;
	_this setPosWorld [4790.73,10234.2,339];
	_this setVectorDirAndUp [[0.356303,0.934371,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item374 = objNull;
if (_layer373 && _layer156 && _layer376) then {
	_item374 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[4253.07,10414.5,0],[],0,"CAN_COLLIDE"];
	_this = _item374;
	_logics pushback _this;
	_logicIDs pushback 374;
	_this setPosWorld [4253.07,10414.5,338.99];
	_this setVectorDirAndUp [[0.95089,0.30953,0],[0,0,1]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item375 = objNull;
if (_layer373 && _layer156 && _layer376) then {
	_item375 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[4248.39,10450.7,0],[],0,"CAN_COLLIDE"];
	_this = _item375;
	_logics pushback _this;
	_logicIDs pushback 375;
	_this setPosWorld [4248.39,10450.7,338.99];
	_this setVectorDirAndUp [[0.348226,-0.937411,0],[0,0,1]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer373) then {missionNamespace setVariable ["base_mil_Spawns",[[_item374,_item375],[]]];};
if (_layer353) then {missionNamespace setVariable ["base_mil_Shoothouse Targets",[[_item354,_item355,_item356,_item357,_item358,_item359,_item360,_item361,_item362,_item363,_item364,_item365,_item366,_item367,_item368,_item369,_item370,_item371,_item372],[]]];};
if (_layer156) then {missionNamespace setVariable ["base_mil_Shoothouse Pit",[[_item157,_item158,_item163,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item206,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item238,_item240,_item241,_item242,_item244,_item245,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item259,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item279,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293,_item294,_item295,_item296,_item297,_item298,_item299,_item300,_item301,_item302,_item303,_item304,_item305,_item306,_item307,_item308,_item309,_item310,_item311,_item312,_item313,_item314,_item315,_item316,_item317,_item318,_item319,_item320,_item321,_item322,_item323,_item324,_item325,_item326,_item327,_item328,_item329,_item330,_item331,_item332,_item333,_item334,_item335,_item336,_item337,_item338,_item339,_item340,_item341,_item342,_item343,_item344,_item345,_item346,_item347,_item348,_item349,_item350,_item351,_item352,_item354,_item355,_item356,_item357,_item358,_item359,_item360,_item361,_item362,_item363,_item364,_item365,_item366,_item367,_item368,_item369,_item370,_item371,_item372,_item374,_item375,_item377,_item378,_item379,_item380],[]]];};
if (_layer376) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item147,_item149,_item150,_item157,_item158,_item163,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item206,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item238,_item240,_item241,_item242,_item244,_item245,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item259,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item279,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293,_item294,_item295,_item296,_item297,_item298,_item299,_item300,_item301,_item302,_item303,_item304,_item305,_item306,_item307,_item308,_item309,_item310,_item311,_item312,_item313,_item314,_item315,_item316,_item317,_item318,_item319,_item320,_item321,_item322,_item323,_item324,_item325,_item326,_item327,_item328,_item329,_item330,_item331,_item332,_item333,_item334,_item335,_item336,_item337,_item338,_item339,_item340,_item341,_item342,_item343,_item344,_item345,_item346,_item347,_item348,_item349,_item350,_item351,_item352,_item354,_item355,_item356,_item357,_item358,_item359,_item360,_item361,_item362,_item363,_item364,_item365,_item366,_item367,_item368,_item369,_item370,_item371,_item372,_item374,_item375,_item377,_item378,_item379,_item380,_item381,_item382,_item383],[]]];};
if (_layer145) then {missionNamespace setVariable ["base_mil_ChernarusAFB",[[_item135,_item129,_item33,_item136,_item130,_item34,_item126,_item127,_item43,_item44,_item137,_item131,_item32,_item45,_item62,_item107,_item138,_item132,_item35,_item46,_item67,_item60,_item101,_item121,_item89,_item108,_item90,_item120,_item103,_item59,_item47,_item68,_item81,_item128,_item122,_item124,_item56,_item30,_item69,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item38,_item79,_item80,_item123,_item77,_item119,_item40,_item125,_item31,_item74,_item75,_item61,_item39,_item111,_item112,_item113,_item114,_item115,_item78,_item36,_item37,_item86,_item87,_item88,_item118,_item139,_item134,_item102,_item140,_item66,_item117,_item64,_item65,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item28,_item57,_item29,_item104,_item106,_item109,_item110,_item116,_item58,_item384],[_item143,_item144]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item381) then {
		this = _item381;
		call{arsenals pushBack this};
	};
	if !(isnull _item382) then {
		this = _item382;
		call{arsenals pushBack this};
	};
	if !(isnull _item383) then {
		this = _item383;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item135) then {_item135 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item136) then {_item136 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item137) then {_item137 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item138) then {_item138 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item139) then {_item139 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item134) then {_item134 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item140) then {_item140 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
