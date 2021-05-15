// Export of 'BASE_GUER.takistan' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer226 = (_allWhitelisted || {"layer 2" in _layerWhiteList}) && {!("layer 2" in _layerBlackList)};
private _layer15 = (_allWhitelisted || {"auto open bar gate" in _layerWhiteList}) && {!("auto open bar gate" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item231 = "";
if (_layerRoot) then {
	_item231 = createMarker ["Nazari",[1620.39,11657.4,0]];
	_this = _item231;
	_markers pushback _this;
	_markerIDs pushback 231;
	_this setMarkerType "hd_flag";
	_this setMarkerText "Camp Nazari";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorGUER";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item159 = grpNull;
if (_layerRoot) then {
	_item159 = createGroup civilian;
	_this = _item159;
	_groups pushback _this;
	_groupIDs pushback 159;
};

private _item160 = grpNull;
if (_layerRoot) then {
	_item160 = createGroup civilian;
	_this = _item160;
	_groups pushback _this;
	_groupIDs pushback 160;
};

private _item161 = grpNull;
if (_layerRoot) then {
	_item161 = createGroup east;
	_this = _item161;
	_groups pushback _this;
	_groupIDs pushback 161;
};

private _item213 = grpNull;
if (_layerRoot) then {
	_item213 = createGroup east;
	_this = _item213;
	_groups pushback _this;
	_groupIDs pushback 213;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item17 = objNull;
if (_layer15) then {
	_item17 = createVehicle ["Land_BarGate_F",[1657.24,11641.1,0],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [1657.24,11641.1,198.918];
	_this setVectorDirAndUp [[-0.896222,0.443606,0],[0,0,1]];
	Gate2 = _this;
	_this setVehicleVarName "Gate2";
	0 remoteExec ['setFeatureType', _this];
};

private _item19 = objNull;
if (_layer15) then {
	_item19 = createVehicle ["Land_BarGate_F",[1619.83,11686.4,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [1619.83,11686.4,196.255];
	_this setVectorDirAndUp [[0.47055,0.882373,0],[0,0,1]];
	Gate3 = _this;
	_this setVehicleVarName "Gate3";
	0 remoteExec ['setFeatureType', _this];
};

private _item162 = objNull;
if (_layerRoot) then {
	_item162 = _item161 createUnit ["UK3CB_TKM_O_RIF_1",[1634.5,11659.2,0],[],0,"CAN_COLLIDE"];
	_item161 selectLeader _item162;
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [1634.5,11659.2,194.554];
	_this setVectorDirAndUp [[0.391052,0.920368,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Mahmood Shah";;
	_this setface "PersianHead_A3_01";;
	_this setspeaker "Male03PER";;
	_this setpitch 0.97;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item8 = objNull;
if (_layerRoot) then {
	_item8 = _item161 createUnit ["UK3CB_ADR_O_MK",[1611.28,11640,7.05176],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [1611.28,11640.1,201.354];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Betoudji Antonio";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male03FRE";;
	_this setpitch 0.99;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item170 = objNull;
if (_layerRoot) then {
	_item170 = _item161 createUnit ["UK3CB_TKM_O_RIF_1",[1610.8,11640.6,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [1610.8,11640.6,194.302];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Habib Nazari";;
	_this setface "PersianHead_A3_01";;
	_this setspeaker "Male02PER";;
	_this setpitch 0.98;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item172 = objNull;
if (_layerRoot) then {
	_item172 = _item161 createUnit ["UK3CB_ADR_O_RIF_2",[1618.27,11637.2,-1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [1618.27,11637.2,194.399];
	_this setVectorDirAndUp [[0.678423,0.734671,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Gongebe Mvuezolo";;
	_this setface "Barklem";;
	_this setspeaker "Male02FRE";;
	_this setpitch 0.97;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item177 = objNull;
if (_layerRoot) then {
	_item177 = _item161 createUnit ["UK3CB_ADR_O_RIF_1",[1631.99,11645.4,0],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [1631.99,11645.5,194.597];
	_this setVectorDirAndUp [[0.354646,0.934998,0.00212056],[-0.0143985,0.00319362,0.999891]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Assim-Adam Ibaka";;
	_this setface "AfricanHead_03";;
	_this setspeaker "Male01FRE";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,true] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item224 = objNull;
if (_layerRoot) then {
	_item224 = _item161 createUnit ["UK3CB_ADR_O_MK",[1636.69,11638.5,6.34399],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [1636.69,11638.6,201.022];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ali Mouken";;
	_this setface "Barklem";;
	_this setspeaker "Male02FRE";;
	_this setpitch 1.04;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item229 = objNull;
if (_layerRoot) then {
	_item229 = _item161 createUnit ["UK3CB_TKM_O_RIF_1",[1608.72,11691.4,0],[],0,"CAN_COLLIDE"];
	_this = _item229;
	_objects pushback _this;
	_objectIDs pushback 229;
	_this setPosWorld [1608.72,11691.4,193.196];
	_this setVectorDirAndUp [[0.688515,0.725222,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Hasan Kakar";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "Male02PER";;
	_this setpitch 0.98;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item178 = objNull;
if (_layerRoot) then {
	_item178 = createVehicle ["UK3CB_ADR_O_LR_M2",[1634,11644.9,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [1633.97,11644.9,196.799];
	_this setVectorDirAndUp [[0.354646,0.934998,0.00211289],[-0.0143977,0.00320154,0.999891]];
	_this lock 2;
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[""FirstAidKit""],[1]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitglass1"",""hitbeacon"",""hitbody"",""hitengine"",""hitfuel"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitrglass"",""hitlglass"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""hitturret"",""hitgun"",""#l svetlo"",""#l_svetlo_2"",""#p svetlo"",""#p_svetlo_2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 6] call ace_cargo_fnc_setSpace;;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
};

private _item24 = objNull;
if (_layer226) then {
	_item24 = createVehicle ["Wire",[1663.61,11644.4,0],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [1663.61,11644.4,195.47];
	_this setVectorDirAndUp [[0,0.99601,-0.0892423],[0.0829119,0.088935,0.992581]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer226) then {
	_item27 = createVehicle ["Wire",[1614.23,11692.1,0],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [1614.23,11692.1,193.162];
	_this setVectorDirAndUp [[0.51545,0.841384,-0.162428],[0.14563,0.100781,0.984193]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item28 = objNull;
if (_layer226) then {
	_item28 = createVehicle ["Wire",[1627.66,11684.2,0],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [1627.66,11684.2,192.338];
	_this setVectorDirAndUp [[0.462237,0.874504,-0.1469],[0.0987148,0.113884,0.988578]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer226) then {
	_item167 = createVehicle ["Wire",[1631.28,11650.5,0],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [1631.28,11650.5,195.32];
	_this setVectorDirAndUp [[0.352546,0.935789,-0.00316573],[-0.00799344,0.0063942,0.999948]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer226) then {
	_item168 = createVehicle ["Wire",[1618.15,11656.3,0],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [1618.15,11656.3,195.155];
	_this setVectorDirAndUp [[0.352528,0.935682,-0.014949],[-0.0127979,0.0207936,0.999702]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer226) then {
	_item154 = createSimpleObject ["Land_CampingChair_V2_F",[1634.01,11661.1,194.433]];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [1634.01,11661.1,194.937];
	_this setVectorDirAndUp [[-0.433228,0.900016,-0.047799],[0.0654599,0.0843152,0.994287]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer226) then {
	_item158 = createSimpleObject ["Land_CampingChair_V2_F",[1637.09,11659.6,194.363]];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [1637.09,11659.6,194.866];
	_this setVectorDirAndUp [[0.808045,0.580153,-0.102395],[0.0654599,0.0843152,0.994287]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item3 = objNull;
if (_layer226) then {
	_item3 = createSimpleObject ["CargoNet_01_barrels_F",[1611.93,11631.9,198.192]];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [1611.93,11631.9,198.721];
	_this setVectorDirAndUp [[-0.924884,0.380247,0.00106578],[0.00115234,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 6] call ace_cargo_fnc_setSize;;
	//if (!is3DEN) then {[_this, +[["UK3CB_H_Turban_Neckwrap_03_Oli","G_Aviator","ItemMap","ItemCompass","ItemWatch","Binocular","ACE_quikclot","ACE_elasticBandage","ACE_packingBandage","ACE_tourniquet","ACE_splint","ACE_morphine","ACE_epinephrine","ACE_adenosine","UK3CB_AK47_30Rnd_Magazine_G","ACE_EarPlugs","SmokeShell","HandGrenade","UK3CB_V_Chestrig_WDL_02","uk3cb_ak47","UK3CB_H_Turban_Neckwrap_02_Oli","rhs_100Rnd_762x54mmR","UK3CB_B_Alice_K","UK3CB_V_Chestrig_Tan","rhs_weap_pkm","UK3CB_H_Turban_Facewrap_03_Tan","UK3CB_V_Chestrig_WDL_01","UK3CB_H_Turban_Neckwrap_02_Whi","G_Lowprofile","rhs_10Rnd_762x54mmR_7N1","UK3CB_V_Chestrig_OLI","rhs_acc_pso1m2","H_ShemagOpen_khk","ACE_salineIV","ACE_salineIV_500","ACE_personalAidKit","ACE_surgicalKit","SmokeShellGreen","SmokeShellPurple","UK3CB_B_Alice_Med_K","UK3CB_V_Chestrig_ERDL","UK3CB_H_Turban_Facewrap_03_Oli","ToolKit","ACE_wirecutter","ACE_SpraypaintBlue","ACE_VMH3","ACE_DefusalKit","ACE_Clacker","ACE_M26_Clacker","ACE_SpraypaintRed","DemoCharge_Remote_Mag","UK3CB_H_Turban_Facewrap_01_Tan","UK3CB_H_Turban_Facewrap_02_Tan","UK3CB_H_Turban_Neckwrap_03_Whi","rhs_rpg7_PG7VL_mag","rhs_weap_rpg7","UK3CB_H_Turban_Neckwrap_03_Tan","UK3CB_H_Turban_Facewrap_01_Whi","UK3CB_H_Turban_Facewrap_03_Whi","G_Shades_Blue","UK3CB_H_Turban_Neckwrap_02_Tan","UK3CB_H_Turban_Neckwrap_01_Oli","G_Shades_Red","UK3CB_H_Turban_Facewrap_02_Whi","H_ShemagOpen_tan","UK3CB_H_Turban_Facewrap_01_Oli","UK3CB_H_Turban_Neckwrap_01_Tan","UK3CB_H_Turban_Neckwrap_01_Whi","rhs_30Rnd_762x39mm","rhs_VOG25","rhs_GRD40_White","rhs_mag_rdg2_white","rhs_mag_rdg2_black","rhs_mag_rgd5","UK3CB_ADE_O_U_06_D","ACE_fieldDressing","UK3CB_V_Pouch","rhs_weap_akm_gp25","rhs_acc_dtkakm","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_CableTie","ACE_bodyBag","ACE_Cellphone","ACE_DAGR","ACE_DeadManSwitch","ACE_EntrenchingTool","ACE_IR_Strobe_Item","ACE_Kestrel4500","ACE_Flashlight_XL50","ACE_MapTools","ACE_microDAGR","MineDetector","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_rope12","ACE_rope15","ACE_rope18","ACE_rope27","ACE_rope36","ACE_salineIV_250","ACE_SpottingScope","ACE_SpraypaintBlack","ACE_SpraypaintGreen","ACE_Tripod","ACE_UAVBattery","rhs_ec75_mag","rhs_ec200_sand_mag","rhs_ec200_mag","rhs_ec400_sand_mag","rhs_ec400_mag","rhs_ec75_sand_mag","rhs_charge_M2tet_x2_mag","rhs_mine_TM43_mag","rhs_mine_stockmine43_4m_mag","rhs_mine_stockmine43_2m_mag","IEDUrbanSmall_Remote_Mag","IEDLandSmall_Remote_Mag","rhs_mine_ozm72_b_mag","rhs_mine_ozm72_a_mag","rhs_mine_ozm72_c_mag","SLAMDirectionalMine_Wire_Mag","rhs_mine_M7A2_mag","rhs_mine_m3_pressure_mag","rhs_mine_M3_tripwire_mag","rhs_mine_m2a3b_press_mag","rhs_mine_m2a3b_trip_mag","APERSBoundingMine_Range_Mag","ClaymoreDirectionalMine_Remote_Mag","rhsusf_mine_m14_mag","rhsusf_m112x4_mag","IEDUrbanBig_Remote_Mag","IEDLandBig_Remote_Mag","rhs_mine_glasmine43_bz_mag","Chemlight_blue","Chemlight_green","ACE_Chemlight_HiBlue","ACE_Chemlight_HiGreen","ACE_Chemlight_HiRed","ACE_Chemlight_HiWhite","ACE_Chemlight_HiYellow","ACE_Chemlight_Orange","Chemlight_red","ACE_Chemlight_White","Chemlight_yellow","rhs_grenade_m1939l_mag","rhs_grenade_m1939e_f_mag","rhs_grenade_m1939l_f_mag","rhs_mag_f1","rhs_mag_fakel","rhs_mag_fakels","SmokeShellRed","rhs_mag_mk84","ACE_M84","rhs_grenade_mki_mag","rhs_grenade_mkii_mag","rhs_mag_rgn","rhs_mag_rgo","rhs_charge_sb3kg_mag","rhsusf_bino_m24","rhsusf_bino_m24_ARD","rhs_pdu4","ACE_VectorDay","ACE_Vector","rhs_balaclava","UK3CB_G_Balaclava","G_Balaclava_blk","G_Bandanna_khk","G_Bandanna_tan","UK3CB_G_Neck_Shemag_Oli","UK3CB_G_Neck_Shemag_Tan","B_Kitbag_cbr","UK3CB_TKA_O_B_RIF_Tan","UK3CB_TKA_O_B_ENG_Tan","ACE_TacticalLadder_Pack","B_TacticalPack_blk","B_TacticalPack_rgr","TFAR_bussole","UK3CB_B_O_Radio_Backpack","UK3CB_ADA_B_V_TacVest_KHK","V_TacVest_khk","UK3CB_ADA_B_V_TacVest_CC","UK3CB_ADA_B_V_TacVest_BLK","V_TacVest_brn","LOP_U_AM_Fatigue_02_2","LOP_U_AM_Fatigue_02","LOP_U_AM_Fatigue_02_4","LOP_U_AM_Fatigue_02_6","LOP_U_AM_Fatigue_02_5","LOP_U_AM_Fatigue_02_3","LOP_U_AM_Fatigue_01_2","LOP_U_AM_Fatigue_01","LOP_U_AM_Fatigue_01_4","LOP_U_AM_Fatigue_03_4","LOP_U_AM_Fatigue_03_2","LOP_U_AM_Fatigue_03","LOP_U_AM_Fatigue_04_5","LOP_U_AM_Fatigue_04_2","LOP_U_AM_Fatigue_04_4","LOP_U_AM_Fatigue_04_3","LOP_U_AM_Fatigue_04","LOP_U_TAK_Civ_Fatigue_10","LOP_U_TAK_Civ_Fatigue_02","LOP_U_TAK_Civ_Fatigue_09","LOP_U_TAK_Civ_Fatigue_11","LOP_U_TAK_Civ_Fatigue_12","LOP_U_TAK_Civ_Fatigue_04","LOP_U_TAK_Civ_Fatigue_13","UK3CB_TKM_B_H_Turban_01_1","UK3CB_TKM_B_H_Turban_02_1","UK3CB_TKM_B_H_Turban_05_1","UK3CB_TKM_B_H_Turban_04_1","UK3CB_TKM_B_H_Turban_03_1","UK3CB_TKC_H_Turban_02_1","UK3CB_TKC_H_Turban_06_1","UK3CB_TKC_H_Pilot_Turban_01_1","UK3CB_H_Beret_Officer_Red","UK3CB_H_Beret_Officer_Grn","UK3CB_H_Beret_Officer_Blu","UK3CB_H_Beret_Officer","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_F","30Rnd_762x39_Mag_Tracer_Green_F","rhs_30Rnd_762x39mm_tracer","rhs_30Rnd_762x39mm_89","rhs_30Rnd_762x39mm_U","rhs_30Rnd_762x39mm_bakelite","rhs_30Rnd_762x39mm_bakelite_tracer","rhs_30Rnd_762x39mm_bakelite_89","rhs_30Rnd_762x39mm_bakelite_U","rhs_30Rnd_762x39mm_polymer","rhs_30Rnd_762x39mm_polymer_tracer","rhs_30Rnd_762x39mm_polymer_89","rhs_30Rnd_762x39mm_polymer_U","rhs_10Rnd_762x39mm","rhs_10Rnd_762x39mm_tracer","rhs_10Rnd_762x39mm_89","rhs_10Rnd_762x39mm_U","rhs_75Rnd_762x39mm","rhs_75Rnd_762x39mm_tracer","rhs_75Rnd_762x39mm_89","UK3CB_AK47_30Rnd_Magazine","UK3CB_AK47_45Rnd_Magazine","UK3CB_AK47_30Rnd_Magazine_GT","UK3CB_AK47_45Rnd_Magazine_G","UK3CB_AK47_45Rnd_Magazine_GT","UK3CB_AK47_30Rnd_Magazine_R","UK3CB_AK47_30Rnd_Magazine_RT","UK3CB_AK47_45Rnd_Magazine_R","UK3CB_AK47_45Rnd_Magazine_RT","UK3CB_AK47_30Rnd_Magazine_Y","UK3CB_AK47_30Rnd_Magazine_YT","UK3CB_AK47_45Rnd_Magazine_Y","UK3CB_AK47_45Rnd_Magazine_YT","UK3CB_RPK_75rnd_762x39","UK3CB_RPK_75rnd_762x39_R","UK3CB_RPK_75rnd_762x39_RM","UK3CB_RPK_75rnd_762x39_RT","UK3CB_RPK_75rnd_762x39_Y","UK3CB_RPK_75rnd_762x39_YM","UK3CB_RPK_75rnd_762x39_YT","UK3CB_RPK_75rnd_762x39_G","UK3CB_RPK_75rnd_762x39_GM","UK3CB_RPK_75rnd_762x39_GT","UK3CB_RPK_75rnd_762x39_W","UK3CB_RPK_75rnd_762x39_WM","UK3CB_RPK_75rnd_762x39_WT","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F","75Rnd_762x39_Mag_F","75Rnd_762x39_Mag_Tracer_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F","30rnd_762x39_AK12_Arid_Mag_F","30rnd_762x39_AK12_Arid_Mag_Tracer_F","75rnd_762x39_AK12_Mag_F","75rnd_762x39_AK12_Mag_Tracer_F","75rnd_762x39_AK12_Lush_Mag_F","75rnd_762x39_AK12_Lush_Mag_Tracer_F","75rnd_762x39_AK12_Arid_Mag_F","75rnd_762x39_AK12_Arid_Mag_Tracer_F","UK3CB_AK47_30Rnd_Magazine_W","UK3CB_AK47_30Rnd_Magazine_WT","UK3CB_AK47_45Rnd_Magazine_W","UK3CB_AK47_45Rnd_Magazine_WT","rhs_100Rnd_762x54mmR_green","rhs_100Rnd_762x54mmR_7N13","rhs_100Rnd_762x54mmR_7N26","rhs_100Rnd_762x54mmR_7BZ3","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","rhs_rpg7_PG7V_mag","rhs_rpg7_PG7VM_mag","rhs_rpg7_PG7VS_mag","rhs_rpg7_PG7VR_mag","rhs_rpg7_OG7V_mag","rhs_rpg7_TBG7V_mag","rhs_rpg7_type69_airburst_mag","RPG7_F","rhs_VOG25P","rhs_VG40TB","rhs_VG40SZ","rhs_VG40OP_white","rhs_VG40OP_green","rhs_VG40OP_red","rhs_GRD40_Green","rhs_GRD40_Red","rhs_GDM40","rhs_VG40MD","rhsusf_acc_wmx","rhsusf_acc_wmx_bk","acc_flashlight_pistol","rhsusf_acc_M952V","rhs_acc_2dpZenit_ris","rhs_acc_2dpZenit","rhs_acc_1pn93_1","rhs_acc_pgo7v","rhs_acc_pgo7v2","rhs_acc_pgo7v3","rhs_acc_1pn93_2","rhs_weap_6p53","rhs_weap_pb_6p9","ACE_Flashlight_Maglite_ML300L","rhs_weap_pp2000_folded","rhs_weap_makarov_pm","rhs_weap_rsp30_white","rhs_weap_savz61_folded","rhs_weap_tr8","rhs_weap_tt33","rhs_weap_type94_new","rhs_weap_akm","rhs_weap_aks74_2","rhs_weap_aks74_gp25","rhs_weap_aks74","rhs_weap_aks74n","rhs_weap_aks74u","arifle_AKS_F","rhs_weap_aks74un","rhs_weap_asval","rhs_weap_asval_grip","rhs_weap_asval_npz","rhs_weap_m14","UK3CB_M14","rhs_weap_m14_d","rhs_weap_m14_fiberglass","srifle_DMR_06_hunter_F","rhs_weap_pm63","rhs_weap_savz61","rhs_weap_savz58p","rhs_weap_savz58p_black","rhs_weap_savz58p_rail","rhs_weap_savz58p_rail_black","UK3CB_SVD_OLD_NPZ","UK3CB_SVD_OLD","rhs_weap_vss","rhs_acc_rakursPM","rhs_acc_dh520x56","rhs_acc_ekp8_18","rhs_acc_1p87","rhs_acc_okp7_picati
};

private _item156 = objNull;
if (_layer226) then {
	_item156 = createSimpleObject ["Land_FMradio_F",[1635.17,11660.8,195.18]];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [1635.17,11660.8,195.253];
	_this setVectorDirAndUp [[0,0.996424,-0.0844964],[0.065694,0.0843139,0.994271]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item5 = objNull;
if (_layer226) then {
	_item5 = createVehicle ["FoldTable",[1613.6,11637.4,3.87767],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [1613.6,11637.4,198.588];
	_this setVectorDirAndUp [[-0.398029,-0.917372,0.000960773],[0.00103552,0.00059802,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer226) then {
	_item155 = createVehicle ["FoldTable",[1635.72,11660.6,0],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [1635.75,11660.6,194.758];
	_this setVectorDirAndUp [[0.421759,0.900707,-0.104144],[0.0654552,0.084314,0.994287]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item20 = objNull;
if (_layer226) then {
	_item20 = createVehicle ["Land_HBarrier_3_F",[1660.47,11646.7,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [1660.47,11646.7,195.483];
	_this setVectorDirAndUp [[-0.842933,0.537827,-0.014338],[0.0399667,0.089171,0.995214]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer226) then {
	_item21 = createVehicle ["Land_HBarrier_3_F",[1657.51,11634.8,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [1657.51,11634.8,195.685];
	_this setVectorDirAndUp [[-0.545211,-0.83829,-0.00390754],[-0.00959931,0.00158214,0.999953]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layer226) then {
	_item22 = createVehicle ["Land_HBarrier_3_F",[1654.51,11636.6,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [1654.51,11636.6,195.661];
	_this setVectorDirAndUp [[-0.545229,-0.838286,-0.00128893],[-0.00479659,0.00158219,0.999987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer226) then {
	_item23 = createVehicle ["Land_HBarrier_5_F",[1657.94,11649.6,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [1657.94,11649.6,195.27];
	_this setVectorDirAndUp [[-0.517051,-0.850445,0.0969639],[0.0399667,0.089171,0.995214]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer226) then {
	_item25 = createVehicle ["Land_HBarrier_5_F",[1626.83,11682.5,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [1626.83,11682.5,192.605];
	_this setVectorDirAndUp [[0.459618,0.8759,-0.146799],[0.0987148,0.113884,0.988578]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer226) then {
	_item26 = createVehicle ["Land_HBarrier_5_F",[1613.27,11690.4,0],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [1613.27,11690.4,193.396];
	_this setVectorDirAndUp [[0.532106,0.836769,-0.129157],[0.12071,0.0760136,0.989773]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer226) then {
	_item163 = createVehicle ["Land_HBarrier_5_F",[1636.67,11647.9,0],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [1636.67,11647.9,195.374];
	_this setVectorDirAndUp [[0.466603,0.884454,-0.00476048],[-0.00799344,0.009599,0.999922]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer226) then {
	_item164 = createVehicle ["Land_HBarrier_5_F",[1641.49,11645.3,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [1641.49,11645.3,195.45];
	_this setVectorDirAndUp [[0.466588,0.884468,-0.00326506],[-0.0111984,0.0095987,0.999891]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer226) then {
	_item165 = createVehicle ["Land_HBarrier_5_F",[1612.93,11658.6,0],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [1612.93,11658.6,195.027];
	_this setVectorDirAndUp [[0.374146,0.927256,-0.014497],[-0.0127979,0.0207936,0.999702]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer226) then {
	_item166 = createVehicle ["Land_HBarrier_5_F",[1608.97,11658,0],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [1608.97,11658,195.011];
	_this setVectorDirAndUp [[-0.921163,0.38889,-0.0149019],[-0.0127979,0.00800024,0.999886]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer226) then {
	_item76 = createVehicle ["Land_ladder_half",[1639.1,11638.4,1.02966],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [1639.1,11638.4,196.42];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer226) then {
	_item157 = createSimpleObject ["Land_Map_blank_F",[1635.89,11660.6,195.155]];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [1635.89,11660.6,195.16];
	_this setVectorDirAndUp [[-0.906588,0.421325,0.0241723],[0.065694,0.0843139,0.994271]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer226) then {
	_item74 = createSimpleObject ["Land_Pallet_F",[1639.85,11633.2,201.1]];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [1639.85,11633.2,201.201];
	_this setVectorDirAndUp [[-0.7396,0.673046,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer226) then {
	_item153 = createSimpleObject ["UK3CB_TKC_C_V3S_Closed",[1635.5,11662.7,194.221]];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [1635.5,11662.7,196.214];
	_this setVectorDirAndUp [[-0.90305,0.428916,0.0230775],[0.0654552,0.084314,0.994287]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
};

private _item225 = objNull;
if (_layer226) then {
	_item225 = createVehicle ["ProtectionZone_Invisible_F",[1620.47,11628.9,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [1620.47,11628.9,199.157];
	_this setVectorDirAndUp [[-0.901733,0.432169,0.0103443],[0.0351779,0.0495081,0.998154]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layer226) then {
	_item39 = createVehicle ["Land_BagFence_Corner_F",[1641.42,11663.1,3.99081],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [1641.42,11663.1,198.029];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer226) then {
	_item40 = createVehicle ["Land_BagFence_Corner_F",[1642.58,11666,7.7972],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [1642.58,11666,201.154];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layer226) then {
	_item41 = createVehicle ["Land_BagFence_Corner_F",[1642.75,11666.1,4.70319],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [1642.75,11666.1,198.028];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer226) then {
	_item42 = createVehicle ["Land_BagFence_Corner_F",[1642.06,11668.9,8.32225],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [1642.06,11668.9,201.154];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item43 = objNull;
if (_layer226) then {
	_item43 = createVehicle ["Land_BagFence_Corner_F",[1641.9,11666.9,7.89865],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [1641.9,11666.9,201.154];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item44 = objNull;
if (_layer226) then {
	_item44 = createVehicle ["Land_BagFence_Corner_F",[1641.37,11663.3,7.26524],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [1641.37,11663.3,201.279];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item49 = objNull;
if (_layer226) then {
	_item49 = createVehicle ["Land_BagFence_Corner_F",[1639.58,11663.3,6.98621],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [1639.58,11663.3,201.155];
	_this setVectorDirAndUp [[-0.896922,0.442189,0.000536161],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item66 = objNull;
if (_layer226) then {
	_item66 = createVehicle ["Land_BagFence_Corner_F",[1633.94,11671.1,1.17284],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [1633.94,11671.1,194.534];
	_this setVectorDirAndUp [[-0.896922,0.442189,0.000536161],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item67 = objNull;
if (_layer226) then {
	_item67 = createVehicle ["Land_BagFence_Corner_F",[1634.71,11672.7,5.66183],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [1634.71,11672.7,198.658];
	_this setVectorDirAndUp [[-0.896922,0.442189,0.000536161],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer226) then {
	_item68 = createVehicle ["Land_BagFence_Corner_F",[1634.71,11672.7,4.91179],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [1634.71,11672.7,197.908];
	_this setVectorDirAndUp [[-0.896922,0.442189,0.000536161],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer226) then {
	_item73 = createVehicle ["Land_BagFence_Corner_F",[1631.84,11666.6,3.58401],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [1631.84,11666.6,197.91];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item105 = objNull;
if (_layer226) then {
	_item105 = createVehicle ["Land_BagFence_Corner_F",[1633.09,11632.2,6.35251],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [1633.09,11632.2,201.407];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item106 = objNull;
if (_layer226) then {
	_item106 = createVehicle ["Land_BagFence_Corner_F",[1646.47,11638,5.44202],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [1646.47,11638,200.657];
	_this setVectorDirAndUp [[0.45869,0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layer226) then {
	_item107 = createVehicle ["Land_BagFence_Corner_F",[1644.47,11634.4,6.21304],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [1644.47,11634.4,201.407];
	_this setVectorDirAndUp [[0.45869,0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item108 = objNull;
if (_layer226) then {
	_item108 = createVehicle ["Land_BagFence_Corner_F",[1641.08,11640.6,5.51096],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [1641.08,11640.6,200.657];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item109 = objNull;
if (_layer226) then {
	_item109 = createVehicle ["Land_BagFence_Corner_F",[1641.37,11628.1,6.25162],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [1641.37,11628.1,201.407];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer226) then {
	_item124 = createVehicle ["Land_BagFence_Corner_F",[1620.58,11634.8,4.17726],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [1620.58,11634.8,199.02];
	_this setVectorDirAndUp [[0.418976,0.907997,-0.000433856],[0.00103552,4.63888e-012,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer226) then {
	_item125 = createVehicle ["Land_BagFence_Corner_F",[1619.3,11638,0.0526581],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [1619.3,11638,194.897];
	_this setVectorDirAndUp [[0.418976,0.907997,-0.000433856],[0.00103552,4.63888e-012,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer226) then {
	_item147 = createVehicle ["Land_BagFence_Corner_F",[1610.39,11642,0.17514],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [1610.39,11642,194.906];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer226) then {
	_item148 = createVehicle ["Land_BagFence_Corner_F",[1610.46,11641.8,7.17596],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [1610.46,11641.8,201.906];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer226) then {
	_item149 = createVehicle ["Land_BagFence_Corner_F",[1606.02,11631.9,6.71768],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [1606.02,11631.9,201.91];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer226) then {
	_item38 = createVehicle ["Land_BagFence_End_F",[1641.74,11666.8,5.49213],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [1641.74,11666.8,198.768];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item48 = objNull;
if (_layer226) then {
	_item48 = createVehicle ["Land_BagFence_End_F",[1640.02,11663.4,4.66188],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [1640.02,11663.4,198.769];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item62 = objNull;
if (_layer226) then {
	_item62 = createVehicle ["Land_BagFence_End_F",[1638.47,11671.2,5.81618],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [1638.47,11671.2,198.645];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item63 = objNull;
if (_layer226) then {
	_item63 = createVehicle ["Land_BagFence_End_F",[1635.55,11672.7,5.75204],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [1635.55,11672.7,198.646];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item64 = objNull;
if (_layer226) then {
	_item64 = createVehicle ["Land_BagFence_End_F",[1634.55,11671.2,1.25896],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [1634.55,11671.2,194.522];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item65 = objNull;
if (_layer226) then {
	_item65 = createVehicle ["Land_BagFence_End_F",[1632.94,11669.6,4.93031],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [1632.94,11669.6,198.648];
	_this setVectorDirAndUp [[-0.896922,0.442189,0.000536161],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item99 = objNull;
if (_layer226) then {
	_item99 = createVehicle ["Land_BagFence_End_F",[1635.74,11638.2,6.32077],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [1635.74,11638.2,201.396];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item100 = objNull;
if (_layer226) then {
	_item100 = createVehicle ["Land_BagFence_End_F",[1635.45,11637.3,4.07233],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [1635.45,11637.3,199.146];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item101 = objNull;
if (_layer226) then {
	_item101 = createVehicle ["Land_BagFence_End_F",[1641.88,11628.5,6.2444],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [1641.88,11628.5,201.396];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layer226) then {
	_item102 = createVehicle ["Land_BagFence_End_F",[1632.94,11633,0.854523],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [1632.94,11633,195.896];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layer226) then {
	_item103 = createVehicle ["Land_BagFence_End_F",[1632.87,11632.3,4.10535],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [1632.87,11632.3,199.146];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layer226) then {
	_item104 = createVehicle ["Land_BagFence_End_F",[1635.29,11637.6,0.824646],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [1635.29,11637.6,195.896];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer226) then {
	_item121 = createVehicle ["Land_BagFence_End_F",[1617.89,11629.6,9.2614],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [1617.89,11629.6,204.137];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer226) then {
	_item122 = createVehicle ["Land_BagFence_End_F",[1612.66,11628.7,8.9295],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [1612.66,11628.7,204.142];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer226) then {
	_item123 = createVehicle ["Land_BagFence_End_F",[1618.8,11636.3,7.0766],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [1618.8,11636.3,201.886];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer226) then {
	_item141 = createVehicle ["Land_BagFence_End_F",[1608.24,11637.6,7.98059],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [1608.24,11637.6,202.647];
	_this setVectorDirAndUp [[0.907997,-0.418976,-0.000940245],[0.00103552,7.05625e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer226) then {
	_item142 = createVehicle ["Land_BagFence_End_F",[1606.71,11631.3,6.6792],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [1606.71,11631.3,201.898];
	_this setVectorDirAndUp [[0.418976,0.907997,-0.000433856],[0.00103552,4.63888e-012,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer226) then {
	_item143 = createVehicle ["Land_BagFence_End_F",[1616.21,11640,0.0898132],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [1616.21,11640,194.888];
	_this setVectorDirAndUp [[-0.816842,-0.576861,0.000845853],[0.00103552,1.76324e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer226) then {
	_item144 = createVehicle ["Land_BagFence_End_F",[1611.59,11629,6.66388],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [1611.59,11629,201.893];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer226) then {
	_item145 = createVehicle ["Land_BagFence_End_F",[1613.67,11641,0.129761],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [1613.67,11641,194.891];
	_this setVectorDirAndUp [[-0.0911549,0.995837,9.43924e-005],[0.00103552,3.64479e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer226) then {
	_item146 = createVehicle ["Land_BagFence_End_F",[1609.71,11640.8,7.94907],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [1609.71,11640.8,202.645];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item9 = objNull;
if (_layer226) then {
	_item9 = createVehicle ["Land_BagFence_Long_F",[1609.95,11640.6,7.06584],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [1609.95,11640.6,201.773];
	_this setVectorDirAndUp [[-0.902109,0.431507,0.000953824],[0,-0.00221044,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item10 = objNull;
if (_layer226) then {
	_item10 = createVehicle ["Land_BagFence_Long_F",[1608.76,11638.1,7.08511],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [1608.76,11638.1,201.767];
	_this setVectorDirAndUp [[-0.902109,0.431507,0.000953824],[0,-0.00221044,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item11 = objNull;
if (_layer226) then {
	_item11 = createVehicle ["Land_BagFence_Long_F",[1607.67,11635.7,6.98904],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [1607.67,11635.7,201.762];
	_this setVectorDirAndUp [[-0.902109,0.431507,0.000953824],[0,-0.00221044,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item12 = objNull;
if (_layer226) then {
	_item12 = createVehicle ["Land_BagFence_Long_F",[1606.59,11633.3,6.71828],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [1606.59,11633.3,201.756];
	_this setVectorDirAndUp [[-0.902109,0.431507,0.00101041],[0,-0.00234157,0.999997]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item34 = objNull;
if (_layer226) then {
	_item34 = createVehicle ["Land_BagFence_Long_F",[1640.94,11669.7,8.33916],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [1640.94,11669.7,201.153];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer226) then {
	_item35 = createVehicle ["Land_BagFence_Long_F",[1642.36,11664.4,4.32838],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [1642.36,11664.4,198.027];
	_this setVectorDirAndUp [[-0.896922,0.442189,0.000536161],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer226) then {
	_item36 = createVehicle ["Land_BagFence_Long_F",[1642.14,11664.3,7.51811],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [1642.14,11664.3,201.277];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer226) then {
	_item37 = createVehicle ["Land_BagFence_Long_F",[1640.04,11670.5,5.11227],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [1640.04,11670.5,197.903];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layer226) then {
	_item47 = createVehicle ["Land_BagFence_Long_F",[1637.9,11663.3,6.83279],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [1637.9,11663.3,201.155];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item55 = objNull;
if (_layer226) then {
	_item55 = createVehicle ["Land_BagFence_Long_F",[1632.84,11669.1,7.32849],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [1632.84,11669.1,201.158];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item56 = objNull;
if (_layer226) then {
	_item56 = createVehicle ["Land_BagFence_Long_F",[1637.57,11671.7,5.03964],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [1637.57,11671.7,197.905];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item57 = objNull;
if (_layer226) then {
	_item57 = createVehicle ["Land_BagFence_Long_F",[1638.47,11671,8.26637],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [1638.47,11671,201.154];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item58 = objNull;
if (_layer226) then {
	_item58 = createVehicle ["Land_BagFence_Long_F",[1634.11,11671.7,7.92625],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [1634.11,11671.7,201.157];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item59 = objNull;
if (_layer226) then {
	_item59 = createVehicle ["Land_BagFence_Long_F",[1632.33,11668.4,3.89546],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [1632.33,11668.4,197.908];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item60 = objNull;
if (_layer226) then {
	_item60 = createVehicle ["Land_BagFence_Long_F",[1633.61,11671,4.49214],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [1633.61,11671,197.907];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item61 = objNull;
if (_layer226) then {
	_item61 = createVehicle ["Land_BagFence_Long_F",[1635.89,11672.2,8.20853],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [1635.89,11672.2,201.156];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item71 = objNull;
if (_layer226) then {
	_item71 = createVehicle ["Land_BagFence_Long_F",[1635.43,11664.5,6.79222],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [1635.43,11664.5,201.156];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer226) then {
	_item72 = createVehicle ["Land_BagFence_Long_F",[1632.85,11665.8,6.79552],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [1632.85,11665.8,201.158];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer226) then {
	_item82 = createVehicle ["Land_BagFence_Long_F",[1639.53,11628.6,6.27718],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [1639.53,11628.6,201.405];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer226) then {
	_item83 = createVehicle ["Land_BagFence_Long_F",[1634.94,11636.6,6.32889],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [1634.94,11636.6,201.405];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer226) then {
	_item84 = createVehicle ["Land_BagFence_Long_F",[1644.92,11639.1,5.46361],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [1644.92,11639.1,200.655];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item85 = objNull;
if (_layer226) then {
	_item85 = createVehicle ["Land_BagFence_Long_F",[1635.46,11637.9,0.0735168],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [1635.46,11637.9,195.155];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layer226) then {
	_item86 = createVehicle ["Land_BagFence_Long_F",[1642.74,11630.2,6.23071],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [1642.74,11630.2,201.405];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item87 = objNull;
if (_layer226) then {
	_item87 = createVehicle ["Land_BagFence_Long_F",[1634.53,11631.2,6.33438],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [1634.53,11631.2,201.405];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item88 = objNull;
if (_layer226) then {
	_item88 = createVehicle ["Land_BagFence_Long_F",[1637.76,11638.3,4.04446],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [1637.76,11638.3,199.155];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item89 = objNull;
if (_layer226) then {
	_item89 = createVehicle ["Land_BagFence_Long_F",[1637.09,11629.9,6.31012],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [1637.09,11629.9,201.405];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layer226) then {
	_item90 = createVehicle ["Land_BagFence_Long_F",[1634.09,11631.4,4.08975],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [1634.09,11631.4,199.155];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layer226) then {
	_item91 = createVehicle ["Land_BagFence_Long_F",[1644,11632.6,6.21553],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [1644,11632.6,201.405];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item92 = objNull;
if (_layer226) then {
	_item92 = createVehicle ["Land_BagFence_Long_F",[1642.48,11640.3,5.49487],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [1642.48,11640.3,200.655];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item93 = objNull;
if (_layer226) then {
	_item93 = createVehicle ["Land_BagFence_Long_F",[1645.95,11636.1,5.448],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [1645.95,11636.1,200.655];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item94 = objNull;
if (_layer226) then {
	_item94 = createVehicle ["Land_BagFence_Long_F",[1633.05,11633.2,0.103058],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [1633.05,11633.2,195.155];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer226) then {
	_item95 = createVehicle ["Land_BagFence_Long_F",[1634.2,11635.5,0.0883789],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [1634.2,11635.5,195.155];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer226) then {
	_item96 = createVehicle ["Land_BagFence_Long_F",[1633.64,11631.4,0.0954895],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [1633.64,11631.4,195.155];
	_this setVectorDirAndUp [[0.45869,0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layer226) then {
	_item97 = createVehicle ["Land_BagFence_Long_F",[1638.12,11636.2,0.0381622],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [1638.12,11636.2,195.155];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item98 = objNull;
if (_layer226) then {
	_item98 = createVehicle ["Land_BagFence_Long_F",[1633.62,11634.1,6.34576],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [1633.62,11634.1,201.405];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item114 = objNull;
if (_layer226) then {
	_item114 = createVehicle ["Land_BagFence_Long_F",[1618.06,11634.7,7.10677],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [1618.06,11634.7,201.896];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layer226) then {
	_item115 = createVehicle ["Land_BagFence_Long_F",[1620.29,11633.3,4.19814],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [1620.29,11633.3,199.019];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layer226) then {
	_item116 = createVehicle ["Land_BagFence_Long_F",[1619.14,11630.8,4.24045],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [1619.14,11630.8,199.02];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layer226) then {
	_item117 = createVehicle ["Land_BagFence_Long_F",[1617.59,11639.1,0.0747375],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [1617.59,11639.1,194.897];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item118 = objNull;
if (_layer226) then {
	_item118 = createVehicle ["Land_BagFence_Long_F",[1617.54,11628.2,9.18179],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [1617.54,11628.2,204.147];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item119 = objNull;
if (_layer226) then {
	_item119 = createVehicle ["Land_BagFence_Long_F",[1614.25,11627.9,8.9855],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [1614.25,11627.9,204.15];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer226) then {
	_item120 = createVehicle ["Land_BagFence_Long_F",[1616.86,11632.1,7.09773],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [1616.86,11632.1,201.897];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer226) then {
	_item132 = createVehicle ["Land_BagFence_Long_F",[1608.19,11637.5,7.23027],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [1608.19,11637.5,201.906];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer226) then {
	_item133 = createVehicle ["Land_BagFence_Long_F",[1606.99,11634.9,7.02878],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [1606.99,11634.9,201.908];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer226) then {
	_item134 = createVehicle ["Land_BagFence_Long_F",[1614.82,11640.2,7.11548],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [1614.82,11640.2,201.899];
	_this setVectorDirAndUp [[0.418976,0.907997,-0.000433856],[0.00103552,4.63888e-012,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer226) then {
	_item135 = createVehicle ["Land_BagFence_Long_F",[1608.98,11639.2,7.96635],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [1608.98,11639.2,202.656];
	_this setVectorDirAndUp [[0.907997,-0.418976,-0.000940245],[0.00103552,7.05625e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer226) then {
	_item136 = createVehicle ["Land_BagFence_Long_F",[1612.14,11641.6,0.152573],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [1612.14,11641.6,194.902];
	_this setVectorDirAndUp [[0.418976,0.907997,-0.000433856],[0.00103552,4.63888e-012,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer226) then {
	_item137 = createVehicle ["Land_BagFence_Long_F",[1609.39,11640.1,7.20822],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [1609.39,11640.1,201.905];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer226) then {
	_item138 = createVehicle ["Land_BagFence_Long_F",[1610.34,11629.6,6.66777],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [1610.34,11629.6,201.904];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer226) then {
	_item139 = createVehicle ["Land_BagFence_Long_F",[1612.21,11641.4,7.1534],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [1612.21,11641.4,201.902];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer226) then {
	_item140 = createVehicle ["Land_BagFence_Long_F",[1610.68,11629.4,7.41673],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [1610.68,11629.4,202.654];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item29 = objNull;
if (_layer226) then {
	_item29 = createVehicle ["Land_BagFence_Round_F",[1630.16,11680.2,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [1630.16,11680.2,192.262];
	_this setVectorDirAndUp [[-0.84457,-0.51,0.163099],[0.0987148,0.151077,0.983581]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer226) then {
	_item30 = createVehicle ["Land_BagFence_Round_F",[1609.77,11692.6,0],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [1609.77,11692.6,193.37];
	_this setVectorDirAndUp [[-0.34097,-0.932553,0.118675],[0.136315,0.0758595,0.987757]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer226) then {
	_item31 = createVehicle ["Land_BagFence_Short_F",[1642.3,11666.6,4.752],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [1642.3,11666.6,198.022];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer226) then {
	_item32 = createVehicle ["Land_BagFence_Short_F",[1641.05,11669.1,4.99229],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [1641.05,11669.1,197.898];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer226) then {
	_item33 = createVehicle ["Land_BagFence_Short_F",[1642.01,11668,8.12723],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [1642.01,11668,201.147];
	_this setVectorDirAndUp [[-0.896922,0.442189,0.000536161],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item45 = objNull;
if (_layer226) then {
	_item45 = createVehicle ["Land_BagFence_Short_F",[1640.53,11663.3,7.06361],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [1640.53,11663.3,201.148];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item46 = objNull;
if (_layer226) then {
	_item46 = createVehicle ["Land_BagFence_Short_F",[1640.47,11663.1,3.9137],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [1640.47,11663.1,198.023];
	_this setVectorDirAndUp [[0.442188,0.896922,-0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item50 = objNull;
if (_layer226) then {
	_item50 = createVehicle ["Land_BagFence_Short_F",[1632.39,11668.5,4.67114],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [1632.39,11668.5,198.653];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item51 = objNull;
if (_layer226) then {
	_item51 = createVehicle ["Land_BagFence_Short_F",[1633.94,11671.7,5.39801],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [1633.94,11671.7,198.652];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item52 = objNull;
if (_layer226) then {
	_item52 = createVehicle ["Land_BagFence_Short_F",[1637.46,11671.7,5.78693],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [1637.46,11671.7,198.65];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layer226) then {
	_item53 = createVehicle ["Land_BagFence_Short_F",[1635.55,11672.7,5.00201],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [1635.55,11672.7,197.901];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item54 = objNull;
if (_layer226) then {
	_item54 = createVehicle ["Land_BagFence_Short_F",[1633.11,11670,0.882858],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [1633.11,11670,194.527];
	_this setVectorDirAndUp [[0.896922,-0.442188,-0.000536161],[0.000597779,2.57387e-011,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer226) then {
	_item69 = createVehicle ["Land_BagFence_Short_F",[1631.67,11666.5,0.190384],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [1631.67,11666.5,194.528];
	_this setVectorDirAndUp [[-0.442188,-0.896922,0.000264331],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layer226) then {
	_item70 = createVehicle ["Land_BagFence_Short_F",[1631.84,11667.1,6.90918],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [1631.84,11667.1,201.153];
	_this setVectorDirAndUp [[-0.896922,0.442189,0.000536161],[0.000597779,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer226) then {
	_item77 = createVehicle ["Land_BagFence_Short_F",[1634.88,11636.2,4.07967],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [1634.88,11636.2,199.15];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item78 = objNull;
if (_layer226) then {
	_item78 = createVehicle ["Land_BagFence_Short_F",[1643.36,11635.2,6.22679],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [1643.36,11635.2,201.4];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layer226) then {
	_item79 = createVehicle ["Land_BagFence_Short_F",[1644.48,11635.2,5.46426],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [1644.48,11635.2,200.65];
	_this setVectorDirAndUp [[-0.45869,-0.888596,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layer226) then {
	_item80 = createVehicle ["Land_BagFence_Short_F",[1634.71,11636.5,0.831772],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [1634.71,11636.5,195.9];
	_this setVectorDirAndUp [[0.888596,-0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item81 = objNull;
if (_layer226) then {
	_item81 = createVehicle ["Land_BagFence_Short_F",[1633.51,11634.1,0.847183],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [1633.51,11634.1,195.9];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer226) then {
	_item111 = createVehicle ["Land_BagFence_Short_F",[1619.55,11635.5,4.19257],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [1619.55,11635.5,199.015];
	_this setVectorDirAndUp [[0.418976,0.907997,-0.000433856],[0.00103552,4.63888e-012,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item112 = objNull;
if (_layer226) then {
	_item112 = createVehicle ["Land_BagFence_Short_F",[1619.17,11636.8,0.0636139],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [1619.17,11636.8,194.89];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item113 = objNull;
if (_layer226) then {
	_item113 = createVehicle ["Land_BagFence_Short_F",[1616.3,11627,9.05757],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [1616.3,11627,204.143];
	_this setVectorDirAndUp [[-0.418976,-0.907997,0.000433856],[0.00103552,3.10651e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer226) then {
	_item130 = createVehicle ["Land_BagFence_Short_F",[1606.1,11632.9,6.81822],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [1606.1,11632.9,201.903];
	_this setVectorDirAndUp [[0.907997,-0.418976,-0.000940245],[0.00103552,7.05625e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer226) then {
	_item131 = createVehicle ["Land_BagFence_Short_F",[1609.64,11640.9,0.198257],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [1609.64,11640.9,194.9];
	_this setVectorDirAndUp [[0.907997,-0.418976,-0.000940245],[0.00103552,7.05625e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer226) then {
	_item110 = createVehicle ["Land_Shoot_House_Panels_F",[1638.92,11637.2,-0.345169],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [1638.92,11637.2,196.037];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer226) then {
	_item126 = createVehicle ["Land_Shoot_House_Panels_F",[1619.6,11635.4,0.0679169],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [1619.6,11635.4,196.151];
	_this setVectorDirAndUp [[0.418976,0.907997,-0.000433856],[0.00103552,4.63888e-012,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer226) then {
	_item127 = createVehicle ["Land_Shoot_House_Panels_F",[1617.87,11628.3,-0.0506287],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [1617.87,11628.3,196.152];
	_this setVectorDirAndUp [[0.907997,-0.418976,-0.000940245],[0.00103552,7.05625e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer226) then {
	_item128 = createVehicle ["Land_Shoot_House_Panels_F",[1619.96,11632.9,0.084137],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [1619.96,11632.9,196.15];
	_this setVectorDirAndUp [[0.907997,-0.418976,-0.000940245],[0.00103552,7.05625e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer226) then {
	_item150 = createVehicle ["Land_Shoot_House_Panels_F",[1610.86,11639.4,0.196518],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [1610.86,11639.4,196.16];
	_this setVectorDirAndUp [[0.418976,0.907997,-0.000433856],[0.00103552,4.63888e-012,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer226) then {
	_item151 = createVehicle ["Land_Shoot_House_Panels_F",[1606.87,11634.6,0.0030365],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [1606.87,11634.6,196.164];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer226) then {
	_item152 = createVehicle ["Land_Shoot_House_Panels_F",[1608.65,11638.5,0.222534],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [1608.65,11638.5,196.162];
	_this setVectorDirAndUp [[-0.907997,0.418976,0.000940245],[0.00103552,2.17873e-011,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer226) then {
	_item75 = createVehicle ["Land_Shoot_House_Wall_Long_F",[1637.54,11634.6,0.0455933],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [1637.54,11634.6,196.412];
	_this setVectorDirAndUp [[-0.888596,0.45869,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer226) then {
	_item129 = createSimpleObject ["Land_Pallets_stack_F",[1611.44,11634.8,201.311]];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [1611.44,11634.8,201.741];
	_this setVectorDirAndUp [[-0.639707,-0.768619,0.000662426],[0.00103552,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item4 = objNull;
if (_layer226) then {
	_item4 = createVehicle ["UK3CB_Sten_Equipbox_Opfor",[1610.51,11633.1,3.707],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [1610.51,11633.1,198.701];
	_this setVectorDirAndUp [[-0.346919,-0.937895,0.000913813],[0.00102979,0.000593412,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this,"[[[[""UK3CB_Sten""],[10]],[[""UK3CB_Sten_34Rnd_Magazine_G"",""UK3CB_Sten_34Rnd_Magazine_GT""],[99,99]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item6 = objNull;
if (_layerRoot) then {
	_item6 = createVehicle ["ACE_medicalSupplyCrate_advanced",[1615.7,11639.4,3.93225],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [1615.7,11639.4,198.305];
	_this setVectorDirAndUp [[-0.419183,-0.907902,0.000409358],[0.000976562,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[""ACE_fieldDressing"",""ACE_packingBandage"",""ACE_elasticBandage"",""ACE_tourniquet"",""ACE_splint"",""ACE_morphine"",""ACE_adenosine"",""ACE_epinephrine"",""ACE_plasmaIV"",""ACE_plasmaIV_500"",""ACE_plasmaIV_250"",""ACE_salineIV"",""ACE_salineIV_500"",""ACE_salineIV_250"",""ACE_bloodIV"",""ACE_bloodIV_500"",""ACE_bloodIV_250"",""ACE_quikclot"",""ACE_personalAidKit"",""ACE_surgicalKit"",""ACE_bodyBag""],[25,25,25,15,15,15,15,15,7,7,7,7,7,7,7,7,7,20,3,2,5]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item0 = objNull;
if (_layerRoot) then {
	_item0 = createVehicle ["GunrackTK_EP1",[1611.46,11637.6,3.908],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [1611.46,11637.6,198.675];
	_this setVectorDirAndUp [[0.926817,-0.375513,-0.000731596],[0.00102979,0.000593412,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item1 = objNull;
if (_layerRoot) then {
	_item1 = createVehicle ["GunrackTK_EP1",[1616.05,11635.5,3.84801],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [1616.05,11635.5,198.671];
	_this setVectorDirAndUp [[0.922477,-0.386051,-0.000720874],[0.00102979,0.000593412,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item2 = objNull;
if (_layerRoot) then {
	_item2 = createVehicle ["GunrackTK_EP1",[1614.29,11631.4,3.68401],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [1614.29,11631.4,198.674];
	_this setVectorDirAndUp [[0.922477,-0.386051,-0.000879425],[0.00109941,0.000349066,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item227 = objNull;
if (_layerRoot) then {
	_item227 = createVehicle ["AmmoCrate_NoInteractive_",[1613.61,11637.4,4.67799],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_objects pushback _this;
	_objectIDs pushback 227;
	_this setPosWorld [1613.61,11637.4,199.21];
	_this setVectorDirAndUp [[-0.380408,-0.924818,0.00094054],[0.00102979,0.000593412,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item230 = objNull;
if (_layerRoot) then {
	_item230 = createVehicle ["Land_Camping_Light_F",[1614.32,11637.2,4.66583],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [1614.32,11637.2,199.106];
	_this setVectorDirAndUp [[0,1,-0.00059802],[0.0010358,0.00059802,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item233 = objNull;
if (_layerRoot) then {
	_item233 = createVehicle ["Land_InfoStand_V1_F",[1617.27,11640.1,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [1617.26,11640.1,194.979];
	_this setVectorDirAndUp [[-0.438649,-0.898604,-0.00992516],[-0.0127929,-0.00479926,0.999907]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item16 = objNull;
if (_layer15) then {
	_item16 = createTrigger ["EmptyDetectorArea10x10",[1658.3,11641,0],true];
	_this = _item16;
	_triggers pushback _this;
	_triggerIDs pushback 16;
	_item16 setPosATL [1658.3,11641,0];
	_this setTriggerArea [5.37,8.581,120.322,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{Gate2 animate [""Door_1_rot"", 1]}","call{Gate2 animate [""Door_1_rot"", 0]}"];
};

private _item18 = objNull;
if (_layer15) then {
	_item18 = createTrigger ["EmptyDetectorArea10x10",[1619.68,11685.4,0],true];
	_this = _item18;
	_triggers pushback _this;
	_triggerIDs pushback 18;
	_item18 setPosATL [1619.68,11685.4,0];
	_this setTriggerArea [5.37,8.581,212.058,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{Gate3 animate [""Door_1_rot"", 1]}","call{Gate3 animate [""Door_1_rot"", 0]}"];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item159;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-1"] call CBA_fnc_setCallsign;
	     // if (!is3DEN && !(["","ColorCIV","Alpha 1-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorCIV","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorCIV","Alpha 1-1",true]'];          ["","ColorCIV","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorCIV","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorCIV","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item160;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-2"] call CBA_fnc_setCallsign;
	     // if (!is3DEN && !(["","ColorCIV","Alpha 1-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorCIV","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorCIV","Alpha 1-2",true]'];          ["","ColorCIV","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorCIV","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorCIV","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item161;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	     // if (!is3DEN && !(["","ColorEAST","Alpha 1-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorEAST","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorEAST","Alpha 1-2",true]'];          ["","ColorEAST","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorEAST","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorEAST","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item213;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 2-5"] call CBA_fnc_setCallsign;
	   //   if (!is3DEN && !(["","ColorEAST","Alpha 2-5",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorEAST","Alpha 2-5",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorEAST","Alpha 2-5",true]'];          ["","ColorEAST","Alpha 2-5",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorEAST","Alpha 2-5",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorEAST","Alpha 2-5",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item232 = objNull;
if (_layerRoot) then {
	_item232 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[1618.66,11646.3,0],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_logics pushback _this;
	_logicIDs pushback 232;
	_this setPosWorld [1618.66,11646.3,194.431];
	_this setVectorDirAndUp [[-0.422816,-0.906212,-0.00251004],[-0.0127979,0.00320161,0.999913]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer226) then {missionNamespace setVariable ["BASE_GUER_Layer 2",[[_item24,_item27,_item28,_item167,_item168,_item154,_item158,_item3,_item156,_item5,_item155,_item20,_item21,_item22,_item23,_item25,_item26,_item163,_item164,_item165,_item166,_item76,_item157,_item74,_item153,_item225,_item39,_item40,_item41,_item42,_item43,_item44,_item49,_item66,_item67,_item68,_item73,_item105,_item106,_item107,_item108,_item109,_item124,_item125,_item147,_item148,_item149,_item38,_item48,_item62,_item63,_item64,_item65,_item99,_item100,_item101,_item102,_item103,_item104,_item121,_item122,_item123,_item141,_item142,_item143,_item144,_item145,_item146,_item9,_item10,_item11,_item12,_item34,_item35,_item36,_item37,_item47,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item71,_item72,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item29,_item30,_item31,_item32,_item33,_item45,_item46,_item50,_item51,_item52,_item53,_item54,_item69,_item70,_item77,_item78,_item79,_item80,_item81,_item111,_item112,_item113,_item130,_item131,_item110,_item126,_item127,_item128,_item150,_item151,_item152,_item75,_item129,_item4],[]]];};
if (_layer15) then {missionNamespace setVariable ["BASE_GUER_Auto Open Bar Gate",[[_item16,_item17,_item18,_item19],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item0) then {
		this = _item0;
		call{arsenals pushBack this};
	};
	if !(isnull _item1) then {
		this = _item1;
		call{arsenals pushBack this};
	};
	if !(isnull _item2) then {
		this = _item2;
		call{arsenals pushBack this};
	};
	if !(isnull _item227) then {
		this = _item227;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
