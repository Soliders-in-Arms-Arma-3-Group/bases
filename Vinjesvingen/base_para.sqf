// Export of 'base_mil.tem_vinjesvingenc' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer367 = (_allWhitelisted || {"canteen #2" in _layerWhiteList}) && {!("canteen #2" in _layerBlackList)};
private _layer8 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer5 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer230 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item264 = grpNull;
if (_layerRoot) then {
	_item264 = createGroup west;
	_this = _item264;
	_groups pushback _this;
	_groupIDs pushback 264;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item1 = objNull;
if (_layer230) then {
	_item1 = createVehicle ["Land_InfoStand_V1_F",[1169.65,5299.1,0.0269012],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [1169.48,5299.02,129.312];
	_this setVectorDirAndUp [[-0.394719,-0.918802,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item7 = objNull;
if (_layer5 && _layer230) then {
	_item7 = createVehicle ["Land_BarGate_F",[1247.14,5292.78,0],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [1247.14,5292.78,132.776];
	_this setVectorDirAndUp [[0.800522,-0.59928,-0.00533098],[0.00665923,0,0.999978]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item237 = objNull;
if (_layer8 && _layer230) then {
	_item237 = createVehicle ["Land_RepairDepot_01_green_F",[1219.65,5330.59,0],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [1219.65,5330.59,131.158];
	_this setVectorDirAndUp [[-0.387081,-0.922046,0],[0,0,1]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item248 = objNull;
if (_layer230) then {
	_item248 = createVehicle ["Gunrack1",[1158.88,5291.04,0.21907],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [1158.88,5291.04,129.464];
	_this setVectorDirAndUp [[0.877155,-0.480208,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item249 = objNull;
if (_layer230) then {
	_item249 = createVehicle ["Gunrack1",[1160.93,5295.03,0.21907],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [1160.93,5295.03,129.464];
	_this setVectorDirAndUp [[0.877155,-0.480208,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item257 = objNull;
if (_layer230) then {
	_item257 = createVehicle ["Gunrack1",[1163.07,5298.93,0.21907],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [1163.07,5298.93,129.464];
	_this setVectorDirAndUp [[0.877155,-0.480208,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item238 = objNull;
if (_layerRoot) then {
	_item238 = createVehicle ["Box_NATO_AmmoVeh_F",[1217.81,5324.54,0],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [1217.81,5324.54,129.53];
	_this setVectorDirAndUp [[-0.915129,0.403162,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
};

private _item239 = objNull;
if (_layerRoot) then {
	_item239 = createVehicle ["MASH",[1212.41,5343.5,0],[],0,"CAN_COLLIDE"];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [1212.41,5343.5,129.92];
	_this setVectorDirAndUp [[-0.415757,-0.909476,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item241 = objNull;
if (_layerRoot) then {
	_item241 = createSimpleObject ["Land_WoodenTable_large_F",[1160.11,5292.88,128.959]];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [1160.11,5292.88,129.391];
	_this setVectorDirAndUp [[0.898848,-0.43826,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item242 = objNull;
if (_layerRoot) then {
	_item242 = createSimpleObject ["Land_WoodenTable_large_F",[1161.47,5286.17,128.959]];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [1161.47,5286.17,129.391];
	_this setVectorDirAndUp [[0.446392,0.894838,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item243 = objNull;
if (_layerRoot) then {
	_item243 = createSimpleObject ["Land_WoodenTable_large_F",[1162.57,5288.16,128.959]];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [1162.57,5288.16,129.391];
	_this setVectorDirAndUp [[0.523816,0.851831,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item244 = objNull;
if (_layerRoot) then {
	_item244 = createSimpleObject ["Land_WoodenTable_large_F",[1165.31,5289.57,128.959]];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [1165.31,5289.57,129.391];
	_this setVectorDirAndUp [[-0.825361,0.564605,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item245 = objNull;
if (_layerRoot) then {
	_item245 = createSimpleObject ["Land_CampingChair_V2_F",[1162.21,5285.89,128.959]];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [1162.21,5285.89,129.466];
	_this setVectorDirAndUp [[0.768766,-0.639531,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item246 = objNull;
if (_layerRoot) then {
	_item246 = createSimpleObject ["Land_CampingChair_V2_F",[1163.35,5287.72,128.959]];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [1163.35,5287.72,129.466];
	_this setVectorDirAndUp [[0.885639,-0.464375,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item247 = objNull;
if (_layerRoot) then {
	_item247 = createSimpleObject ["Land_CampingChair_V2_F",[1165.1,5287.91,128.959]];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [1165.1,5287.91,129.466];
	_this setVectorDirAndUp [[-0.407229,-0.913326,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item250 = objNull;
if (_layerRoot) then {
	_item250 = createVehicle ["Land_CampingChair_V2_F",[1160.03,5286.96,0.218994],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [1160.03,5286.96,129.465];
	_this setVectorDirAndUp [[-0.971043,-0.238906,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item251 = objNull;
if (_layerRoot) then {
	_item251 = createSimpleObject ["CargoNet_01_box_F",[1169.37,5296.44,128.959]];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [1169.37,5296.44,129.594];
	_this setVectorDirAndUp [[-0.903771,0.428017,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item252 = objNull;
if (_layerRoot) then {
	_item252 = createSimpleObject ["EauDeCombat_01_box_F",[1165.82,5289.45,129.824]];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [1165.82,5289.45,129.933];
	_this setVectorDirAndUp [[-0.308672,-0.951168,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f_epa\items\vessels\data\eaudecombat_01_box_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item254 = objNull;
if (_layerRoot) then {
	_item254 = createSimpleObject ["Land_PaperBox_01_small_closed_brown_F",[1161.18,5285.62,129.824]];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [1161.18,5285.62,130.031];
	_this setVectorDirAndUp [[0.617109,0.786878,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item255 = objNull;
if (_layerRoot) then {
	_item255 = createSimpleObject ["Land_FirstAidKit_01_closed_F",[1161.38,5285.84,129.824]];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [1161.38,5285.84,130.003];
	_this setVectorDirAndUp [[0.65293,0.757419,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item256 = objNull;
if (_layerRoot) then {
	_item256 = createVehicle ["Land_PaperBox_open_empty_F",[1157.29,5288.22,0.218994],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [1157.29,5288.22,129.566];
	_this setVectorDirAndUp [[0.480943,0.876752,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item258 = objNull;
if (_layerRoot) then {
	_item258 = createSimpleObject ["Land_WoodenTable_large_F",[1162.05,5296.93,128.959]];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [1162.05,5296.93,129.391];
	_this setVectorDirAndUp [[0.854903,-0.518789,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item259 = objNull;
if (_layerRoot) then {
	_item259 = createSimpleObject ["Land_Matches_F",[1166.09,5289.4,129.824]];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [1166.09,5289.4,129.835];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item260 = objNull;
if (_layerRoot) then {
	_item260 = createSimpleObject ["Land_Ammobox_rounds_F",[1162.78,5288.2,129.824]];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [1162.78,5288.2,129.929];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item261 = objNull;
if (_layerRoot) then {
	_item261 = createSimpleObject ["Land_Ammobox_rounds_F",[1162.64,5287.96,129.824]];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [1162.64,5287.96,129.929];
	_this setVectorDirAndUp [[0.354316,0.935126,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item262 = objNull;
if (_layerRoot) then {
	_item262 = createSimpleObject ["Land_Pallets_stack_F",[1168.41,5294.7,128.959]];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [1168.41,5294.7,129.389];
	_this setVectorDirAndUp [[-0.41626,-0.909246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item263 = objNull;
if (_layerRoot) then {
	_item263 = createSimpleObject ["Land_Pallet_vertical_F",[1162.85,5283.89,128.959]];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [1162.85,5283.89,129.694];
	_this setVectorDirAndUp [[0.480373,0.877064,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item265 = objNull;
if (_layerRoot) then {
	_item265 = _item264 createUnit ["B_Soldier_F",[1165.15,5288,0.218994],[],0,"CAN_COLLIDE"];
	_item264 selectLeader _item265;
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [1165.15,5288.05,128.96];
	_this setVectorDirAndUp [[0.474657,0.880171,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Max Clarke";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male02ENG";;
	_this setpitch 1.03;;
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

private _item266 = objNull;
if (_layerRoot) then {
	_item266 = _item264 createUnit ["B_Soldier_F",[1245.26,5288.49,0],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [1245.26,5288.54,128.73];
	_this setVectorDirAndUp [[-0.416328,-0.909214,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Colin Clarke";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
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
};

private _item267 = objNull;
if (_layerRoot) then {
	_item267 = _item264 createUnit ["B_Soldier_F",[1166.04,5318.86,0],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [1166.04,5318.91,128.741];
	_this setVectorDirAndUp [[0.357602,0.933874,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Brian Martinez";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.03;;
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
};

private _item268 = objNull;
if (_layerRoot) then {
	_item268 = _item264 createUnit ["B_Soldier_F",[1167.03,5320.34,0],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [1167.03,5320.39,128.741];
	_this setVectorDirAndUp [[-0.446135,-0.894965,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Harry Bayh";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male04ENG";;
	_this setpitch 1;;
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

private _item269 = objNull;
if (_layerRoot) then {
	_item269 = _item264 createUnit ["B_Soldier_F",[1173.05,5289.34,0],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [1173.05,5289.39,128.741];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Matthew Clarke";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male08ENG";;
	_this setpitch 0.95;;
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

private _item337 = objNull;
if (_layer367) then {
	_item337 = createSimpleObject ["Land_WoodenTable_large_F",[1168.43,5284.89,128.74]];
	_this = _item337;
	_objects pushback _this;
	_objectIDs pushback 337;
	_this setPosWorld [1168.43,5284.89,129.172];
	_this setVectorDirAndUp [[0.445441,0.895311,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item340 = objNull;
if (_layer367) then {
	_item340 = createSimpleObject ["Land_CampingChair_V2_F",[1167.82,5283.78,128.74]];
	_this = _item340;
	_objects pushback _this;
	_objectIDs pushback 340;
	_this setPosWorld [1167.82,5283.78,129.246];
	_this setVectorDirAndUp [[-0.639326,-0.768935,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item341 = objNull;
if (_layer367) then {
	_item341 = createSimpleObject ["Land_CampingChair_V2_F",[1168.81,5284.15,128.74]];
	_this = _item341;
	_objects pushback _this;
	_objectIDs pushback 341;
	_this setPosWorld [1168.81,5284.15,129.246];
	_this setVectorDirAndUp [[0.768913,-0.639353,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item342 = objNull;
if (_layer367) then {
	_item342 = createSimpleObject ["Land_CampingChair_V2_F",[1168.09,5285.58,128.74]];
	_this = _item342;
	_objects pushback _this;
	_objectIDs pushback 342;
	_this setPosWorld [1168.09,5285.58,129.246];
	_this setVectorDirAndUp [[-0.768913,0.639353,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item343 = objNull;
if (_layer367) then {
	_item343 = createSimpleObject ["Land_CampingChair_V2_F",[1167.67,5284.68,128.74]];
	_this = _item343;
	_objects pushback _this;
	_objectIDs pushback 343;
	_this setPosWorld [1167.67,5284.68,129.246];
	_this setVectorDirAndUp [[-0.57745,0.816426,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item344 = objNull;
if (_layer367) then {
	_item344 = createVehicle ["Land_CratesPlastic_F",[1169.62,5288.35,0],[],0,"CAN_COLLIDE"];
	_this = _item344;
	_objects pushback _this;
	_objectIDs pushback 344;
	_this setPosWorld [1169.62,5288.35,128.972];
	_this setVectorDirAndUp [[-0.908197,0.418543,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item347 = objNull;
if (_layer367) then {
	_item347 = createVehicle ["Land_Garbage_square5_F",[1172.24,5286.87,0],[],0,"CAN_COLLIDE"];
	_this = _item347;
	_objects pushback _this;
	_objectIDs pushback 347;
	_this setPosWorld [1172.24,5286.87,128.779];
	_this setVectorDirAndUp [[0.418543,0.908197,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item348 = objNull;
if (_layer367) then {
	_item348 = createSimpleObject ["Land_WoodenTable_large_F",[1171.59,5283,128.74]];
	_this = _item348;
	_objects pushback _this;
	_objectIDs pushback 348;
	_this setPosWorld [1171.59,5283,129.172];
	_this setVectorDirAndUp [[-0.635575,-0.772039,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item349 = objNull;
if (_layer367) then {
	_item349 = createSimpleObject ["Land_WoodenTable_large_F",[1175.58,5285.74,128.74]];
	_this = _item349;
	_objects pushback _this;
	_objectIDs pushback 349;
	_this setPosWorld [1175.58,5285.74,129.172];
	_this setVectorDirAndUp [[-0.418432,-0.908248,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item350 = objNull;
if (_layer367) then {
	_item350 = createSimpleObject ["Land_Sink_F",[1173.31,5276.48,128.74]];
	_this = _item350;
	_objects pushback _this;
	_objectIDs pushback 350;
	_this setPosWorld [1173.31,5276.48,129.358];
	_this setVectorDirAndUp [[0.0916475,-0.995791,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item351 = objNull;
if (_layer367) then {
	_item351 = createSimpleObject ["Land_CampingChair_V2_F",[1175,5284.49,128.74]];
	_this = _item351;
	_objects pushback _this;
	_objectIDs pushback 351;
	_this setPosWorld [1175,5284.49,129.246];
	_this setVectorDirAndUp [[0.577208,-0.816597,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item352 = objNull;
if (_layer367) then {
	_item352 = createSimpleObject ["Land_CampingChair_V2_F",[1171.51,5283.89,128.74]];
	_this = _item352;
	_objects pushback _this;
	_objectIDs pushback 352;
	_this setPosWorld [1171.51,5283.89,129.246];
	_this setVectorDirAndUp [[-0.768891,0.63938,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item353 = objNull;
if (_layer367) then {
	_item353 = createSimpleObject ["Land_CampingChair_V2_F",[1170.8,5282.85,128.74]];
	_this = _item353;
	_objects pushback _this;
	_objectIDs pushback 353;
	_this setPosWorld [1170.8,5282.85,129.246];
	_this setVectorDirAndUp [[-0.769103,0.639125,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item354 = objNull;
if (_layer367) then {
	_item354 = createSimpleObject ["Land_CampingChair_V2_F",[1172.31,5282.9,128.74]];
	_this = _item354;
	_objects pushback _this;
	_objectIDs pushback 354;
	_this setPosWorld [1172.31,5282.9,129.246];
	_this setVectorDirAndUp [[0.768891,-0.63938,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item355 = objNull;
if (_layer367) then {
	_item355 = createSimpleObject ["Land_CampingChair_V2_F",[1175.23,5286.18,128.74]];
	_this = _item355;
	_objects pushback _this;
	_objectIDs pushback 355;
	_this setPosWorld [1175.23,5286.18,129.246];
	_this setVectorDirAndUp [[-0.908212,0.41851,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item356 = objNull;
if (_layer367) then {
	_item356 = createSimpleObject ["Land_CampingChair_V2_F",[1176.16,5286.71,128.74]];
	_this = _item356;
	_objects pushback _this;
	_objectIDs pushback 356;
	_this setPosWorld [1176.16,5286.71,129.246];
	_this setVectorDirAndUp [[0.639354,0.768913,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item357 = objNull;
if (_layer367) then {
	_item357 = createSimpleObject ["Land_CampingChair_V2_F",[1176.05,5284.97,128.74]];
	_this = _item357;
	_objects pushback _this;
	_objectIDs pushback 357;
	_this setPosWorld [1176.05,5284.97,129.246];
	_this setVectorDirAndUp [[0.768891,-0.63938,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item358 = objNull;
if (_layer367) then {
	_item358 = createSimpleObject ["Land_CampingChair_V2_F",[1176.3,5285.82,128.74]];
	_this = _item358;
	_objects pushback _this;
	_objectIDs pushback 358;
	_this setPosWorld [1176.3,5285.82,129.246];
	_this setVectorDirAndUp [[0.908198,-0.418541,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item359 = objNull;
if (_layer367) then {
	_item359 = createSimpleObject ["Land_CampingChair_V2_F",[1171.94,5282.07,128.74]];
	_this = _item359;
	_objects pushback _this;
	_objectIDs pushback 359;
	_this setPosWorld [1171.94,5282.07,129.246];
	_this setVectorDirAndUp [[0.346205,-0.938159,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item360 = objNull;
if (_layer367) then {
	_item360 = createSimpleObject ["Land_BarrelTrash_grey_F",[1171.91,5276.43,128.74]];
	_this = _item360;
	_objects pushback _this;
	_objectIDs pushback 360;
	_this setPosWorld [1171.91,5276.43,129.145];
	_this setVectorDirAndUp [[-0.908197,0.418543,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item362 = objNull;
if (_layer367) then {
	_item362 = createSimpleObject ["Land_WoodenTable_large_F",[1172.51,5290.58,128.74]];
	_this = _item362;
	_objects pushback _this;
	_objectIDs pushback 362;
	_this setPosWorld [1172.51,5290.58,129.172];
	_this setVectorDirAndUp [[0.982968,-0.183775,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item363 = objNull;
if (_layer367) then {
	_item363 = createVehicle ["Land_CampingChair_V2_F",[1171.93,5291.9,0],[],0,"CAN_COLLIDE"];
	_this = _item363;
	_objects pushback _this;
	_objectIDs pushback 363;
	_this setPosWorld [1171.93,5291.9,129.246];
	_this setVectorDirAndUp [[-0.0916474,0.995791,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item364 = objNull;
if (_layer367) then {
	_item364 = createSimpleObject ["Land_CampingChair_V2_F",[1173.05,5289.2,128.74]];
	_this = _item364;
	_objects pushback _this;
	_objectIDs pushback 364;
	_this setPosWorld [1173.05,5289.2,129.246];
	_this setVectorDirAndUp [[-0.172937,-0.984933,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item365 = objNull;
if (_layer367) then {
	_item365 = createVehicle ["Land_CampingChair_V2_F",[1173.28,5291.67,0],[],0,"CAN_COLLIDE"];
	_this = _item365;
	_objects pushback _this;
	_objectIDs pushback 365;
	_this setPosWorld [1173.28,5291.67,129.246];
	_this setVectorDirAndUp [[0.639328,0.768934,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item368 = objNull;
if (_layer367) then {
	_item368 = createVehicle ["Land_Garbage_square5_F",[1174.17,5289.21,0],[],0,"CAN_COLLIDE"];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [1174.17,5289.21,128.779];
	_this setVectorDirAndUp [[0.418543,0.908197,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item3 = objNull;
if (_layer230) then {
	_item3 = createTrigger ["EmptyDetectorArea10x10",[1212.06,5344.08,0],false];
	_this = _item3;
	_triggers pushback _this;
	_triggerIDs pushback 3;
	_item3 setPosATL [1212.06,5344.08,0];
	_this setTriggerArea [2,3,203.377,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item6 = objNull;
if (_layer5 && _layer230) then {
	_item6 = createTrigger ["EmptyDetectorArea10x10",[1246.75,5292.57,0],true];
	_this = _item6;
	_triggers pushback _this;
	_triggerIDs pushback 6;
	_item6 setPosATL [1246.75,5292.57,0];
	_this setTriggerArea [5,20,121.983,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item264;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
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

private _item4 = objNull;
if (_layer230) then {
	_item4 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[1171.5,5308.2,0],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_logics pushback _this;
	_logicIDs pushback 4;
	_this setPosWorld [1171.5,5308.2,128.74];
	_this setVectorDirAndUp [[0.804026,0.594595,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item232 = objNull;
if (_layerRoot) then {
	_item232 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[1248.93,5292.35,-1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_logics pushback _this;
	_logicIDs pushback 232;
	_this setPosWorld [1248.93,5292.35,128.66];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer367) then {missionNamespace setVariable ["base_mil_Canteen #2",[[_item337,_item340,_item341,_item342,_item343,_item344,_item347,_item348,_item349,_item350,_item351,_item352,_item353,_item354,_item355,_item356,_item357,_item358,_item359,_item360,_item362,_item363,_item364,_item365,_item368],[]]];};
if (_layer8) then {missionNamespace setVariable ["base_mil_Repair Station",[[_item237],[]]];};
if (_layer5) then {missionNamespace setVariable ["base_mil_bargate",[[_item6,_item7],[]]];};
if (_layer230) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item1,_item3,_item4,_item6,_item7,_item237,_item248,_item249,_item257],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item248) then {
		this = _item248;
		call{arsenals pushBack this};
	};
	if !(isnull _item249) then {
		this = _item249;
		call{arsenals pushBack this};
	};
	if !(isnull _item257) then {
		this = _item257;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item232) then {_item232 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
