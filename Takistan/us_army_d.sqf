// Export of 'us_army_d.takistan' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer601 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer310 = (_allWhitelisted || {"base" in _layerWhiteList}) && {!("base" in _layerBlackList)};
private _layer291 = (_allWhitelisted || {"at range" in _layerWhiteList}) && {!("at range" in _layerBlackList)};
private _layer261 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer241 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer70 = (_allWhitelisted || {"shoothouse" in _layerWhiteList}) && {!("shoothouse" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item66 = "";
if (_layerRoot) then {
	_item66 = createMarker ["hickam",[5963.53,11510.5,0]];
	_this = _item66;
	_markers pushback _this;
	_markerIDs pushback 66;
	_this setMarkerType "b_hq";
	_this setMarkerText "HICKAM Joint-AB";
	_this setMarkerShape "ICON";
};

private _item298 = "";
if (_layerRoot) then {
	_item298 = createMarker ["fr_at_m1",[5278.74,10629.4,0]];
	_this = _item298;
	_markers pushback _this;
	_markerIDs pushback 298;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};

private _item299 = "";
if (_layerRoot) then {
	_item299 = createMarker ["fr_at_m2",[5218.68,10771.6,0]];
	_this = _item299;
	_markers pushback _this;
	_markerIDs pushback 299;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};

private _item300 = "";
if (_layerRoot) then {
	_item300 = createMarker ["fr_at_m3",[5463.2,10831.3,0]];
	_this = _item300;
	_markers pushback _this;
	_markerIDs pushback 300;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};

private _item614 = "";
if (_layerRoot) then {
	_item614 = createMarker ["ion",[5939.13,11865.9,0]];
	_this = _item614;
	_markers pushback _this;
	_markerIDs pushback 614;
	_this setMarkerType "Faction_ION_white_PMC";
	_this setMarkerSize [0.5,0.5];
	_this setMarkerShape "ICON";
	_this setMarkerAlpha 0.504214;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item6 = grpNull;
if (_layerRoot) then {
	_item6 = createGroup west;
	_this = _item6;
	_groups pushback _this;
	_groupIDs pushback 6;
};

private _item12 = grpNull;
if (_layerRoot) then {
	_item12 = createGroup west;
	_this = _item12;
	_groups pushback _this;
	_groupIDs pushback 12;
};

private _item20 = grpNull;
if (_layerRoot) then {
	_item20 = createGroup west;
	_this = _item20;
	_groups pushback _this;
	_groupIDs pushback 20;
};

private _item27 = grpNull;
if (_layerRoot) then {
	_item27 = createGroup west;
	_this = _item27;
	_groups pushback _this;
	_groupIDs pushback 27;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item7 = objNull;
if (_layerRoot) then {
	_item7 = _item6 createUnit ["rhsusf_army_ocp_rifleman",[6045.16,11506,0],[],0,"CAN_COLLIDE"];
	_item6 selectLeader _item7;
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [6045.16,11506,83.041];
	_this setVectorDirAndUp [[0.815229,0.579139,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],["rhsusf_spcs_ucp_rifleman_alt",[]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "William Conrad";;
	_this setface "WhiteHead_14";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'FSM'};
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
	_item8 = _item6 createUnit ["rhsusf_army_ocp_rifleman",[6046.34,11506.9,0],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [6046.34,11507,83.0414];
	_this setVectorDirAndUp [[-0.76509,-0.643924,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],["rhsusf_iotv_ucp",[]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dwan Ryan";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'FSM'};
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
	_item9 = _item6 createUnit ["rhsusf_army_ocp_driver_armored",[5929.27,11331,0],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [5929.27,11331.1,83.0414];
	_this setVectorDirAndUp [[0.53486,-0.84494,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m16a4","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1]]],["rhsusf_iotv_ucp_Repair",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30],["rhs_mag_an_m8hc",1,1],["rhs_mag_m18_red",1,1]]],[],"rhsusf_ach_helmet_ESS_ucp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Thomas Roberts";;
	_this setface "WhiteHead_17";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SHIELD_FROM_SUN",["Acts_ShieldFromSun_loop"],false,false] # 0 isEqualTo '') then      {        ["SHIELD_FROM_SUN",["Acts_ShieldFromSun_loop"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'FSM'};
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

private _item10 = objNull;
if (_layerRoot) then {
	_item10 = _item6 createUnit ["rhsusf_army_ocp_driver",[5930.1,11329.6,0],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [5930.1,11329.7,83.0414];
	_this setVectorDirAndUp [[-0.819182,0.573534,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ethan Lewis";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male01ENG";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'FSM'};
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

private _item11 = objNull;
if (_layerRoot) then {
	_item11 = _item6 createUnit ["B_RangeMaster_F",[5642.59,11082,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [5642.59,11082,83.0333];
	_this setVectorDirAndUp [[-0.784344,0.620327,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1]]],["V_Safety_orange_F",[]],[],"H_Cap_headphones","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	sk_op = _this;
	_this setVehicleVarName "sk_op";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "George Dayton";;
	_this setface "GreekHead_A3_03";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,true] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'FSM'};
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

private _item637 = objNull;
if (_layerRoot) then {
	_item637 = _item6 createUnit ["rhsusf_usmc_recon_marpat_d_rifleman_lite",[5979.76,11491.9,0],[],0,"CAN_COLLIDE"];
	_this = _item637;
	_objects pushback _this;
	_objectIDs pushback 637;
	_this setPosWorld [5979.76,11492,83.0414];
	_this setVectorDirAndUp [[0.670401,-0.741999,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_carryhandle_grip3","","rhsusf_acc_anpeq16a","rhsusf_acc_ACOG_d",["rhs_mag_30Rnd_556x45_M855_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_FROG01_d",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_mag_7x45acp_MHP",1,7],["Chemlight_green",1,1],["Chemlight_red",2,1]]],["rhsusf_spc_light",[["rhs_mag_30Rnd_556x45_M855_Stanag",5,30],["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",1,30],["rhsusf_mag_7x45acp_MHP",3,7],["rhs_mag_mk3a2",2,1],["rhs_mag_mk84",1,1],["Chemlight_green",1,1]]],[],"rhs_booniehat2_marpatd","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Nathan Eaton";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.04;;
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

private _item639 = objNull;
if (_layerRoot) then {
	_item639 = _item6 createUnit ["rhsusf_usmc_recon_marpat_d_teamleader",[5981.06,11490.3,0],[],0,"CAN_COLLIDE"];
	_this = _item639;
	_objects pushback _this;
	_objectIDs pushback 639;
	_this setPosWorld [5981.06,11490.4,83.0414];
	_this setVectorDirAndUp [[-0.651848,0.758349,0],[0,0,1]];
	_this setUnitLoadout [[],[],["rhsusf_weap_m1911a1","","","",["rhsusf_mag_7x45acp_MHP",7],[],""],["rhs_uniform_FROG01_d",[["FirstAidKit",1],["rhsusf_ANPVS_14",1]]],["rhsusf_spc",[]],[],"rhs_8point_marpatd","rhs_googles_clear",["rhsusf_bino_lerca_1200_black","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Harvey Bayh";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male10ENG";;
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

private _item4 = objNull;
if (_layerRoot) then {
	_item4 = _item6 createUnit ["rhsusf_army_ocp_rifleman",[6161.06,11387.5,0],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [6161.06,11387.5,72.3915];
	_this setVectorDirAndUp [[0.785153,-0.619294,-0.00321478],[0.00237352,-0.00218182,0.999995]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Jake Abbey";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male01ENG";;
	_this setpitch 1.05;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'FSM'};
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
	_item5 = _item6 createUnit ["rhsusf_army_ocp_rifleman",[6167.46,11398.1,5.033],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [6167.46,11398.2,78.1142];
	_this setVectorDirAndUp [[0.785155,-0.6193,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Chad Murphy";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male04ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],true,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],true,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'FSM'};
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

private _item13 = objNull;
if (_layerRoot) then {
	_item13 = _item12 createUnit ["rhsusf_army_ocp_rifleman",[6090.04,11509.8,0.561996],[],0,"CAN_COLLIDE"];
	_item12 selectLeader _item13;
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [6090.04,11509.8,83.5988];
	_this setVectorDirAndUp [[-0.991305,-0.131582,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Corey Brown";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.96;;
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
	_item21 = _item20 createUnit ["rhsusf_army_ocp_officer",[5994.1,11548.1,0.48439],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [5994.1,11548.2,83.5258];
	_this setVectorDirAndUp [[0.799685,0.60042,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_abu",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ed Harris";;
	_this setface "WhiteHead_19";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.02;;
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

private _item22 = objNull;
if (_layerRoot) then {
	_item22 = _item20 createUnit ["rhsusf_army_ocp_officer",[5996.72,11545.6,0.492836],[],0,"CAN_COLLIDE"];
	_item20 selectLeader _item22;
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [5996.72,11545.6,83.5343];
	_this setVectorDirAndUp [[0.661023,0.750365,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_abu",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Jacob Martin";;
	_this setface "WhiteHead_21";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.02;;
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

private _item23 = objNull;
if (_layerRoot) then {
	_item23 = _item20 createUnit ["rhsusf_army_ocp_officer",[5997.12,11541.1,0.577583],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [5997.12,11541.2,83.619];
	_this setVectorDirAndUp [[0.623402,0.781901,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_abu",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Charles Harris";;
	_this setface "WhiteHead_12";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["LEAN_ON_TABLE",["inbasemoves_table1"],false,true] # 0 isEqualTo '') then      {        ["LEAN_ON_TABLE",["inbasemoves_table1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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
	_item24 = _item20 createUnit ["rhsusf_army_ocp_rifleman",[5995.16,11542.4,0.561996],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [5995.16,11542.4,83.6034];
	_this setVectorDirAndUp [[0.778802,0.62727,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],["rhsusf_spcs_ucp",[]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Keith Walsh";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.01;;
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

private _item25 = objNull;
if (_layerRoot) then {
	_item25 = _item20 createUnit ["rhsusf_army_ocp_officer",[6003.91,11538.2,0.562378],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [6003.91,11538.2,83.6038];
	_this setVectorDirAndUp [[-0.247185,-0.968968,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],[],[],"","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ryan Kelly";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_IDLE",["Acts_CivilIdle_1","Acts_CivilIdle_2"],false,false] # 0 isEqualTo '') then      {        ["STAND_IDLE",["Acts_CivilIdle_1","Acts_CivilIdle_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item26 = objNull;
if (_layerRoot) then {
	_item26 = _item20 createUnit ["rhsusf_army_ocp_officer",[5994.81,11545.1,9.11],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [5994.81,11545.2,92.1514];
	_this setVectorDirAndUp [[-0.757075,0.653328,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],[],[],"H_Beret_02","G_Aviator",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Gillis Thomson";;
	_this setface "Barklem";;
	_this setspeaker "Male07ENG";;
	_this setpitch 0.96;;
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

private _item28 = objNull;
if (_layerRoot) then {
	_item28 = _item27 createUnit ["rhsusf_army_ocp_helipilot",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_item27 selectLeader _item28;
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [5913.54,11450.7,84.4436];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "James Coburn";;
	_this setface "WhiteHead_20";;
	_this setspeaker "male09eng";;
	_this setpitch 1.01549;;
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

private _item29 = objNull;
if (_layerRoot) then {
	_item29 = _item27 createUnit ["rhsusf_army_ocp_helipilot",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [5913.75,11451.7,84.4441];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Terrence Acker";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "male06eng";;
	_this setpitch 1.03305;;
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

private _item30 = objNull;
if (_layerRoot) then {
	_item30 = _item27 createUnit ["rhsusf_army_ocp_helicrew",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [5912.71,11452.2,84.7031];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Jack Clark";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "male01eng";;
	_this setpitch 0.985408;;
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

private _item31 = objNull;
if (_layerRoot) then {
	_item31 = _item27 createUnit ["rhsusf_army_ocp_helicrew",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [5912.39,11450.6,84.6844];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Jack Robinson";;
	_this setface "Sturrock";;
	_this setspeaker "male12eng";;
	_this setpitch 1.00336;;
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

private _item32 = objNull;
if (_layerRoot) then {
	_item32 = createVehicle ["RHS_UH60M_d",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [5909.19,11452.1,85.7558];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	_this setPylonLoadout [1,"rhsusf_M130_CMFlare_Chaff_Magazine_x2"];
	_this lock 0;
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit"",""Medikit""],[2,10,2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,4,2,2,4]],[[],[]],[[""B_Parachute""],[4]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVehicleReportOwnPosition true;
	parseSimpleArray "[[""hithull"",""hitengine1"",""hitengine2"",""hitengine"",""hittail"",""hitvrotor"",""hithrotor"",""hitwinch"",""hitglass7"",""hithydraulics"",""hittransmission"",""hithstabilizerl1"",""hithstabilizerr1"",""hitpylon1"",""hitpylon2"",""hitpylon3"",""hitpylon4"",""hitfuel"",""hitavionics"",""hitmissiles"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitrglass"",""hitlglass"",""hitengine3"",""hitlight"",""hitgear"",""hitvstabilizer1"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""#p svetlo"",""#l svetlo"",""#cabin_light"",""#cargo_light_1"",""#cargo_light_2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	_this animateDoor ['DoorL',0,true];
	_this animateDoor ['DoorR',0,true];
	_this animateDoor ['DoorLB',0,true];_this animate ['doorHandler_L',0,true];
	_this animateDoor ['DoorRB',0,true];_this animate ['doorHandler_R',0,true];
};

private _item33 = objNull;
if (_layerRoot) then {
	_item33 = createVehicle ["Land_BarGate_F",[6166.54,11391,0],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [6166.54,11391,76.3379];
	_this setVectorDirAndUp [[0.771961,-0.618521,-0.146653],[0.08766,-0.124919,0.988287]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item34 = objNull;
if (_layerRoot) then {
	_item34 = createVehicle ["EvPhoto",[5997.83,11541.7,1.33526],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [5997.83,11541.7,84.3832];
	_this setVectorDirAndUp [[0.676182,0.736735,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layerRoot) then {
	_item35 = createVehicle ["Land_GuardBox_01_smooth_F",[6160.01,11388.2,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [6160.01,11388.2,73.4252];
	_this setVectorDirAndUp [[-0.74784,0.663879,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item36 = objNull;
if (_layerRoot) then {
	_item36 = createVehicle ["Land_GuardTower_02_F",[6166.3,11398.9,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [6166.3,11398.9,76.6966];
	_this setVectorDirAndUp [[0.786281,-0.617868,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item37 = objNull;
if (_layerRoot) then {
	_item37 = createVehicle ["Land_HelipadSquare_F",[5936.85,11480.9,0],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [5936.85,11480.9,83.04];
	_this setVectorDirAndUp [[0.673903,-0.73882,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item38 = objNull;
if (_layerRoot) then {
	_item38 = createVehicle ["Land_HelipadSquare_F",[5908.45,11452.2,0],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [5908.45,11452.2,83.04];
	_this setVectorDirAndUp [[0.708959,-0.70525,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item39 = objNull;
if (_layerRoot) then {
	_item39 = createVehicle ["rhsusf_m1025_d_m2",[6035.02,11468,-0.000160217],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [6035.05,11468,85.1906];
	_this setVectorDirAndUp [[0.649188,0.760626,-0.00154588],[0.00800059,-0.00479616,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""rhs_weap_M136_hedp""],[2,2]],[[""rhs_m136_hedp_mag"",""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhsusf_100Rnd_556x45_soft_pouch"",""rhs_mag_M441_HE"",""rhs_mag_m714_White"",""rhs_mag_m662_red"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[2,20,8,16,4,2,4,2,2,4]],[[""FirstAidKit""],[4]],[[""rhsusf_falconii""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitwindshield_1"",""hitwindshield_2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitfuel"",""hitlfwheel"",""hitrfwheel"",""hitlf2wheel"",""hitrf2wheel"",""hitengine"",""hithull"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_2"",""#light_hd_1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
	//if(0 != 'NoChange')then{ [_this,'unitdecals_1',0] call rhs_fnc_hmmwv_setDecal};
	//if(0 != 'NoChange')then{ [_this,'unitdecals_2',0] call rhs_fnc_hmmwv_setDecal};
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

private _item40 = objNull;
if (_layerRoot) then {
	_item40 = createVehicle ["rhsusf_M1078A1P2_B_D_fmtv_usarmy",[5911.05,11308.4,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [5911.05,11308.4,85.1637];
	_this setVectorDirAndUp [[0.220391,0.975412,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle""],[2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""FirstAidKit"",""ToolKit""],[4,1]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitfuel"",""hitengine"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hithull"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#cabin_light1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
};

private _item41 = objNull;
if (_layerRoot) then {
	_item41 = createVehicle ["rhsusf_m998_d_4dr_halftop",[5924.77,11338.7,0],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [5924.78,11338.7,84.985];
	_this setVectorDirAndUp [[-0.11734,-0.993092,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_M441_HE"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,8,4,2,2,4]],[[""FirstAidKit""],[4]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitwindshield_1"",""hitwindshield_2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitfuel"",""hitlfwheel"",""hitrfwheel"",""hitlf2wheel"",""hitrf2wheel"",""hitengine"",""hithull"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_2"",""#light_hd_1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
	//if(0 != 'NoChange')then{ [_this,'unitdecals_1',0] call rhs_fnc_hmmwv_setDecal};
	//if(0 != 'NoChange')then{ [_this,'unitdecals_2',0] call rhs_fnc_hmmwv_setDecal};
	_this animate ['hide_CIP',0,true];
	_this animate ['hide_BFT',0,true];
	_this animate ['hide_Antenna',0,true];
	_this animate ['hide_A2_Parts',0,true];
	_this animateDoor ['Door_LF',0,true];
	_this animateDoor ['Door_RF',0,true];
	_this animateDoor ['Door_LB',0,true];
	_this animateDoor ['Door_RB',0,true];
};

private _item42 = objNull;
if (_layerRoot) then {
	_item42 = createVehicle ["PortableHelipadLight_01_green_F",[5936.42,11472.7,0],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [5936.42,11472.7,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item43 = objNull;
if (_layerRoot) then {
	_item43 = createVehicle ["PortableHelipadLight_01_green_F",[5928.87,11481.1,0],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [5928.87,11481.1,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item44 = objNull;
if (_layerRoot) then {
	_item44 = createVehicle ["PortableHelipadLight_01_green_F",[5937.16,11488.7,0],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [5937.16,11488.7,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item45 = objNull;
if (_layerRoot) then {
	_item45 = createVehicle ["PortableHelipadLight_01_green_F",[5944.68,11480.4,0],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [5944.68,11480.4,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item46 = objNull;
if (_layerRoot) then {
	_item46 = createVehicle ["PortableHelipadLight_01_green_F",[5908.5,11460.2,0],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [5908.5,11460.2,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item47 = objNull;
if (_layerRoot) then {
	_item47 = createVehicle ["PortableHelipadLight_01_green_F",[5900.36,11452,0],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [5900.36,11452,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item48 = objNull;
if (_layerRoot) then {
	_item48 = createVehicle ["PortableHelipadLight_01_green_F",[5908.44,11443.9,0],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [5908.44,11443.9,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item49 = objNull;
if (_layerRoot) then {
	_item49 = createVehicle ["PortableHelipadLight_01_green_F",[5916.3,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [5916.3,11452.1,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item50 = objNull;
if (_layerRoot) then {
	_item50 = createVehicle ["PortableHelipadLight_01_red_F",[5908.12,11452.5,0],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [5908.12,11452.5,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item51 = objNull;
if (_layerRoot) then {
	_item51 = createVehicle ["PortableHelipadLight_01_yellow_F",[5936.55,11481.2,0],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [5936.55,11481.2,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item52 = objNull;
if (_layerRoot) then {
	_item52 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[5962.83,11480.4,0],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [5962.83,11480.4,83.1493];
	_this setVectorDirAndUp [[0.992802,-0.119764,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item53 = objNull;
if (_layerRoot) then {
	_item53 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[5908.97,11427.6,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [5908.97,11427.6,83.1493];
	_this setVectorDirAndUp [[0.128959,-0.99165,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item54 = objNull;
if (_layerRoot) then {
	_item54 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[5885.65,11541.3,0.562378],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [5885.65,11541.3,83.7117];
	_this setVectorDirAndUp [[-0.540474,-0.841361,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item55 = objNull;
if (_layerRoot) then {
	_item55 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[6162.08,11388.2,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [6162.08,11388.2,72.4805];
	_this setVectorDirAndUp [[-0.809719,0.586818,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item56 = objNull;
if (_layerRoot) then {
	_item56 = createVehicle ["Item_B_UavTerminal",[5998.37,11548.2,1.30853],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [5998.37,11548.2,85.0098];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item57 = objNull;
if (_layerRoot) then {
	_item57 = createVehicle ["Land_MapBoard_01_Wall_F",[6000.66,11546.8,1.759],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [6000.66,11546.8,85.3505];
	_this setVectorDirAndUp [[0.670284,0.742105,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
	_this setObjectMaterialGlobal [0,""];
};

private _item58 = objNull;
if (_layerRoot) then {
	_item58 = createVehicle ["Land_MapBoard_01_Wall_F",[5998.09,11549.3,1.808],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [5998.09,11549.3,85.3995];
	_this setVectorDirAndUp [[0.700336,0.713813,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item59 = objNull;
if (_layerRoot) then {
	_item59 = createVehicle ["Windsock_01_F",[5890.49,11548.6,0.562378],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [5890.49,11548.6,84.8774];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item61 = objNull;
if (_layerRoot) then {
	_item61 = createVehicle ["rhsusf_M1232_M2_usarmy_d",[5937.58,11303.9,0.0019989],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [5937.58,11303.9,84.592];
	_this setVectorDirAndUp [[-0.163721,-0.986506,0.0010439],[-0.00319395,0.00158824,0.999994]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit""],[2,4]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""ToolKit""],[1]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hithull"",""hitfuel"",""hitengine"",""hitduke1"",""hitduke2"",""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitglass15"",""hitglass16"",""hitglass17"",""hitglass18"",""hitglass19"",""hitglass20"",""hitglass21"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitbody"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#cabin_light1"",""#cabin_light2"",""#cabin_light3""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
	_this animate ['DUKE_Hide',0,true];if(0 isEqualTo 1)then{_this removeWeaponTurret ['rhsusf_weap_duke',[-1]]};;
	_this animateDoor ['DoorB',0,true];
	_this animateDoor ['DoorL',0,true];
	_this animateDoor ['DoorR',0,true];
};

private _item62 = objNull;
if (_layerRoot) then {
	_item62 = createVehicle ["rhsusf_m1025_d",[6040.67,11462,0],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [6040.71,11462,84.8271];
	_this setVectorDirAndUp [[0.650269,0.759697,-0.00329126],[0.0143989,-0.00799309,0.999864]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""FirstAidKit""],[4]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_M441_HE"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,8,4,2,2,4]],[[],[]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitwindshield_1"",""hitwindshield_2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitfuel"",""hitlfwheel"",""hitrfwheel"",""hitlf2wheel"",""hitrf2wheel"",""hitengine"",""hithull"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_2"",""#light_hd_1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
	if("NoChange" != 'NoChange')then{ [_this,'unitdecals_1',"NoChange"] call rhs_fnc_hmmwv_setDecal};
	if("NoChange" != 'NoChange')then{ [_this,'unitdecals_2',"NoChange"] call rhs_fnc_hmmwv_setDecal};
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

private _item63 = objNull;
if (_layerRoot) then {
	_item63 = createVehicle ["US_WarfareBFieldhHospital_Base_EP1",[6022.49,11565.7,0],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [6022.49,11565.7,81.9847];
	_this setVectorDirAndUp [[0.7186,0.695424,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item64 = objNull;
if (_layerRoot) then {
	_item64 = createVehicle ["Land_ClutterCutter_small_F",[6024.49,11564.7,0.0912857],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [6024.49,11564.7,83.1313];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item65 = objNull;
if (_layerRoot) then {
	_item65 = createVehicle ["Land_HelipadRescue_F",[6034.55,11580.9,0],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [6034.55,11580.9,83.04];
	_this setVectorDirAndUp [[-0.7136,0.700553,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item67 = objNull;
if (_layerRoot) then {
	_item67 = createVehicle ["Land_TentLamp_01_suspended_F",[5995.13,11543.6,12.3769],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [5995.13,11543.6,95.461];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item71 = objNull;
if (_layer70) then {
	_item71 = createVehicle ["Land_Shoot_House_Panels_Window_F",[5686.59,11060.5,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [5686.59,11060.5,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer70) then {
	_item72 = createVehicle ["Land_Shoot_House_Panels_Window_F",[5678.66,11060.7,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [5678.66,11060.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer70) then {
	_item73 = createVehicle ["Land_Shoot_House_Wall_F",[5686.8,11070.5,0],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [5686.8,11070.5,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer70) then {
	_item74 = createVehicle ["Land_Shoot_House_Wall_F",[5677.75,11067.7,0],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [5677.75,11067.7,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer70) then {
	_item75 = createVehicle ["Land_Shoot_House_Wall_F",[5677.66,11063.7,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [5677.66,11063.7,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer70) then {
	_item76 = createVehicle ["Land_Shoot_House_Wall_F",[5678.81,11070.6,0],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [5678.81,11070.6,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer70) then {
	_item77 = createVehicle ["Land_Shoot_House_Wall_F",[5691.78,11069.4,0],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [5691.78,11069.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item78 = objNull;
if (_layer70) then {
	_item78 = createVehicle ["Land_Shoot_House_Wall_F",[5691.65,11063.4,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [5691.65,11063.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layer70) then {
	_item79 = createVehicle ["Land_Shoot_House_Wall_F",[5691.7,11065.4,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [5691.7,11065.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layer70) then {
	_item80 = createVehicle ["Land_Shoot_House_Wall_F",[5684.8,11070.5,0],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [5684.8,11070.5,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item81 = objNull;
if (_layer70) then {
	_item81 = createVehicle ["Land_Shoot_House_Wall_F",[5680.81,11070.6,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [5680.81,11070.6,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer70) then {
	_item82 = createVehicle ["Land_Shoot_House_Wall_F",[5680.6,11060.6,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [5680.6,11060.6,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer70) then {
	_item83 = createVehicle ["Land_Shoot_House_Wall_F",[5677.78,11069.7,0],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [5677.78,11069.7,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer70) then {
	_item84 = createVehicle ["Land_Shoot_House_Wall_F",[5682.8,11070.6,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [5682.8,11070.6,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item85 = objNull;
if (_layer70) then {
	_item85 = createVehicle ["Land_Shoot_House_Wall_F",[5690.8,11070.4,0],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [5690.8,11070.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layer70) then {
	_item86 = createVehicle ["Land_Shoot_House_Wall_F",[5690.59,11060.4,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [5690.59,11060.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item87 = objNull;
if (_layer70) then {
	_item87 = createVehicle ["Land_Shoot_House_Wall_F",[5691.74,11067.4,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [5691.74,11067.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item88 = objNull;
if (_layer70) then {
	_item88 = createVehicle ["Land_Shoot_House_Wall_F",[5676.72,11066.7,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [5676.72,11066.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item89 = objNull;
if (_layer70) then {
	_item89 = createVehicle ["Land_Shoot_House_Wall_F",[5674.66,11063.7,0],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [5674.66,11063.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layer70) then {
	_item90 = createVehicle ["Land_Shoot_House_Wall_F",[5676.66,11063.7,0],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [5676.66,11063.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layer70) then {
	_item91 = createVehicle ["Land_Shoot_House_Wall_F",[5672.66,11063.8,0],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [5672.66,11063.8,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item92 = objNull;
if (_layer70) then {
	_item92 = createVehicle ["Land_Shoot_House_Wall_F",[5672.72,11066.8,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [5672.72,11066.8,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item93 = objNull;
if (_layer70) then {
	_item93 = createVehicle ["Land_Shoot_House_Wall_F",[5691.61,11061.4,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [5691.61,11061.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item94 = objNull;
if (_layer70) then {
	_item94 = createVehicle ["Land_Shoot_House_Wall_F",[5688.59,11060.4,0],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [5688.59,11060.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer70) then {
	_item95 = createVehicle ["Land_Shoot_House_Wall_F",[5672.55,11058.8,0],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [5672.55,11058.8,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer70) then {
	_item96 = createVehicle ["Land_Shoot_House_Wall_F",[5674.55,11058.7,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [5674.55,11058.7,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layer70) then {
	_item97 = createVehicle ["Land_Shoot_House_Wall_F",[5691.49,11056.2,0],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [5691.49,11056.2,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item98 = objNull;
if (_layer70) then {
	_item98 = createVehicle ["Land_Shoot_House_Wall_F",[5688.52,11057.4,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [5688.52,11057.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item99 = objNull;
if (_layer70) then {
	_item99 = createVehicle ["Land_Shoot_House_Wall_F",[5685.57,11059.5,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [5685.57,11059.5,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item100 = objNull;
if (_layer70) then {
	_item100 = createVehicle ["Land_Shoot_House_Wall_F",[5691.45,11054.3,0],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [5691.45,11054.3,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item101 = objNull;
if (_layer70) then {
	_item101 = createVehicle ["Land_Shoot_House_Wall_F",[5685.52,11057.5,0],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [5685.52,11057.5,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layer70) then {
	_item102 = createVehicle ["Land_Shoot_House_Wall_F",[5682.59,11060.6,0],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [5682.59,11060.6,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layer70) then {
	_item103 = createVehicle ["Land_Shoot_House_Wall_F",[5677.6,11059.7,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [5677.6,11059.7,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layer70) then {
	_item104 = createVehicle ["Land_Shoot_House_Wall_F",[5677.55,11057.7,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [5677.55,11057.7,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item105 = objNull;
if (_layer70) then {
	_item105 = createVehicle ["Land_Shoot_House_Wall_F",[5679.55,11057.6,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [5679.55,11057.6,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item106 = objNull;
if (_layer70) then {
	_item106 = createVehicle ["Land_Shoot_House_Wall_F",[5674.72,11066.7,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [5674.72,11066.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layer70) then {
	_item107 = createVehicle ["Land_Shoot_House_Wall_F",[5690.67,11064.4,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [5690.67,11064.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item108 = objNull;
if (_layer70) then {
	_item108 = createVehicle ["Land_Shoot_House_Wall_F",[5686.68,11064.5,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [5686.68,11064.5,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item109 = objNull;
if (_layer70) then {
	_item109 = createVehicle ["Land_Shoot_House_Wall_F",[5683.61,11061.5,0],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [5683.61,11061.5,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer70) then {
	_item110 = createVehicle ["Land_Shoot_House_Wall_F",[5683.65,11063.5,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [5683.65,11063.5,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer70) then {
	_item111 = createVehicle ["Land_Shoot_House_Wall_F",[5684.68,11064.5,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [5684.68,11064.5,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item112 = objNull;
if (_layer70) then {
	_item112 = createVehicle ["Land_Shoot_House_Wall_F",[5678.73,11066.6,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [5678.73,11066.6,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item113 = objNull;
if (_layer70) then {
	_item113 = createVehicle ["Land_Shoot_House_Wall_F",[5680.73,11066.6,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [5680.73,11066.6,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item114 = objNull;
if (_layer70) then {
	_item114 = createVehicle ["Land_Shoot_House_Wall_F",[5681.75,11067.6,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [5681.75,11067.6,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layer70) then {
	_item115 = createVehicle ["Land_Shoot_House_Wall_F",[5684.72,11066.5,0],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [5684.72,11066.5,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layer70) then {
	_item116 = createVehicle ["Land_Shoot_House_Wall_F",[5685.74,11067.5,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [5685.74,11067.5,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layer70) then {
	_item117 = createVehicle ["Land_Shoot_House_Wall_F",[5685.78,11069.5,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [5685.78,11069.5,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item118 = objNull;
if (_layer70) then {
	_item118 = createVehicle ["Land_Shoot_House_Wall_F",[5683.74,11067.5,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [5683.74,11067.5,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item119 = objNull;
if (_layer70) then {
	_item119 = createVehicle ["Land_Shoot_House_Wall_F",[5682.68,11064.6,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [5682.68,11064.6,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer70) then {
	_item120 = createVehicle ["Land_Shoot_House_Wall_F",[5678.68,11064.7,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [5678.68,11064.7,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer70) then {
	_item121 = createVehicle ["Land_Shoot_House_Panels_Window_F",[5688.43,11053.4,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [5688.43,11053.4,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer70) then {
	_item122 = createVehicle ["Land_Shoot_House_Panels_Window_F",[5680.44,11053.6,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [5680.44,11053.6,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer70) then {
	_item123 = createVehicle ["Land_Shoot_House_Wall_F",[5677.41,11052.7,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [5677.41,11052.7,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer70) then {
	_item124 = createVehicle ["Land_Shoot_House_Wall_F",[5690.43,11053.4,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [5690.43,11053.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer70) then {
	_item125 = createVehicle ["Land_Shoot_House_Wall_F",[5684.22,11043.5,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [5684.22,11043.5,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer70) then {
	_item126 = createVehicle ["Land_Shoot_House_Wall_F",[5691.41,11052.4,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [5691.41,11052.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer70) then {
	_item127 = createVehicle ["Land_Shoot_House_Wall_F",[5677.33,11048.7,0],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [5677.33,11048.7,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer70) then {
	_item128 = createVehicle ["Land_Shoot_House_Wall_F",[5686.43,11053.5,0],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [5686.43,11053.5,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer70) then {
	_item129 = createVehicle ["Land_Shoot_House_Wall_F",[5678.44,11053.7,0],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [5678.44,11053.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer70) then {
	_item130 = createVehicle ["Land_Shoot_House_Wall_F",[5691.32,11048.4,0],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [5691.32,11048.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer70) then {
	_item131 = createVehicle ["Land_Shoot_House_Wall_F",[5691.28,11046.4,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [5691.28,11046.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer70) then {
	_item132 = createVehicle ["Land_Shoot_House_Wall_F",[5691.24,11044.4,0],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [5691.24,11044.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer70) then {
	_item133 = createVehicle ["Land_Shoot_House_Wall_F",[5690.22,11043.4,0],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [5690.22,11043.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer70) then {
	_item134 = createVehicle ["Land_Shoot_House_Wall_F",[5688.22,11043.4,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [5688.22,11043.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer70) then {
	_item135 = createVehicle ["Land_Shoot_House_Wall_F",[5686.22,11043.5,0],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [5686.22,11043.5,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer70) then {
	_item136 = createVehicle ["Land_Shoot_House_Wall_F",[5677.24,11044.7,0],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [5677.24,11044.7,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer70) then {
	_item137 = createVehicle ["Land_Shoot_House_Wall_F",[5682.22,11043.6,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [5682.22,11043.6,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer70) then {
	_item138 = createVehicle ["Land_Shoot_House_Wall_F",[5688.63,11064.4,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [5688.63,11064.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer70) then {
	_item139 = createVehicle ["Land_Shoot_House_Wall_F",[5672.42,11052.8,0],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [5672.42,11052.8,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer70) then {
	_item140 = createVehicle ["Land_Shoot_House_Wall_F",[5674.42,11052.7,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [5674.42,11052.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer70) then {
	_item141 = createVehicle ["Land_Shoot_House_Wall_F",[5676.41,11052.7,0],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [5676.41,11052.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer70) then {
	_item142 = createVehicle ["Land_Shoot_House_Wall_F",[5676.35,11049.7,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [5676.35,11049.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer70) then {
	_item143 = createVehicle ["Land_Shoot_House_Wall_F",[5674.35,11049.7,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [5674.35,11049.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer70) then {
	_item144 = createVehicle ["Land_Shoot_House_Wall_F",[5672.35,11049.8,0],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [5672.35,11049.8,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer70) then {
	_item145 = createVehicle ["Land_Shoot_House_Wall_F",[5672.5,11056.8,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [5672.5,11056.8,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer70) then {
	_item146 = createVehicle ["Land_Shoot_House_Wall_F",[5674.5,11056.7,0],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [5674.5,11056.7,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer70) then {
	_item147 = createVehicle ["Land_Shoot_House_Wall_F",[5681.46,11054.6,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [5681.46,11054.6,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer70) then {
	_item148 = createVehicle ["Land_Shoot_House_Wall_F",[5681.5,11056.6,0],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [5681.5,11056.6,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer70) then {
	_item149 = createVehicle ["Land_Shoot_House_Wall_F",[5691.37,11050.4,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [5691.37,11050.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer70) then {
	_item150 = createVehicle ["Land_Shoot_House_Wall_F",[5679.5,11056.6,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [5679.5,11056.6,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer70) then {
	_item151 = createVehicle ["Land_Shoot_House_Wall_F",[5689.46,11054.4,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [5689.46,11054.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer70) then {
	_item152 = createVehicle ["Land_Shoot_House_Wall_F",[5691.55,11059.7,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [5691.55,11059.7,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer70) then {
	_item153 = createVehicle ["Land_Shoot_House_Wall_F",[5689.5,11056.4,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [5689.5,11056.4,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer70) then {
	_item154 = createVehicle ["Land_Shoot_House_Wall_F",[5678.22,11043.7,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [5678.22,11043.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer70) then {
	_item155 = createVehicle ["Land_Shoot_House_Wall_F",[5685.49,11056.4,0],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [5685.49,11056.4,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layer70) then {
	_item156 = createVehicle ["Land_Shoot_House_Wall_F",[5680.55,11057.5,0],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [5680.55,11057.5,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer70) then {
	_item157 = createVehicle ["Land_Shoot_House_Wall_F",[5691.53,11058.1,0],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [5691.53,11058.1,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer70) then {
	_item158 = createVehicle ["Land_Shoot_House_Wall_F",[5677.29,11046.7,0],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [5677.29,11046.7,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item159 = objNull;
if (_layer70) then {
	_item159 = createVehicle ["Land_Shoot_House_Wall_F",[5678.33,11048.7,0],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [5678.33,11048.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item160 = objNull;
if (_layer70) then {
	_item160 = createVehicle ["Land_Shoot_House_Wall_F",[5680.33,11048.6,0],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [5680.33,11048.6,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layer70) then {
	_item161 = createVehicle ["Land_Shoot_House_Wall_F",[5682.33,11048.6,0],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [5682.33,11048.6,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item162 = objNull;
if (_layer70) then {
	_item162 = createVehicle ["Land_Shoot_House_Wall_F",[5683.3,11047.5,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [5683.3,11047.5,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer70) then {
	_item163 = createVehicle ["Land_Shoot_House_Wall_F",[5688.33,11049.6,0],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [5688.33,11049.6,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer70) then {
	_item164 = createVehicle ["Land_Shoot_House_Wall_F",[5687.31,11048.6,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [5687.31,11048.6,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer70) then {
	_item165 = createVehicle ["Land_Shoot_House_Wall_F",[5687.27,11046.6,0],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [5687.27,11046.6,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer70) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[5686.25,11045.6,0],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [5686.25,11045.6,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer70) then {
	_item167 = createVehicle ["Land_Shoot_House_Wall_F",[5685.22,11044.6,0],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [5685.22,11044.6,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer70) then {
	_item168 = createVehicle ["Land_Shoot_House_Wall_F",[5679.46,11054.6,0],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [5679.46,11054.6,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer70) then {
	_item169 = createVehicle ["Land_Shoot_House_Panels_Window_F",[5671.53,11057.8,0],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [5671.53,11057.8,84.5455];
	_this setVectorDirAndUp [[0.999758,-0.0220082,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer70) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[5655.62,11062.2,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [5655.62,11062.2,84.4833];
	_this setVectorDirAndUp [[-0.999603,0.0218391,0.0178037],[0.0175975,-0.00959788,0.999799]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer70) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[5665.62,11061.9,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [5665.62,11061.9,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer70) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[5661.53,11058,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [5661.53,11058,84.5346];
	_this setVectorDirAndUp [[-0.999695,0.022009,-0.0111957],[-0.0111984,0,0.999937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer70) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[5671.57,11059.8,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [5671.57,11059.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer70) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[5655.57,11060.2,0],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [5655.57,11060.2,84.4649];
	_this setVectorDirAndUp [[-0.999603,0.0218391,0.0178037],[0.0175975,-0.00959788,0.999799]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer70) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[5671.79,11069.8,0],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [5671.79,11069.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer70) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[5671.75,11067.8,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [5671.75,11067.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer70) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[5655.53,11058.2,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [5655.53,11058.2,84.4465];
	_this setVectorDirAndUp [[-0.999603,0.0218391,0.0178037],[0.0175975,-0.00959788,0.999799]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer70) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[5655.53,11058.2,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [5655.53,11058.2,84.4465];
	_this setVectorDirAndUp [[-0.999603,0.0218391,0.0178037],[0.0175975,-0.00959788,0.999799]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer70) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[5668.81,11070.9,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [5668.81,11070.9,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer70) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[5665.57,11059.9,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [5665.57,11059.9,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer70) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[5655.75,11068.2,0],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [5655.75,11068.2,84.537];
	_this setVectorDirAndUp [[-0.999654,0.0218699,0.0146045],[0.0143974,-0.00959837,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer70) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[5666.81,11070.9,0],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [5666.81,11070.9,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer70) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[5660.81,11071,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [5660.81,11071,84.559];
	_this setVectorDirAndUp [[-0.0220077,-0.999758,0.000175923],[0.00799344,0,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer70) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[5658.81,11071.1,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [5658.81,11071.1,84.5621];
	_this setVectorDirAndUp [[-0.0220084,-0.999711,-0.00963186],[-0.00158221,-0.00959935,0.999953]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer70) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[5671.61,11061.8,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [5671.61,11061.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer70) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[5671.64,11062.8,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [5671.64,11062.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer70) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[5670.81,11070.8,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [5670.81,11070.8,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer70) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[5661.62,11062,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [5661.62,11062,84.5356];
	_this setVectorDirAndUp [[-0.999695,0.022009,-0.0111957],[-0.0111984,0,0.999937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer70) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[5655.57,11060.2,0],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [5655.57,11060.2,84.4649];
	_this setVectorDirAndUp [[-0.999603,0.0218391,0.0178037],[0.0175975,-0.00959788,0.999799]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer70) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[5655.79,11070.2,0],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [5655.79,11070.2,84.5534];
	_this setVectorDirAndUp [[-0.999712,0.0219159,0.00980787],[0.00959936,-0.00959892,0.999908]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer70) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[5665.66,11063.9,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [5665.66,11063.9,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer70) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[5657.44,11064.1,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [5657.44,11064.1,84.5044];
	_this setVectorDirAndUp [[-0.999695,0.0221155,-0.0109839],[-0.0111984,-0.00959876,0.999891]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer70) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[5661.66,11064,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [5661.66,11064,84.5442];
	_this setVectorDirAndUp [[-0.999757,0.022009,-0.00154371],[-0.00154408,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer70) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[5661.75,11068,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [5661.75,11068,84.5443];
	_this setVectorDirAndUp [[-0.999757,0.022009,-0.00154371],[-0.00154408,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer70) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[5665.79,11069.9,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [5665.79,11069.9,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer70) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[5661.79,11070,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [5661.79,11070,84.5512];
	_this setVectorDirAndUp [[-0.999726,0.022009,0.0079915],[0.00799344,0,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer70) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[5661.57,11060,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [5661.57,11060,84.5351];
	_this setVectorDirAndUp [[-0.999695,0.022009,-0.0111957],[-0.0111984,0,0.999937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer70) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[5670.61,11061.8,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [5670.61,11061.8,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer70) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[5668.61,11061.9,0],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [5668.61,11061.9,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer70) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[5666.61,11061.9,0],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [5666.61,11061.9,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer70) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[5660.55,11059,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [5660.55,11059,84.5237];
	_this setVectorDirAndUp [[-0.022007,-0.999758,-0.000246459],[-0.0111984,0,0.999937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer70) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[5660.53,11055,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [5660.53,11055,84.5045];
	_this setVectorDirAndUp [[-0.0220036,-0.999758,-0.000457671],[-0.0207953,0,0.999784]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer70) then {
	_item203 = createVehicle ["Land_Shoot_House_Wall_F",[5656.55,11059.1,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [5656.55,11059.1,84.4495];
	_this setVectorDirAndUp [[-0.0220036,-0.999707,-0.0100547],[-0.0207953,-0.00959729,0.999738]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item204 = objNull;
if (_layer70) then {
	_item204 = createVehicle ["Land_Shoot_House_Wall_F",[5656.82,11071.1,0],[],0,"CAN_COLLIDE"];
	_this = _item204;
	_objects pushback _this;
	_objectIDs pushback 204;
	_this setPosWorld [5656.82,11071.1,84.5593];
	_this setVectorDirAndUp [[-0.0220084,-0.999711,-0.00963186],[-0.00158221,-0.00959935,0.999953]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item205 = objNull;
if (_layer70) then {
	_item205 = createVehicle ["Land_Shoot_House_Wall_F",[5660.68,11065,0],[],0,"CAN_COLLIDE"];
	_this = _item205;
	_objects pushback _this;
	_objectIDs pushback 205;
	_this setPosWorld [5660.68,11065,84.5426];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,-3.39827e-005],[-0.00154408,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item206 = objNull;
if (_layer70) then {
	_item206 = createVehicle ["Land_Shoot_House_Wall_F",[5671.57,11059.8,0],[],0,"CAN_COLLIDE"];
	_this = _item206;
	_objects pushback _this;
	_objectIDs pushback 206;
	_this setPosWorld [5671.57,11059.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item207 = objNull;
if (_layer70) then {
	_item207 = createVehicle ["Land_Shoot_House_Wall_F",[5662.81,11071,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [5662.81,11071,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item208 = objNull;
if (_layer70) then {
	_item208 = createVehicle ["Land_Shoot_House_Wall_F",[5665.75,11067.9,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [5665.75,11067.9,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item209 = objNull;
if (_layer70) then {
	_item209 = createVehicle ["Land_Shoot_House_Wall_F",[5655.44,11054.2,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [5655.44,11054.2,84.4055];
	_this setVectorDirAndUp [[-0.999542,0.0217412,0.02107],[0.0207951,-0.012795,0.999702]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item210 = objNull;
if (_layer70) then {
	_item210 = createVehicle ["Land_Shoot_House_Wall_F",[5664.22,11044.1,0],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [5664.22,11044.1,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item211 = objNull;
if (_layer70) then {
	_item211 = createVehicle ["Land_Shoot_House_Wall_F",[5671.48,11055.8,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [5671.48,11055.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item212 = objNull;
if (_layer70) then {
	_item212 = createVehicle ["Land_Shoot_House_Wall_F",[5655.34,11050.2,0],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [5655.34,11050.2,84.3591];
	_this setVectorDirAndUp [[-0.99947,0.0217778,0.0241954],[0.023991,-0.0095966,0.999666]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item213 = objNull;
if (_layer70) then {
	_item213 = createVehicle ["Land_Shoot_House_Wall_F",[5671.33,11048.8,0],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [5671.33,11048.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item214 = objNull;
if (_layer70) then {
	_item214 = createVehicle ["Land_Shoot_House_Wall_F",[5665.48,11055.9,0],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [5665.48,11055.9,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item215 = objNull;
if (_layer70) then {
	_item215 = createVehicle ["Land_Shoot_House_Wall_F",[5657.31,11052.1,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [5657.31,11052.1,84.3977];
	_this setVectorDirAndUp [[-0.999194,0.0224369,-0.0332878],[-0.0335804,-0.0127906,0.999354]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item216 = objNull;
if (_layer70) then {
	_item216 = createVehicle ["Land_Shoot_House_Wall_F",[5666.22,11044.1,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [5666.22,11044.1,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item217 = objNull;
if (_layer70) then {
	_item217 = createVehicle ["Land_Shoot_House_Wall_F",[5655.24,11045.3,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [5655.24,11045.3,84.2847];
	_this setVectorDirAndUp [[-0.99947,0.0216224,0.0243367],[0.0239934,-0.0159967,0.999584]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item218 = objNull;
if (_layer70) then {
	_item218 = createVehicle ["Land_Shoot_House_Wall_F",[5660.22,11044.2,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [5660.22,11044.2,84.4396];
	_this setVectorDirAndUp [[-0.0219814,-0.999612,-0.0170876],[-0.0495399,-0.0159817,0.998644]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item219 = objNull;
if (_layer70) then {
	_item219 = createVehicle ["Land_Shoot_House_Wall_F",[5658.22,11044.2,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [5658.22,11044.2,84.3411];
	_this setVectorDirAndUp [[-0.0219814,-0.999612,-0.0170876],[-0.0495399,-0.0159817,0.998644]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item220 = objNull;
if (_layer70) then {
	_item220 = createVehicle ["Land_Shoot_House_Wall_F",[5665.44,11053.9,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [5665.44,11053.9,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item221 = objNull;
if (_layer70) then {
	_item221 = createVehicle ["Land_Shoot_House_Wall_F",[5661.44,11054,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [5661.44,11054,84.5235];
	_this setVectorDirAndUp [[-0.999542,0.022009,-0.0207903],[-0.0207953,0,0.999784]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item222 = objNull;
if (_layer70) then {
	_item222 = createVehicle ["Land_Shoot_House_Wall_F",[5671.28,11046.8,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [5671.28,11046.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item223 = objNull;
if (_layer70) then {
	_item223 = createVehicle ["Land_Shoot_House_Wall_F",[5665.36,11049.9,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [5665.36,11049.9,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item224 = objNull;
if (_layer70) then {
	_item224 = createVehicle ["Land_Shoot_House_Wall_F",[5665.24,11045.1,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [5665.24,11045.1,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item225 = objNull;
if (_layer70) then {
	_item225 = createVehicle ["Land_Shoot_House_Wall_F",[5671.24,11045,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [5671.24,11045,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item226 = objNull;
if (_layer70) then {
	_item226 = createVehicle ["Land_Shoot_House_Wall_F",[5661.24,11045.2,0],[],0,"CAN_COLLIDE"];
	_this = _item226;
	_objects pushback _this;
	_objectIDs pushback 226;
	_this setPosWorld [5661.24,11045.2,84.5032];
	_this setVectorDirAndUp [[-0.999194,0.022009,-0.0335722],[-0.0335804,0,0.999436]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item227 = objNull;
if (_layer70) then {
	_item227 = createVehicle ["Land_Shoot_House_Wall_F",[5661.4,11052,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_objects pushback _this;
	_objectIDs pushback 227;
	_this setPosWorld [5661.4,11052,84.5226];
	_this setVectorDirAndUp [[-0.999542,0.022009,-0.0207903],[-0.0207953,0,0.999784]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item228 = objNull;
if (_layer70) then {
	_item228 = createVehicle ["Land_Shoot_House_Wall_F",[5670.22,11044,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_objects pushback _this;
	_objectIDs pushback 228;
	_this setPosWorld [5670.22,11044,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item229 = objNull;
if (_layer70) then {
	_item229 = createVehicle ["Land_Shoot_House_Wall_F",[5670.46,11054.8,0],[],0,"CAN_COLLIDE"];
	_this = _item229;
	_objects pushback _this;
	_objectIDs pushback 229;
	_this setPosWorld [5670.46,11054.8,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item230 = objNull;
if (_layer70) then {
	_item230 = createVehicle ["Land_Shoot_House_Wall_F",[5666.46,11054.9,0],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [5666.46,11054.9,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item231 = objNull;
if (_layer70) then {
	_item231 = createVehicle ["Land_Shoot_House_Wall_F",[5660.42,11053.1,0],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [5660.42,11053.1,84.5022];
	_this setVectorDirAndUp [[-0.0220036,-0.999758,-0.000457671],[-0.0207953,0,0.999784]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item232 = objNull;
if (_layer70) then {
	_item232 = createVehicle ["Land_Shoot_House_Wall_F",[5658.42,11053.1,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [5658.42,11053.1,84.448];
	_this setVectorDirAndUp [[-0.021996,-0.999666,-0.0135337],[-0.0335804,-0.0127906,0.999354]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item233 = objNull;
if (_layer70) then {
	_item233 = createVehicle ["Land_Shoot_House_Wall_F",[5656.32,11051.1,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [5656.32,11051.1,84.3514];
	_this setVectorDirAndUp [[-0.021996,-0.999666,-0.0135337],[-0.0335804,-0.0127906,0.999354]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item234 = objNull;
if (_layer70) then {
	_item234 = createVehicle ["Land_Shoot_House_Wall_F",[5656.22,11044.3,0],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [5656.22,11044.3,84.2449];
	_this setVectorDirAndUp [[-0.0220021,-0.999638,-0.0154695],[0.0239934,-0.0159967,0.999584]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item235 = objNull;
if (_layer70) then {
	_item235 = createVehicle ["Land_Shoot_House_Wall_F",[5671.48,11055.8,0],[],0,"CAN_COLLIDE"];
	_this = _item235;
	_objects pushback _this;
	_objectIDs pushback 235;
	_this setPosWorld [5671.48,11055.8,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item236 = objNull;
if (_layer70) then {
	_item236 = createVehicle ["Land_Shoot_House_Wall_F",[5655.5,11056.1,0],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [5655.5,11056.1,84.4296];
	_this setVectorDirAndUp [[0.999542,-0.0217404,-0.02107],[0.0207951,-0.012795,0.999702]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item237 = objNull;
if (_layer70) then {
	_item237 = createVehicle ["Land_Shoot_House_Wall_F",[5661.25,11047.2,0],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [5661.25,11047.2,84.5034];
	_this setVectorDirAndUp [[-0.999194,0.022009,-0.0335722],[-0.0335804,0,0.999436]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item238 = objNull;
if (_layer70) then {
	_item238 = createVehicle ["Land_Shoot_House_Wall_F",[5655.35,11048.2,0],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [5655.35,11048.2,84.3278];
	_this setVectorDirAndUp [[0.99947,-0.0216216,-0.0243367],[0.0239934,-0.0159967,0.999584]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item239 = objNull;
if (_layer70) then {
	_item239 = createVehicle ["Land_Shoot_House_Wall_F",[5665.4,11051.9,0],[],0,"CAN_COLLIDE"];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [5665.4,11051.9,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item240 = objNull;
if (_layer70) then {
	_item240 = createVehicle ["Land_Shoot_House_Wall_F",[5668.46,11054.9,0],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [5668.46,11054.9,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item242 = objNull;
if (_layer241 && _layer70) then {
	_item242 = createVehicle ["Sign_Arrow_F",[5672.93,11062.5,0],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [5672.93,11062.5,83.2433];
	_this setVectorDirAndUp [[0.999977,-0.00683986,0],[0,0,1]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item243 = objNull;
if (_layer241 && _layer70) then {
	_item243 = createVehicle ["Sign_Arrow_F",[5664.45,11068.8,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [5664.45,11068.8,83.2433];
	_this setVectorDirAndUp [[-0.0268337,-0.99964,0],[0,0,1]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item244 = objNull;
if (_layer241 && _layer70) then {
	_item244 = createVehicle ["Sign_Arrow_F",[5656.54,11057.6,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [5656.54,11057.6,83.1321];
	_this setVectorDirAndUp [[0.999537,-0.022427,0.0205758],[-0.0207953,-0.00959729,0.999738]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item245 = objNull;
if (_layer241 && _layer70) then {
	_item245 = createVehicle ["Sign_Arrow_F",[5669.24,11047.7,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [5669.24,11047.7,83.2433];
	_this setVectorDirAndUp [[0.0571788,0.998364,0],[0,0,1]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item246 = objNull;
if (_layer241 && _layer70) then {
	_item246 = createVehicle ["Sign_Arrow_F",[5658.39,11046.7,0],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [5658.39,11046.7,83.087];
	_this setVectorDirAndUp [[0.067415,0.997538,0.0193082],[-0.0495399,-0.0159817,0.998644]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item247 = objNull;
if (_layer241 && _layer70) then {
	_item247 = createVehicle ["Sign_Arrow_F",[5688.65,11055.4,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [5688.65,11055.4,83.2433];
	_this setVectorDirAndUp [[0.03708,-0.999312,0],[0,0,1]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item248 = objNull;
if (_layer241 && _layer70) then {
	_item248 = createVehicle ["Sign_Arrow_F",[5686.62,11058.7,0],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [5686.62,11058.7,83.2433];
	_this setVectorDirAndUp [[0.00363063,0.999993,0],[0,0,1]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item249 = objNull;
if (_layer241 && _layer70) then {
	_item249 = createVehicle ["Sign_Arrow_F",[5678.89,11059.5,0],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [5678.89,11059.5,83.2433];
	_this setVectorDirAndUp [[-0.00737643,0.999973,0],[0,0,1]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item250 = objNull;
if (_layer241 && _layer70) then {
	_item250 = createVehicle ["Sign_Arrow_F",[5680.66,11055.6,0],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [5680.66,11055.6,83.2433];
	_this setVectorDirAndUp [[-0.0188753,-0.999822,0],[0,0,1]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item251 = objNull;
if (_layer241 && _layer70) then {
	_item251 = createVehicle ["Sign_Arrow_F",[5673.58,11057.9,0],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [5673.58,11057.9,83.2433];
	_this setVectorDirAndUp [[-0.999782,0.0208859,0],[0,0,1]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item252 = objNull;
if (_layer241 && _layer70) then {
	_item252 = createVehicle ["Sign_Arrow_F",[5679.86,11068.3,0],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [5679.86,11068.3,83.2433];
	_this setVectorDirAndUp [[0.999812,-0.0193976,0],[0,0,1]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item253 = objNull;
if (_layer241 && _layer70) then {
	_item253 = createVehicle ["Sign_Arrow_F",[5660.62,11053.9,0],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [5660.62,11053.9,83.2041];
	_this setVectorDirAndUp [[0.999537,-0.0222285,0.0207902],[-0.0207953,0,0.999784]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item254 = objNull;
if (_layer241 && _layer70) then {
	_item254 = createVehicle ["Sign_Arrow_F",[5682.41,11058.2,0],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [5682.41,11058.2,83.2433];
	_this setVectorDirAndUp [[0.999753,-0.0222285,0],[0,0,1]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item255 = objNull;
if (_layer241 && _layer70) then {
	_item255 = createVehicle ["Sign_Arrow_F",[5688.45,11062.5,0],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [5688.45,11062.5,83.2433];
	_this setVectorDirAndUp [[0.999753,-0.0222285,0],[0,0,1]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item256 = objNull;
if (_layer241 && _layer70) then {
	_item256 = createVehicle ["Sign_Arrow_F",[5670.41,11069.1,0],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [5670.41,11069.1,83.2433];
	_this setVectorDirAndUp [[-0.999782,0.0208859,0],[0,0,1]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item257 = objNull;
if (_layer241 && _layer70) then {
	_item257 = createVehicle ["Sign_Arrow_F",[5668.17,11063,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [5668.17,11063,83.2433];
	_this setVectorDirAndUp [[-0.999782,0.0208859,0],[0,0,1]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item258 = objNull;
if (_layer241 && _layer70) then {
	_item258 = createVehicle ["Sign_Arrow_F",[5688.83,11046.4,0],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [5688.83,11046.4,83.2433];
	_this setVectorDirAndUp [[-0.999782,0.0208859,0],[0,0,1]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item259 = objNull;
if (_layer241 && _layer70) then {
	_item259 = createVehicle ["Sign_Arrow_F",[5658.43,11069.6,0],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [5658.43,11069.6,83.2448];
	_this setVectorDirAndUp [[0.999975,-0.00685473,0.00151644],[-0.00158221,-0.00959935,0.999953]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item260 = objNull;
if (_layer241 && _layer70) then {
	_item260 = createVehicle ["Sign_Arrow_F",[5679.85,11045.4,0],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [5679.85,11045.4,83.2433];
	_this setVectorDirAndUp [[0.999753,-0.0222285,0],[0,0,1]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item263 = objNull;
if (_layer70) then {
	_item263 = createVehicle ["Land_Shoot_House_Wall_F",[5680.22,11043.6,0],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [5680.22,11043.6,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item264 = objNull;
if (_layer70) then {
	_item264 = createVehicle ["Land_Shoot_House_Wall_F",[5688.81,11070.4,0],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [5688.81,11070.4,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item265 = objNull;
if (_layer70) then {
	_item265 = createVehicle ["Land_Shoot_House_Wall_F",[5684.45,11053.5,0],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [5684.45,11053.5,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item266 = objNull;
if (_layer70) then {
	_item266 = createVehicle ["Land_Shoot_House_Panels_Window_F",[5679.65,11059.7,0],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [5679.65,11059.7,84.5455];
	_this setVectorDirAndUp [[-0.999758,0.022009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item267 = objNull;
if (_layer70) then {
	_item267 = createVehicle ["Land_Shoot_House_Wall_F",[5678.47,11056.6,0],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [5678.47,11056.6,84.5455];
	_this setVectorDirAndUp [[0.0220085,0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item268 = objNull;
if (_layer70) then {
	_item268 = createVehicle ["Land_Shoot_House_Wall_F",[5659.66,11056.1,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [5659.66,11056.1,84.4864];
	_this setVectorDirAndUp [[-0.999542,0.022009,-0.0207903],[-0.0207953,0,0.999784]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item269 = objNull;
if (_layer70) then {
	_item269 = createVehicle ["Land_Shoot_House_Panels_Window_F",[5675.4,11057.7,0],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [5675.4,11057.7,84.5455];
	_this setVectorDirAndUp [[-0.999975,-0.00711911,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item270 = objNull;
if (_layer70) then {
	_item270 = createVehicle ["Land_Shoot_House_Wall_F",[5662.22,11044.2,0],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [5662.22,11044.2,84.5361];
	_this setVectorDirAndUp [[-0.021996,-0.999758,-0.00073905],[-0.0335804,0,0.999436]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item271 = objNull;
if (_layer70) then {
	_item271 = createVehicle ["Land_Shoot_House_Wall_F",[5668.24,11044.1,0],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [5668.24,11044.1,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item272 = objNull;
if (_layer70) then {
	_item272 = createVehicle ["Land_Shoot_House_Wall_F",[5664.8,11070.9,0],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [5664.8,11070.9,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item273 = objNull;
if (_layer70) then {
	_item273 = createVehicle ["Land_Shoot_House_Wall_F",[5655.72,11066.2,0],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [5655.72,11066.2,84.5184];
	_this setVectorDirAndUp [[-0.999654,0.0218699,0.0146045],[0.0143974,-0.00959837,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item274 = objNull;
if (_layer70) then {
	_item274 = createVehicle ["Land_Shoot_House_Wall_F",[5656.42,11053.1,0],[],0,"CAN_COLLIDE"];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [5656.42,11053.1,84.3814];
	_this setVectorDirAndUp [[-0.021996,-0.999666,-0.0135337],[-0.0335804,-0.0127906,0.999354]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item275 = objNull;
if (_layer70) then {
	_item275 = createVehicle ["Land_Shoot_House_Wall_F",[5656.6,11065.2,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [5656.6,11065.2,84.5053];
	_this setVectorDirAndUp [[-0.022007,-0.999709,-0.00984349],[-0.0111984,-0.00959876,0.999891]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item276 = objNull;
if (_layer70) then {
	_item276 = createVehicle ["Land_Shoot_House_Wall_F",[5656.48,11063.1,0],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [5656.48,11063.1,84.4835];
	_this setVectorDirAndUp [[-0.022007,-0.999709,-0.00984349],[-0.0111984,-0.00959876,0.999891]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item277 = objNull;
if (_layer70) then {
	_item277 = createVehicle ["Land_Shoot_House_Wall_F",[5676.83,11070.7,0],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [5676.83,11070.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item278 = objNull;
if (_layer70) then {
	_item278 = createVehicle ["Land_Shoot_House_Wall_F",[5672.83,11070.7,0],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [5672.83,11070.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item279 = objNull;
if (_layer70) then {
	_item279 = createVehicle ["Land_Shoot_House_Wall_F",[5674.83,11070.7,0],[],0,"CAN_COLLIDE"];
	_this = _item279;
	_objects pushback _this;
	_objectIDs pushback 279;
	_this setPosWorld [5674.83,11070.7,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item280 = objNull;
if (_layer70) then {
	_item280 = createVehicle ["Land_Shoot_House_Wall_F",[5655.3,11046.7,0],[],0,"CAN_COLLIDE"];
	_this = _item280;
	_objects pushback _this;
	_objectIDs pushback 280;
	_this setPosWorld [5655.3,11046.7,84.3061];
	_this setVectorDirAndUp [[0.99947,-0.0216216,-0.0243367],[0.0239934,-0.0159967,0.999584]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item281 = objNull;
if (_layer70) then {
	_item281 = createVehicle ["Land_Shoot_House_Wall_F",[5676.2,11043.8,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item281;
	_objects pushback _this;
	_objectIDs pushback 281;
	_this setPosWorld [5676.2,11043.8,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item282 = objNull;
if (_layer70) then {
	_item282 = createVehicle ["Land_Shoot_House_Wall_F",[5674.2,11043.8,0],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [5674.2,11043.8,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item283 = objNull;
if (_layer70) then {
	_item283 = createVehicle ["Land_Shoot_House_Wall_F",[5672.2,11043.9,0],[],0,"CAN_COLLIDE"];
	_this = _item283;
	_objects pushback _this;
	_objectIDs pushback 283;
	_this setPosWorld [5672.2,11043.9,84.5455];
	_this setVectorDirAndUp [[-0.0220084,-0.999758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item284 = objNull;
if (_layer70) then {
	_item284 = createVehicle ["Land_InfoStand_V1_F",[5671.55,11075.3,0],[],0,"CAN_COLLIDE"];
	_this = _item284;
	_objects pushback _this;
	_objectIDs pushback 284;
	_this setPosWorld [5671.55,11075.3,83.4454];
	_this setVectorDirAndUp [[-0.00350817,-0.999994,0],[0,0,1]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item285 = objNull;
if (_layer70) then {
	_item285 = createVehicle ["Land_Scaffolding_New_F",[5654.13,11061.6,0],[],0,"CAN_COLLIDE"];
	_this = _item285;
	_objects pushback _this;
	_objectIDs pushback 285;
	_this setPosWorld [5654.13,11061.6,85.5777];
	_this setVectorDirAndUp [[-0.0115832,-0.999933,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item286 = objNull;
if (_layer70) then {
	_item286 = createVehicle ["VR_Area_01_circle_4_yellow_F",[5671.54,11076.5,0],[],0,"CAN_COLLIDE"];
	_this = _item286;
	_objects pushback _this;
	_objectIDs pushback 286;
	_this setPosWorld [5671.54,11076.5,82.8705];
	_this setVectorDirAndUp [[-0.0173566,-0.999849,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item289 = objNull;
if (_layerRoot) then {
	_item289 = createVehicle ["Box_NATO_AmmoVeh_F",[5930.4,11443.3,0],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [5930.4,11443.3,83.8298];
	_this setVectorDirAndUp [[0.703746,0.710452,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
};

private _item290 = objNull;
if (_layerRoot) then {
	_item290 = createVehicle ["B_Slingload_01_Fuel_F",[5924.59,11436.2,-0.000114441],[],0,"CAN_COLLIDE"];
	_this = _item290;
	_objects pushback _this;
	_objectIDs pushback 290;
	_this setPosWorld [5924.59,11436.2,84.4023];
	_this setVectorDirAndUp [[0.703746,0.710452,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item292 = objNull;
if (_layer291) then {
	_item292 = createVehicle ["Land_InfoStand_V1_F",[5637.22,11086,0],[],0,"CAN_COLLIDE"];
	_this = _item292;
	_objects pushback _this;
	_objectIDs pushback 292;
	_this setPosWorld [5637.22,11086,83.6154];
	_this setVectorDirAndUp [[-0.698265,-0.715839,0],[0,0,1]];
	fr_at_button = _this;
	_this setVehicleVarName "fr_at_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item293 = objNull;
if (_layer291) then {
	_item293 = createVehicle ["Sign_Arrow_Large_Blue_F",[5348.49,10759.1,0],[],0,"CAN_COLLIDE"];
	_this = _item293;
	_objects pushback _this;
	_objectIDs pushback 293;
	_this setPosWorld [5348.49,10759.1,104.681];
	_this setVectorDirAndUp [[0,0.991503,-0.130085],[-0.0463498,0.129945,0.990437]];
	fr_at_spawn = _this;
	_this setVehicleVarName "fr_at_spawn";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item294 = objNull;
if (_layerRoot) then {
	_item294 = createVehicle ["ShootingPos_F",[5629.68,11087.9,0],[],0,"CAN_COLLIDE"];
	_this = _item294;
	_objects pushback _this;
	_objectIDs pushback 294;
	_this setPosWorld [5629.68,11087.9,83.0602];
	_this setVectorDirAndUp [[-0.58252,-0.812816,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item295 = objNull;
if (_layerRoot) then {
	_item295 = createVehicle ["ShootingPos_F",[5622.05,11093.7,0],[],0,"CAN_COLLIDE"];
	_this = _item295;
	_objects pushback _this;
	_objectIDs pushback 295;
	_this setPosWorld [5622.05,11093.7,83.0602];
	_this setVectorDirAndUp [[-0.58252,-0.812816,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item296 = objNull;
if (_layerRoot) then {
	_item296 = createVehicle ["ShootingPos_F",[5614.13,11099.8,0],[],0,"CAN_COLLIDE"];
	_this = _item296;
	_objects pushback _this;
	_objectIDs pushback 296;
	_this setPosWorld [5614.13,11099.8,83.0602];
	_this setVectorDirAndUp [[-0.58252,-0.812816,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item297 = objNull;
if (_layerRoot) then {
	_item297 = createVehicle ["Land_ShootingPos_Roof_01_F",[5648.89,11086.6,0],[],0,"CAN_COLLIDE"];
	_this = _item297;
	_objects pushback _this;
	_objectIDs pushback 297;
	_this setPosWorld [5648.89,11086.6,84.0383];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item301 = objNull;
if (_layerRoot) then {
	_item301 = createVehicle ["Land_ClutterCutter_medium_F",[5641.9,11087,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item301;
	_objects pushback _this;
	_objectIDs pushback 301;
	_this setPosWorld [5641.9,11087,83.0391];
	_this setVectorDirAndUp [[0,0.999999,0.00154382],[0,-0.00154382,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item302 = objNull;
if (_layerRoot) then {
	_item302 = createVehicle ["TargetP_Inf_F",[5343.25,10851,0.00737],[],0,"CAN_COLLIDE"];
	_this = _item302;
	_objects pushback _this;
	_objectIDs pushback 302;
	_this setPosWorld [5343.25,10851,85.0616];
	_this setVectorDirAndUp [[-0.833128,-0.553081,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item303 = objNull;
if (_layerRoot) then {
	_item303 = createVehicle ["TargetP_Inf_F",[5385.63,10786,0],[],0,"CAN_COLLIDE"];
	_this = _item303;
	_objects pushback _this;
	_objectIDs pushback 303;
	_this setPosWorld [5385.63,10786,101.83];
	_this setVectorDirAndUp [[-0.498942,-0.861148,0.0973701],[-0.0063944,0.116009,0.993228]];
	0 remoteExec ['setFeatureType', _this];
};

private _item304 = objNull;
if (_layerRoot) then {
	_item304 = createVehicle ["TargetP_Inf_F",[5461.62,10962.3,0],[],0,"CAN_COLLIDE"];
	_this = _item304;
	_objects pushback _this;
	_objectIDs pushback 304;
	_this setPosWorld [5461.62,10962.3,83.8981];
	_this setVectorDirAndUp [[-0.823881,-0.566762,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item305 = objNull;
if (_layerRoot) then {
	_item305 = createVehicle ["RHS_M252_D",[5625.64,11089.9,0],[],0,"CAN_COLLIDE"];
	_this = _item305;
	_objects pushback _this;
	_objectIDs pushback 305;
	_this setPosWorld [5625.64,11089.9,84.2029];
	_this setVectorDirAndUp [[-0.632922,-0.774216,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	parseSimpleArray "[[""hithull""],[0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['rhs_ammoslot_1_type', "rhs_1Rnd_m821_HE"];;
	if(-1 >= 0)then{ [_this,-1,'rhs_ammoslot_1',40,['rhs_ammoslot_1','rhs_ammoslot_2','rhs_ammoslot_3']] spawn rhsusf_fnc_Eden_DefineLoadout};;
	_this setVariable ['rhs_ammoslot_2_type', "8Rnd_82mm_Mo_Smoke_white"];;
	if(-1 >= 0)then{ [_this,-1,'rhs_ammoslot_2',40,['rhs_ammoslot_1','rhs_ammoslot_2','rhs_ammoslot_3']] spawn rhsusf_fnc_Eden_DefineLoadout};;
	_this setVariable ['rhs_ammoslot_3_type', "8Rnd_82mm_Mo_Flare_white"];;
	if(-1 >= 0)then{ [_this,-1,'rhs_ammoslot_3',40,['rhs_ammoslot_1','rhs_ammoslot_2','rhs_ammoslot_3']] spawn rhsusf_fnc_Eden_DefineLoadout};;
};

private _item307 = objNull;
if (_layerRoot) then {
	_item307 = createVehicle ["RHS_UH60M_d",[5935.66,11481,0],[],0,"CAN_COLLIDE"];
	_this = _item307;
	_objects pushback _this;
	_objectIDs pushback 307;
	_this setPosWorld [5935.66,11481,85.7558];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	_this setPylonLoadout [1,"rhsusf_M130_CMFlare_Chaff_Magazine_x2"];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit"",""Medikit""],[2,10,2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,4,2,2,4]],[[],[]],[[""B_Parachute""],[4]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVehicleReportOwnPosition true;
	parseSimpleArray "[[""hithull"",""hitengine1"",""hitengine2"",""hitengine"",""hittail"",""hitvrotor"",""hithrotor"",""hitwinch"",""hitglass7"",""hithydraulics"",""hittransmission"",""hithstabilizerl1"",""hithstabilizerr1"",""hitpylon1"",""hitpylon2"",""hitpylon3"",""hitpylon4"",""hitfuel"",""hitavionics"",""hitmissiles"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitrglass"",""hitlglass"",""hitengine3"",""hitlight"",""hitgear"",""hitvstabilizer1"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""#p svetlo"",""#l svetlo"",""#cabin_light"",""#cargo_light_1"",""#cargo_light_2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	_this animateDoor ['DoorL',0,true];
	_this animateDoor ['DoorR',0,true];
	_this animateDoor ['DoorLB',0,true];_this animate ['doorHandler_L',0,true];
	_this animateDoor ['DoorRB',0,true];_this animate ['doorHandler_R',0,true];
};

private _item308 = objNull;
if (_layerRoot) then {
	_item308 = createVehicle ["SkeetMachine",[5641.56,11081.8,0],[],0,"CAN_COLLIDE"];
	_this = _item308;
	_objects pushback _this;
	_objectIDs pushback 308;
	_this setPosWorld [5641.56,11081.8,83.5104];
	_this setVectorDirAndUp [[0.689454,0.724328,-0.00105914],[0.00153619,0,0.999999]];
	sk1 = _this;
	_this setVehicleVarName "sk1";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item309 = objNull;
if (_layerRoot) then {
	_item309 = createVehicle ["Gunrack2",[5643.58,11086.6,0],[],0,"CAN_COLLIDE"];
	_this = _item309;
	_objects pushback _this;
	_objectIDs pushback 309;
	_this setPosWorld [5643.58,11086.6,83.4037];
	_this setVectorDirAndUp [[0.107982,-0.994152,-0.00152721],[0,-0.00153619,0.999999]];
	_this setVehicleAmmo 0.816082;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item311 = objNull;
if (_layer310) then {
	_item311 = createVehicle ["Land_PaperBox_closed_F",[5987,11512.9,0.136932],[],0,"CAN_COLLIDE"];
	_this = _item311;
	_objects pushback _this;
	_objectIDs pushback 311;
	_this setPosWorld [5987,11512.9,83.8201];
	_this setVectorDirAndUp [[-0.67601,0.736892,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item312 = objNull;
if (_layer310) then {
	_item312 = createVehicle ["Land_PaperBox_closed_F",[5985.71,11511.9,0.153465],[],0,"CAN_COLLIDE"];
	_this = _item312;
	_objects pushback _this;
	_objectIDs pushback 312;
	_this setPosWorld [5985.71,11511.9,83.8367];
	_this setVectorDirAndUp [[-0.685384,0.727944,-0.0186315],[-0.0304701,-0.00310593,0.999531]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item313 = objNull;
if (_layer310) then {
	_item313 = createVehicle ["Land_PaperBox_open_empty_F",[5984.15,11510.6,0.117653],[],0,"CAN_COLLIDE"];
	_this = _item313;
	_objects pushback _this;
	_objectIDs pushback 313;
	_this setPosWorld [5984.15,11510.6,83.7647];
	_this setVectorDirAndUp [[-0.658492,0.752136,-0.0260787],[-0.0183244,0.0186181,0.999659]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item314 = objNull;
if (_layer310) then {
	_item314 = createVehicle ["Land_i_Shed_Ind_F",[5972.05,11517.7,0.137001],[],0,"CAN_COLLIDE"];
	_this = _item314;
	_objects pushback _this;
	_objectIDs pushback 314;
	_this setPosWorld [5972.05,11517.7,84.717];
	_this setVectorDirAndUp [[0.707107,0.707107,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item315 = objNull;
if (_layer310) then {
	_item315 = createVehicle ["Land_Pallet_MilBoxes_F",[5985.57,11514.4,0.156784],[],0,"CAN_COLLIDE"];
	_this = _item315;
	_objects pushback _this;
	_objectIDs pushback 315;
	_this setPosWorld [5985.57,11514.4,83.6469];
	_this setVectorDirAndUp [[-0.647483,0.761882,-0.0173707],[-0.0304701,-0.00310593,0.999531]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item316 = objNull;
if (_layer310) then {
	_item316 = createSimpleObject ["Land_CampingTable_F",[5973.52,11514.5,83.2494]];
	_this = _item316;
	_objects pushback _this;
	_objectIDs pushback 316;
	_this setPosWorld [5973.52,11514.5,83.6609];
	_this setVectorDirAndUp [[0.70456,0.709644,-0.000517806],[-0.00627206,0.00695676,0.999956]];
	0 remoteExec ['setFeatureType', _this];
};

private _item317 = objNull;
if (_layer310) then {
	_item317 = createVehicle ["ProtectionZone_Invisible_F",[5986.03,11526.7,0],[],0,"CAN_COLLIDE"];
	_this = _item317;
	_objects pushback _this;
	_objectIDs pushback 317;
	_this setPosWorld [5986.03,11526.7,87.79];
	_this setVectorDirAndUp [[0.699152,0.714973,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item319 = objNull;
if (_layer310) then {
	_item319 = createVehicle ["Land_InfoStand_V1_F",[5979.58,11521,0.174446],[],0,"CAN_COLLIDE"];
	_this = _item319;
	_objects pushback _this;
	_objectIDs pushback 319;
	_this setPosWorld [5979.58,11521,83.7898];
	_this setVectorDirAndUp [[0.67854,0.734506,0.00920542],[-0.00651445,-0.00651419,0.999958]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item320 = objNull;
if (_layer310) then {
	_item320 = createVehicle ["Land_TentLamp_01_suspended_F",[5975.21,11519.5,4.69424],[],0,"CAN_COLLIDE"];
	_this = _item320;
	_objects pushback _this;
	_objectIDs pushback 320;
	_this setPosWorld [5975.21,11519.5,87.7783];
	_this setVectorDirAndUp [[-0.70647,-0.707743,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item321 = objNull;
if (_layerRoot) then {
	_item321 = createVehicle ["GunrackUS_EP1",[5978.09,11522.4,0.172997],[],0,"CAN_COLLIDE"];
	_this = _item321;
	_objects pushback _this;
	_objectIDs pushback 321;
	_this setPosWorld [5978.09,11522.4,83.7178];
	_this setVectorDirAndUp [[-0.689188,-0.724524,-0.0092036],[-0.00651003,-0.0065099,0.999958]];
	0 remoteExec ['setFeatureType', _this];
};

private _item322 = objNull;
if (_layerRoot) then {
	_item322 = createVehicle ["GunrackUS_EP1",[5980.97,11519.4,0.165001],[],0,"CAN_COLLIDE"];
	_this = _item322;
	_objects pushback _this;
	_objectIDs pushback 322;
	_this setPosWorld [5980.97,11519.4,83.7098];
	_this setVectorDirAndUp [[-0.689191,-0.724181,-0.0240475],[-0.00575955,-0.027712,0.999599]];
	_this setVehicleAmmo 0.816082;
	0 remoteExec ['setFeatureType', _this];
};

private _item324 = objNull;
if (_layerRoot) then {
	_item324 = createVehicle ["rhsusf_m1151_m2_v2_usarmy_d",[6026.46,11476.6,0],[],0,"CAN_COLLIDE"];
	_this = _item324;
	_objects pushback _this;
	_objectIDs pushback 324;
	_this setPosWorld [6026.46,11476.6,84.8351];
	_this setVectorDirAndUp [[0.668351,0.743846,0.000119897],[0.00158817,-0.00158817,0.999997]];
	[_this,"rhs_desert"] call bis_fnc_initVehicle;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""rhs_weap_M136_hedp"",""FirstAidKit""],[2,2,4]],[[""rhs_m136_hedp_mag"",""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhsusf_100Rnd_556x45_soft_pouch"",""rhs_mag_M441_HE"",""rhs_mag_m714_White"",""rhs_mag_m662_red"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[2,20,8,16,4,2,4,2,2,4]],[[],[]],[[""rhsusf_falconii""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	if (local _this) then {if (isSimpleObject _this) then {_this setVariable ['bis_fnc_initVehicle_customization',[[],["DUKE_Hide",1,"bumper2_hide",1,"hide_ogpkover",0,"hide_ogpknet",0,"hide_ogpkbust",1,"hide_rhino",0,"door_LF",0,"door_LB",0,"door_RF",0,"door_RB",0,"door_trunk",0,"iff_hide",0,"dwf_kit_Hide",1,"snorkel_lower",1,"BFT_Hide",0,"Antennas_Hide",0,"hide_spare",0]]]} else {([_this] + [[],["DUKE_Hide",1,"bumper2_hide",1,"hide_ogpkover",0,"hide_ogpknet",0,"hide_ogpkbust",1,"hide_rhino",0,"door_LF",0,"door_LB",0,"door_RF",0,"door_RB",0,"door_trunk",0,"iff_hide",0,"dwf_kit_Hide",1,"snorkel_lower",1,"BFT_Hide",0,"Antennas_Hide",0,"hide_spare",0]] + [true]) call (uinamespace getvariable 'bis_fnc_initVehicle');};};;
	parseSimpleArray "[[""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitglass15"",""hit_rhino"",""hithull"",""hitfuel"",""hitengine"",""hitduke1"",""hitduke2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitbody"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item328 = objNull;
if (_layerRoot) then {
	_item328 = createVehicle ["Land_Mil_Repair_center_EP1",[5920.16,11426.4,0],[],0,"CAN_COLLIDE"];
	_this = _item328;
	_objects pushback _this;
	_objectIDs pushback 328;
	_this setPosWorld [5920.16,11426.4,85.5615];
	_this setVectorDirAndUp [[0.712786,-0.701382,0],[0,0,1]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item603 = objNull;
if (_layerRoot) then {
	_item603 = createVehicle ["Land_TentLamp_01_suspended_F",[5983.13,11512.9,4.63716],[],0,"CAN_COLLIDE"];
	_this = _item603;
	_objects pushback _this;
	_objectIDs pushback 603;
	_this setPosWorld [5983.13,11512.9,87.7212];
	_this setVectorDirAndUp [[0.709662,0.704542,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item604 = objNull;
if (_layerRoot) then {
	_item604 = createVehicle ["SignAd_Sponsor_ION_F",[5966.2,11831.8,0],[],0,"CAN_COLLIDE"];
	_this = _item604;
	_objects pushback _this;
	_objectIDs pushback 604;
	_this setPosWorld [5966.2,11831.8,84.0811];
	_this setVectorDirAndUp [[-0.435577,0.900152,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\signs_f\signs_ad\data\ad_ion_ca.paa"];
};

private _item607 = objNull;
if (_layerRoot) then {
	_item607 = createVehicle ["Land_Billboard_02_ion_F",[6008.27,11847.8,0],[],0,"CAN_COLLIDE"];
	_this = _item607;
	_objects pushback _this;
	_objectIDs pushback 607;
	_this setPosWorld [6008.27,11847.8,84.2149];
	_this setVectorDirAndUp [[-0.999098,0.0424682,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item608 = objNull;
if (_layerRoot) then {
	_item608 = createVehicle ["O_Heli_Light_02_unarmed_F",[5929.93,11846.4,8.66585],[],0,"CAN_COLLIDE"];
	_this = _item608;
	_objects pushback _this;
	_objectIDs pushback 608;
	_this setPosWorld [5929.93,11846.4,93.8772];
	_this setVectorDirAndUp [[-0.180176,0.983634,0],[0,0,1]];
	_this lock 2;
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[""arifle_Katiba_C_F"",""FirstAidKit""],[2,8]],[[""SmokeShell"",""SmokeShellRed"",""30Rnd_65x39_caseless_green""],[2,2,4]],[[""ToolKit"",""ItemGPS""],[1,1]],[[""B_Parachute""],[8]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hithull"",""hitfuel"",""hitavionics"",""hitmissiles"",""hitengine1"",""hitengine2"",""hitengine"",""hithrotor"",""hitvrotor"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitrglass"",""hitlglass"",""hitengine3"",""hitwinch"",""hittransmission"",""hitlight"",""hithydraulics"",""hitgear"",""hithstabilizerl1"",""hithstabilizerr1"",""hitvstabilizer1"",""hittail"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""hitturret"",""hitgun"",""#light_l_hitpoint"",""#light_r_hitpoint""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item613 = objNull;
if (_layerRoot) then {
	_item613 = createVehicle ["UK3CB_AAF_B_SUV_Armed",[5956.84,11831.1,0],[],0,"CAN_COLLIDE"];
	_this = _item613;
	_objects pushback _this;
	_objectIDs pushback 613;
	_this setPosWorld [5956.84,11831.1,85.2415];
	_this setVectorDirAndUp [[0.462817,-0.886454,0],[0,0,1]];
	_this lock 2;
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[""FirstAidKit""],[1]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitbody"",""hitengine"",""hitfuel"",""hithull"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""#l svetlo 1"",""#l svetlo 2"",""#p svetlo 1"",""#p svetlo 2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 6] call ace_cargo_fnc_setSpace;;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
};

private _item615 = objNull;
if (_layerRoot) then {
	_item615 = createVehicle ["Land_CamoNetVar_NATO_EP1",[5977.51,11490.3,0],[],0,"CAN_COLLIDE"];
	_this = _item615;
	_objects pushback _this;
	_objectIDs pushback 615;
	_this setPosWorld [5977.51,11490.3,84.1627];
	_this setVectorDirAndUp [[-0.661364,0.750065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item616 = objNull;
if (_layerRoot) then {
	_item616 = createSimpleObject ["Land_CampingChair_V2_F",[5981.14,11490.2,83.04]];
	_this = _item616;
	_objects pushback _this;
	_objectIDs pushback 616;
	_this setPosWorld [5981.14,11490.2,83.5465];
	_this setVectorDirAndUp [[0.672039,-0.740516,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item617 = objNull;
if (_layerRoot) then {
	_item617 = createVehicle ["Land_CampingChair_V2_F",[5980,11489.2,0],[],0,"CAN_COLLIDE"];
	_this = _item617;
	_objects pushback _this;
	_objectIDs pushback 617;
	_this setPosWorld [5980,11489.2,83.5465];
	_this setVectorDirAndUp [[0.730117,-0.683323,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item618 = objNull;
if (_layerRoot) then {
	_item618 = createSimpleObject ["Land_CampingChair_V2_F",[5979.6,11492.1,83.04]];
	_this = _item618;
	_objects pushback _this;
	_objectIDs pushback 618;
	_this setPosWorld [5979.6,11492.1,83.5465];
	_this setVectorDirAndUp [[-0.532179,0.846632,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item619 = objNull;
if (_layerRoot) then {
	_item619 = createSimpleObject ["Land_CampingChair_V2_F",[5979.38,11490.8,83.04]];
	_this = _item619;
	_objects pushback _this;
	_objectIDs pushback 619;
	_this setPosWorld [5979.38,11490.8,83.5465];
	_this setVectorDirAndUp [[-0.65061,0.759412,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item620 = objNull;
if (_layerRoot) then {
	_item620 = createVehicle ["Land_CampingChair_V2_F",[5980.71,11492.4,0],[],0,"CAN_COLLIDE"];
	_this = _item620;
	_objects pushback _this;
	_objectIDs pushback 620;
	_this setPosWorld [5980.71,11492.4,83.5465];
	_this setVectorDirAndUp [[0.305253,0.952271,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item621 = objNull;
if (_layerRoot) then {
	_item621 = createVehicle ["Land_CampingChair_V2_F",[5978.14,11490.6,0],[],0,"CAN_COLLIDE"];
	_this = _item621;
	_objects pushback _this;
	_objectIDs pushback 621;
	_this setPosWorld [5978.14,11490.6,83.5465];
	_this setVectorDirAndUp [[-0.939747,0.34187,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item622 = objNull;
if (_layerRoot) then {
	_item622 = createVehicle ["Land_CampingTable_F",[5978.6,11489.6,0],[],0,"CAN_COLLIDE"];
	_this = _item622;
	_objects pushback _this;
	_objectIDs pushback 622;
	_this setPosWorld [5978.6,11489.6,83.4516];
	_this setVectorDirAndUp [[-0.656827,0.754042,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item623 = objNull;
if (_layerRoot) then {
	_item623 = createVehicle ["Land_CampingTable_F",[5980.14,11490.9,0],[],0,"CAN_COLLIDE"];
	_this = _item623;
	_objects pushback _this;
	_objectIDs pushback 623;
	_this setPosWorld [5980.14,11490.9,83.4516];
	_this setVectorDirAndUp [[-0.61158,0.791183,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item624 = objNull;
if (_layerRoot) then {
	_item624 = createSimpleObject ["Land_Can_V1_F",[5980.06,11490.6,83.8556]];
	_this = _item624;
	_objects pushback _this;
	_objectIDs pushback 624;
	_this setPosWorld [5980.06,11490.6,83.8956];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item625 = objNull;
if (_layerRoot) then {
	_item625 = createSimpleObject ["Land_LiquidDispenser_01_F",[5978.17,11489,83.8556]];
	_this = _item625;
	_objects pushback _this;
	_objectIDs pushback 625;
	_this setPosWorld [5978.17,11489,84.2304];
	_this setVectorDirAndUp [[0.737923,-0.674884,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item626 = objNull;
if (_layerRoot) then {
	_item626 = createSimpleObject ["Land_Tableware_01_cup_F",[5978.48,11489.2,83.8556]];
	_this = _item626;
	_objects pushback _this;
	_objectIDs pushback 626;
	_this setPosWorld [5978.48,11489.2,83.906];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item627 = objNull;
if (_layerRoot) then {
	_item627 = createSimpleObject ["Land_Tableware_01_cup_F",[5978.45,11489.3,83.8556]];
	_this = _item627;
	_objects pushback _this;
	_objectIDs pushback 627;
	_this setPosWorld [5978.45,11489.3,83.906];
	_this setVectorDirAndUp [[0.917465,-0.397817,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item631 = objNull;
if (_layerRoot) then {
	_item631 = createVehicle ["WaterSpill_01_Small_New_F",[5978.35,11489,0],[],0,"CAN_COLLIDE"];
	_this = _item631;
	_objects pushback _this;
	_objectIDs pushback 631;
	_this setPosWorld [5978.35,11489,83.0474];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item632 = objNull;
if (_layerRoot) then {
	_item632 = createSimpleObject ["Land_WaterBottle_01_pack_F",[5980.64,11491.4,83.8556]];
	_this = _item632;
	_objects pushback _this;
	_objectIDs pushback 632;
	_this setPosWorld [5980.64,11491.4,83.9864];
	_this setVectorDirAndUp [[0.998659,-0.0517765,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item633 = objNull;
if (_layerRoot) then {
	_item633 = createSimpleObject ["Land_WaterBottle_01_empty_F",[5980.56,11491.2,83.8556]];
	_this = _item633;
	_objects pushback _this;
	_objectIDs pushback 633;
	_this setPosWorld [5980.56,11491.2,83.9865];
	_this setVectorDirAndUp [[-0.905939,-0.423408,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item635 = objNull;
if (_layerRoot) then {
	_item635 = createSimpleObject ["Land_WaterTank_F",[5974.81,11484.7,83.04]];
	_this = _item635;
	_objects pushback _this;
	_objectIDs pushback 635;
	_this setPosWorld [5974.81,11484.7,83.7249];
	_this setVectorDirAndUp [[0.635042,0.772478,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item640 = objNull;
if (_layerRoot) then {
	_item640 = createVehicle ["Flag_US_F",[6057.01,11497,0],[],0,"CAN_COLLIDE"];
	_this = _item640;
	_objects pushback _this;
	_objectIDs pushback 640;
	_this setPosWorld [6057.01,11497,86.9702];
	_this setVectorDirAndUp [[0.767102,-0.641525,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item60 = objNull;
if (_layerRoot) then {
	_item60 = createTrigger ["EmptyDetectorArea10x10",[6166.47,11390.4,0.562393],true];
	_this = _item60;
	_triggers pushback _this;
	_triggerIDs pushback 60;
	_item60 setPosATL [6166.47,11390.4,0.562393];
	_this setTriggerArea [5,20,124.364,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item287 = objNull;
if (_layer70) then {
	_item287 = createTrigger ["EmptyDetectorAreaR50",[5660.56,11073.1,-7.62939e-006],true];
	_this = _item287;
	_triggers pushback _this;
	_triggerIDs pushback 287;
	_item287 setPosATL [5660.56,11073.1,-7.62939e-006];
	_this setTriggerArea [70,70,193.177,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{player allowDamage false; player setCaptive true;}","call{player allowDamage true; player setCaptive false;}"];
};

private _item288 = objNull;
if (_layer70) then {
	_item288 = createTrigger ["EmptyDetectorArea10x10",[5673.9,11057.7,0],true];
	_this = _item288;
	_triggers pushback _this;
	_triggerIDs pushback 288;
	_item288 setPosATL [5673.9,11057.7,0];
	_this setTriggerArea [18,13.5,180.925,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};

private _item374 = objNull;
if (_layer601) then {
	_item374 = createTrigger ["EmptyDetectorArea10x10",[6021.68,11564.6,0.0909958],false];
	_this = _item374;
	_triggers pushback _this;
	_triggerIDs pushback 374;
	_item374 setPosATL [6021.68,11564.6,0.0909958];
	_this setTriggerArea [6,6,228.26,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item6;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "HQ "] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	     // if (!is3DEN && !(["","ColorWEST","HQ ",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","HQ ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ ",true]'];          ["","ColorWEST","HQ ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item12;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-2"] call CBA_fnc_setCallsign;
	_this setBehaviour "SAFE";
	_this setSpeedMode "LIMITED";
	_this enableDynamicSimulation true;
	      //if (!is3DEN && !(["","ColorWEST","Alpha 1-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-2",true]'];          ["","ColorWEST","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item20;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      //if (!is3DEN && !(["","ColorWEST","HQ",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ",true]'];          ["","ColorWEST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item27;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "November"] call CBA_fnc_setCallsign;
	    //  if (!is3DEN && !(["","Default","",false] isEqualTo ['', '', '', true])) then      {        [_this, ["","Default","",false]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","Default","",false]'];          ["","Default","",false] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","Default","",false]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","Default","",false] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];

private _item14 = [];
if (_layerRoot) then {
	_item14 = _item12 addWaypoint [[6076.66,11494.2,0.562378],0];
	_this = _item14;
	_waypoints pushback _this;
	_waypointIDs pushback 14;
	_this setWaypointType "MOVE";
};

private _item15 = [];
if (_layerRoot) then {
	_item15 = _item12 addWaypoint [[6045.67,11509.5,0.562378],0];
	_this = _item15;
	_waypoints pushback _this;
	_waypointIDs pushback 15;
	_this setWaypointType "MOVE";
};

private _item16 = [];
if (_layerRoot) then {
	_item16 = _item12 addWaypoint [[5945.69,11401,0.562378],0];
	_this = _item16;
	_waypoints pushback _this;
	_waypointIDs pushback 16;
	_this setWaypointType "MOVE";
};

private _item17 = [];
if (_layerRoot) then {
	_item17 = _item12 addWaypoint [[5874.56,11268.5,0],0];
	_this = _item17;
	_waypoints pushback _this;
	_waypointIDs pushback 17;
	_this setWaypointType "MOVE";
};

private _item18 = [];
if (_layerRoot) then {
	_item18 = _item12 addWaypoint [[5880.25,11263.4,0],0];
	_this = _item18;
	_waypoints pushback _this;
	_waypointIDs pushback 18;
	_this setWaypointType "MOVE";
};

private _item19 = [];
if (_layerRoot) then {
	_item19 = _item12 addWaypoint [[6081.23,11503.1,0.562378],0];
	_this = _item19;
	_waypoints pushback _this;
	_waypointIDs pushback 19;
	_this setWaypointType "CYCLE";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item0 = objNull;
if (_layerRoot) then {
	_item0 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCurator_F",[5819.31,11521.2,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_logics pushback _this;
	_logicIDs pushback 0;
	_this setPosWorld [5819.31,11521.2,83.04];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	z1 = _this;
	_this setVehicleVarName "z1";
	_this setVariable ['Owner',"gm",true];;
	_this setVariable ['Name',"Game Master",true];;
	_this setVariable ['Addons',2,true];;
	_this setVariable ['Forced',0,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item1 = objNull;
if (_layerRoot) then {
	_item1 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCurator_F",[5800.61,11526.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_logics pushback _this;
	_logicIDs pushback 1;
	_this setPosWorld [5800.61,11526.7,83.04];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	z2 = _this;
	_this setVehicleVarName "z2";
	_this setVariable ['Owner',"gmod",true];;
	_this setVariable ['Name',"Game Moderator",true];;
	_this setVariable ['Addons',2,true];;
	_this setVariable ['Forced',0,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item262 = objNull;
if (_layer261 && _layer70) then {
	_item262 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[5688.81,11067.7,0],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_logics pushback _this;
	_logicIDs pushback 262;
	_this setPosWorld [5688.81,11067.7,82.87];
	_this setVectorDirAndUp [[0.235692,0.971828,0],[0,0,1]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item306 = objNull;
if (_layer70) then {
	_item306 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[5659.59,11077.3,0],[],0,"CAN_COLLIDE"];
	_this = _item306;
	_logics pushback _this;
	_logicIDs pushback 306;
	_this setPosWorld [5659.59,11077.3,82.908];
	_this setVectorDirAndUp [[0,0.99998,0.00638797],[0.00799392,-0.00638777,0.999948]];
	sh_end = _this;
	_this setVehicleVarName "sh_end";
};

private _item69 = objNull;
if (_layerRoot) then {
	_item69 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[5672.65,11061,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_logics pushback _this;
	_logicIDs pushback 69;
	_this setPosWorld [5672.65,11061,82.87];
	_this setVectorDirAndUp [[-0.999934,0.0115087,0],[0,0,1]];
	_this setVariable ["objectArea",[15,25,270.659,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item375 = objNull;
if (_layer601) then {
	_item375 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[5963.03,11510.4,0],[],0,"CAN_COLLIDE"];
	_this = _item375;
	_logics pushback _this;
	_logicIDs pushback 375;
	_this setPosWorld [5963.03,11510.4,83.04];
	_this setVectorDirAndUp [[0.666265,0.745715,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer601) then {missionNamespace setVariable ["us_army_d_SIA ZGM Essentials",[[_item374,_item375],[]]];};
if (_layer310) then {missionNamespace setVariable ["us_army_d_Base",[[_item311,_item312,_item313,_item314,_item315,_item316,_item317,_item319,_item320],[]]];};
if (_layer291) then {missionNamespace setVariable ["us_army_d_AT Range",[[_item292,_item293],[]]];};
if (_layer261) then {missionNamespace setVariable ["us_army_d_Spawns",[[_item262],[]]];};
if (_layer241) then {missionNamespace setVariable ["us_army_d_Shoothouse Targets",[[_item242,_item243,_item244,_item245,_item246,_item247,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item259,_item260],[]]];};
if (_layer70) then {missionNamespace setVariable ["us_army_d_Shoothouse",[[_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item206,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item236,_item237,_item238,_item239,_item240,_item242,_item243,_item244,_item245,_item246,_item247,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item259,_item260,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item279,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item306],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item28 && !isNull _item32) then {_item28 moveInDriver _item32;};
if (!isNull _item29 && !isNull _item32) then {_item29 moveInTurret [_item32,[0]];};
if (!isNull _item30 && !isNull _item32) then {_item30 moveInTurret [_item32,[1]];};
if (!isNull _item31 && !isNull _item32) then {_item31 moveInTurret [_item32,[2]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item57) then {
		this = _item57;
		call{this setObjectTextureGlobal [0, getTextRaw(configfile >> "CfgWorlds" >> "Takistan" >> "pictureMap")]};
	};
	if !(isnull _item58) then {
		this = _item58;
		call{this setObjectTextureGlobal [0, getTextRaw(configfile >> "CfgWorlds" >> "Takistan" >> "pictureMap")]};
	};
	if !(isnull _item292) then {
		this = _item292;
		call{this addAction ["PULL","scripts\launch_skeet.sqf"];};
	};
	if !(isnull _item309) then {
		this = _item309;
		call{arsenals pushBack this};
	};
	if !(isnull _item321) then {
		this = _item321;
		call{arsenals pushBack this};
	};
	if !(isnull _item322) then {
		this = _item322;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item0) then {_item0 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item1) then {_item1 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item69) then {_item69 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
