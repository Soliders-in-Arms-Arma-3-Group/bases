// Export of 'favpo%20island%20military%20base.fapovo' by Bass on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer665 = (_allWhitelisted || {"shoothouse pit" in _layerWhiteList}) && {!("shoothouse pit" in _layerBlackList)};
private _layer663 = (_allWhitelisted || {"repair station_1" in _layerWhiteList}) && {!("repair station_1" in _layerBlackList)};
private _layer660 = (_allWhitelisted || {"bargate_3" in _layerWhiteList}) && {!("bargate_3" in _layerBlackList)};
private _layer885 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer643 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer190 = (_allWhitelisted || {"bargate_1" in _layerWhiteList}) && {!("bargate_1" in _layerBlackList)};
private _layer414 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer125 = (_allWhitelisted || {"hospital #o" in _layerWhiteList}) && {!("hospital #o" in _layerBlackList)};
private _layer0 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer11 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item897 = "";
if (_layerRoot) then {
	_item897 = createMarker ["Main Base",[8270.52,8295.32,0]];
	_this = _item897;
	_markers pushback _this;
	_markerIDs pushback 897;
	_this setMarkerType "mil_flag";
	_this setMarkerText "Main Base";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorBlue";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item149 = grpNull;
if (_layerRoot) then {
	_item149 = createGroup west;
	_this = _item149;
	_groups pushback _this;
	_groupIDs pushback 149;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item110 = objNull;
if (_layer125) then {
	_item110 = createVehicle ["TK_WarfareBFieldhHospital_Base_EP1",[8297.4,8294.51,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [8297.4,8294.51,81.6521];
	_this setVectorDirAndUp [[-0.0279613,-0.999609,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item148 = objNull;
if (_layerRoot) then {
	_item148 = createVehicle ["Land_PortableLight_double_F",[8285.75,8282.93,-0.00102997],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [8285.75,8282.93,83.0794];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item150 = objNull;
if (_layerRoot) then {
	_item150 = _item149 createUnit ["B_soldier_AR_F",[8281.79,8318.33,0],[],0,"CAN_COLLIDE"];
	_item149 selectLeader _item150;
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [8281.79,8318.38,81.5944];
	_this setVectorDirAndUp [[-0.993518,-0.113672,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Thomas Miller";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
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

private _item152 = objNull;
if (_layerRoot) then {
	_item152 = _item149 createUnit ["B_soldier_M_F",[8279.55,8318.41,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [8279.55,8318.46,81.5882];
	_this setVectorDirAndUp [[0.999158,-0.0410386,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Montgomery Wilson";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.01;;
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

private _item154 = objNull;
if (_layerRoot) then {
	_item154 = _item149 createUnit ["B_Soldier_F",[8288.22,8274.34,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [8288.22,8274.39,82.0695];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Archie Smith";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["GUARD",["inbasemoves_handsbehindback1","inbasemoves_handsbehindback2"],false,true] # 0 isEqualTo '') then      {        ["GUARD",["inbasemoves_handsbehindback1","inbasemoves_handsbehindback2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item166 = objNull;
if (_layerRoot) then {
	_item166 = _item149 createUnit ["B_sniper_F",[8271.32,8267.32,8.793],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [8271.32,8267.37,90.8094];
	_this setVectorDirAndUp [[-0.233785,0.972288,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Quinton Clark";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male10ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_HIGH2",["hubsittinghighb_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_HIGH2",["hubsittinghighb_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item164 = objNull;
if (_layerRoot) then {
	_item164 = _item149 createUnit ["B_Sharpshooter_F",[8273.78,8282.5,8.909],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [8273.78,8282.55,90.9105];
	_this setVectorDirAndUp [[0.920232,0.391374,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Dylan Wright";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male04ENG";;
	_this setpitch 0.99;;
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

private _item155 = objNull;
if (_layerRoot) then {
	_item155 = _item149 createUnit ["B_Soldier_F",[8292.15,8274.44,0],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [8292.15,8274.49,82.028];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Jamie Edwards";;
	_this setface "AfricanHead_03";;
	_this setspeaker "Male09ENG";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["GUARD",["inbasemoves_handsbehindback1","inbasemoves_handsbehindback2"],false,true] # 0 isEqualTo '') then      {        ["GUARD",["inbasemoves_handsbehindback1","inbasemoves_handsbehindback2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item174 = objNull;
if (_layerRoot) then {
	_item174 = _item149 createUnit ["B_Soldier_F",[8284.68,8283.99,0],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [8284.68,8284.04,81.9896];
	_this setVectorDirAndUp [[-0.418232,-0.90834,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "William O'Connor";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male07ENG";;
	_this setpitch 0.95;;
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

private _item176 = objNull;
if (_layerRoot) then {
	_item176 = _item149 createUnit ["B_Soldier_F",[8269.24,8287.69,2.724],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [8269.24,8287.74,84.6748];
	_this setVectorDirAndUp [[0.483344,-0.875431,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "George O'Brien";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male07ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_HIGH1",["hubsittinghigha_idle1"],false,true] # 0 isEqualTo '') then      {        ["SIT_HIGH1",["hubsittinghigha_idle1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item160 = objNull;
if (_layerRoot) then {
	_item160 = createVehicle ["Land_PortableCabinet_01_medical_F",[8301.23,8293.04,0.100006],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [8301.23,8293.04,82.518];
	_this setVectorDirAndUp [[0.99664,-0.0819011,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
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

private _item162 = objNull;
if (_layerRoot) then {
	_item162 = createVehicle ["SatelliteAntenna_01_Small_Mounted_Black_F",[8275.08,8283.12,8.27261],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [8275.08,8283.12,90.7761];
	_this setVectorDirAndUp [[0.998928,0.0462824,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item184 = objNull;
if (_layerRoot) then {
	_item184 = createVehicle ["Land_CampingChair_V2_F",[8288.73,8278.02,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [8288.73,8278.03,82.5294];
	_this setVectorDirAndUp [[0,0.999992,-0.00399675],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
};

private _item185 = objNull;
if (_layerRoot) then {
	_item185 = createVehicle ["Land_CampingChair_V2_F",[8289.69,8277.97,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [8289.7,8277.97,82.5252];
	_this setVectorDirAndUp [[0,0.999968,-0.00799344],[0.00799344,0.00799319,0.999936]];
	0 remoteExec ['setFeatureType', _this];
};

private _item192 = objNull;
if (_layer190 && _layer414) then {
	_item192 = createVehicle ["Land_BarGate_F",[8275.32,8320.7,0],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [8275.32,8320.7,85.4234];
	_this setVectorDirAndUp [[-0.0161333,0.992763,-0.119],[0.00800059,0.11914,0.992845]];
	gate_1 = _this;
	_this setVehicleVarName "gate_1";
	0 remoteExec ['setFeatureType', _this];
};

private _item193 = objNull;
if (_layer414) then {
	_item193 = createVehicle ["Land_RepairDepot_01_tan_F",[8358.91,8260.1,-0.0015564],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [8358.91,8260.01,84.0884];
	_this setVectorDirAndUp [[0.006149,0.999334,0.0359773],[0,-0.035978,0.999353]];
	repStation_1 = _this;
	_this setVehicleVarName "repStation_1";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item415 = objNull;
if (_layer643) then {
	_item415 = createVehicle ["Land_InfoStand_V1_F",[8261.68,8300.77,-2.28882e-005],[],0,"CAN_COLLIDE"];
	_this = _item415;
	_objects pushback _this;
	_objectIDs pushback 415;
	_this setPosWorld [8261.68,8300.77,82.3088];
	_this setVectorDirAndUp [[-0.999834,-0.016391,-0.00799237],[-0.00799344,0,0.999968]];
	hq_button_1 = _this;
	_this setVehicleVarName "hq_button_1";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item416 = objNull;
if (_layer643) then {
	_item416 = createVehicle ["B_supplyCrate_F",[8263.52,8290.05,-0.000389099],[],0,"CAN_COLLIDE"];
	_this = _item416;
	_objects pushback _this;
	_objectIDs pushback 416;
	_this setPosWorld [8263.5,8290.06,82.7098];
	_this setVectorDirAndUp [[-0.999591,0.00564955,-0.0280329],[-0.0279873,0.00799776,0.999576]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item644 = objNull;
if (_layer643) then {
	_item644 = createVehicle ["B_supplyCrate_F",[8263.69,8293.82,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item644;
	_objects pushback _this;
	_objectIDs pushback 644;
	_this setPosWorld [8263.67,8293.83,82.6848];
	_this setVectorDirAndUp [[-0.998028,-0.0583092,-0.0232531],[-0.0239912,0.0119916,0.99964]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item645 = objNull;
if (_layer643) then {
	_item645 = createVehicle ["B_supplyCrate_F",[8263.62,8297.56,0],[],0,"CAN_COLLIDE"];
	_this = _item645;
	_objects pushback _this;
	_objectIDs pushback 645;
	_this setPosWorld [8263.59,8297.56,82.6634];
	_this setVectorDirAndUp [[0.998164,0.0537383,0.027949],[-0.0279894,0,0.999608]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item646 = objNull;
if (_layerRoot) then {
	_item646 = createVehicle ["Land_CampingChair_V2_F",[8290.6,8277.99,0],[],0,"CAN_COLLIDE"];
	_this = _item646;
	_objects pushback _this;
	_objectIDs pushback 646;
	_this setPosWorld [8290.6,8278,82.5178];
	_this setVectorDirAndUp [[0,0.999968,-0.00799344],[0.00799344,0.00799319,0.999936]];
	0 remoteExec ['setFeatureType', _this];
};

private _item647 = objNull;
if (_layerRoot) then {
	_item647 = createVehicle ["Land_CampingChair_V2_F",[8291.56,8278.01,0],[],0,"CAN_COLLIDE"];
	_this = _item647;
	_objects pushback _this;
	_objectIDs pushback 647;
	_this setPosWorld [8291.57,8278.01,82.5099];
	_this setVectorDirAndUp [[0,0.999968,-0.00799344],[0.00799344,0.00799319,0.999936]];
	0 remoteExec ['setFeatureType', _this];
};

private _item648 = objNull;
if (_layerRoot) then {
	_item648 = createVehicle ["Land_CampingChair_V2_F",[8292.55,8278.01,0],[],0,"CAN_COLLIDE"];
	_this = _item648;
	_objects pushback _this;
	_objectIDs pushback 648;
	_this setPosWorld [8292.55,8278.01,82.5065];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item649 = objNull;
if (_layerRoot) then {
	_item649 = createVehicle ["Land_CampingChair_V2_F",[8292.62,8280,0],[],0,"CAN_COLLIDE"];
	_this = _item649;
	_objects pushback _this;
	_objectIDs pushback 649;
	_this setPosWorld [8292.62,8280,82.5065];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item650 = objNull;
if (_layerRoot) then {
	_item650 = createVehicle ["Land_CampingChair_V2_F",[8291.63,8280.01,0],[],0,"CAN_COLLIDE"];
	_this = _item650;
	_objects pushback _this;
	_objectIDs pushback 650;
	_this setPosWorld [8291.63,8280.01,82.5065];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item651 = objNull;
if (_layerRoot) then {
	_item651 = createVehicle ["Land_CampingChair_V2_F",[8290.64,8279.98,0],[],0,"CAN_COLLIDE"];
	_this = _item651;
	_objects pushback _this;
	_objectIDs pushback 651;
	_this setPosWorld [8290.64,8279.98,82.5065];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item652 = objNull;
if (_layerRoot) then {
	_item652 = createVehicle ["Land_CampingChair_V2_F",[8289.64,8279.99,0],[],0,"CAN_COLLIDE"];
	_this = _item652;
	_objects pushback _this;
	_objectIDs pushback 652;
	_this setPosWorld [8289.64,8279.99,82.5094];
	_this setVectorDirAndUp [[0,0.999968,-0.00799344],[0.00799344,0.00799319,0.999936]];
	0 remoteExec ['setFeatureType', _this];
};

private _item653 = objNull;
if (_layerRoot) then {
	_item653 = createVehicle ["Land_CampingChair_V2_F",[8288.73,8279.96,0],[],0,"CAN_COLLIDE"];
	_this = _item653;
	_objects pushback _this;
	_objectIDs pushback 653;
	_this setPosWorld [8288.73,8279.96,82.5169];
	_this setVectorDirAndUp [[0,0.999968,-0.00799344],[0.00799344,0.00799319,0.999936]];
	0 remoteExec ['setFeatureType', _this];
};

private _item654 = objNull;
if (_layerRoot) then {
	_item654 = createVehicle ["Land_MapBoard_F",[8289.97,8273.88,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item654;
	_objects pushback _this;
	_objectIDs pushback 654;
	_this setPosWorld [8289.98,8273.92,83.0387];
	_this setVectorDirAndUp [[-0.0533952,-0.997911,0.0363538],[0.00800059,0.0359771,0.999321]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
};

private _item655 = objNull;
if (_layerRoot) then {
	_item655 = createVehicle ["Land_PaperBox_01_small_open_brown_F",[8288.48,8263.51,0],[],0,"CAN_COLLIDE"];
	_this = _item655;
	_objects pushback _this;
	_objectIDs pushback 655;
	_this setPosWorld [8288.48,8263.51,81.6729];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item664 = objNull;
if (_layer663 && _layer885) then {
	_item664 = createVehicle ["Land_RepairDepot_01_tan_F",[8208.36,8130.54,0],[],0,"CAN_COLLIDE"];
	_this = _item664;
	_objects pushback _this;
	_objectIDs pushback 664;
	_this setPosWorld [8208.38,8130.54,83.8711];
	_this setVectorDirAndUp [[0.242558,0.970135,-0.00193893],[0.00799344,0,0.999968]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item886 = objNull;
if (_layerRoot) then {
	_item886 = createVehicle ["Land_WoodenCrate_01_stack_x3_F",[8273.43,8284.07,0],[],0,"CAN_COLLIDE"];
	_this = _item886;
	_objects pushback _this;
	_objectIDs pushback 886;
	_this setPosWorld [8273.43,8284.07,82.7079];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item887 = objNull;
if (_layerRoot) then {
	_item887 = createVehicle ["Land_WoodenCrate_01_stack_x3_F",[8273.46,8285.91,0],[],0,"CAN_COLLIDE"];
	_this = _item887;
	_objects pushback _this;
	_objectIDs pushback 887;
	_this setPosWorld [8273.46,8285.91,82.7006];
	_this setVectorDirAndUp [[0,0.999968,-0.00799352],[0,0.00799352,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item889 = objNull;
if (_layerRoot) then {
	_item889 = createVehicle ["Land_Laptop_Intel_01_F",[8274.6,8282.97,9.61763],[],0,"CAN_COLLIDE"];
	_this = _item889;
	_objects pushback _this;
	_objectIDs pushback 889;
	_this setPosWorld [8274.6,8282.97,91.7737];
	_this setVectorDirAndUp [[-0.999978,0.0065703,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\missions_f_oldman\data\img\screens\csatntb_co.paa"];
};

private _item891 = objNull;
if (_layerRoot) then {
	_item891 = createVehicle ["Intel_File1_F",[8288.3,8263.49,0],[],0,"CAN_COLLIDE"];
	_this = _item891;
	_objects pushback _this;
	_objectIDs pushback 891;
	_this setPosWorld [8288.3,8263.49,81.4686];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item892 = objNull;
if (_layerRoot) then {
	_item892 = createVehicle ["acex_intelitems_document",[8288.51,8263.5,0],[],0,"CAN_COLLIDE"];
	_this = _item892;
	_objects pushback _this;
	_objectIDs pushback 892;
	_this setPosWorld [8288.51,8263.5,81.4674];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,""] call acex_intelitems_fnc_setObjectData;
};

private _item893 = objNull;
if (_layerRoot) then {
	_item893 = createVehicle ["Land_HelipadSquare_F",[8311.89,8219.06,0],[],0,"CAN_COLLIDE"];
	_this = _item893;
	_objects pushback _this;
	_objectIDs pushback 893;
	_this setPosWorld [8311.89,8219.06,81.48];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item894 = objNull;
if (_layerRoot) then {
	_item894 = createVehicle ["Land_HelipadSquare_F",[8338.08,8220.06,0],[],0,"CAN_COLLIDE"];
	_this = _item894;
	_objects pushback _this;
	_objectIDs pushback 894;
	_this setPosWorld [8338.08,8220.06,81.53];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item895 = objNull;
if (_layerRoot) then {
	_item895 = createVehicle ["Land_HelipadSquare_F",[8379.05,8219.65,0],[],0,"CAN_COLLIDE"];
	_this = _item895;
	_objects pushback _this;
	_objectIDs pushback 895;
	_this setPosWorld [8379.05,8219.65,81.79];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item188 = objNull;
if (_layer414) then {
	_item188 = createTrigger ["EmptyDetectorArea10x10",[8297.37,8294.77,0.100006],false];
	_this = _item188;
	_triggers pushback _this;
	_triggerIDs pushback 188;
	_item188 setPosATL [8297.37,8294.77,0.100006];
	_this setTriggerArea [6,6,90.5385,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item661 = objNull;
if (_layer660 && _layer885) then {
	_item661 = createTrigger ["EmptyDetectorArea10x10",[8276.78,8318.35,-7.62939e-006],true];
	_this = _item661;
	_triggers pushback _this;
	_triggerIDs pushback 661;
	_item661 setPosATL [8276.78,8318.35,-7.62939e-006];
	_this setTriggerArea [5,20,-89.426,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item149;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && (["","ColorWEST","HQ",true] # 0 != '') then      {        [_this, ["","ColorWEST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ",true]'];          ["","ColorWEST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item418 = objNull;
if (_layer643) then {
	_item418 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8264.01,8305.27,0],[],0,"CAN_COLLIDE"];
	_this = _item418;
	_logics pushback _this;
	_logicIDs pushback 418;
	_this setPosWorld [8264.01,8305.27,81.8002];
	_this setVectorDirAndUp [[0.803865,0.594595,0.0160786],[-0.0199977,0,0.9998]];
	spawnPos_1 = _this;
	_this setVehicleVarName "spawnPos_1";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer663) then {missionNamespace setVariable ["favpo%20island%20military%20base_Repair Station_1",[[_item664],[]]];};
if (_layer660) then {missionNamespace setVariable ["favpo%20island%20military%20base_bargate_3",[[_item661],[]]];};
if (_layer885) then {missionNamespace setVariable ["favpo%20island%20military%20base_SIA ZGM Essentials",[[_item661,_item664],[]]];};
if (_layer643) then {missionNamespace setVariable ["favpo%20island%20military%20base_SIA ZGM Essentials",[[_item415,_item416,_item418,_item644,_item645],[]]];};
if (_layer190) then {missionNamespace setVariable ["favpo%20island%20military%20base_bargate_1",[[_item192],[]]];};
if (_layer414) then {missionNamespace setVariable ["favpo%20island%20military%20base_SIA ZGM Essentials",[[_item188,_item192,_item193],[]]];};
if (_layer125) then {missionNamespace setVariable ["favpo%20island%20military%20base_Hospital #O",[[_item110],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item416) then {
		this = _item416;
		call{arsenals pushBack this};
	};
	if !(isnull _item644) then {
		this = _item644;
		call{arsenals pushBack this};
	};
	if !(isnull _item645) then {
		this = _item645;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
