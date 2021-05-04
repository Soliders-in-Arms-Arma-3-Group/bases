// Export of 'zgm-fapovo-temp.takistan' by McKendrick on v0.9

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
	_item1 = createVehicle ["Land_InfoStand_V1_F",[5970.7,11488.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [5970.7,11488.6,83.6154];
	_this setVectorDirAndUp [[-0.483451,0.875372,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item5 = objNull;
if (_layer4 && _layer0 && _layer11) then {
	_item5 = createVehicle ["Land_RepairDepot_01_tan_F",[5978.36,11338.4,0],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [5978.36,11338.4,85.4611];
	_this setVectorDirAndUp [[-0.933026,0.359732,0.00745833],[0.00799344,0,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item10 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item10 = createVehicle ["Land_BarGate_F",[6103.53,11435.2,0],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [6103.53,11435.2,84.2977];
	_this setVectorDirAndUp [[-0.68495,0.724248,0.0794246],[0.0447551,-0.0669818,0.99675]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item12 = objNull;
if (_layer0 && _layer11) then {
	_item12 = createVehicle ["Gunrack1",[5955.11,11500.4,0.245483],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [5955.11,11500.4,83.7903];
	_this setVectorDirAndUp [[0.796683,0.603941,-0.0234902],[0.0166512,0.0169187,0.999718]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer0 && _layer11) then {
	_item15 = createVehicle ["Gunrack1",[5957.34,11497.8,0.251968],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [5957.34,11497.8,83.7967];
	_this setVectorDirAndUp [[0.796683,0.603943,-0.0234376],[0.0166548,0.0168268,0.99972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createVehicle ["Land_i_Shed_Ind_F",[5966.18,11498,0.266457],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [5966.18,11498,84.8464];
	_this setVectorDirAndUp [[-0.701434,-0.712735,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item17 = objNull;
if (_layerRoot) then {
	_item17 = _item16 createUnit ["B_Soldier_F",[5962.37,11507.5,0],[],0,"CAN_COLLIDE"];
	_item16 selectLeader _item17;
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [5962.37,11507.5,83.0414];
	_this setVectorDirAndUp [[0.758856,0.651258,0],[0,0,1]];
	selectPlayer _this;
	0 remoteExec ['setFeatureType', _this];
	_this setname "Fred Scott";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.97;;
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


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item3 = objNull;
if (_layer0 && _layer11) then {
	_item3 = createTrigger ["EmptyDetectorArea10x10",[6019.39,11514.5,0],true];
	_this = _item3;
	_triggers pushback _this;
	_triggerIDs pushback 3;
	_item3 setPosATL [6019.39,11514.5,0];
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
	_item6 = createTrigger ["EmptyDetectorArea10x10",[5975.11,11326.8,0],true];
	_this = _item6;
	_triggers pushback _this;
	_triggerIDs pushback 6;
	_item6 setPosATL [5975.11,11326.8,0];
	_this setTriggerArea [10,10,-158.981,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};

private _item9 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item9 = createTrigger ["EmptyDetectorArea10x10",[6103.94,11435.3,0],true];
	_this = _item9;
	_triggers pushback _this;
	_triggerIDs pushback 9;
	_item9 setPosATL [6103.94,11435.3,0];
	_this setTriggerArea [5,20,-48.1212,true,5];
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
	_item2 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[5965.59,11509.6,0],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_logics pushback _this;
	_logicIDs pushback 2;
	_this setPosWorld [5965.59,11509.6,83.04];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer8) then {missionNamespace setVariable ["zgm-fapovo-temp_bargate",[[_item9,_item10],[]]];};
if (_layer4) then {missionNamespace setVariable ["zgm-fapovo-temp_Repair Station",[[_item5,_item6],[]]];};
if (_layer0) then {missionNamespace setVariable ["zgm-fapovo-temp_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item9,_item10,_item12,_item15],[]]];};
if (_layer11) then {missionNamespace setVariable ["zgm-fapovo-temp_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item9,_item10,_item12,_item15],[]]];};


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
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
