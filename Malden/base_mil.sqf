// Export of 'temp.Malden' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer421 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer409 = (_allWhitelisted || {"spawn medic crate" in _layerWhiteList}) && {!("spawn medic crate" in _layerBlackList)};
private _layer400 = (_allWhitelisted || {"ace heal trigger" in _layerWhiteList}) && {!("ace heal trigger" in _layerBlackList)};
private _layer390 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer110 = (_allWhitelisted || {"protection zones" in _layerWhiteList}) && {!("protection zones" in _layerBlackList)};
private _layer20 = (_allWhitelisted || {"home" in _layerWhiteList}) && {!("home" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item80 = "";
if (_layerRoot) then {
	_item80 = createMarker ["marker_0",[8167.11,10117.1,0]];
	_this = _item80;
	_markers pushback _this;
	_markerIDs pushback 80;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Depot";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item81 = "";
if (_layerRoot) then {
	_item81 = createMarker ["marker_1",[8199.22,10173.7,0]];
	_this = _item81;
	_markers pushback _this;
	_markerIDs pushback 81;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Service";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item82 = "";
if (_layerRoot) then {
	_item82 = createMarker ["marker_2",[8113.37,10083.9,0]];
	_this = _item82;
	_markers pushback _this;
	_markerIDs pushback 82;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Medical";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item83 = "";
if (_layerRoot) then {
	_item83 = createMarker ["marker_3",[7284.37,10504.1,0]];
	_this = _item83;
	_markers pushback _this;
	_markerIDs pushback 83;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Weapon Range";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item84 = "";
if (_layerRoot) then {
	_item84 = createMarker ["marker_4",[7495.81,10565,0]];
	_this = _item84;
	_markers pushback _this;
	_markerIDs pushback 84;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Shoot House";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item333 = "";
if (_layerRoot) then {
	_item333 = createMarker ["fr_at_m1",[7688.93,10854.5,0]];
	_this = _item333;
	_markers pushback _this;
	_markerIDs pushback 333;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};

private _item334 = "";
if (_layerRoot) then {
	_item334 = createMarker ["fr_at_m2",[7769.46,10812,0]];
	_this = _item334;
	_markers pushback _this;
	_markerIDs pushback 334;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};

private _item335 = "";
if (_layerRoot) then {
	_item335 = createMarker ["fr_at_m3",[7770.89,10728.4,0]];
	_this = _item335;
	_markers pushback _this;
	_markerIDs pushback 335;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};

private _item336 = "";
if (_layerRoot) then {
	_item336 = createMarker ["marker_5",[7566.61,10643.6,0]];
	_this = _item336;
	_markers pushback _this;
	_markerIDs pushback 336;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "AT Range";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item344 = "";
if (_layerRoot) then {
	_item344 = createMarker ["marker_6",[8112.25,10153.2,0]];
	_this = _item344;
	_markers pushback _this;
	_markerIDs pushback 344;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Armory";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item345 = "";
if (_layerRoot) then {
	_item345 = createMarker ["marker_7",[8131.69,10123.7,0]];
	_this = _item345;
	_markers pushback _this;
	_markerIDs pushback 345;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "HQ";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item346 = "";
if (_layerRoot) then {
	_item346 = createMarker ["marker_8",[7947.38,10120.1,0]];
	_this = _item346;
	_markers pushback _this;
	_markerIDs pushback 346;
	_this setMarkerType "b_hq";
	_this setMarkerText "AB Michel";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWEST";
};

private _item406 = "";
if (_layerRoot) then {
	_item406 = createMarker ["respawn_west",[8110.12,10138.6,0]];
	_this = _item406;
	_markers pushback _this;
	_markerIDs pushback 406;
	_this setMarkerType "Empty";
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

private _item1 = objNull;
if (_layerRoot) then {
	_item1 = _item0 createUnit ["rhsusf_army_ocp_officer",[8126.82,10127,0.326],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [8126.82,10127.1,29.6894];
	_this setVectorDirAndUp [[0.140901,0.990024,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_d",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Finlay Burr";;
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

private _item2 = objNull;
if (_layerRoot) then {
	_item2 = _item0 createUnit ["rhsusf_army_ocp_officer",[8139.42,10126.8,0.627903],[],0,"CAN_COLLIDE"];
	_item0 selectLeader _item2;
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [8139.42,10126.8,29.6787];
	_this setVectorDirAndUp [[-0.140901,-0.990024,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_d",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Alexander Smith";;
	_this setface "WhiteHead_14";;
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

private _item3 = objNull;
if (_layerRoot) then {
	_item3 = _item0 createUnit ["rhsusf_army_ocp_officer",[8140.54,10126.5,0.643999],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [8140.54,10126.6,29.678];
	_this setVectorDirAndUp [[-0.623402,-0.781901,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_d",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ethan Wilson";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.02;;
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

private _item4 = objNull;
if (_layerRoot) then {
	_item4 = _item0 createUnit ["rhsusf_army_ocp_officer",[8126.8,10110.9,0.357754],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [8126.8,10110.9,29.6894];
	_this setVectorDirAndUp [[-0.968968,0.247185,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_d",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Jacob Hughes";;
	_this setface "WhiteHead_19";;
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

private _item5 = objNull;
if (_layerRoot) then {
	_item5 = _item0 createUnit ["rhsusf_army_ocp_officer",[8030.5,9856.12,12.9153],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [8030.5,9856.17,42.9933];
	_this setVectorDirAndUp [[-0.997306,-0.0733598,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_d",[]],[],[],"H_Beret_02","G_Aviator",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Donnan Scott";;
	_this setface "WhiteHead_11";;
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

private _item6 = objNull;
if (_layerRoot) then {
	_item6 = _item0 createUnit ["rhsusf_usmc_marpat_d_rifleman_m4",[8134.32,10113.9,0.528999],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [8134.32,10113.9,29.6826];
	_this setVectorDirAndUp [[-0.994243,0.107149,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_d",[]],["rhsusf_spc_rifleman",[]],[],"rhsusf_lwh_helmet_marpatd","rhs_googles_clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Andy Clarke";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.01;;
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

private _item7 = objNull;
if (_layerRoot) then {
	_item7 = _item0 createUnit ["rhsusf_usmc_marpat_d_rifleman_m4",[8166.53,9773.74,0],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [8166.53,9773.79,29.3714];
	_this setVectorDirAndUp [[-0.965926,-0.258819,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4_carryhandle_grip3","","rhsusf_acc_anpeq16a","rhsusf_acc_ACOG_USMC",["rhs_mag_30Rnd_556x45_M855_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_FROG01_d",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhs_mag_30Rnd_556x45_M855_Stanag",1,30]]],["rhsusf_spc_rifleman",[["rhs_mag_30Rnd_556x45_M855_Stanag",7,30],["rhs_mag_m67",2,1],["rhs_mag_an_m8hc",1,1]]],[],"rhsusf_lwh_helmet_marpatd","rhs_ess_black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Jack Ryan";;
	_this setface "WhiteHead_19";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.03;;
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
};

private _item8 = objNull;
if (_layerRoot) then {
	_item8 = createSimpleObject ["Land_CampingTable_F",[8117.83,10154.1,29.5693]];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [8117.83,10154.1,29.9808];
	_this setVectorDirAndUp [[0,0.999731,-0.0232136],[0.000771824,0.0232136,0.99973]];
	0 remoteExec ['setFeatureType', _this];
};

private _item9 = objNull;
if (_layerRoot) then {
	_item9 = createSimpleObject ["Land_CampingTable_F",[8115.87,10154.1,29.5939]];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [8115.87,10154.1,30.0053];
	_this setVectorDirAndUp [[0,0.999738,-0.0229009],[0.0164857,0.0228978,0.999602]];
	0 remoteExec ['setFeatureType', _this];
};

private _item10 = objNull;
if (_layerRoot) then {
	_item10 = createSimpleObject ["Land_CampingTable_F",[8113.92,10154.1,29.6258]];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [8113.92,10154.1,30.0371];
	_this setVectorDirAndUp [[0,0.999738,-0.0229009],[0.0164857,0.0228978,0.999602]];
	0 remoteExec ['setFeatureType', _this];
};

private _item11 = objNull;
if (_layerRoot) then {
	_item11 = createSimpleObject ["Land_CampingTable_F",[8117.85,10157.1,29.5717]];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [8117.85,10157.1,29.9831];
	_this setVectorDirAndUp [[0,0.99972,0.0236683],[0,-0.0236683,0.99972]];
	0 remoteExec ['setFeatureType', _this];
};

private _item12 = objNull;
if (_layerRoot) then {
	_item12 = createSimpleObject ["Land_CampingTable_F",[8115.89,10157.1,29.5765]];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [8115.89,10157.1,29.9879];
	_this setVectorDirAndUp [[0,0.999712,0.0239834],[0.0155441,-0.0239805,0.999592]];
	0 remoteExec ['setFeatureType', _this];
};

private _item13 = objNull;
if (_layerRoot) then {
	_item13 = createSimpleObject ["Land_CampingTable_F",[8113.94,10157.1,29.607]];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [8113.94,10157.1,30.0184];
	_this setVectorDirAndUp [[0,0.999712,0.0239834],[0.0155441,-0.0239805,0.999592]];
	0 remoteExec ['setFeatureType', _this];
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createSimpleObject ["Land_Pallets_stack_F",[8132.01,10139.3,29.6835]];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [8132.01,10139.3,30.1131];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item15 = objNull;
if (_layerRoot) then {
	_item15 = createVehicle ["Misc_palletsfoiled_heap",[8125.5,10158.2,0.316999],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [8125.5,10158.2,30.7582];
	_this setVectorDirAndUp [[-8.74064e-008,-0.999727,-0.0233508],[-0.0193545,-0.0233464,0.99954]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item16 = objNull;
if (_layerRoot) then {
	_item16 = createVehicle ["Land_Pallet_MilBoxes_F",[8108.52,10151.4,0.108],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [8108.52,10151.4,30.0945];
	_this setVectorDirAndUp [[0,0.99996,-0.00891851],[0.0101057,0.00891806,0.999909]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item17 = objNull;
if (_layerRoot) then {
	_item17 = createVehicle ["Land_PortableLight_02_single_folded_yellow_F",[8124.4,10159.8,1.26353],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [8124.4,10159.8,30.7247];
	_this setVectorDirAndUp [[0.707107,0.707107,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item18 = objNull;
if (_layerRoot) then {
	_item18 = createVehicle ["Land_PortableLight_02_single_yellow_F",[8126.7,10150.6,0.303976],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [8126.7,10150.6,30.1832];
	_this setVectorDirAndUp [[0.965926,-0.258819,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item19 = objNull;
if (_layerRoot) then {
	_item19 = createVehicle ["Land_PortableLight_02_single_yellow_F",[8103.16,10160.5,0.115],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [8103.16,10160.5,30.1998];
	_this setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item21 = objNull;
if (_layer20) then {
	_item21 = createSimpleObject ["Land_OfficeChair_01_F",[8128.01,10122.4,29.6867]];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [8128.01,10122.4,30.3611];
	_this setVectorDirAndUp [[-8.74227e-008,-1,7.39364e-011],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item22 = objNull;
if (_layer20) then {
	_item22 = createVehicle ["Land_CampingChair_V2_F",[8136.01,10109.2,0.583904],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [8136.01,10109.2,30.1866];
	_this setVectorDirAndUp [[-0.866025,-0.5,0.000732427],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer20) then {
	_item23 = createVehicle ["Land_CampingChair_V2_F",[8135.77,10110.8,0.572704],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [8135.77,10110.8,30.1868];
	_this setVectorDirAndUp [[-1,1.19249e-008,0.000845734],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer20) then {
	_item24 = createVehicle ["Land_CampingChair_V2_F",[8135.79,10111.9,0.569839],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [8135.79,10111.9,30.1868];
	_this setVectorDirAndUp [[-1,1.19249e-008,0.000845734],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer20) then {
	_item25 = createVehicle ["Land_CampingChair_V2_F",[8135.82,10112.8,0.567877],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [8135.82,10112.8,30.1868];
	_this setVectorDirAndUp [[-1,1.19249e-008,0.000845734],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer20) then {
	_item26 = createVehicle ["Land_CampingChair_V2_F",[8137.21,10119.7,0.595753],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [8137.21,10119.7,30.1856];
	_this setVectorDirAndUp [[-1,1.19249e-008,0.000838105],[0.000838105,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer20) then {
	_item27 = createVehicle ["Land_CampingChair_V2_F",[8137.23,10120.7,0.595444],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [8137.23,10120.7,30.1856];
	_this setVectorDirAndUp [[-1,1.19249e-008,0.000838105],[0.000838105,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item28 = objNull;
if (_layer20) then {
	_item28 = createSimpleObject ["Land_Document_01_F",[8138.32,10124.7,30.5651]];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [8138.32,10124.7,30.5704];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item29 = objNull;
if (_layer20) then {
	_item29 = createVehicle ["Misc_palletsfoiled",[8126.07,10132.2,0.306999],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [8126.07,10132.2,30.3277];
	_this setVectorDirAndUp [[0,1,0],[0.000838105,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer20) then {
	_item30 = createSimpleObject ["Land_OfficeCabinet_02_F",[8136.17,10117.8,29.68]];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [8136.17,10117.8,30.4605];
	_this setVectorDirAndUp [[-8.74227e-008,-1,7.39364e-011],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item31 = objNull;
if (_layer20) then {
	_item31 = createSimpleObject ["Land_OfficeChair_01_F",[8138.61,10123.5,29.6779]];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [8138.61,10123.5,30.3523];
	_this setVectorDirAndUp [[-0.5,-0.866025,0.000422867],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item32 = objNull;
if (_layer20) then {
	_item32 = createSimpleObject ["Land_OfficeChair_01_F",[8139.41,10126.9,29.6773]];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [8139.41,10126.9,30.3517];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item33 = objNull;
if (_layer20) then {
	_item33 = createSimpleObject ["Land_OfficeChair_01_F",[8126.81,10127,29.6879]];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [8126.81,10127,30.3623];
	_this setVectorDirAndUp [[-0.258819,-0.965926,0.000218892],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item34 = objNull;
if (_layer20) then {
	_item34 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8127.21,10128.1,30.5837]];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [8127.21,10128.1,30.5917];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item35 = objNull;
if (_layer20) then {
	_item35 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8139.94,10125.7,30.573]];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [8139.94,10125.7,30.5809];
	_this setVectorDirAndUp [[-8.74227e-008,-1,7.39364e-011],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item36 = objNull;
if (_layer20) then {
	_item36 = createSimpleObject ["Land_PCSet_01_mouse_F",[8127.52,10128.1,30.5835]];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [8127.52,10128.1,30.6087];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item37 = objNull;
if (_layer20) then {
	_item37 = createSimpleObject ["Land_PCSet_01_mouse_F",[8139.54,10125.7,30.5641]];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [8139.54,10125.7,30.5893];
	_this setVectorDirAndUp [[-8.74227e-008,-1,7.39364e-011],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item38 = objNull;
if (_layer20) then {
	_item38 = createSimpleObject ["Land_PCSet_01_screen_F",[8127.53,10128.4,30.5835]];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [8127.53,10128.4,30.8382];
	_this setVectorDirAndUp [[0.258819,0.965926,-0.000218892],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item39 = objNull;
if (_layer20) then {
	_item39 = createSimpleObject ["Land_PCSet_01_screen_F",[8126.92,10128.4,30.584]];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [8126.92,10128.4,30.8387];
	_this setVectorDirAndUp [[-0.258819,0.965926,0.000218892],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item40 = objNull;
if (_layer20) then {
	_item40 = createSimpleObject ["Land_PCSet_01_screen_F",[8140.13,10125.4,30.5728]];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [8140.13,10125.4,30.8275];
	_this setVectorDirAndUp [[0.258819,-0.965926,-0.000218892],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item41 = objNull;
if (_layer20) then {
	_item41 = createSimpleObject ["Land_PCSet_01_screen_F",[8139.54,10125.4,30.5641]];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [8139.54,10125.4,30.8188];
	_this setVectorDirAndUp [[-0.258819,-0.965926,0.000218892],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item42 = objNull;
if (_layer20) then {
	_item42 = createSimpleObject ["Land_TripodScreen_01_large_sand_F",[8141.4,10111.6,29.6756]];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [8141.4,10111.6,30.7187];
	_this setVectorDirAndUp [[-1,4.88762e-007,0.000845734],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,""];
};

private _item43 = objNull;
if (_layer20) then {
	_item43 = createSimpleObject ["Land_MultiScreenComputer_01_sand_F",[8139.24,10111.4,30.5736]];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [8139.24,10111.4,30.8237];
	_this setVectorDirAndUp [[-1,1.19249e-008,0.000845734],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [1,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
	_this setObjectTextureGlobal [2,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
	_this setObjectTextureGlobal [3,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
};

private _item44 = objNull;
if (_layer20) then {
	_item44 = createSimpleObject ["Land_PortableCabinet_01_bookcase_sand_F",[8125.02,10122.3,29.6893]];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [8125.02,10122.3,30.1073];
	_this setVectorDirAndUp [[-1,1.19249e-008,0.000845734],[0.000845734,0,1]];
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

private _item45 = objNull;
if (_layer20) then {
	_item45 = createSimpleObject ["Land_PortableDesk_01_sand_F",[8140.22,10125.6,29.6766]];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [8140.22,10125.6,30.1205];
	_this setVectorDirAndUp [[0.0261756,0.999657,-2.21376e-005],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_1_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_2_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_3_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_4_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_5_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_6_move_source',0,true]};
	_this animate ['Lid_1_hide_source',1,true];
	_this animate ['Lid_2_hide_source',1,true];
	_this animate ['Wing_L_hide_source',0,true];
	_this animate ['Wing_R_hide_source',0,true];
};

private _item46 = objNull;
if (_layer20) then {
	_item46 = createSimpleObject ["Land_PortableDesk_01_sand_F",[8139.08,10124.7,29.6775]];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [8139.08,10124.7,30.1214];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_1_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_2_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_3_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_4_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_5_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_6_move_source',0,true]};
	_this animate ['Lid_1_hide_source',1,true];
	_this animate ['Lid_2_hide_source',1,true];
	_this animate ['Wing_L_hide_source',0,true];
	_this animate ['Wing_R_hide_source',0,true];
};

private _item47 = objNull;
if (_layer20) then {
	_item47 = createSimpleObject ["Land_PortableDesk_01_sand_F",[8127.26,10128.3,29.6875]];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [8127.26,10128.3,30.1314];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_1_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_2_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_3_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_4_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_5_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_6_move_source',0,true]};
	_this animate ['Lid_1_hide_source',1,true];
	_this animate ['Lid_2_hide_source',1,true];
	_this animate ['Wing_L_hide_source',0,true];
	_this animate ['Wing_R_hide_source',0,true];
};

private _item48 = objNull;
if (_layer20) then {
	_item48 = createSimpleObject ["Land_PortableDesk_01_sand_F",[8127.41,10123.8,29.6873]];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [8127.41,10123.8,30.1311];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_1_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_2_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_3_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_4_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_5_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_6_move_source',0,true]};
	_this animate ['Lid_1_hide_source',1,true];
	_this animate ['Lid_2_hide_source',1,true];
	_this animate ['Wing_L_hide_source',0,true];
	_this animate ['Wing_R_hide_source',0,true];
};

private _item49 = objNull;
if (_layer20) then {
	_item49 = createSimpleObject ["Land_PortableDesk_01_sand_F",[8139.12,10111.4,29.6775]];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [8139.12,10111.4,30.1214];
	_this setVectorDirAndUp [[-1,1.19249e-008,0.000845734],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_1_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_2_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_3_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_4_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_5_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_6_move_source',0,true]};
	_this animate ['Lid_1_hide_source',1,true];
	_this animate ['Lid_2_hide_source',1,true];
	_this animate ['Wing_L_hide_source',0,true];
	_this animate ['Wing_R_hide_source',0,true];
};

private _item50 = objNull;
if (_layer20) then {
	_item50 = createSimpleObject ["Land_PortableGenerator_01_sand_F",[8141.23,10112.7,29.6757]];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [8141.23,10112.7,30.0514];
	_this setVectorDirAndUp [[-0.866025,-0.5,0.000732427],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item51 = objNull;
if (_layer20) then {
	_item51 = createSimpleObject ["Land_PortableServer_01_sand_F",[8141.35,10110.3,29.6756]];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [8141.35,10110.3,29.8487];
	_this setVectorDirAndUp [[1,-4.37114e-008,-0.000845734],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this animateSource ['Lights_Off_Source',0,true];
	_this animateSource ['Server_Move_Source',0,true];
	_this animateSource ['Server_Hide_Source',0,true];
};

private _item52 = objNull;
if (_layer20) then {
	_item52 = createSimpleObject ["Land_Router_01_sand_F",[8139.28,10110.9,30.5643]];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [8139.28,10110.9,30.6801];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item53 = objNull;
if (_layer20) then {
	_item53 = createVehicle ["Land_TentLamp_01_suspended_red_F",[8133.54,10121.6,3.95037],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [8133.54,10121.6,33.1763];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item54 = objNull;
if (_layer20) then {
	_item54 = createVehicle ["Land_TentLamp_01_suspended_red_F",[8133.71,10132.6,3.96267],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [8133.71,10132.6,33.1837];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item55 = objNull;
if (_layer20) then {
	_item55 = createVehicle ["Land_TentLamp_01_suspended_red_F",[8138.51,10110.3,3.63349],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [8138.51,10110.3,32.7292];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item56 = objNull;
if (_layer20) then {
	_item56 = createVehicle ["CUP_vending_machine",[8125.23,10111.2,0.32],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [8125.23,10111.2,30.7307];
	_this setVectorDirAndUp [[-1,1.19249e-008,0.000838105],[0.000838105,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item57 = objNull;
if (_layer20) then {
	_item57 = createSimpleObject ["Land_WaterCooler_01_new_F",[8131.37,10117.9,29.6841]];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [8131.37,10117.9,30.4161];
	_this setVectorDirAndUp [[-3.25841e-007,-1,2.75575e-010],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item58 = objNull;
if (_layer20) then {
	_item58 = createVehicle ["Land_MapBoard_01_Wall_F",[8124.98,10126.8,1.596],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [8124.98,10126.8,31.5578];
	_this setVectorDirAndUp [[-1,1.19249e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item59 = objNull;
if (_layer20) then {
	_item59 = createSimpleObject ["MapBoard_Malden_F",[8140.81,10119.3,29.6761]];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [8140.81,10119.3,30.645];
	_this setVectorDirAndUp [[0.965925,-0.258819,-0.000816916],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\props_f_argo\civilian\infoboards\data\mapboard_malden_co.paa"];
};

private _item68 = objNull;
if (_layerRoot) then {
	_item68 = createVehicle ["B_Slingload_01_Fuel_F",[8223.81,10166.2,0.927555],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [8223.81,10166.2,31.18];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item69 = objNull;
if (_layerRoot) then {
	_item69 = createVehicle ["B_Slingload_01_Ammo_F",[8215,10166.2,0.927547],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [8215,10166.2,31.1796];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 8] call ace_cargo_fnc_setSpace;;
};

private _item71 = objNull;
if (_layerRoot) then {
	_item71 = createVehicle ["Land_HelipadSquare_F",[8214.09,10178.8,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [8214.09,10178.8,28.89];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item72 = objNull;
if (_layerRoot) then {
	_item72 = createVehicle ["Land_Medevac_HQ_V1_F",[8113.81,10093.6,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [8113.81,10093.6,33.3369];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item73 = objNull;
if (_layerRoot) then {
	_item73 = createVehicle ["Land_HelipadRescue_F",[8143.38,10086.1,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [8143.38,10086.1,28.9323];
	_this setVectorDirAndUp [[0,1,0],[0.00639417,0,0.99998]];
	0 remoteExec ['setFeatureType', _this];
};

private _item74 = objNull;
if (_layerRoot) then {
	_item74 = createSimpleObject ["Land_Stretcher_01_F",[8116.49,10093.7,30.0693]];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [8116.49,10093.7,30.3109];
	_this setVectorDirAndUp [[-1,1.19249e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item75 = objNull;
if (_layerRoot) then {
	_item75 = createSimpleObject ["Land_Stretcher_01_F",[8116.46,10096.6,30.0693]];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [8116.46,10096.6,30.3109];
	_this setVectorDirAndUp [[-1,1.19249e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item76 = objNull;
if (_layerRoot) then {
	_item76 = createSimpleObject ["Land_IntravenStand_01_2bags_F",[8117.31,10095.1,30.0693]];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [8117.31,10095.1,31.0007];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item78 = objNull;
if (_layerRoot) then {
	_item78 = createVehicle ["Land_BarGate_F",[8160.45,9770.57,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [8160.45,9770.57,33.4203];
	_this setVectorDirAndUp [[-0.00310689,0.999995,0],[0,0,1]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item79 = objNull;
if (_layerRoot) then {
	_item79 = createVehicle ["Land_GuardBox_01_brown_F",[8167.12,9771.18,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [8167.12,9771.18,30.2353];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer110) then {
	_item111 = createVehicle ["ProtectionZone_Invisible_F",[8131.92,10120.8,7.865],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [8131.92,10120.8,41.8391];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item112 = objNull;
if (_layer110) then {
	_item112 = createVehicle ["ProtectionZone_Invisible_F",[8110.19,10154.7,5.861],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [8110.19,10154.7,40.1428];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item350 = objNull;
if (_layerRoot) then {
	_item350 = createVehicle ["Land_InfoStand_V1_F",[8115.72,10150.6,0.158146],[],0,"CAN_COLLIDE"];
	_this = _item350;
	_objects pushback _this;
	_objectIDs pushback 350;
	_this setPosWorld [8115.71,10150.6,30.227];
	_this setVectorDirAndUp [[-0.008063,-0.999967,0.000619098],[-0.00885653,0.000690507,0.999961]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item392 = objNull;
if (_layer390) then {
	_item392 = createVehicle ["Land_RepairDepot_01_tan_F",[8227.4,10179.9,0],[],0,"CAN_COLLIDE"];
	_this = _item392;
	_objects pushback _this;
	_objectIDs pushback 392;
	_this setPosWorld [8227.4,10179.9,31.308];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item422 = objNull;
if (_layer421) then {
	_item422 = createVehicle ["Gunrack1",[8117.32,10153.9,0.915516],[],0,"CAN_COLLIDE"];
	_this = _item422;
	_objects pushback _this;
	_objectIDs pushback 422;
	_this setPosWorld [8117.32,10153.9,30.8931];
	_this setVectorDirAndUp [[0.0243829,-0.999434,0.0231879],[0.000771824,0.0232136,0.99973]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item423 = objNull;
if (_layer421) then {
	_item423 = createVehicle ["Gunrack1",[8114.79,10154,0.928411],[],0,"CAN_COLLIDE"];
	_this = _item423;
	_objects pushback _this;
	_objectIDs pushback 423;
	_this setPosWorld [8114.79,10154,30.9344];
	_this setVectorDirAndUp [[0.0243796,-0.99945,0.0224921],[0.0164929,0.0228978,0.999602]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item424 = objNull;
if (_layer421) then {
	_item424 = createVehicle ["Gunrack1",[8114.84,10156.9,0.906471],[],0,"CAN_COLLIDE"];
	_this = _item424;
	_objects pushback _this;
	_objectIDs pushback 424;
	_this setPosWorld [8114.84,10156.9,30.9095];
	_this setVectorDirAndUp [[0.02438,-0.999406,-0.0243553],[0.0155517,-0.0239805,0.999591]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item425 = objNull;
if (_layer421) then {
	_item425 = createVehicle ["Gunrack1",[8117.02,10156.9,0.908634],[],0,"CAN_COLLIDE"];
	_this = _item425;
	_objects pushback _this;
	_objectIDs pushback 425;
	_this setPosWorld [8117.02,10156.9,30.8873];
	_this setVectorDirAndUp [[0.0243829,-0.999423,-0.0236589],[0,-0.0236659,0.99972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item77 = objNull;
if (_layerRoot) then {
	_item77 = createTrigger ["EmptyDetectorArea10x10",[8159.94,9770.81,0],true];
	_this = _item77;
	_triggers pushback _this;
	_triggerIDs pushback 77;
	_item77 setPosATL [8159.94,9770.81,0];
	_this setTriggerArea [5,20,177.296,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item391 = objNull;
if (_layer390) then {
	_item391 = createTrigger ["EmptyDetectorArea10x10",[8215.42,10178.8,0],true];
	_this = _item391;
	_triggers pushback _this;
	_triggerIDs pushback 391;
	_item391 setPosATL [8215.42,10178.8,0];
	_this setTriggerArea [10,10,269.936,true,5];
	repStation = _this;
};

private _item401 = objNull;
if (_layer400) then {
	_item401 = createTrigger ["EmptyDetectorArea10x10",[8113.38,10092.1,0],true];
	_this = _item401;
	_triggers pushback _this;
	_triggerIDs pushback 401;
	_item401 setPosATL [8113.38,10092.1,0];
	_this setTriggerArea [6,6,359.2,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item0;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","HQ",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ",true]'];          ["","ColorWEST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item101 = objNull;
if (_layerRoot) then {
	_item101 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCurator_F",[1043.03,12217.2,0],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_logics pushback _this;
	_logicIDs pushback 101;
	_this setPosWorld [1043.03,12217.2,28.93];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Owner',"gm",true];;
	_this setVariable ['Name',"Game Master",true];;
	_this setVariable ['Addons',3,true];;
	_this setVariable ['Forced',0,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item102 = objNull;
if (_layerRoot) then {
	_item102 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCurator_F",[1048.84,12219.6,0],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_logics pushback _this;
	_logicIDs pushback 102;
	_this setPosWorld [1048.84,12219.6,28.93];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Owner',"gmod",true];;
	_this setVariable ['Name',"Game Moderator",true];;
	_this setVariable ['Addons',3,true];;
	_this setVariable ['Forced',0,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item408 = objNull;
if (_layer409) then {
	_item408 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8121.56,10158.6,0.207554],[],0,"CAN_COLLIDE"];
	_this = _item408;
	_logics pushback _this;
	_logicIDs pushback 408;
	_this setPosWorld [8121.56,10158.6,29.6084];
	_this setVectorDirAndUp [[0,0.999934,-0.0115015],[-0.00511379,0.0115013,0.999921]];
};

private _item412 = objNull;
if (_layer421) then {
	_item412 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8108.8,10128,0],[],0,"CAN_COLLIDE"];
	_this = _item412;
	_logics pushback _this;
	_logicIDs pushback 412;
	_this setPosWorld [8108.8,10128,29.5359];
	_this setVectorDirAndUp [[0,1,0],[0.00154382,0,0.999999]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item426 = objNull;
if (_layerRoot) then {
	_item426 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[8110.74,10092.2,5.732],[],0,"CAN_COLLIDE"];
	_this = _item426;
	_logics pushback _this;
	_logicIDs pushback 426;
	_this setPosWorld [8110.74,10092.2,35.2227];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[8,8,0,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer421) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item422,_item412,_item423,_item424,_item425],[]]];};
if (_layer409) then {missionNamespace setVariable ["temp_Spawn Medic Crate",[[_item408],[]]];};
if (_layer400) then {missionNamespace setVariable ["temp_Ace Heal Trigger",[[_item401],[]]];};
if (_layer390) then {missionNamespace setVariable ["temp_Repair Station",[[_item391,_item392],[]]];};
if (_layer110) then {missionNamespace setVariable ["temp_Protection zones",[[_item111,_item112],[]]];};
if (_layer20) then {missionNamespace setVariable ["temp_Home",[[_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item1) then {
		this = _item1;
		call{[this] spawn {sleep 3; _unit = (_this select 0); removeVest _unit; removeAllWeapons _unit; removeHeadgear _unit; _unit addHeadGear "H_HeadSet_black_F";}};
	};
	if !(isnull _item2) then {
		this = _item2;
		call{[this] spawn {sleep 3; _unit = (_this select 0); removeVest _unit; removeAllWeapons _unit; removeHeadgear _unit; _unit addHeadGear "H_HeadSet_black_F";}};
	};
	if !(isnull _item3) then {
		this = _item3;
		call{[this] spawn {sleep 3; _unit = (_this select 0); removeVest _unit; removeAllWeapons _unit; removeHeadgear _unit; _unit addHeadGear "H_HeadSet_black_F";}};
	};
	if !(isnull _item4) then {
		this = _item4;
		call{[this] spawn {sleep 3; _unit = (_this select 0); removeVest _unit; removeAllWeapons _unit; removeHeadgear _unit; _unit addHeadGear "H_HeadSet_black_F";}};
	};
	if !(isnull _item5) then {
		this = _item5;
		call{[this] spawn {sleep 3; _unit = (_this select 0); removeVest _unit; removeAllWeapons _unit; removeHeadgear _unit; _unit addHeadGear "H_HeadSet_black_F";}};
	};
	if !(isnull _item392) then {
		this = _item392;
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
	if !(isnull _item422) then {
		this = _item422;
		call{arsenals pushBack this};
	};
	if !(isnull _item423) then {
		this = _item423;
		call{arsenals pushBack this};
	};
	if !(isnull _item424) then {
		this = _item424;
		call{arsenals pushBack this};
	};
	if !(isnull _item425) then {
		this = _item425;
		call{arsenals pushBack this};
	};
	if !(isnull _item408) then {
		this = _item408;
		call{if (isServer) then {_medcrate = "ACE_medicalSupplyCrate_advanced" createVehicle position this; _medcrate setPosASL (getPosASL this);};};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item101) then {_item101 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item102) then {_item102 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item426) then {_item426 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
