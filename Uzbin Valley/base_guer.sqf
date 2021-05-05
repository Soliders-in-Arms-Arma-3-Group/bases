// Export of 'temp.uzbin' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer124 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer131 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item148 = "";
if (_layerRoot) then {
	_item148 = createMarker ["marker_1",[6771.98,6164.99,0]];
	_this = _item148;
	_markers pushback _this;
	_markerIDs pushback 148;
	_this setMarkerType "hd_flag";
	_this setMarkerText "Hideout";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorYellow";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item133 = objNull;
if (_layer131) then {
	_item133 = createVehicle ["GunrackTK_EP1",[6774.84,6166.04,3.67703],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [6774.84,6166.04,269.735];
	_this setVectorDirAndUp [[-0.0201823,-0.999796,9.8511e-006],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer131) then {
	_item134 = createVehicle ["GunrackTK_EP1",[6774.82,6168.83,3.67917],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [6774.82,6168.83,269.734];
	_this setVectorDirAndUp [[0.0211732,-0.999776,-1.03348e-005],[0.000488106,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer131) then {
	_item121 = createVehicle ["Land_InfoStand_V1_F",[6777.66,6170.38,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [6777.66,6170.38,266.147];
	_this setVectorDirAndUp [[-1,-0.000277029,9.17436e-007],[0,0.00331168,0.999995]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item132 = objNull;
if (_layer124 && _layer131) then {
	_item132 = createVehicle ["Land_Workbench_01_F",[6773.4,6222.42,-0.000305176],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [6773.39,6222.42,266.023];
	_this setVectorDirAndUp [[-0.99955,0.000385198,-0.029993],[-0.0299852,0.0133212,0.999462]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
};

private _item135 = objNull;
if (_layerRoot) then {
	_item135 = createSimpleObject ["Land_WoodenTable_large_F",[6770.75,6167.19,269.251]];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [6770.75,6167.19,269.684];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item136 = objNull;
if (_layerRoot) then {
	_item136 = createSimpleObject ["Land_RattanChair_01_F",[6772.01,6166.36,269.251]];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [6772.01,6166.36,269.81];
	_this setVectorDirAndUp [[-0.654812,-0.755792,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item138 = objNull;
if (_layerRoot) then {
	_item138 = createVehicle ["Vysilacka",[6770.78,6166.56,4.603],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [6770.78,6166.56,271.219];
	_this setVectorDirAndUp [[0.808904,-0.587941,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layerRoot) then {
	_item140 = createSimpleObject ["Land_MoneyBills_01_stack_F",[6770.38,6168.13,270.116]];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [6770.38,6168.13,270.154];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item141 = objNull;
if (_layerRoot) then {
	_item141 = createSimpleObject ["Land_MoneyBills_01_stack_F",[6770.38,6167.93,270.116]];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [6770.38,6167.93,270.154];
	_this setVectorDirAndUp [[0.92732,0.37427,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item142 = objNull;
if (_layerRoot) then {
	_item142 = createSimpleObject ["Land_MoneyBills_01_roll_F",[6770.55,6168.14,270.116]];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [6770.55,6168.14,270.141];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item143 = objNull;
if (_layerRoot) then {
	_item143 = createSimpleObject ["Land_Pliers_F",[6771,6167.63,270.116]];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [6771,6167.63,270.12];
	_this setVectorDirAndUp [[-0.863112,-0.505012,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item144 = objNull;
if (_layerRoot) then {
	_item144 = createSimpleObject ["Land_MetalWire_F",[6771,6167.21,270.116]];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [6771,6167.21,270.119];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item146 = objNull;
if (_layerRoot) then {
	_item146 = createVehicle ["Explosive",[6770.67,6167.39,4.60599],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [6770.67,6167.39,270.143];
	_this setVectorDirAndUp [[0.999764,0.0217277,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layerRoot) then {
	_item147 = createVehicle ["Land_Camping_Light_F",[6771.11,6168.08,4.59451],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [6771.11,6168.08,270.235];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item126 = objNull;
if (_layer124 && _layer131) then {
	_item126 = createTrigger ["EmptyDetectorArea10x10",[6782.75,6223.94,0],true];
	_this = _item126;
	_triggers pushback _this;
	_triggerIDs pushback 126;
	_item126 setPosATL [6782.75,6223.94,0];
	_this setTriggerArea [10,10,1.68399,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item122 = objNull;
if (_layer131) then {
	_item122 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[6780.51,6168.03,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_logics pushback _this;
	_logicIDs pushback 122;
	_this setPosWorld [6780.51,6168.03,265.58];
	_this setVectorDirAndUp [[0,0.999995,-0.00331168],[0,0.00331168,0.999995]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer124) then {missionNamespace setVariable ["temp_Repair Station",[[_item126,_item132],[]]];};
if (_layer131) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item133,_item134,_item121,_item122,_item126,_item132],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item133) then {
		this = _item133;
		call{arsenals pushBack this};
	};
	if !(isnull _item134) then {
		this = _item134;
		call{arsenals pushBack this};
	};
	if !(isnull _item132) then {
		this = _item132;
		call{_repair = this; 
 
[    
 _repair, "Repair Vehicles",    
"\a3\ui_f\data\IGUI\Cfg\actions\repair_ca.paa",    
 "\a3\ui_f\data\IGUI\Cfg\actions\repair_ca.paa",    
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


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
