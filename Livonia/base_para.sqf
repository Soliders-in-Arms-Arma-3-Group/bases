// Export of 'base_para.Enoch' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer139 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer361 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer123 = (_allWhitelisted || {"skeet" in _layerWhiteList}) && {!("skeet" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item28 = "";
if (_layerRoot) then {
	_item28 = createMarker ["marker_hq",[6411.82,4802.6,0]];
	_this = _item28;
	_markers pushback _this;
	_markerIDs pushback 28;
	_this setMarkerType "u_installation";
	_this setMarkerText "Outpost Przemek";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorUNKNOWN";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item21 = grpNull;
if (_layerRoot) then {
	_item21 = createGroup resistance;
	_this = _item21;
	_groups pushback _this;
	_groupIDs pushback 21;
};

private _item125 = grpNull;
if (_layer123) then {
	_item125 = createGroup west;
	_this = _item125;
	_groups pushback _this;
	_groupIDs pushback 125;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item2 = objNull;
if (_layerRoot) then {
	_item2 = createSimpleObject ["Land_WoodenTable_large_F",[6407.32,4775.61,140.726]];
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [6407.32,4775.61,141.158];
	_this setVectorDirAndUp [[-0.765771,0.642934,0.0151991],[0.0267038,0.00817482,0.99961]];
	0 remoteExec ['setFeatureType', _this];
};

private _item3 = objNull;
if (_layerRoot) then {
	_item3 = createSimpleObject ["Land_WoodenTable_large_F",[6405.65,4777.01,140.733]];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [6405.65,4777.01,141.166];
	_this setVectorDirAndUp [[0.766026,-0.642741,0.00936642],[-0.00694832,0.00629088,0.999956]];
	0 remoteExec ['setFeatureType', _this];
};

private _item4 = objNull;
if (_layerRoot) then {
	_item4 = createSimpleObject ["Land_MapBoard_Enoch_F",[6406.77,4774.2,140.753]];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [6406.77,4774.2,141.721];
	_this setVectorDirAndUp [[-0.341898,-0.939586,0.0168175],[0.0267038,0.00817482,0.99961]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\props_f_enoch\civilian\infoboards\data\mapboard_enoch_co.paa"];
};

private _item5 = objNull;
if (_layerRoot) then {
	_item5 = createSimpleObject ["Land_Map_Enoch_F",[6405.2,4777.31,141.593]];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [6405.2,4777.31,141.598];
	_this setVectorDirAndUp [[-0.422608,-0.906308,0.00276518],[-0.00694832,0.00629088,0.999956]];
	0 remoteExec ['setFeatureType', _this];
};

private _item6 = objNull;
if (_layerRoot) then {
	_item6 = createSimpleObject ["Land_Compass_F",[6405.01,4777.15,141.596]];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [6405.01,4777.15,141.602];
	_this setVectorDirAndUp [[0,0.99998,-0.00629103],[-0.00694832,0.00629088,0.999956]];
	0 remoteExec ['setFeatureType', _this];
};

private _item7 = objNull;
if (_layerRoot) then {
	_item7 = createSimpleObject ["Land_Document_01_F",[6406.71,4775.89,141.604]];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [6406.71,4775.89,141.61];
	_this setVectorDirAndUp [[0.865717,0.499794,-0.0272143],[0.0267038,0.00817482,0.99961]];
	0 remoteExec ['setFeatureType', _this];
};

private _item8 = objNull;
if (_layerRoot) then {
	_item8 = createSimpleObject ["Newspaper_01_F",[6406.6,4776.1,141.606]];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [6406.6,4776.1,141.617];
	_this setVectorDirAndUp [[-0.706854,0.707238,0.0130993],[0.0267038,0.00817482,0.99961]];
	0 remoteExec ['setFeatureType', _this];
};

private _item9 = objNull;
if (_layerRoot) then {
	_item9 = createVehicle ["Item_Laptop_closed",[6405.88,4776.5,1.05299],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [6405.88,4776.5,141.871];
	_this setVectorDirAndUp [[-0.642772,-0.766057,0.000348225],[-0.00694635,0.00628299,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createSimpleObject ["Land_CampingTable_F",[6399.85,4781.62,140.772]];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [6399.85,4781.62,141.184];
	_this setVectorDirAndUp [[0.76593,-0.642755,-0.0147152],[0.0172662,-0.00231548,0.999848]];
	0 remoteExec ['setFeatureType', _this];
};

private _item15 = objNull;
if (_layerRoot) then {
	_item15 = createSimpleObject ["Land_Router_01_olive_F",[6400.14,4781.67,141.583]];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [6400.14,4781.67,141.699];
	_this setVectorDirAndUp [[0.642692,0.766068,-0.00932444],[0.0172662,-0.00231548,0.999848]];
	0 remoteExec ['setFeatureType', _this];
};

private _item16 = objNull;
if (_layerRoot) then {
	_item16 = createSimpleObject ["Land_Laptop_03_black_F",[6400.19,4782.1,141.583]];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [6400.19,4782.1,141.75];
	_this setVectorDirAndUp [[0.939553,-0.341982,-0.0170138],[0.017261,-0.00232072,0.999848]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [1,"images\xpscreen.paa"];
};

private _item17 = objNull;
if (_layerRoot) then {
	_item17 = createSimpleObject ["Land_PortableCabinet_01_bookcase_olive_F",[6401.06,4782.56,140.734]];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [6401.06,4782.56,141.151];
	_this setVectorDirAndUp [[0.76593,-0.642755,-0.0147152],[0.0172662,-0.00231548,0.999848]];
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

private _item18 = objNull;
if (_layerRoot) then {
	_item18 = createSimpleObject ["Land_Projector_01_F",[6399.53,4781.18,141.593]];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [6399.53,4781.18,141.68];
	_this setVectorDirAndUp [[-0.76593,0.642756,0.0147152],[0.0172662,-0.00231548,0.999848]];
	0 remoteExec ['setFeatureType', _this];
};

private _item19 = objNull;
if (_layerRoot) then {
	_item19 = createVehicle ["Land_PortableLight_02_single_folded_olive_F",[6399.87,4781.49,3.26111],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [6399.87,4781.49,143.92];
	_this setVectorDirAndUp [[-0.866025,0.5,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item20 = objNull;
if (_layerRoot) then {
	_item20 = createSimpleObject ["Land_CampingChair_V2_F",[6398.98,4782.37,140.769]];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [6398.98,4782.37,141.276];
	_this setVectorDirAndUp [[-0.939553,0.341982,0.0170169],[0.0172662,-0.00231548,0.999848]];
	0 remoteExec ['setFeatureType', _this];
};

private _item22 = objNull;
if (_layerRoot) then {
	_item22 = _item21 createUnit ["I_E_Officer_F",[6399.06,4782.25,0.216995],[],0,"CAN_COLLIDE"];
	_item21 selectLeader _item22;
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [6399.06,4782.3,140.768];
	_this setVectorDirAndUp [[0.939693,-0.34202,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_I_E_Uniform_01_shortsleeve_F",[]],[],[],"H_HeadSet_white_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Olaf Drewniak";;
	_this setface "Sturrock";;
	_this setspeaker "Male01POL";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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
	_item23 = _item21 createUnit ["I_E_Soldier_F",[6397.99,4786.48,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [6397.99,4786.53,140.551];
	_this setVectorDirAndUp [[-0.766044,0.642788,0],[0,0,1]];
	_this setUnitLoadout [[],[],["hgun_Pistol_heavy_01_green_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_I_E_Uniform_01_F",[]],["V_CarrierRigKBT_01_light_EAF_F",[]],[],"H_Beret_EAF_01_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Gustaw Orman";;
	_this setface "LivonianHead_1";;
	_this setspeaker "Male02POL";;
	_this setpitch 1.03;;
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

private _item24 = objNull;
if (_layerRoot) then {
	_item24 = _item21 createUnit ["I_E_Soldier_F",[6445.96,4767.04,0.324997],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [6445.96,4767.09,140.876];
	_this setVectorDirAndUp [[-0.280365,0.959893,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MSBS65_F","","","",["30Rnd_65x39_caseless_msbs_mag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_I_E_Uniform_01_shortsleeve_F",[]],["V_CarrierRigKBT_01_light_EAF_F",[]],[],"H_MilCap_eaf","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Olaf Kowalski";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male02POL";;
	_this setpitch 1.03;;
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

private _item25 = objNull;
if (_layerRoot) then {
	_item25 = _item21 createUnit ["I_E_Soldier_F",[6350.58,4734.37,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [6350.58,4734.42,141.331];
	_this setVectorDirAndUp [[-0.519101,-0.854713,0],[0,0,1]];
	_this setUnitLoadout [[],[],["hgun_Pistol_heavy_01_green_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_I_E_Uniform_01_F",[]],["V_CarrierRigKBT_01_light_EAF_F",[]],[],"H_Beret_EAF_01_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Jan Lewandowski";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male02POL";;
	_this setpitch 1.03;;
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

private _item26 = objNull;
if (_layerRoot) then {
	_item26 = _item21 createUnit ["I_E_Soldier_lite_F",[6420.13,4777.72,0],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [6420.13,4777.77,140.551];
	_this setVectorDirAndUp [[0.856993,-0.515328,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MSBS65_ico_pointer_f","","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_I_E_Uniform_01_shortsleeve_F",[["FirstAidKit",1],["30Rnd_65x39_caseless_msbs_mag",2,30],["SmokeShell",1,1],["Chemlight_blue",1,1]]],["V_CarrierRigKBT_01_light_EAF_F",[["30Rnd_65x39_caseless_msbs_mag",3,30],["11Rnd_45ACP_Mag",2,11],["SmokeShellBlue",1,1],["Chemlight_blue",1,1]]],[],"H_MilCap_eaf","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "JarosÅ‚aw KozÅ‚owski";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male03POL";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,true] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item27 = objNull;
if (_layerRoot) then {
	_item27 = _item21 createUnit ["I_E_Soldier_unarmed_F",[6421.53,4776.34,0],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [6421.53,4776.39,140.551];
	_this setVectorDirAndUp [[-0.749036,0.662529,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_I_E_Uniform_01_sweater_F",[]],[],[],"VSM_Beanie_OD","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "JarosÅ‚aw GÃ³rski";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male02POL";;
	_this setpitch 1.05;;
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

private _item65 = objNull;
if (_layerRoot) then {
	_item65 = _item21 createUnit ["I_E_Soldier_lite_F",[6403.1,4822.76,0],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [6403.1,4822.81,140.06];
	_this setVectorDirAndUp [[-0.68136,0.731948,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MSBS65_ico_pointer_f","","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_I_E_Uniform_01_shortsleeve_F",[["FirstAidKit",1],["30Rnd_65x39_caseless_msbs_mag",2,30],["SmokeShell",1,1],["Chemlight_blue",1,1]]],["V_CarrierRigKBT_01_light_EAF_F",[["30Rnd_65x39_caseless_msbs_mag",3,30],["11Rnd_45ACP_Mag",2,11],["SmokeShellBlue",1,1],["Chemlight_blue",1,1]]],[],"H_HelmetHBK_F","VSM_Shemagh_Glasses_OD",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "PaweÅ‚ Sternik";;
	_this setface "LivonianHead_10";;
	_this setspeaker "Male03POL";;
	_this setpitch 0.95;;
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

private _item31 = objNull;
if (_layerRoot) then {
	_item31 = createVehicle ["Land_HelipadSquare_F",[6381.11,4740.15,0],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [6381.11,4740.15,141.33];
	_this setVectorDirAndUp [[0.766044,-0.642788,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item32 = objNull;
if (_layerRoot) then {
	_item32 = createVehicle ["PortableHelipadLight_01_green_F",[6380.76,4740.52,0],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [6380.76,4740.52,141.441];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item33 = objNull;
if (_layerRoot) then {
	_item33 = createVehicle ["PortableHelipadLight_01_yellow_F",[6380.46,4748.02,0],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [6380.46,4748.02,141.441];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item34 = objNull;
if (_layerRoot) then {
	_item34 = createVehicle ["PortableHelipadLight_01_yellow_F",[6389.05,4740.8,0],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [6389.05,4740.8,141.441];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item35 = objNull;
if (_layerRoot) then {
	_item35 = createVehicle ["PortableHelipadLight_01_yellow_F",[6381.86,4732.14,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [6381.86,4732.14,141.441];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item36 = objNull;
if (_layerRoot) then {
	_item36 = createVehicle ["PortableHelipadLight_01_yellow_F",[6373.2,4739.38,0],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [6373.2,4739.38,141.441];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item37 = objNull;
if (_layerRoot) then {
	_item37 = createVehicle ["Land_LampHalogen_F",[6379.61,4701.97,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [6379.61,4701.97,147.268];
	_this setVectorDirAndUp [[1,7.54979e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item38 = objNull;
if (_layerRoot) then {
	_item38 = createVehicle ["Land_LampHalogen_F",[6472.42,4808.7,0],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [6472.42,4808.7,145.112];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item41 = objNull;
if (_layerRoot) then {
	_item41 = createVehicle ["Land_LampShabby_F",[6448.92,4778.15,0],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [6448.92,4778.15,144.332];
	_this setVectorDirAndUp [[-0.642788,-0.766044,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item42 = objNull;
if (_layerRoot) then {
	_item42 = createVehicle ["Land_LampHalogen_F",[6428.59,4860.74,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [6428.59,4860.74,145.139];
	_this setVectorDirAndUp [[-0.819152,0.573577,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item44 = objNull;
if (_layerRoot) then {
	_item44 = createVehicle ["Land_Barracks_03_F",[6329.94,4769.76,0],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [6329.94,4769.76,142.698];
	_this setVectorDirAndUp [[0.642788,0.766044,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item45 = objNull;
if (_layerRoot) then {
	_item45 = createVehicle ["Land_Sign_noentry_big_en_pl_F",[6453.79,4750.25,0],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [6453.79,4750.25,141.727];
	_this setVectorDirAndUp [[-0.173648,0.984808,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item46 = objNull;
if (_layerRoot) then {
	_item46 = createVehicle ["Land_sign_noentry_small_en_pl_F",[6428.31,4634.38,0],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [6428.31,4634.38,147.792];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layerRoot) then {
	_item47 = createVehicle ["Land_sign_entry_en_pl_F",[6499.89,4662.07,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [6499.89,4662.07,149.444];
	_this setVectorDirAndUp [[-0.766044,0.642788,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item48 = objNull;
if (_layerRoot) then {
	_item48 = createVehicle ["Land_sign_leave_en_pl_F",[6420.18,4658.18,0],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [6420.18,4658.18,143.115];
	_this setVectorDirAndUp [[-0.34202,-0.939693,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item51 = objNull;
if (_layerRoot) then {
	_item51 = createVehicle ["Land_RoadBarrier_01_F",[6446.47,4773.76,0],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [6446.47,4773.76,144.209];
	_this setVectorDirAndUp [[0.737488,-0.67536,0],[0,0,1]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item52 = objNull;
if (_layerRoot) then {
	_item52 = createVehicle ["Land_GuardTower_01_F",[6322.98,4765.44,0],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [6322.98,4765.44,146.082];
	_this setVectorDirAndUp [[0.766044,-0.642788,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layerRoot) then {
	_item53 = createVehicle ["Land_Target_Line_PaperTargets_01_F",[6341.92,4687.82,6.10352e-005],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [6341.92,4687.82,144.501];
	_this setVectorDirAndUp [[-0.642788,-0.766044,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item54 = objNull;
if (_layerRoot) then {
	_item54 = createVehicle ["Land_Rampart_F",[6338.66,4683.72,0],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [6338.66,4683.72,144.828];
	_this setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item56 = objNull;
if (_layerRoot) then {
	_item56 = createVehicle ["Land_ShootingPos_Roof_01_F",[6362.05,4714.89,0],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [6362.05,4714.89,142.346];
	_this setVectorDirAndUp [[0.611626,0.791147,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item57 = objNull;
if (_layerRoot) then {
	_item57 = createVehicle ["Land_ClutterCutter_medium_F",[6362.5,4715.36,0.0500031],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [6362.5,4715.36,141.38];
	_this setVectorDirAndUp [[0,1,0],[0.0239934,0,0.999712]];
	0 remoteExec ['setFeatureType', _this];
};

private _item58 = objNull;
if (_layerRoot) then {
	_item58 = createVehicle ["Box_EAF_Ammo_F",[6359.74,4716.07,0],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [6359.74,4716.07,141.614];
	_this setVectorDirAndUp [[-0.927197,0.374574,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[""9Rnd_45ACP_Mag"",""1Rnd_HE_Grenade_shell"",""30Rnd_65x39_caseless_msbs_mag"",""100Rnd_65x39_caseless_black_mag"",""6Rnd_12Gauge_Pellets"",""6Rnd_12Gauge_Slug"",""20Rnd_762x51_Mag"",""50Rnd_570x28_SMG_03"",""NLAW_F"",""HandGrenade"",""MiniGrenade""],[12,4,24,6,8,8,6,6,1,6,6]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item63 = objNull;
if (_layerRoot) then {
	_item63 = createVehicle ["CargoNet_01_barrels_F",[6371.94,4737.15,0],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [6371.94,4737.15,141.838];
	_this setVectorDirAndUp [[-0.220238,0.973649,0.059193],[0,-0.060683,0.998157]];
	0 remoteExec ['setFeatureType', _this];
	if (1000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 1000] call ace_refuel_fnc_makeSource};
	if ([0.3,0.3,0.3] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.3,0.3,0.3]], true]};
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item71 = objNull;
if (_layerRoot) then {
	_item71 = createVehicle ["CUP_vending_machine",[6349.63,4733.33,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [6349.63,4733.33,142.371];
	_this setVectorDirAndUp [[-0.579637,-0.814875,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layerRoot) then {
	_item73 = createVehicle ["Land_MedicalTent_01_wdl_generic_open_F",[6398.73,4752.77,0],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [6398.73,4752.77,142.705];
	_this setVectorDirAndUp [[-0.768596,0.639735,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	_this animateSource ['Door_Hide',1,true];
	_this animateSource ['MedSign_Hide',1,true];
	_this animateSource ['SolarPanel1_Hide',1,true];
	_this animateSource ['SolarPanel2_Hide',0,true];
};

private _item74 = objNull;
if (_layerRoot) then {
	_item74 = createVehicle ["Land_ConnectorTent_01_floor_dark_F",[6398.65,4752.89,0],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [6398.65,4752.89,141.33];
	_this setVectorDirAndUp [[-0.760888,0.648883,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item76 = objNull;
if (_layerRoot) then {
	_item76 = createSimpleObject ["Land_Cargo20_light_green_F",[6417.2,4775.9,140.73]];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [6417.2,4775.9,142.054];
	_this setVectorDirAndUp [[0.645069,0.763745,0.0240701],[-0.0299991,-0.00616347,0.999531]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item77 = objNull;
if (_layerRoot) then {
	_item77 = createSimpleObject ["Land_PaperBox_01_open_water_F",[6417.3,4772.46,140.711]];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [6417.3,4772.46,141.342];
	_this setVectorDirAndUp [[-0.748694,0.662401,-0.0261245],[-0.01992,0.0169106,0.999659]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item78 = objNull;
if (_layerRoot) then {
	_item78 = createVehicle ["Land_PaperBox_closed_F",[6416.25,4770.99,0.164993],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [6416.25,4770.99,141.358];
	_this setVectorDirAndUp [[-0.765586,0.642803,-0.0261124],[-0.0201048,0.0166638,0.999659]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item79 = objNull;
if (_layerRoot) then {
	_item79 = createSimpleObject ["Land_PaperBox_01_small_closed_brown_F",[6416.89,4773.9,140.708]];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [6416.89,4773.9,140.915];
	_this setVectorDirAndUp [[-0.96626,-0.255746,-0.0305776],[-0.0299991,-0.00616347,0.999531]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item83 = objNull;
if (_layerRoot) then {
	_item83 = createSimpleObject ["Land_IntravenStand_01_2bags_F",[6400.95,4753.96,141.33]];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [6400.95,4753.96,142.261];
	_this setVectorDirAndUp [[-0.699141,-0.714984,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item84 = objNull;
if (_layerRoot) then {
	_item84 = createSimpleObject ["Land_Stretcher_01_olive_F",[6401.69,4753.3,141.33]];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [6401.69,4753.3,141.572];
	_this setVectorDirAndUp [[-0.694782,-0.719221,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item91 = objNull;
if (_layerRoot) then {
	_item91 = createVehicle ["Box_EAF_AmmoVeh_F",[6398.87,4733.74,0],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [6398.87,4733.74,142.12];
	_this setVectorDirAndUp [[-0.855888,0.517161,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
};

private _item124 = objNull;
if (_layer123) then {
	_item124 = createVehicle ["SkeetMachine",[6356.97,4716.6,-0.00100708],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [6356.97,4716.6,141.806];
	_this setVectorDirAndUp [[0.242532,0.970144,0],[0,0,1]];
	sk1 = _this;
	_this setVehicleVarName "sk1";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer123) then {
	_item126 = _item125 createUnit ["B_RangeMaster_F",[6357.23,4718.13,0],[],0,"CAN_COLLIDE"];
	_item125 selectLeader _item126;
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [6357.23,4718.18,141.331];
	_this setVectorDirAndUp [[0.826737,-0.562588,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam_wdl_f",[["FirstAidKit",1]]],["V_Safety_orange_F",[]],[],"H_Cap_headphones","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	sk_op = _this;
	_this setVehicleVarName "sk_op";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setCaptive true;
	_this setname "William Bayh";;
	_this setface "GreekHead_A3_03";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,true] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item132 = objNull;
if (_layer361) then {
	_item132 = createVehicle ["Land_InfoStand_V1_F",[6400.98,4790.77,-0.0169525],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [6400.98,4790.77,141.108];
	_this setVectorDirAndUp [[0.80914,-0.587616,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item362 = objNull;
if (_layer139 && _layer361) then {
	_item362 = createVehicle ["Land_RepairDepot_01_green_F",[6392.82,4728.46,0],[],0,"CAN_COLLIDE"];
	_this = _item362;
	_objects pushback _this;
	_objectIDs pushback 362;
	_this setPosWorld [6392.82,4728.46,143.748];
	_this setVectorDirAndUp [[0.654226,0.756299,0],[0,0,1]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item371 = objNull;
if (_layer361) then {
	_item371 = createVehicle ["B_supplyCrate_F",[6412.27,4779.98,0.171097],[],0,"CAN_COLLIDE"];
	_this = _item371;
	_objects pushback _this;
	_objectIDs pushback 371;
	_this setPosWorld [6412.27,4779.98,141.614];
	_this setVectorDirAndUp [[-0.693882,-0.719743,-0.0223106],[-0.00292968,-0.0281612,0.999599]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item372 = objNull;
if (_layer361) then {
	_item372 = createVehicle ["B_supplyCrate_F",[6409.34,4782.27,0.193497],[],0,"CAN_COLLIDE"];
	_this = _item372;
	_objects pushback _this;
	_objectIDs pushback 372;
	_this setPosWorld [6409.34,4782.27,141.636];
	_this setVectorDirAndUp [[0.631907,0.774989,0.00921264],[-0.00581852,-0.00714266,0.999958]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item122 = objNull;
if (_layerRoot) then {
	_item122 = createVehicle ["ProtectionZone_Invisible_F",[6414.87,4783.22,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [6414.87,4783.22,145.3];
	_this setVectorDirAndUp [[-0.749849,0.661609,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item365 = objNull;
if (_layerRoot) then {
	_item365 = createVehicle ["Land_CampingChair_V2_F",[6408.24,4776.67,0.141815],[],0,"CAN_COLLIDE"];
	_this = _item365;
	_objects pushback _this;
	_objectIDs pushback 365;
	_this setPosWorld [6408.26,4776.67,141.198];
	_this setVectorDirAndUp [[0.771156,0.636123,-0.0258031],[0.0267038,0.00817482,0.99961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item366 = objNull;
if (_layerRoot) then {
	_item366 = createVehicle ["Land_CampingChair_V2_F",[6407.44,4777.64,0.15538],[],0,"CAN_COLLIDE"];
	_this = _item366;
	_objects pushback _this;
	_objectIDs pushback 366;
	_this setPosWorld [6407.45,4777.64,141.212];
	_this setVectorDirAndUp [[0.676635,0.735924,-0.0240942],[0.0267038,0.00817482,0.99961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item367 = objNull;
if (_layerRoot) then {
	_item367 = createVehicle ["Land_CampingChair_V2_F",[6406.31,4778.42,0.172897],[],0,"CAN_COLLIDE"];
	_this = _item367;
	_objects pushback _this;
	_objectIDs pushback 367;
	_this setPosWorld [6406.31,4778.42,141.229];
	_this setVectorDirAndUp [[0.575399,0.817872,-0.00114713],[-0.00694832,0.00629088,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item368 = objNull;
if (_layerRoot) then {
	_item368 = createVehicle ["Land_CampingChair_V2_F",[6404.79,4776.2,0.1763],[],0,"CAN_COLLIDE"];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [6404.78,4776.2,141.233];
	_this setVectorDirAndUp [[-0.716094,-0.698004,-0.000584614],[-0.00694832,0.00629088,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item29 = objNull;
if (_layerRoot) then {
	_item29 = createTrigger ["EmptyDetectorArea10x10",[-0.068,0.181,0],true];
	_this = _item29;
	_triggers pushback _this;
	_triggerIDs pushback 29;
	_item29 setPosATL [-0.068,0.181,0];
	_this setTriggerArea [5,5,0,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{_x setDamage 1} forEach thisList;}",""];
	_this setTriggerTimeout [0.1,0.1,0.1,false];
};

private _item50 = objNull;
if (_layerRoot) then {
	_item50 = createTrigger ["EmptyDetectorArea10x10",[6447.11,4774.1,0],true];
	_this = _item50;
	_triggers pushback _this;
	_triggerIDs pushback 50;
	_item50 setPosATL [6447.11,4774.1,0];
	_this setTriggerArea [5,20,308.284,true,5];
	_this setTriggerActivation ["ANY","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item134 = objNull;
if (_layer361) then {
	_item134 = createTrigger ["EmptyDetectorArea10x10",[6398.83,4752.91,0],false];
	_this = _item134;
	_triggers pushback _this;
	_triggerIDs pushback 134;
	_item134 setPosATL [6398.83,4752.91,0];
	_this setTriggerArea [6,6,309.238,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item21;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	    //  if (!is3DEN && !(["","ColorGUER","HQ",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorGUER","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorGUER","HQ",true]'];          ["","ColorGUER","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorGUER","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorGUER","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item125;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Rangemaster"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	    //  if (!is3DEN && !(["","ColorWEST","Rangemaster",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Rangemaster",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Rangemaster",true]'];          ["","ColorWEST","Rangemaster",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Rangemaster",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Rangemaster",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item30 = objNull;
if (_layerRoot) then {
	_item30 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[6381.64,4738.65,4.8651],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_logics pushback _this;
	_logicIDs pushback 30;
	_this setPosWorld [6381.64,4738.65,146.195];
	_this setVectorDirAndUp [[-0.707107,-0.707106,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,225,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item39 = objNull;
if (_layerRoot) then {
	_item39 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[6428.58,4860.82,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_logics pushback _this;
	_logicIDs pushback 39;
	_this setPosWorld [6428.58,4860.82,139.158];
	_this setVectorDirAndUp [[0.642688,0.765643,0.0272413],[-0.0175978,-0.0207947,0.999629]];
	_this setVariable ["objectArea",[1,1,40.0104,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item40 = objNull;
if (_layerRoot) then {
	_item40 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[6448.87,4778.45,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_logics pushback _this;
	_logicIDs pushback 40;
	_this setPosWorld [6448.87,4778.45,140.561];
	_this setVectorDirAndUp [[0.642688,0.765643,0.0272413],[-0.0175978,-0.0207947,0.999629]];
	_this setVariable ["objectArea",[1,1,40.0104,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item43 = objNull;
if (_layerRoot) then {
	_item43 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[6326.36,4771.46,5.3911],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_logics pushback _this;
	_logicIDs pushback 43;
	_this setPosWorld [6326.36,4771.46,146.721];
	_this setVectorDirAndUp [[0,0.990528,-0.137314],[0.107974,0.136511,0.984737]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item49 = objNull;
if (_layerRoot) then {
	_item49 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[6446.91,4774,0],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_logics pushback _this;
	_logicIDs pushback 49;
	_this setPosWorld [6446.91,4774,140.55];
	_this setVectorDirAndUp [[0.766044,-0.642788,0],[0,0,1]];
	_this setVariable ["objectArea",[3,1,130,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item55 = objNull;
if (_layerRoot) then {
	_item55 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[6362.06,4714.25,0],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_logics pushback _this;
	_logicIDs pushback 55;
	_this setPosWorld [6362.06,4714.25,141.33];
	_this setVectorDirAndUp [[-0.802776,0.596281,0],[0,0,1]];
	_this setVariable ["objectArea",[5,6,306.604,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item135 = objNull;
if (_layer361) then {
	_item135 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[6419.85,4793.79,0],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_logics pushback _this;
	_logicIDs pushback 135;
	_this setPosWorld [6419.85,4793.79,140.55];
	_this setVectorDirAndUp [[-0.778971,0.627059,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer139) then {missionNamespace setVariable ["base_para_Repair Station",[[_item362],[]]];};
if (_layer361) then {missionNamespace setVariable ["base_para_SIA ZGM Essentials",[[_item132,_item134,_item135,_item362,_item371,_item372],[]]];};
if (_layer123) then {missionNamespace setVariable ["base_para_Skeet",[[_item124,_item126],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item58) then {
		this = _item58;
		call{arsenals pushBack this};
	};
	if !(isnull _item124) then {
		this = _item124;
		call{this addAction ["PULL","scripts\launch_skeet.sqf"];};
	};
	if !(isnull _item371) then {
		this = _item371;
		call{arsenals pushBack this};
	};
	if !(isnull _item372) then {
		this = _item372;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item30) then {_item30 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item39) then {_item39 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item40) then {_item40 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item43) then {_item43 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item49) then {_item49 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item55) then {_item55 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
