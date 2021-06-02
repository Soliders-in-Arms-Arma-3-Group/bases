// Export of 'base_mil.tem_anizay' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer16 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer13 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer238 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item245 = grpNull;
if (_layerRoot) then {
	_item245 = createGroup west;
	_this = _item245;
	_groups pushback _this;
	_groupIDs pushback 245;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item9 = objNull;
if (_layer238) then {
	_item9 = createVehicle ["Land_InfoStand_V1_F",[4537.69,5858.68,0],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [4537.72,5858.69,134.995];
	_this setVectorDirAndUp [[0.993198,-0.116439,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item10 = objNull;
if (_layer238) then {
	_item10 = createVehicle ["B_supplyCrate_F",[4539.76,5866.07,0.371536],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [4539.8,5866.08,135.683];
	_this setVectorDirAndUp [[0.999857,0.0169219,-0.000646635],[0.000488281,0.00936039,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item15 = objNull;
if (_layer13 && _layer238) then {
	_item15 = createVehicle ["Land_BarGate_F",[4467.44,5865.6,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [4467.44,5865.6,138.47];
	_this setVectorDirAndUp [[-0.0378059,0.999285,0],[0,0,1]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item17 = objNull;
if (_layer16 && _layer238) then {
	_item17 = createVehicle ["Land_RepairDepot_01_tan_F",[4516.91,5785.18,0],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [4516.6,5785.25,136.818];
	_this setVectorDirAndUp [[0.00905833,0.999959,0],[0,0,1]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item243 = objNull;
if (_layer238) then {
	_item243 = createVehicle ["B_supplyCrate_F",[4539.69,5869.06,0.348984],[],0,"CAN_COLLIDE"];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [4539.69,5869.06,135.661];
	_this setVectorDirAndUp [[0.999857,0.0169272,-0.000488211],[0.000488281,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item242 = objNull;
if (_layerRoot) then {
	_item242 = createVehicle ["Land_i_Shed_Ind_F",[4540.36,5869.37,0.347809],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [4540.36,5869.37,136.308];
	_this setVectorDirAndUp [[1,-0.000183626,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item244 = objNull;
if (_layerRoot) then {
	_item244 = createVehicle ["TK_WarfareBFieldhHospital_Base_EP1",[4519.54,5832.31,0],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [4519.54,5832.31,134.072];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item246 = objNull;
if (_layerRoot) then {
	_item246 = _item245 createUnit ["B_Soldier_TL_F",[4536.47,5860.65,0],[],0,"CAN_COLLIDE"];
	_item245 selectLeader _item246;
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [4536.47,5860.7,134.421];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Matthew Miller";;
	_this setface "WhiteHead_12";;
	_this setspeaker "Male04ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item247 = objNull;
if (_layerRoot) then {
	_item247 = _item245 createUnit ["B_soldier_AR_F",[4463.97,5858.18,0],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [4463.97,5858.23,134.421];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Connor Wilson";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "male03eng";;
	_this setpitch 0.957126;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item248 = objNull;
if (_layerRoot) then {
	_item248 = _item245 createUnit ["B_Soldier_GL_F",[4535.85,5863.37,0],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [4535.85,5863.42,134.421];
	_this setVectorDirAndUp [[0.0986456,-0.995123,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this setname "Andy Wright";;
	_this setface "Barklem";;
	_this setspeaker "male01eng";;
	_this setpitch 1.02306;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item249 = objNull;
if (_layerRoot) then {
	_item249 = _item245 createUnit ["B_soldier_LAT_F",[4472.57,5857.84,0],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [4472.57,5857.89,134.421];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this setname "Harrison Wilson";;
	_this setface "WhiteHead_10";;
	_this setspeaker "male06eng";;
	_this setpitch 0.97306;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item11 = objNull;
if (_layer238) then {
	_item11 = createTrigger ["EmptyDetectorArea10x10",[4520.22,5832.22,0],false];
	_this = _item11;
	_triggers pushback _this;
	_triggerIDs pushback 11;
	_item11 setPosATL [4520.22,5832.22,0];
	_this setTriggerArea [6,6,88.1249,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item14 = objNull;
if (_layer13 && _layer238) then {
	_item14 = createTrigger ["EmptyDetectorArea10x10",[4467.84,5865.43,1.52588e-005],true];
	_this = _item14;
	_triggers pushback _this;
	_triggerIDs pushback 14;
	_item14 setPosATL [4467.84,5865.43,1.52588e-005];
	_this setTriggerArea [5,20,352.998,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item245;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "hq_ai"] call CBA_fnc_setCallsign;
	      //if (!is3DEN && !(["","ColorWEST","Alpha 1-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-1",true]'];          ["","ColorWEST","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item12 = objNull;
if (_layer238) then {
	_item12 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[4532.96,5859.61,0],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_logics pushback _this;
	_logicIDs pushback 12;
	_this setPosWorld [4532.96,5859.61,134.42];
	_this setVectorDirAndUp [[0.999427,0.0338411,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item240 = objNull;
if (_layerRoot) then {
	_item240 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[4466.16,5868.58,0],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_logics pushback _this;
	_logicIDs pushback 240;
	_this setPosWorld [4466.16,5868.58,134.42];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item241 = objNull;
if (_layerRoot) then {
	_item241 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[4543.01,5862.42,8.26147],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_logics pushback _this;
	_logicIDs pushback 241;
	_this setPosWorld [4543.01,5862.42,142.681];
	_this setVectorDirAndUp [[0,0.999998,0.0020716],[-0.114258,-0.00205803,0.993449]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer16) then {missionNamespace setVariable ["base_mil_Repair Station",[[_item17],[]]];};
if (_layer13) then {missionNamespace setVariable ["base_mil_bargate",[[_item14,_item15],[]]];};
if (_layer238) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item9,_item10,_item11,_item12,_item14,_item15,_item17,_item243],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item10) then {
		this = _item10;
		call{arsenals pushBack this};
	};
	if !(isnull _item243) then {
		this = _item243;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item240) then {_item240 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item241) then {_item241 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
