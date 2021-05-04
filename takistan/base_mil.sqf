// Export of 'temp.takistan' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer8 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer4 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer0 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer11 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item16 = grpNull;
if (_layerRoot) then {
	_item16 = createGroup west;
	_this = _item16;
	_groups pushback _this;
	_groupIDs pushback 16;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item1 = objNull;
if (_layer0 && _layer11) then {
	_item1 = createVehicle ["Land_InfoStand_V1_F",[5974.91,11498.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [5974.91,11498.4,83.6154];
	_this setVectorDirAndUp [[0.929289,0.369353,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item5 = objNull;
if (_layer4 && _layer0 && _layer11) then {
	_item5 = createVehicle ["Land_RepairDepot_01_tan_F",[5970.61,11329.2,0],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [5970.61,11329.2,85.4738];
	_this setVectorDirAndUp [[-0.984564,0.174658,0.0113026],[0.0111984,-0.00158211,0.999936]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item10 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item10 = createVehicle ["Land_BarGate_F",[6122.23,11423,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [6122.23,11423,82.2188];
	_this setVectorDirAndUp [[0.665677,-0.740894,-0.0891627],[0.060689,-0.0653376,0.996016]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item12 = objNull;
if (_layer0 && _layer11) then {
	_item12 = createVehicle ["Gunrack1",[5971.94,11509.5,0.502998],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [5971.94,11509.5,84.0478];
	_this setVectorDirAndUp [[0.796794,0.604252,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer0 && _layer11) then {
	_item15 = createVehicle ["Gunrack1",[5970.35,11511.5,0.502998],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [5970.35,11511.5,84.0478];
	_this setVectorDirAndUp [[0.796794,0.604252,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createVehicle ["Land_MilOffices_V1_F",[5977.68,11514.3,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [5977.68,11514.3,86.3301];
	_this setVectorDirAndUp [[-0.751973,-0.659193,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item17 = objNull;
if (_layerRoot) then {
	_item17 = _item16 createUnit ["B_Soldier_F",[5960.65,11506.7,0],[],0,"CAN_COLLIDE"];
	_item16 selectLeader _item17;
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [5960.65,11506.7,83.0414];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	selectPlayer _this;
	0 remoteExec ['setFeatureType', _this];
	_this setname "Harry Morgan";;
	_this setface "WhiteHead_10";;
	_this setspeaker "male12eng";;
	_this setpitch 1.03746;;
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

private _item18 = objNull;
if (_layerRoot) then {
	_item18 = _item16 createUnit ["B_Soldier_F",[5959.64,11506.4,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [5959.64,11506.4,83.0414];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Spencer White";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "male11eng";;
	_this setpitch 0.954038;;
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

private _item19 = objNull;
if (_layerRoot) then {
	_item19 = _item16 createUnit ["B_Soldier_F",[6012.04,11467,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [6012.04,11467.1,83.0414];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "George Jones";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "male06eng";;
	_this setpitch 1.02582;;
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

private _item20 = objNull;
if (_layerRoot) then {
	_item20 = _item16 createUnit ["B_Soldier_F",[6010.97,11466.9,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [6010.97,11466.9,83.0414];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "George Miller";;
	_this setface "WhiteHead_01";;
	_this setspeaker "male06eng";;
	_this setpitch 0.954749;;
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

private _item21 = objNull;
if (_layerRoot) then {
	_item21 = _item16 createUnit ["B_Soldier_F",[5976.16,11505.6,0.502998],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [5976.16,11505.7,83.5444];
	_this setVectorDirAndUp [[-0.681322,0.731984,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Luke Parker";;
	_this setface "WhiteHead_14";;
	_this setspeaker "Male07ENG";;
	_this setpitch 1.03;;
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

private _item22 = objNull;
if (_layerRoot) then {
	_item22 = _item16 createUnit ["B_Soldier_F",[5982.7,11519.9,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [5982.7,11520,83.0414];
	_this setVectorDirAndUp [[0.462614,0.88656,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Tyler Smith";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "male06eng";;
	_this setpitch 1.04358;;
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


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item3 = objNull;
if (_layer0 && _layer11) then {
	_item3 = createTrigger ["EmptyDetectorArea10x10",[6073.76,11567.8,0.10215],true];
	_this = _item3;
	_triggers pushback _this;
	_triggerIDs pushback 3;
	_item3 setPosATL [6073.76,11567.8,0.10215];
	_this setTriggerArea [6,6,141.544,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item6 = objNull;
if (_layer4 && _layer0 && _layer11) then {
	_item6 = createTrigger ["EmptyDetectorArea10x10",[5969.63,11317.2,0],true];
	_this = _item6;
	_triggers pushback _this;
	_triggerIDs pushback 6;
	_item6 setPosATL [5969.63,11317.2,0];
	_this setTriggerArea [10,10,-170.005,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};

private _item9 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item9 = createTrigger ["EmptyDetectorArea10x10",[6121.81,11422.9,0],true];
	_this = _item9;
	_triggers pushback _this;
	_triggerIDs pushback 9;
	_item9 setPosATL [6121.81,11422.9,0];
	_this setTriggerArea [5,20,133.336,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item16;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-1",true]'];          ["","ColorWEST","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item2 = objNull;
if (_layer0 && _layer11) then {
	_item2 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[5968.6,11493.1,0],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_logics pushback _this;
	_logicIDs pushback 2;
	_this setPosWorld [5968.6,11493.1,83.04];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer8) then {missionNamespace setVariable ["temp_bargate",[[_item9,_item10],[]]];};
if (_layer4) then {missionNamespace setVariable ["temp_Repair Station",[[_item5,_item6],[]]];};
if (_layer0) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item9,_item10,_item12,_item15],[]]];};
if (_layer11) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item9,_item10,_item12,_item15],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item5) then {
		this = _item5;
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
	if !(isnull _item12) then {
		this = _item12;
		call{arsenals pushBack this};
	};
	if !(isnull _item15) then {
		this = _item15;
		call{arsenals pushBack this};
	};
	if !(isnull _item21) then {
		this = _item21;
		call{removeAllWeapons this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
