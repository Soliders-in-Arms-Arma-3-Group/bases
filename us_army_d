// Export of 'temp.takistan' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer1714 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer1725 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer1712 = (_allWhitelisted || {"spawn medic crate" in _layerWhiteList}) && {!("spawn medic crate" in _layerBlackList)};
private _layer1671 = (_allWhitelisted || {"ace heal trigger" in _layerWhiteList}) && {!("ace heal trigger" in _layerBlackList)};
private _layer1655 = (_allWhitelisted || {"base" in _layerWhiteList}) && {!("base" in _layerBlackList)};
private _layer1415 = (_allWhitelisted || {"shoothouse" in _layerWhiteList}) && {!("shoothouse" in _layerBlackList)};
private _layer1413 = (_allWhitelisted || {"layer 1" in _layerWhiteList}) && {!("layer 1" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item1411 = "";
if (_layerRoot) then {
	_item1411 = createMarker ["respawn_west",[5954.48,11509.9,0]];
	_this = _item1411;
	_markers pushback _this;
	_markerIDs pushback 1411;
	_this setMarkerType "b_hq";
	_this setMarkerText "HICKAM AB";
	_this setMarkerShape "ICON";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item1348 = grpNull;
if (_layerRoot) then {
	_item1348 = createGroup west;
	_this = _item1348;
	_groups pushback _this;
	_groupIDs pushback 1348;
};

private _item1351 = grpNull;
if (_layerRoot) then {
	_item1351 = createGroup west;
	_this = _item1351;
	_groups pushback _this;
	_groupIDs pushback 1351;
};

private _item1357 = grpNull;
if (_layerRoot) then {
	_item1357 = createGroup west;
	_this = _item1357;
	_groups pushback _this;
	_groupIDs pushback 1357;
};

private _item1365 = grpNull;
if (_layerRoot) then {
	_item1365 = createGroup west;
	_this = _item1365;
	_groups pushback _this;
	_groupIDs pushback 1365;
};

private _item1372 = grpNull;
if (_layerRoot) then {
	_item1372 = createGroup west;
	_this = _item1372;
	_groups pushback _this;
	_groupIDs pushback 1372;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item1349 = objNull;
if (_layerRoot) then {
	_item1349 = _item1348 createUnit ["rhsusf_army_ocp_rifleman",[6161.06,11387.5,0.219002],[],0,"CAN_COLLIDE"];
	_item1348 selectLeader _item1349;
	_this = _item1349;
	_objects pushback _this;
	_objectIDs pushback 1349;
	_this setPosWorld [6161.06,11387.5,72.6105];
	_this setVectorDirAndUp [[0.785153,-0.619294,-0.00321478],[0.00237352,-0.00218182,0.999995]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Nathan Phillips";;
	_this setface "WhiteHead_14";;
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

private _item1350 = objNull;
if (_layerRoot) then {
	_item1350 = _item1348 createUnit ["rhsusf_army_ocp_rifleman",[6167.46,11398.1,5.252],[],0,"CAN_COLLIDE"];
	_this = _item1350;
	_objects pushback _this;
	_objectIDs pushback 1350;
	_this setPosWorld [6167.46,11398.2,78.3332];
	_this setVectorDirAndUp [[0.785155,-0.6193,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "James Kelly";;
	_this setface "AfricanHead_02";;
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

private _item1352 = objNull;
if (_layerRoot) then {
	_item1352 = _item1351 createUnit ["rhsusf_army_ocp_rifleman",[6045.16,11506,0],[],0,"CAN_COLLIDE"];
	_item1351 selectLeader _item1352;
	_this = _item1352;
	_objects pushback _this;
	_objectIDs pushback 1352;
	_this setPosWorld [6045.16,11506,83.041];
	_this setVectorDirAndUp [[0.815229,0.579139,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],["rhsusf_spcs_ucp_rifleman_alt",[]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Max Clarke";;
	_this setface "WhiteHead_02";;
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

private _item1353 = objNull;
if (_layerRoot) then {
	_item1353 = _item1351 createUnit ["rhsusf_army_ocp_rifleman",[6046.34,11506.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1353;
	_objects pushback _this;
	_objectIDs pushback 1353;
	_this setPosWorld [6046.34,11507,83.0414];
	_this setVectorDirAndUp [[-0.76509,-0.643924,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],["rhsusf_iotv_ocp_Rifleman",[]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Henry Johnson";;
	_this setface "Sturrock";;
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

private _item1354 = objNull;
if (_layerRoot) then {
	_item1354 = _item1351 createUnit ["rhsusf_army_ocp_driver_armored",[5929.27,11331,0],[],0,"CAN_COLLIDE"];
	_this = _item1354;
	_objects pushback _this;
	_objectIDs pushback 1354;
	_this setPosWorld [5929.27,11331.1,83.0414];
	_this setVectorDirAndUp [[0.53486,-0.84494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Chris Eaton";;
	_this setface "GreekHead_A3_06";;
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

private _item1355 = objNull;
if (_layerRoot) then {
	_item1355 = _item1351 createUnit ["rhsusf_army_ocp_driver",[5930.1,11329.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1355;
	_objects pushback _this;
	_objectIDs pushback 1355;
	_this setPosWorld [5930.1,11329.7,83.0414];
	_this setVectorDirAndUp [[-0.819182,0.573534,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Luke O'Connor";;
	_this setface "WhiteHead_02";;
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

private _item1358 = objNull;
if (_layerRoot) then {
	_item1358 = _item1357 createUnit ["rhsusf_army_ocp_rifleman",[6090.04,11509.8,0.561996],[],0,"CAN_COLLIDE"];
	_item1357 selectLeader _item1358;
	_this = _item1358;
	_objects pushback _this;
	_objectIDs pushback 1358;
	_this setPosWorld [6090.04,11509.8,83.5988];
	_this setVectorDirAndUp [[-0.991305,-0.131582,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Chad Thomson";;
	_this setface "WhiteHead_05";;
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

private _item1366 = objNull;
if (_layerRoot) then {
	_item1366 = _item1365 createUnit ["rhsusf_army_ocp_officer",[5994.1,11548.1,0.48439],[],0,"CAN_COLLIDE"];
	_this = _item1366;
	_objects pushback _this;
	_objectIDs pushback 1366;
	_this setPosWorld [5994.1,11548.2,83.5258];
	_this setVectorDirAndUp [[0.799685,0.60042,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Gillis Martin";;
	_this setface "WhiteHead_16";;
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

private _item1367 = objNull;
if (_layerRoot) then {
	_item1367 = _item1365 createUnit ["rhsusf_army_ocp_officer",[5996.72,11545.6,0.492836],[],0,"CAN_COLLIDE"];
	_item1365 selectLeader _item1367;
	_this = _item1367;
	_objects pushback _this;
	_objectIDs pushback 1367;
	_this setPosWorld [5996.72,11545.6,83.5343];
	_this setVectorDirAndUp [[0.799685,0.60042,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Daniel Martinez";;
	_this setface "WhiteHead_17";;
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

private _item1368 = objNull;
if (_layerRoot) then {
	_item1368 = _item1365 createUnit ["rhsusf_army_ocp_officer",[5997.12,11541.1,0.577583],[],0,"CAN_COLLIDE"];
	_this = _item1368;
	_objects pushback _this;
	_objectIDs pushback 1368;
	_this setPosWorld [5997.12,11541.2,83.619];
	_this setVectorDirAndUp [[0.623402,0.781901,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Harvey O'Sullivan";;
	_this setface "WhiteHead_01";;
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

private _item1369 = objNull;
if (_layerRoot) then {
	_item1369 = _item1365 createUnit ["rhsusf_army_ocp_rifleman",[5995.16,11542.4,0.561996],[],0,"CAN_COLLIDE"];
	_this = _item1369;
	_objects pushback _this;
	_objectIDs pushback 1369;
	_this setPosWorld [5995.16,11542.4,83.6034];
	_this setVectorDirAndUp [[0.778802,0.62727,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],["rhsusf_spcs_ucp",[]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Charlie Hughes";;
	_this setface "WhiteHead_09";;
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

private _item1370 = objNull;
if (_layerRoot) then {
	_item1370 = _item1365 createUnit ["rhsusf_army_ocp_officer",[6003.91,11538.2,0.562378],[],0,"CAN_COLLIDE"];
	_this = _item1370;
	_objects pushback _this;
	_objectIDs pushback 1370;
	_this setPosWorld [6003.91,11538.2,83.6038];
	_this setVectorDirAndUp [[-0.247185,-0.968968,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],[],[],"","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Gillian Snowe";;
	_this setface "AfricanHead_01";;
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

private _item1371 = objNull;
if (_layerRoot) then {
	_item1371 = _item1365 createUnit ["rhsusf_army_ocp_officer",[5994.81,11545.1,9.11],[],0,"CAN_COLLIDE"];
	_this = _item1371;
	_objects pushback _this;
	_objectIDs pushback 1371;
	_this setPosWorld [5994.81,11545.2,92.1514];
	_this setVectorDirAndUp [[-0.757075,0.653328,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[]],[],[],"H_Beret_02","G_Aviator",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Benjamin Parker";;
	_this setface "GreekHead_A3_05";;
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

private _item1373 = objNull;
if (_layerRoot) then {
	_item1373 = _item1372 createUnit ["rhsusf_army_ocp_helipilot",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_item1372 selectLeader _item1373;
	_this = _item1373;
	_objects pushback _this;
	_objectIDs pushback 1373;
	_this setPosWorld [5913.54,11450.7,84.4436];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Alexander Davis";;
	_this setface "Sturrock";;
	_this setspeaker "male09eng";;
	_this setpitch 1.04684;;
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

private _item1374 = objNull;
if (_layerRoot) then {
	_item1374 = _item1372 createUnit ["rhsusf_army_ocp_helipilot",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1374;
	_objects pushback _this;
	_objectIDs pushback 1374;
	_this setPosWorld [5913.75,11451.7,84.4441];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Wallace Roberts";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male05eng";;
	_this setpitch 0.957099;;
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

private _item1375 = objNull;
if (_layerRoot) then {
	_item1375 = _item1372 createUnit ["rhsusf_army_ocp_helicrew",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1375;
	_objects pushback _this;
	_objectIDs pushback 1375;
	_this setPosWorld [5912.71,11452.2,84.7031];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "George Thompson";;
	_this setface "AfricanHead_03";;
	_this setspeaker "male08eng";;
	_this setpitch 1.01769;;
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

private _item1376 = objNull;
if (_layerRoot) then {
	_item1376 = _item1372 createUnit ["rhsusf_army_ocp_helicrew",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1376;
	_objects pushback _this;
	_objectIDs pushback 1376;
	_this setPosWorld [5912.39,11450.6,84.6844];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ed Newton";;
	_this setface "WhiteHead_20";;
	_this setspeaker "male09eng";;
	_this setpitch 0.951022;;
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

private _item1377 = objNull;
if (_layerRoot) then {
	_item1377 = createVehicle ["RHS_UH60M_d",[5909.19,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1377;
	_objects pushback _this;
	_objectIDs pushback 1377;
	_this setPosWorld [5909.19,11452.1,85.7558];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	_this setPylonLoadout [1,"rhsusf_M130_CMFlare_Chaff_Magazine_x2"];
	_this lock 0;
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit"",""Medikit""],[2,10,2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,4,2,2,4]],[[],[]],[[""B_Parachute""],[4]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVehicleReportOwnPosition true;
	parseSimpleArray "[[""hithull"",""hitengine1"",""hitengine2"",""hitengine"",""hittail"",""hitvrotor"",""hithrotor"",""hitwinch"",""hitglass7"",""hithydraulics"",""hittransmission"",""hithstabilizerl1"",""hithstabilizerr1"",""hitpylon1"",""hitpylon2"",""hitpylon3"",""hitpylon4"",""hitfuel"",""hitavionics"",""hitmissiles"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitrglass"",""hitlglass"",""hitengine3"",""hitlight"",""hitgear"",""hitvstabilizer1"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""#p svetlo"",""#l svetlo"",""#cabin_light"",""#cargo_light_1"",""#cargo_light_2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	[_this] call ace_fastroping_fnc_equipFRIES;
};

private _item1378 = objNull;
if (_layerRoot) then {
	_item1378 = createVehicle ["Land_BarGate_F",[6166.54,11391,0],[],0,"CAN_COLLIDE"];
	_this = _item1378;
	_objects pushback _this;
	_objectIDs pushback 1378;
	_this setPosWorld [6166.54,11391,76.3379];
	_this setVectorDirAndUp [[0.771961,-0.618521,-0.146653],[0.08766,-0.124919,0.988287]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item1379 = objNull;
if (_layerRoot) then {
	_item1379 = createVehicle ["EvPhoto",[5997.83,11541.7,1.33526],[],0,"CAN_COLLIDE"];
	_this = _item1379;
	_objects pushback _this;
	_objectIDs pushback 1379;
	_this setPosWorld [5997.83,11541.7,84.3832];
	_this setVectorDirAndUp [[0.676182,0.736735,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1380 = objNull;
if (_layerRoot) then {
	_item1380 = createVehicle ["Land_GuardBox_01_smooth_F",[6160.01,11388.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1380;
	_objects pushback _this;
	_objectIDs pushback 1380;
	_this setPosWorld [6160.01,11388.2,73.4252];
	_this setVectorDirAndUp [[-0.74784,0.663879,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1381 = objNull;
if (_layerRoot) then {
	_item1381 = createVehicle ["Land_GuardTower_02_F",[6166.3,11398.9,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item1381;
	_objects pushback _this;
	_objectIDs pushback 1381;
	_this setPosWorld [6166.3,11398.9,76.6966];
	_this setVectorDirAndUp [[0.786281,-0.617868,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1382 = objNull;
if (_layerRoot) then {
	_item1382 = createVehicle ["Land_HelipadSquare_F",[5936.85,11480.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1382;
	_objects pushback _this;
	_objectIDs pushback 1382;
	_this setPosWorld [5936.85,11480.9,83.04];
	_this setVectorDirAndUp [[0.673903,-0.73882,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1383 = objNull;
if (_layerRoot) then {
	_item1383 = createVehicle ["Land_HelipadSquare_F",[5908.45,11452.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1383;
	_objects pushback _this;
	_objectIDs pushback 1383;
	_this setPosWorld [5908.45,11452.2,83.04];
	_this setVectorDirAndUp [[0.708959,-0.70525,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1384 = objNull;
if (_layerRoot) then {
	_item1384 = createVehicle ["rhsusf_m1025_d_m2",[6035.02,11468,-0.000160217],[],0,"CAN_COLLIDE"];
	_this = _item1384;
	_objects pushback _this;
	_objectIDs pushback 1384;
	_this setPosWorld [6035.05,11468,85.1906];
	_this setVectorDirAndUp [[0.649188,0.760626,-0.00154588],[0.00800059,-0.00479616,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""rhs_weap_M136_hedp""],[2,2]],[[""rhs_m136_hedp_mag"",""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhsusf_100Rnd_556x45_soft_pouch"",""rhs_mag_M441_HE"",""rhs_mag_m714_White"",""rhs_mag_m662_red"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[2,20,8,16,4,2,4,2,2,4]],[[""FirstAidKit""],[4]],[[""rhsusf_falconii""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitwindshield_1"",""hitwindshield_2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitfuel"",""hitlfwheel"",""hitrfwheel"",""hitlf2wheel"",""hitrf2wheel"",""hitengine"",""hithull"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_2"",""#light_hd_1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item1385 = objNull;
if (_layerRoot) then {
	_item1385 = createVehicle ["rhsusf_M1078A1P2_B_D_fmtv_usarmy",[5911.05,11308.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1385;
	_objects pushback _this;
	_objectIDs pushback 1385;
	_this setPosWorld [5911.05,11308.4,85.1637];
	_this setVectorDirAndUp [[0.220391,0.975412,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle""],[2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""FirstAidKit"",""ToolKit""],[4,1]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitfuel"",""hitengine"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hithull"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#cabin_light1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
};

private _item1386 = objNull;
if (_layerRoot) then {
	_item1386 = createVehicle ["rhsusf_m998_d_4dr_halftop",[5924.77,11338.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1386;
	_objects pushback _this;
	_objectIDs pushback 1386;
	_this setPosWorld [5924.78,11338.7,84.985];
	_this setVectorDirAndUp [[-0.11734,-0.993092,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_M441_HE"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,8,4,2,2,4]],[[""FirstAidKit""],[4]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
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
	_this animateDoor ['Door_RF',0,true];
	_this animateDoor ['Door_LB',0,true];
	_this animateDoor ['Door_RB',0,true];
};

private _item1387 = objNull;
if (_layerRoot) then {
	_item1387 = createVehicle ["PortableHelipadLight_01_green_F",[5936.42,11472.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1387;
	_objects pushback _this;
	_objectIDs pushback 1387;
	_this setPosWorld [5936.42,11472.7,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1388 = objNull;
if (_layerRoot) then {
	_item1388 = createVehicle ["PortableHelipadLight_01_green_F",[5928.87,11481.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1388;
	_objects pushback _this;
	_objectIDs pushback 1388;
	_this setPosWorld [5928.87,11481.1,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1389 = objNull;
if (_layerRoot) then {
	_item1389 = createVehicle ["PortableHelipadLight_01_green_F",[5937.16,11488.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1389;
	_objects pushback _this;
	_objectIDs pushback 1389;
	_this setPosWorld [5937.16,11488.7,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1390 = objNull;
if (_layerRoot) then {
	_item1390 = createVehicle ["PortableHelipadLight_01_green_F",[5944.68,11480.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1390;
	_objects pushback _this;
	_objectIDs pushback 1390;
	_this setPosWorld [5944.68,11480.4,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1391 = objNull;
if (_layerRoot) then {
	_item1391 = createVehicle ["PortableHelipadLight_01_green_F",[5908.5,11460.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1391;
	_objects pushback _this;
	_objectIDs pushback 1391;
	_this setPosWorld [5908.5,11460.2,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1392 = objNull;
if (_layerRoot) then {
	_item1392 = createVehicle ["PortableHelipadLight_01_green_F",[5900.36,11452,0],[],0,"CAN_COLLIDE"];
	_this = _item1392;
	_objects pushback _this;
	_objectIDs pushback 1392;
	_this setPosWorld [5900.36,11452,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1393 = objNull;
if (_layerRoot) then {
	_item1393 = createVehicle ["PortableHelipadLight_01_green_F",[5908.44,11443.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1393;
	_objects pushback _this;
	_objectIDs pushback 1393;
	_this setPosWorld [5908.44,11443.9,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1394 = objNull;
if (_layerRoot) then {
	_item1394 = createVehicle ["PortableHelipadLight_01_green_F",[5916.3,11452.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1394;
	_objects pushback _this;
	_objectIDs pushback 1394;
	_this setPosWorld [5916.3,11452.1,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1395 = objNull;
if (_layerRoot) then {
	_item1395 = createVehicle ["PortableHelipadLight_01_red_F",[5908.12,11452.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1395;
	_objects pushback _this;
	_objectIDs pushback 1395;
	_this setPosWorld [5908.12,11452.5,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1396 = objNull;
if (_layerRoot) then {
	_item1396 = createVehicle ["PortableHelipadLight_01_yellow_F",[5936.55,11481.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1396;
	_objects pushback _this;
	_objectIDs pushback 1396;
	_this setPosWorld [5936.55,11481.2,83.1507];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1397 = objNull;
if (_layerRoot) then {
	_item1397 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[5962.83,11480.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1397;
	_objects pushback _this;
	_objectIDs pushback 1397;
	_this setPosWorld [5962.83,11480.4,83.1493];
	_this setVectorDirAndUp [[0.992802,-0.119764,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1398 = objNull;
if (_layerRoot) then {
	_item1398 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[5908.97,11427.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1398;
	_objects pushback _this;
	_objectIDs pushback 1398;
	_this setPosWorld [5908.97,11427.6,83.1493];
	_this setVectorDirAndUp [[0.128959,-0.99165,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1399 = objNull;
if (_layerRoot) then {
	_item1399 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[5885.65,11541.3,0.562378],[],0,"CAN_COLLIDE"];
	_this = _item1399;
	_objects pushback _this;
	_objectIDs pushback 1399;
	_this setPosWorld [5885.65,11541.3,83.7117];
	_this setVectorDirAndUp [[-0.540474,-0.841361,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1400 = objNull;
if (_layerRoot) then {
	_item1400 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[6162.08,11388.2,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item1400;
	_objects pushback _this;
	_objectIDs pushback 1400;
	_this setPosWorld [6162.08,11388.2,72.4805];
	_this setVectorDirAndUp [[-0.809719,0.586818,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1402 = objNull;
if (_layerRoot) then {
	_item1402 = createVehicle ["Land_MapBoard_01_Wall_F",[6000.66,11546.8,1.75928],[],0,"CAN_COLLIDE"];
	_this = _item1402;
	_objects pushback _this;
	_objectIDs pushback 1402;
	_this setPosWorld [6000.66,11546.8,85.3508];
	_this setVectorDirAndUp [[0.670286,0.742103,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item1403 = objNull;
if (_layerRoot) then {
	_item1403 = createVehicle ["Land_MapBoard_01_Wall_F",[5998.09,11549.3,1.8076],[],0,"CAN_COLLIDE"];
	_this = _item1403;
	_objects pushback _this;
	_objectIDs pushback 1403;
	_this setPosWorld [5998.09,11549.3,85.3991];
	_this setVectorDirAndUp [[0.700341,0.713809,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item1404 = objNull;
if (_layerRoot) then {
	_item1404 = createVehicle ["Windsock_01_F",[5890.49,11548.6,0.562378],[],0,"CAN_COLLIDE"];
	_this = _item1404;
	_objects pushback _this;
	_objectIDs pushback 1404;
	_this setPosWorld [5890.49,11548.6,84.8774];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1406 = objNull;
if (_layerRoot) then {
	_item1406 = createVehicle ["rhsusf_M1232_M2_usarmy_d",[5937.58,11303.9,0.0019989],[],0,"CAN_COLLIDE"];
	_this = _item1406;
	_objects pushback _this;
	_objectIDs pushback 1406;
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

private _item1407 = objNull;
if (_layerRoot) then {
	_item1407 = createVehicle ["rhsusf_m1025_d",[6040.67,11462,0],[],0,"CAN_COLLIDE"];
	_this = _item1407;
	_objects pushback _this;
	_objectIDs pushback 1407;
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

private _item1408 = objNull;
if (_layerRoot) then {
	_item1408 = createVehicle ["US_WarfareBFieldhHospital_Base_EP1",[6022.49,11565.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1408;
	_objects pushback _this;
	_objectIDs pushback 1408;
	_this setPosWorld [6022.49,11565.7,81.9847];
	_this setVectorDirAndUp [[0.7186,0.695424,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item1409 = objNull;
if (_layerRoot) then {
	_item1409 = createVehicle ["Land_ClutterCutter_small_F",[6024.49,11564.7,0.0912857],[],0,"CAN_COLLIDE"];
	_this = _item1409;
	_objects pushback _this;
	_objectIDs pushback 1409;
	_this setPosWorld [6024.49,11564.7,83.1313];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1410 = objNull;
if (_layerRoot) then {
	_item1410 = createVehicle ["Land_HelipadRescue_F",[6034.55,11580.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1410;
	_objects pushback _this;
	_objectIDs pushback 1410;
	_this setPosWorld [6034.55,11580.9,83.04];
	_this setVectorDirAndUp [[-0.7136,0.700553,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1412 = objNull;
if (_layerRoot) then {
	_item1412 = createVehicle ["Land_TentLamp_01_suspended_F",[5995.13,11543.6,12.3769],[],0,"CAN_COLLIDE"];
	_this = _item1412;
	_objects pushback _this;
	_objectIDs pushback 1412;
	_this setPosWorld [5995.13,11543.6,95.461];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1634 = objNull;
if (_layerRoot) then {
	_item1634 = createVehicle ["Box_NATO_AmmoVeh_F",[5930.4,11443.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1634;
	_objects pushback _this;
	_objectIDs pushback 1634;
	_this setPosWorld [5930.4,11443.3,83.8298];
	_this setVectorDirAndUp [[0.703746,0.710452,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
};

private _item1635 = objNull;
if (_layerRoot) then {
	_item1635 = createVehicle ["B_Slingload_01_Fuel_F",[5924.59,11436.2,-0.000114441],[],0,"CAN_COLLIDE"];
	_this = _item1635;
	_objects pushback _this;
	_objectIDs pushback 1635;
	_this setPosWorld [5924.59,11436.2,84.4023];
	_this setVectorDirAndUp [[0.703746,0.710452,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item1652 = objNull;
if (_layerRoot) then {
	_item1652 = createVehicle ["RHS_UH60M_d",[5935.66,11481,0],[],0,"CAN_COLLIDE"];
	_this = _item1652;
	_objects pushback _this;
	_objectIDs pushback 1652;
	_this setPosWorld [5935.66,11481,85.7558];
	_this setVectorDirAndUp [[0.97989,-0.199539,0],[0,0,1]];
	_this setPylonLoadout [1,"rhsusf_M130_CMFlare_Chaff_Magazine_x2"];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit"",""Medikit""],[2,10,2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,4,2,2,4]],[[],[]],[[""B_Parachute""],[4]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVehicleReportOwnPosition true;
	parseSimpleArray "[[""hithull"",""hitengine1"",""hitengine2"",""hitengine"",""hittail"",""hitvrotor"",""hithrotor"",""hitwinch"",""hitglass7"",""hithydraulics"",""hittransmission"",""hithstabilizerl1"",""hithstabilizerr1"",""hitpylon1"",""hitpylon2"",""hitpylon3"",""hitpylon4"",""hitfuel"",""hitavionics"",""hitmissiles"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitrglass"",""hitlglass"",""hitengine3"",""hitlight"",""hitgear"",""hitvstabilizer1"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""#p svetlo"",""#l svetlo"",""#cabin_light"",""#cargo_light_1"",""#cargo_light_2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	[_this] call ace_fastroping_fnc_equipFRIES;
};

private _item1656 = objNull;
if (_layer1655) then {
	_item1656 = createVehicle ["Land_PaperBox_closed_F",[5987,11512.9,0.136932],[],0,"CAN_COLLIDE"];
	_this = _item1656;
	_objects pushback _this;
	_objectIDs pushback 1656;
	_this setPosWorld [5987,11512.9,83.8201];
	_this setVectorDirAndUp [[-0.67601,0.736892,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item1657 = objNull;
if (_layer1655) then {
	_item1657 = createVehicle ["Land_PaperBox_closed_F",[5985.71,11511.9,0.153465],[],0,"CAN_COLLIDE"];
	_this = _item1657;
	_objects pushback _this;
	_objectIDs pushback 1657;
	_this setPosWorld [5985.71,11511.9,83.8367];
	_this setVectorDirAndUp [[-0.685384,0.727944,-0.0186315],[-0.0304701,-0.00310593,0.999531]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item1658 = objNull;
if (_layer1655) then {
	_item1658 = createVehicle ["Land_PaperBox_open_empty_F",[5984.15,11510.6,0.117653],[],0,"CAN_COLLIDE"];
	_this = _item1658;
	_objects pushback _this;
	_objectIDs pushback 1658;
	_this setPosWorld [5984.15,11510.6,83.7647];
	_this setVectorDirAndUp [[-0.658492,0.752136,-0.0260787],[-0.0183244,0.0186181,0.999659]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1659 = objNull;
if (_layer1655) then {
	_item1659 = createVehicle ["Land_i_Shed_Ind_F",[5972.05,11517.7,0.137001],[],0,"CAN_COLLIDE"];
	_this = _item1659;
	_objects pushback _this;
	_objectIDs pushback 1659;
	_this setPosWorld [5972.05,11517.7,84.717];
	_this setVectorDirAndUp [[0.707107,0.707107,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item1660 = objNull;
if (_layer1655) then {
	_item1660 = createVehicle ["Land_Pallet_MilBoxes_F",[5985.57,11514.4,0.156784],[],0,"CAN_COLLIDE"];
	_this = _item1660;
	_objects pushback _this;
	_objectIDs pushback 1660;
	_this setPosWorld [5985.57,11514.4,83.6469];
	_this setVectorDirAndUp [[-0.647483,0.761882,-0.0173707],[-0.0304701,-0.00310593,0.999531]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1661 = objNull;
if (_layer1655) then {
	_item1661 = createSimpleObject ["Land_CampingTable_F",[5973.52,11514.5,83.2494]];
	_this = _item1661;
	_objects pushback _this;
	_objectIDs pushback 1661;
	_this setPosWorld [5973.52,11514.5,83.6609];
	_this setVectorDirAndUp [[0.70456,0.709644,-0.000517806],[-0.00627206,0.00695676,0.999956]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1663 = objNull;
if (_layer1655) then {
	_item1663 = createVehicle ["Land_Camping_Light_F",[5973.82,11514.4,1.02753],[],0,"CAN_COLLIDE"];
	_this = _item1663;
	_objects pushback _this;
	_objectIDs pushback 1663;
	_this setPosWorld [5973.82,11514.4,84.1862];
	_this setVectorDirAndUp [[0,0.999976,-0.00695689],[-0.00627206,0.00695676,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item1665 = objNull;
if (_layer1655) then {
	_item1665 = createVehicle ["Land_TentLamp_01_suspended_F",[5975.21,11519.5,4.69424],[],0,"CAN_COLLIDE"];
	_this = _item1665;
	_objects pushback _this;
	_objectIDs pushback 1665;
	_this setPosWorld [5975.21,11519.5,87.7783];
	_this setVectorDirAndUp [[-0.70647,-0.707743,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1669 = objNull;
if (_layerRoot) then {
	_item1669 = createVehicle ["rhsusf_m1151_m2_v2_usarmy_d",[6026.46,11476.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1669;
	_objects pushback _this;
	_objectIDs pushback 1669;
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

private _item1673 = objNull;
if (_layerRoot) then {
	_item1673 = createVehicle ["Land_Mil_Repair_center_EP1",[5920.16,11426.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1673;
	_objects pushback _this;
	_objectIDs pushback 1673;
	_this setPosWorld [5920.16,11426.4,85.5615];
	_this setVectorDirAndUp [[0.712786,-0.701382,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1715 = objNull;
if (_layer1714 && _layer1725) then {
	_item1715 = createVehicle ["Land_InfoStand_V1_F",[5979.54,11521.9,0.179665],[],0,"CAN_COLLIDE"];
	_this = _item1715;
	_objects pushback _this;
	_objectIDs pushback 1715;
	_this setPosWorld [5979.54,11521.9,83.795];
	_this setVectorDirAndUp [[0.76083,0.648886,0.00918382],[-0.00651445,-0.00651431,0.999958]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item1727 = objNull;
if (_layer1714 && _layer1725) then {
	_item1727 = createVehicle ["Gunrack1",[5980.25,11519.3,0.157227],[],0,"CAN_COLLIDE"];
	_this = _item1727;
	_objects pushback _this;
	_objectIDs pushback 1727;
	_this setPosWorld [5980.25,11519.3,83.702];
	_this setVectorDirAndUp [[-0.73614,0.676673,0.0145175],[-0.00576707,-0.0277195,0.999599]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1728 = objNull;
if (_layer1714 && _layer1725) then {
	_item1728 = createVehicle ["Gunrack1",[5976.92,11522.6,0.167526],[],0,"CAN_COLLIDE"];
	_this = _item1728;
	_objects pushback _this;
	_objectIDs pushback 1728;
	_this setPosWorld [5976.92,11522.6,83.7123];
	_this setVectorDirAndUp [[-0.676657,0.736298,0.000388446],[-0.00651445,-0.00651431,0.999958]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item1405 = objNull;
if (_layerRoot) then {
	_item1405 = createTrigger ["EmptyDetectorArea10x10",[6166.47,11390.4,0.562393],true];
	_this = _item1405;
	_triggers pushback _this;
	_triggerIDs pushback 1405;
	_item1405 setPosATL [6166.47,11390.4,0.562393];
	_this setTriggerArea [5,20,124.364,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item1668 = objNull;
if (_layerRoot) then {
	_item1668 = createTrigger ["EmptyDetectorArea10x10",[5914.59,11443.3,0],true];
	_this = _item1668;
	_triggers pushback _this;
	_triggerIDs pushback 1668;
	_item1668 setPosATL [5914.59,11443.3,0];
	_this setTriggerArea [25,22,44.851,true,5];
	repStation = _this;
};

private _item1672 = objNull;
if (_layer1671) then {
	_item1672 = createTrigger ["EmptyDetectorArea10x10",[6022.35,11566.1,0.0899963],true];
	_this = _item1672;
	_triggers pushback _this;
	_triggerIDs pushback 1672;
	_item1672 setPosATL [6022.35,11566.1,0.0899963];
	_this setTriggerArea [8,5,134.574,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item1348;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-1"] call CBA_fnc_setCallsign;
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-1",true]'];          ["","ColorWEST","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item1351;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-2"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-2",true]'];          ["","ColorWEST","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item1357;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-3"] call CBA_fnc_setCallsign;
	_this setBehaviour "SAFE";
	_this setSpeedMode "LIMITED";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-3",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-3",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-3",true]'];          ["","ColorWEST","Alpha 1-3",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-3",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-3",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item1365;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-4"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-4",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-4",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-4",true]'];          ["","ColorWEST","Alpha 1-4",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-4",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-4",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item1372;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-5"] call CBA_fnc_setCallsign;
	      if (!is3DEN && !(["","Default","",false] isEqualTo ['', '', '', true])) then      {        [_this, ["","Default","",false]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","Default","",false]'];          ["","Default","",false] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","Default","",false]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","Default","",false] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];

private _item1359 = [];
if (_layerRoot) then {
	_item1359 = _item1357 addWaypoint [[6076.66,11494.2,0.562378],0];
	_this = _item1359;
	_waypoints pushback _this;
	_waypointIDs pushback 1359;
	_this setWaypointType "MOVE";
};

private _item1360 = [];
if (_layerRoot) then {
	_item1360 = _item1357 addWaypoint [[6045.67,11509.5,0.562378],0];
	_this = _item1360;
	_waypoints pushback _this;
	_waypointIDs pushback 1360;
	_this setWaypointType "MOVE";
};

private _item1361 = [];
if (_layerRoot) then {
	_item1361 = _item1357 addWaypoint [[5945.69,11401,0.562378],0];
	_this = _item1361;
	_waypoints pushback _this;
	_waypointIDs pushback 1361;
	_this setWaypointType "MOVE";
};

private _item1362 = [];
if (_layerRoot) then {
	_item1362 = _item1357 addWaypoint [[5874.56,11268.5,0],0];
	_this = _item1362;
	_waypoints pushback _this;
	_waypointIDs pushback 1362;
	_this setWaypointType "MOVE";
};

private _item1363 = [];
if (_layerRoot) then {
	_item1363 = _item1357 addWaypoint [[5880.25,11263.4,0],0];
	_this = _item1363;
	_waypoints pushback _this;
	_waypointIDs pushback 1363;
	_this setWaypointType "MOVE";
};

private _item1364 = [];
if (_layerRoot) then {
	_item1364 = _item1357 addWaypoint [[6081.23,11503.1,0.562378],0];
	_this = _item1364;
	_waypoints pushback _this;
	_waypointIDs pushback 1364;
	_this setWaypointType "CYCLE";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item1414 = objNull;
if (_layer1413) then {
	_item1414 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[5672.65,11061,0],[],0,"CAN_COLLIDE"];
	_this = _item1414;
	_logics pushback _this;
	_logicIDs pushback 1414;
	_this setPosWorld [5672.65,11061,82.87];
	_this setVectorDirAndUp [[-0.999934,0.0115087,0],[0,0,1]];
	_this setVariable ["objectArea",[15,25,270.659,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item1713 = objNull;
if (_layer1712) then {
	_item1713 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[5971.72,11517.9,0.137886],[],0,"CAN_COLLIDE"];
	_this = _item1713;
	_logics pushback _this;
	_logicIDs pushback 1713;
	_this setPosWorld [5971.72,11517.9,83.1779];
	_this setVectorDirAndUp [[0,0.999934,-0.0115081],[-0.00510947,0.011508,0.999921]];
};

private _item1716 = objNull;
if (_layer1714 && _layer1725) then {
	_item1716 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[5963.11,11509.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1716;
	_logics pushback _this;
	_logicIDs pushback 1716;
	_this setPosWorld [5963.11,11509.5,83.04];
	_this setVectorDirAndUp [[0.819955,0.572428,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer1714) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item1715,_item1716,_item1727,_item1728],[]]];};
if (_layer1725) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item1715,_item1716,_item1727,_item1728],[]]];};
if (_layer1712) then {missionNamespace setVariable ["temp_Spawn Medic Crate",[[_item1713],[]]];};
if (_layer1671) then {missionNamespace setVariable ["temp_Ace Heal Trigger",[[_item1672],[]]];};
if (_layer1655) then {missionNamespace setVariable ["temp_Base",[[_item1656,_item1657,_item1658,_item1659,_item1660,_item1661,_item1663,_item1665],[]]];};
if (_layer1413) then {missionNamespace setVariable ["temp_Layer 1",[[_item1414],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item1373 && !isNull _item1377) then {_item1373 moveInDriver _item1377;};
if (!isNull _item1374 && !isNull _item1377) then {_item1374 moveInTurret [_item1377,[0]];};
if (!isNull _item1375 && !isNull _item1377) then {_item1375 moveInTurret [_item1377,[1]];};
if (!isNull _item1376 && !isNull _item1377) then {_item1376 moveInTurret [_item1377,[2]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item1673) then {
		this = _item1673;
		call{_repair = this; 
 
[    
 _repair, "Repair Vehicles",    
"\a3\ui_f\data\IGUI\Cfg\actions\repair_ca.paa",    
 "\a3\ui_f\data\IGUI\Cfg\actions\repair_ca.paa",    
  "_this distance _target < 6", "_caller distance _target < 6",    
  {},    
  {},    
  { {_x Setdamage 0} forEach (vehicles inAreaArray repStation);},    
  {},    
  [],    
  5,    
  997,    
  false, false    
] call "BIS_fnc_holdActionAdd";};
	};
	if !(isnull _item1727) then {
		this = _item1727;
		call{arsenals pushBack this};
	};
	if !(isnull _item1728) then {
		this = _item1728;
		call{arsenals pushBack this};
	};
	if !(isnull _item1713) then {
		this = _item1713;
		call{_medcrate = "ACE_medicalSupplyCrate_advanced" createVehicle position this; _medcrate setPosASL (getPosASL this);};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item1414) then {_item1414 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
