// Export of 'base_mil.isladuala3' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer456 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer436 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer239 = (_allWhitelisted || {"shoothouse pit" in _layerWhiteList}) && {!("shoothouse pit" in _layerBlackList)};
private _layer237 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer234 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer459 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item509 = "";
if (_layerRoot) then {
	_item509 = createMarker ["marker_0",[3626.16,3024.65,0]];
	_this = _item509;
	_markers pushback _this;
	_markerIDs pushback 509;
	_this setMarkerType "mil_flag";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item500 = grpNull;
if (_layerRoot) then {
	_item500 = createGroup west;
	_this = _item500;
	_groups pushback _this;
	_groupIDs pushback 500;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item230 = objNull;
if (_layer459) then {
	_item230 = createVehicle ["Land_InfoStand_V1_F",[3641.37,2974.48,1.00323],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [3641.37,2974.49,16.7098];
	_this setVectorDirAndUp [[-0.999985,0.00543385,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item236 = objNull;
if (_layer234 && _layer459) then {
	_item236 = createVehicle ["Land_BarGate_F",[3654.86,2954.18,0],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [3654.86,2954.18,19.135];
	_this setVectorDirAndUp [[0.413055,-0.910631,0.0116853],[0.0179995,0.0209915,0.999618]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item238 = objNull;
if (_layer237 && _layer459) then {
	_item238 = createVehicle ["Land_RepairDepot_01_tan_F",[3672.65,2982.64,-0.00439548],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [3672.55,2982.56,17.686];
	_this setVectorDirAndUp [[0.999209,0.0104721,0.0383714],[-0.0379725,-0.0359506,0.998632]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item240 = objNull;
if (_layer239 && _layer459) then {
	_item240 = createVehicle ["Land_InfoStand_V1_F",[3585.65,3201.14,-0.0182362],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [3585.65,3201.14,15.6969];
	_this setVectorDirAndUp [[-0.999289,0.0345456,0.0151269],[0.0149977,-0.00399621,0.99988]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item241 = objNull;
if (_layer239 && _layer459) then {
	_item241 = createVehicle ["Land_Scaffolding_New_F",[3563.57,3182.51,0],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [3563.57,3182.51,18.2639];
	_this setVectorDirAndUp [[0.999397,-0.0347336,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item242 = objNull;
if (_layer239 && _layer459) then {
	_item242 = createVehicle ["Land_Shoot_House_Panels_Window_F",[3565.45,3214.94,0],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [3565.45,3214.94,17.1181];
	_this setVectorDirAndUp [[0.998852,-0.04512,-0.0160707],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item243 = objNull;
if (_layer239 && _layer459) then {
	_item243 = createVehicle ["Land_Shoot_House_Panels_Window_F",[3565.07,3207.01,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [3565.07,3207.01,17.0698];
	_this setVectorDirAndUp [[0.99893,-0.0451014,-0.0102154],[0.0100004,-0.00499109,0.999938]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item244 = objNull;
if (_layer239 && _layer459) then {
	_item244 = createVehicle ["Land_Shoot_House_Panels_Window_F",[3572.54,3216.62,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [3572.54,3216.62,17.0234];
	_this setVectorDirAndUp [[-0.99893,0.0451317,0.0100797],[0.0100004,-0.00198337,0.999948]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item245 = objNull;
if (_layer239 && _layer459) then {
	_item245 = createVehicle ["Land_Shoot_House_Panels_Window_F",[3572.18,3208.63,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [3572.18,3208.63,17.0082];
	_this setVectorDirAndUp [[-0.99893,0.0451113,0.0101705],[0.0100004,-0.00399646,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item248 = objNull;
if (_layer239 && _layer459) then {
	_item248 = createVehicle ["Land_Shoot_House_Panels_Window_F",[3567.97,3203.68,0],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [3567.97,3203.68,17.0242];
	_this setVectorDirAndUp [[-0.0160361,-0.99986,-0.00483032],[0.0100004,-0.00499109,0.999938]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item249 = objNull;
if (_layer239 && _layer459) then {
	_item249 = createVehicle ["Land_Shoot_House_Wall_F",[3555.47,3215.38,0],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [3555.47,3215.38,17.2963];
	_this setVectorDirAndUp [[0.998643,-0.0449426,-0.0263232],[0.0259893,-0.00799789,0.99963]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item251 = objNull;
if (_layer239 && _layer459) then {
	_item251 = createVehicle ["Land_Shoot_House_Wall_F",[3562.05,3206.08,0],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [3562.05,3206.08,17.0898];
	_this setVectorDirAndUp [[-0.0451511,-0.998951,-0.00767641],[0.00699926,-0.0080004,0.999943]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item252 = objNull;
if (_layer239 && _layer459) then {
	_item252 = createVehicle ["Land_Shoot_House_Wall_F",[3555.11,3207.39,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [3555.11,3207.39,17.2369];
	_this setVectorDirAndUp [[0.998668,-0.0449506,-0.0253261],[0.0249911,-0.00799809,0.999656]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item253 = objNull;
if (_layer239 && _layer459) then {
	_item253 = createVehicle ["Land_Shoot_House_Wall_F",[3556.7,3220.33,0],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [3556.7,3220.33,17.3027];
	_this setVectorDirAndUp [[-0.0451369,-0.998977,-0.00281902],[0.0259917,-0.00399531,0.999654]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item254 = objNull;
if (_layer239 && _layer459) then {
	_item254 = createVehicle ["Land_Shoot_House_Wall_F",[3562.68,3220.06,0],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [3562.68,3220.06,17.1733];
	_this setVectorDirAndUp [[-0.0451464,-0.998928,-0.0102663],[0.0159975,-0.0109984,0.999812]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item255 = objNull;
if (_layer239 && _layer459) then {
	_item255 = createVehicle ["Land_Shoot_House_Wall_F",[3560.68,3220.16,0],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [3560.68,3220.16,17.2063];
	_this setVectorDirAndUp [[-0.0451464,-0.998928,-0.0102663],[0.0159975,-0.0109984,0.999812]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item256 = objNull;
if (_layer239 && _layer459) then {
	_item256 = createVehicle ["Land_Shoot_House_Wall_F",[3555.38,3213.38,0],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [3555.38,3213.38,17.2814];
	_this setVectorDirAndUp [[0.998668,-0.0449253,-0.0253708],[0.0249911,-0.00899386,0.999647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item257 = objNull;
if (_layer239 && _layer459) then {
	_item257 = createVehicle ["Land_Shoot_House_Wall_F",[3555.2,3209.39,0],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [3555.2,3209.39,17.2507];
	_this setVectorDirAndUp [[0.998668,-0.0449506,-0.0253261],[0.0249911,-0.00799809,0.999656]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item258 = objNull;
if (_layer239 && _layer459) then {
	_item258 = createVehicle ["Land_Shoot_House_Wall_F",[3565.18,3208.95,0],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [3565.18,3208.95,17.0785];
	_this setVectorDirAndUp [[0.99893,-0.0451014,-0.0102154],[0.0100004,-0.00499109,0.999938]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item260 = objNull;
if (_layer239 && _layer459) then {
	_item260 = createVehicle ["Land_Shoot_House_Wall_F",[3555.29,3211.39,0],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [3555.29,3211.39,17.2657];
	_this setVectorDirAndUp [[0.998668,-0.0449253,-0.0253708],[0.0249911,-0.00899386,0.999647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item261 = objNull;
if (_layer239 && _layer459) then {
	_item261 = createVehicle ["Land_Shoot_House_Wall_F",[3555.65,3219.38,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [3555.65,3219.38,17.3236];
	_this setVectorDirAndUp [[0.998643,-0.0449426,-0.0263232],[0.0259893,-0.00799789,0.99963]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item262 = objNull;
if (_layer239 && _layer459) then {
	_item262 = createVehicle ["Land_Shoot_House_Wall_F",[3565.63,3218.93,0],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [3565.63,3218.93,17.1233];
	_this setVectorDirAndUp [[0.998852,-0.04512,-0.0160707],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item263 = objNull;
if (_layer239 && _layer459) then {
	_item263 = createVehicle ["Land_Shoot_House_Wall_F",[3558.69,3220.25,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [3558.69,3220.25,17.2505];
	_this setVectorDirAndUp [[-0.0451369,-0.998977,-0.00281902],[0.0259917,-0.00399531,0.999654]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item264 = objNull;
if (_layer239 && _layer459) then {
	_item264 = createVehicle ["Land_Shoot_House_Wall_F",[3559.01,3205.22,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [3559.01,3205.22,17.122];
	_this setVectorDirAndUp [[0.998668,-0.0449506,-0.0253261],[0.0249911,-0.00799809,0.999656]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item265 = objNull;
if (_layer239 && _layer459) then {
	_item265 = createVehicle ["Land_Shoot_House_Wall_F",[3561.91,3203.08,0],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [3561.91,3203.08,17.0668];
	_this setVectorDirAndUp [[0.998956,-0.0450944,-0.00735314],[0.00699926,-0.0080004,0.999943]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item266 = objNull;
if (_layer239 && _layer459) then {
	_item266 = createVehicle ["Land_Shoot_House_Wall_F",[3562,3205.08,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [3562,3205.08,17.0821];
	_this setVectorDirAndUp [[0.998956,-0.0450944,-0.00735314],[0.00699926,-0.0080004,0.999943]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item268 = objNull;
if (_layer239 && _layer459) then {
	_item268 = createVehicle ["Land_Shoot_House_Wall_F",[3558.83,3201.22,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [3558.83,3201.22,17.0946];
	_this setVectorDirAndUp [[0.998668,-0.0449506,-0.0253261],[0.0249911,-0.00799809,0.999656]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item269 = objNull;
if (_layer239 && _layer459) then {
	_item269 = createVehicle ["Land_Shoot_House_Wall_F",[3564.68,3219.98,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [3564.68,3219.98,17.1405];
	_this setVectorDirAndUp [[-0.0451464,-0.99898,-0.00125912],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item270 = objNull;
if (_layer239 && _layer459) then {
	_item270 = createVehicle ["Land_Shoot_House_Wall_F",[3565.54,3216.93,0],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [3565.54,3216.93,17.1207];
	_this setVectorDirAndUp [[0.998852,-0.04512,-0.0160707],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item271 = objNull;
if (_layer239 && _layer459) then {
	_item271 = createVehicle ["Land_Shoot_House_Wall_F",[3566.82,3200.86,0],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [3566.82,3200.86,17.0146];
	_this setVectorDirAndUp [[-0.998956,0.0450942,0.00735314],[0.00699926,-0.0080004,0.999943]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item272 = objNull;
if (_layer239 && _layer459) then {
	_item272 = createVehicle ["Land_Shoot_House_Wall_F",[3566.91,3202.86,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [3566.91,3202.86,17.03];
	_this setVectorDirAndUp [[-0.998956,0.0450942,0.00735314],[0.00699926,-0.0080004,0.999943]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item275 = objNull;
if (_layer239 && _layer459) then {
	_item275 = createVehicle ["Land_Shoot_House_Wall_F",[3570.56,3219.85,0.0472727],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [3570.56,3219.85,17.0964];
	_this setVectorDirAndUp [[0.0451454,0.99898,0.00125914],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item276 = objNull;
if (_layer239 && _layer459) then {
	_item276 = createVehicle ["Land_Shoot_House_Wall_F",[3566.5,3215.89,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [3566.5,3215.89,17.1033];
	_this setVectorDirAndUp [[0.0451454,0.99898,0.00125914],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item277 = objNull;
if (_layer239 && _layer459) then {
	_item277 = createVehicle ["Land_Shoot_House_Wall_F",[3568.61,3219.89,-0.0128298],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [3568.61,3219.89,17.0647];
	_this setVectorDirAndUp [[0.0451454,0.99898,0.00125914],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item278 = objNull;
if (_layer239 && _layer459) then {
	_item278 = createVehicle ["Land_Shoot_House_Wall_F",[3565.27,3210.94,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [3565.27,3210.94,17.0903];
	_this setVectorDirAndUp [[0.99893,-0.0450705,-0.0103454],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item279 = objNull;
if (_layer239 && _layer459) then {
	_item279 = createVehicle ["Land_Shoot_House_Wall_F",[3566.03,3205.93,0],[],0,"CAN_COLLIDE"];
	_this = _item279;
	_objects pushback _this;
	_objectIDs pushback 279;
	_this setPosWorld [3566.03,3205.93,17.0548];
	_this setVectorDirAndUp [[0.0451489,0.99897,0.00453472],[0.0100004,-0.00499109,0.999938]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item280 = objNull;
if (_layer239 && _layer459) then {
	_item280 = createVehicle ["Land_Shoot_House_Wall_F",[3568.03,3205.84,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item280;
	_objects pushback _this;
	_objectIDs pushback 280;
	_this setPosWorld [3568.03,3205.84,17.0344];
	_this setVectorDirAndUp [[0.0451489,0.99897,0.00453472],[0.0100004,-0.00499109,0.999938]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item282 = objNull;
if (_layer239 && _layer459) then {
	_item282 = createVehicle ["Land_Shoot_House_Wall_F",[3558.92,3203.22,0],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [3558.92,3203.22,17.1083];
	_this setVectorDirAndUp [[0.998668,-0.0449506,-0.0253261],[0.0249911,-0.00799809,0.999656]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item283 = objNull;
if (_layer239 && _layer459) then {
	_item283 = createVehicle ["Land_Shoot_House_Wall_F",[3561.64,3219.11,0],[],0,"CAN_COLLIDE"];
	_this = _item283;
	_objects pushback _this;
	_objectIDs pushback 283;
	_this setPosWorld [3561.64,3219.11,17.1875];
	_this setVectorDirAndUp [[0.998852,-0.04512,-0.0160707],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item284 = objNull;
if (_layer239 && _layer459) then {
	_item284 = createVehicle ["Land_Shoot_House_Wall_F",[3561.46,3215.12,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item284;
	_objects pushback _this;
	_objectIDs pushback 284;
	_this setPosWorld [3561.46,3215.12,17.1619];
	_this setVectorDirAndUp [[0.99893,-0.0450705,-0.0103454],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item285 = objNull;
if (_layer239 && _layer459) then {
	_item285 = createVehicle ["Land_Shoot_House_Wall_F",[3564.32,3211.98,0],[],0,"CAN_COLLIDE"];
	_this = _item285;
	_objects pushback _this;
	_objectIDs pushback 285;
	_this setPosWorld [3564.32,3211.98,17.1082];
	_this setVectorDirAndUp [[0.0451489,0.998952,0.00754118],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item286 = objNull;
if (_layer239 && _layer459) then {
	_item286 = createVehicle ["Land_Shoot_House_Wall_F",[3562.32,3212.07,0],[],0,"CAN_COLLIDE"];
	_this = _item286;
	_objects pushback _this;
	_objectIDs pushback 286;
	_this setPosWorld [3562.32,3212.07,17.1289];
	_this setVectorDirAndUp [[0.0451489,0.998952,0.00754118],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item287 = objNull;
if (_layer239 && _layer459) then {
	_item287 = createVehicle ["Land_Shoot_House_Wall_F",[3561.37,3213.12,0],[],0,"CAN_COLLIDE"];
	_this = _item287;
	_objects pushback _this;
	_objectIDs pushback 287;
	_this setPosWorld [3561.37,3213.12,17.1468];
	_this setVectorDirAndUp [[0.99893,-0.0450705,-0.0103454],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item288 = objNull;
if (_layer239 && _layer459) then {
	_item288 = createVehicle ["Land_Shoot_House_Wall_F",[3559.1,3207.22,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item288;
	_objects pushback _this;
	_objectIDs pushback 288;
	_this setPosWorld [3559.1,3207.22,17.1357];
	_this setVectorDirAndUp [[-0.998668,0.0449504,0.0253261],[0.0249911,-0.00799809,0.999656]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item289 = objNull;
if (_layer239 && _layer459) then {
	_item289 = createVehicle ["Land_Shoot_House_Wall_F",[3559.19,3209.22,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [3559.19,3209.22,17.1494];
	_this setVectorDirAndUp [[-0.998668,0.0449504,0.0253261],[0.0249911,-0.00799809,0.999656]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item291 = objNull;
if (_layer239 && _layer459) then {
	_item291 = createVehicle ["Land_Shoot_House_Wall_F",[3559.38,3213.21,0],[],0,"CAN_COLLIDE"];
	_this = _item291;
	_objects pushback _this;
	_objectIDs pushback 291;
	_this setPosWorld [3559.38,3213.21,17.1774];
	_this setVectorDirAndUp [[-0.998643,0.0449425,0.0263232],[0.0259893,-0.00799789,0.99963]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item292 = objNull;
if (_layer239 && _layer459) then {
	_item292 = createVehicle ["Land_Shoot_House_Wall_F",[3558.42,3214.25,0],[],0,"CAN_COLLIDE"];
	_this = _item292;
	_objects pushback _this;
	_objectIDs pushback 292;
	_this setPosWorld [3558.42,3214.25,17.2105];
	_this setVectorDirAndUp [[-0.0451369,-0.998958,-0.006819],[0.0259893,-0.00799789,0.99963]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item293 = objNull;
if (_layer239 && _layer459) then {
	_item293 = createVehicle ["Land_Shoot_House_Wall_F",[3556.42,3214.34,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item293;
	_objects pushback _this;
	_objectIDs pushback 293;
	_this setPosWorld [3556.42,3214.34,17.2632];
	_this setVectorDirAndUp [[-0.0451369,-0.998958,-0.006819],[0.0259893,-0.00799789,0.99963]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item295 = objNull;
if (_layer239 && _layer459) then {
	_item295 = createVehicle ["Land_Shoot_House_Wall_F",[3561.28,3211.12,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item295;
	_objects pushback _this;
	_objectIDs pushback 295;
	_this setPosWorld [3561.28,3211.12,17.1317];
	_this setVectorDirAndUp [[-0.99893,0.0450703,0.0103454],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item296 = objNull;
if (_layer239 && _layer459) then {
	_item296 = createVehicle ["Land_Shoot_House_Wall_F",[3561.09,3207.12,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item296;
	_objects pushback _this;
	_objectIDs pushback 296;
	_this setPosWorld [3561.09,3207.12,17.1048];
	_this setVectorDirAndUp [[-0.998956,0.0450942,0.00735314],[0.00699926,-0.0080004,0.999943]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item297 = objNull;
if (_layer239 && _layer459) then {
	_item297 = createVehicle ["Land_Shoot_House_Wall_F",[3573.04,3205.58,0],[],0,"CAN_COLLIDE"];
	_this = _item297;
	_objects pushback _this;
	_objectIDs pushback 297;
	_this setPosWorld [3573.04,3205.58,16.9861];
	_this setVectorDirAndUp [[-0.0451503,-0.99897,-0.00458003],[0.00899667,-0.00499113,0.999947]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item298 = objNull;
if (_layer239 && _layer459) then {
	_item298 = createVehicle ["Land_Shoot_House_Wall_F",[3572.63,3218.62,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item298;
	_objects pushback _this;
	_objectIDs pushback 298;
	_this setPosWorld [3572.63,3218.62,17.0252];
	_this setVectorDirAndUp [[0.99892,-0.045141,-0.0110326],[0.0109998,-0.000976328,0.999939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item299 = objNull;
if (_layer239 && _layer459) then {
	_item299 = createVehicle ["Land_Shoot_House_Wall_F",[3582.35,3212.17,0],[],0,"CAN_COLLIDE"];
	_this = _item299;
	_objects pushback _this;
	_objectIDs pushback 299;
	_this setPosWorld [3582.35,3212.17,16.8954];
	_this setVectorDirAndUp [[0.998818,-0.0451342,-0.0180218],[0.0179961,-0.000976229,0.999838]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item300 = objNull;
if (_layer239 && _layer459) then {
	_item300 = createVehicle ["Land_Shoot_House_Wall_F",[3573.67,3219.57,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item300;
	_objects pushback _this;
	_objectIDs pushback 300;
	_this setPosWorld [3573.67,3219.57,17.0147];
	_this setVectorDirAndUp [[-0.0451494,-0.99898,-0.000478729],[0.0109998,-0.000976328,0.999939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item301 = objNull;
if (_layer239 && _layer459) then {
	_item301 = createVehicle ["Land_Shoot_House_Wall_F",[3577.03,3205.4,0],[],0,"CAN_COLLIDE"];
	_this = _item301;
	_objects pushback _this;
	_objectIDs pushback 301;
	_this setPosWorld [3577.03,3205.4,16.9468];
	_this setVectorDirAndUp [[-0.0451499,-0.998974,-0.00354105],[0.0100004,-0.00399646,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item302 = objNull;
if (_layer239 && _layer459) then {
	_item302 = createVehicle ["Land_Shoot_House_Wall_F",[3572.44,3214.62,0],[],0,"CAN_COLLIDE"];
	_this = _item302;
	_objects pushback _this;
	_objectIDs pushback 302;
	_this setPosWorld [3572.44,3214.62,17.0203];
	_this setVectorDirAndUp [[0.99893,-0.0451319,-0.0100797],[0.0100004,-0.00198337,0.999948]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item303 = objNull;
if (_layer239 && _layer459) then {
	_item303 = createVehicle ["Land_Shoot_House_Wall_F",[3572.08,3206.63,0],[],0,"CAN_COLLIDE"];
	_this = _item303;
	_objects pushback _this;
	_objectIDs pushback 303;
	_this setPosWorld [3572.08,3206.63,16.9999];
	_this setVectorDirAndUp [[0.99894,-0.0451064,-0.00921275],[0.00899667,-0.00499113,0.999947]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item304 = objNull;
if (_layer239 && _layer459) then {
	_item304 = createVehicle ["Land_Shoot_House_Wall_F",[3577.67,3219.39,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item304;
	_objects pushback _this;
	_objectIDs pushback 304;
	_this setPosWorld [3577.67,3219.39,16.9706];
	_this setVectorDirAndUp [[-0.0451494,-0.99898,-0.000478729],[0.0109998,-0.000976328,0.999939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item305 = objNull;
if (_layer239 && _layer459) then {
	_item305 = createVehicle ["Land_Shoot_House_Wall_F",[3579.67,3219.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item305;
	_objects pushback _this;
	_objectIDs pushback 305;
	_this setPosWorld [3579.67,3219.3,16.9485];
	_this setVectorDirAndUp [[-0.0451494,-0.99898,-0.000478729],[0.0109998,-0.000976328,0.999939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item306 = objNull;
if (_layer239 && _layer459) then {
	_item306 = createVehicle ["Land_Shoot_House_Wall_F",[3581.66,3219.21,0],[],0,"CAN_COLLIDE"];
	_this = _item306;
	_objects pushback _this;
	_objectIDs pushback 306;
	_this setPosWorld [3581.66,3219.21,16.9261];
	_this setVectorDirAndUp [[-0.0451516,-0.998885,-0.0137592],[0.00499134,-0.0139987,0.99989]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item307 = objNull;
if (_layer239 && _layer459) then {
	_item307 = createVehicle ["Land_Shoot_House_Wall_F",[3582.62,3218.17,0],[],0,"CAN_COLLIDE"];
	_this = _item307;
	_objects pushback _this;
	_objectIDs pushback 307;
	_this setPosWorld [3582.62,3218.17,16.9067];
	_this setVectorDirAndUp [[0.998968,-0.0450776,-0.00561783],[0.00499134,-0.0139987,0.99989]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item308 = objNull;
if (_layer239 && _layer459) then {
	_item308 = createVehicle ["Land_Shoot_House_Wall_F",[3582.53,3216.17,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item308;
	_objects pushback _this;
	_objectIDs pushback 308;
	_this setPosWorld [3582.53,3216.17,16.8961];
	_this setVectorDirAndUp [[0.998818,-0.0451342,-0.0180218],[0.0179961,-0.000976229,0.999838]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item309 = objNull;
if (_layer239 && _layer459) then {
	_item309 = createVehicle ["Land_Shoot_House_Wall_F",[3582.44,3214.17,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item309;
	_objects pushback _this;
	_objectIDs pushback 309;
	_this setPosWorld [3582.44,3214.17,16.8958];
	_this setVectorDirAndUp [[0.998818,-0.0451342,-0.0180218],[0.0179961,-0.000976229,0.999838]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item310 = objNull;
if (_layer239 && _layer459) then {
	_item310 = createVehicle ["Land_Shoot_House_Wall_F",[3581.03,3205.22,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item310;
	_objects pushback _this;
	_objectIDs pushback 310;
	_this setPosWorld [3581.03,3205.22,16.9009];
	_this setVectorDirAndUp [[-0.0451471,-0.998975,-0.00331541],[0.0149977,-0.00399621,0.99988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item311 = objNull;
if (_layer239 && _layer459) then {
	_item311 = createVehicle ["Land_Shoot_House_Wall_F",[3582.26,3210.17,0],[],0,"CAN_COLLIDE"];
	_this = _item311;
	_objects pushback _this;
	_objectIDs pushback 311;
	_this setPosWorld [3582.26,3210.17,16.895];
	_this setVectorDirAndUp [[0.998818,-0.0451342,-0.0180218],[0.0179961,-0.000976229,0.999838]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item313 = objNull;
if (_layer239 && _layer459) then {
	_item313 = createVehicle ["Land_Shoot_House_Wall_F",[3572.81,3200.59,0],[],0,"CAN_COLLIDE"];
	_this = _item313;
	_objects pushback _this;
	_objectIDs pushback 313;
	_this setPosWorld [3572.81,3200.59,16.9631];
	_this setVectorDirAndUp [[0.99894,-0.0451064,-0.00921275],[0.00899667,-0.00499113,0.999947]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item314 = objNull;
if (_layer239 && _layer459) then {
	_item314 = createVehicle ["Land_Shoot_House_Wall_F",[3572.9,3202.59,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item314;
	_objects pushback _this;
	_objectIDs pushback 314;
	_this setPosWorld [3572.9,3202.59,16.9723];
	_this setVectorDirAndUp [[0.99894,-0.0451064,-0.00921275],[0.00899667,-0.00499113,0.999947]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item315 = objNull;
if (_layer239 && _layer459) then {
	_item315 = createVehicle ["Land_Shoot_House_Wall_F",[3572.99,3204.58,0],[],0,"CAN_COLLIDE"];
	_this = _item315;
	_objects pushback _this;
	_objectIDs pushback 315;
	_this setPosWorld [3572.99,3204.58,16.9815];
	_this setVectorDirAndUp [[0.99894,-0.0451064,-0.00921275],[0.00899667,-0.00499113,0.999947]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item316 = objNull;
if (_layer239 && _layer459) then {
	_item316 = createVehicle ["Land_Shoot_House_Wall_F",[3575.99,3204.45,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item316;
	_objects pushback _this;
	_objectIDs pushback 316;
	_this setPosWorld [3575.99,3204.45,16.9534];
	_this setVectorDirAndUp [[0.99893,-0.0451115,-0.0101705],[0.0100004,-0.00399646,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item317 = objNull;
if (_layer239 && _layer459) then {
	_item317 = createVehicle ["Land_Shoot_House_Wall_F",[3575.9,3202.45,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item317;
	_objects pushback _this;
	_objectIDs pushback 317;
	_this setPosWorld [3575.9,3202.45,16.9447];
	_this setVectorDirAndUp [[0.99894,-0.0451064,-0.00921275],[0.00899667,-0.00499113,0.999947]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item318 = objNull;
if (_layer239 && _layer459) then {
	_item318 = createVehicle ["Land_Shoot_House_Wall_F",[3575.81,3200.45,0],[],0,"CAN_COLLIDE"];
	_this = _item318;
	_objects pushback _this;
	_objectIDs pushback 318;
	_this setPosWorld [3575.81,3200.45,16.9355];
	_this setVectorDirAndUp [[0.99894,-0.0451064,-0.00921275],[0.00899667,-0.00499113,0.999947]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item321 = objNull;
if (_layer239 && _layer459) then {
	_item321 = createVehicle ["Land_Shoot_House_Wall_F",[3571.22,3209.67,0],[],0,"CAN_COLLIDE"];
	_this = _item321;
	_objects pushback _this;
	_objectIDs pushback 321;
	_this setPosWorld [3571.22,3209.67,17.022];
	_this setVectorDirAndUp [[-0.0451499,-0.998974,-0.00354105],[0.0100004,-0.00399646,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item322 = objNull;
if (_layer239 && _layer459) then {
	_item322 = createVehicle ["Land_Shoot_House_Wall_F",[3569.22,3209.76,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item322;
	_objects pushback _this;
	_objectIDs pushback 322;
	_this setPosWorld [3569.22,3209.76,17.0421];
	_this setVectorDirAndUp [[-0.0451499,-0.99897,-0.00453471],[0.0100004,-0.00499109,0.999938]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item323 = objNull;
if (_layer239 && _layer459) then {
	_item323 = createVehicle ["Land_Shoot_House_Wall_F",[3575.67,3219.48,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item323;
	_objects pushback _this;
	_objectIDs pushback 323;
	_this setPosWorld [3575.67,3219.48,16.9926];
	_this setVectorDirAndUp [[-0.0451494,-0.99898,-0.000478729],[0.0109998,-0.000976328,0.999939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item326 = objNull;
if (_layer239 && _layer459) then {
	_item326 = createVehicle ["Land_Shoot_House_Wall_F",[3566.58,3219.93,-0.0770159],[],0,"CAN_COLLIDE"];
	_this = _item326;
	_objects pushback _this;
	_objectIDs pushback 326;
	_this setPosWorld [3566.58,3219.93,17.0331];
	_this setVectorDirAndUp [[-0.0451499,-0.998979,-0.00152991],[0.0100004,-0.00198337,0.999948]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item328 = objNull;
if (_layer239 && _layer459) then {
	_item328 = createVehicle ["Land_Shoot_House_Wall_F",[3582.08,3206.18,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item328;
	_objects pushback _this;
	_objectIDs pushback 328;
	_this setPosWorld [3582.08,3206.18,16.8891];
	_this setVectorDirAndUp [[0.998868,-0.0450915,-0.0151627],[0.0149977,-0.00399621,0.99988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item331 = objNull;
if (_layer239 && _layer459) then {
	_item331 = createVehicle ["Land_Shoot_House_Wall_F",[3572.23,3219.75,0.0205355],[],0,"CAN_COLLIDE"];
	_this = _item331;
	_objects pushback _this;
	_objectIDs pushback 331;
	_this setPosWorld [3572.23,3219.75,17.0512];
	_this setVectorDirAndUp [[-0.0451464,-0.99898,-0.00125912],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item332 = objNull;
if (_layer239 && _layer459) then {
	_item332 = createVehicle ["Land_Shoot_House_Wall_F",[3579.04,3205.31,0],[],0,"CAN_COLLIDE"];
	_this = _item332;
	_objects pushback _this;
	_objectIDs pushback 332;
	_this setPosWorld [3579.04,3205.31,16.9264];
	_this setVectorDirAndUp [[-0.0451499,-0.998974,-0.00354105],[0.0100004,-0.00399646,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item333 = objNull;
if (_layer239 && _layer459) then {
	_item333 = createVehicle ["Land_Shoot_House_Wall_F",[3577.08,3206.4,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item333;
	_objects pushback _this;
	_objectIDs pushback 333;
	_this setPosWorld [3577.08,3206.4,16.9503];
	_this setVectorDirAndUp [[0.99893,-0.0451115,-0.0101705],[0.0100004,-0.00399646,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item334 = objNull;
if (_layer239 && _layer459) then {
	_item334 = createVehicle ["Land_Shoot_House_Wall_F",[3577.17,3208.4,0],[],0,"CAN_COLLIDE"];
	_this = _item334;
	_objects pushback _this;
	_objectIDs pushback 334;
	_this setPosWorld [3577.17,3208.4,16.9574];
	_this setVectorDirAndUp [[0.99893,-0.0451115,-0.0101705],[0.0100004,-0.00399646,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item335 = objNull;
if (_layer239 && _layer459) then {
	_item335 = createVehicle ["Land_Shoot_House_Wall_F",[3577.26,3210.4,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item335;
	_objects pushback _this;
	_objectIDs pushback 335;
	_this setPosWorld [3577.26,3210.4,16.9637];
	_this setVectorDirAndUp [[0.99893,-0.0451319,-0.0100797],[0.0100004,-0.00198337,0.999948]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item336 = objNull;
if (_layer239 && _layer459) then {
	_item336 = createVehicle ["Land_Shoot_House_Wall_F",[3578.31,3211.35,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item336;
	_objects pushback _this;
	_objectIDs pushback 336;
	_this setPosWorld [3578.31,3211.35,16.9552];
	_this setVectorDirAndUp [[-0.0451499,-0.998979,-0.00152991],[0.0100004,-0.00198337,0.999948]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item337 = objNull;
if (_layer239 && _layer459) then {
	_item337 = createVehicle ["Land_Shoot_House_Wall_F",[3576.4,3216.42,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item337;
	_objects pushback _this;
	_objectIDs pushback 337;
	_this setPosWorld [3576.4,3216.42,16.9815];
	_this setVectorDirAndUp [[-0.99892,0.0451409,0.0110326],[0.0109998,-0.000976328,0.999939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item338 = objNull;
if (_layer239 && _layer459) then {
	_item338 = createVehicle ["Land_Shoot_House_Wall_F",[3577.35,3215.38,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item338;
	_objects pushback _this;
	_objectIDs pushback 338;
	_this setPosWorld [3577.35,3215.38,16.97];
	_this setVectorDirAndUp [[0.0451484,0.99898,0.00047874],[0.0109998,-0.000976328,0.999939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item339 = objNull;
if (_layer239 && _layer459) then {
	_item339 = createVehicle ["Land_Shoot_House_Wall_F",[3579.35,3215.29,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item339;
	_objects pushback _this;
	_objectIDs pushback 339;
	_this setPosWorld [3579.35,3215.29,16.9479];
	_this setVectorDirAndUp [[0.0451484,0.99898,0.00047874],[0.0109998,-0.000976328,0.999939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item340 = objNull;
if (_layer239 && _layer459) then {
	_item340 = createVehicle ["Land_Shoot_House_Wall_F",[3580.3,3214.25,0],[],0,"CAN_COLLIDE"];
	_this = _item340;
	_objects pushback _this;
	_objectIDs pushback 340;
	_this setPosWorld [3580.3,3214.25,16.9343];
	_this setVectorDirAndUp [[-0.998818,0.045134,0.0180218],[0.0179961,-0.000976229,0.999838]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item341 = objNull;
if (_layer239 && _layer459) then {
	_item341 = createVehicle ["Land_Shoot_House_Wall_F",[3581.26,3213.2,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item341;
	_objects pushback _this;
	_objectIDs pushback 341;
	_this setPosWorld [3581.26,3213.2,16.9161];
	_this setVectorDirAndUp [[0.0451438,0.99898,0.000162847],[0.0179961,-0.000976229,0.999838]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item343 = objNull;
if (_layer239 && _layer459) then {
	_item343 = createVehicle ["Land_Shoot_House_Wall_F",[3563.06,3184.01,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item343;
	_objects pushback _this;
	_objectIDs pushback 343;
	_this setPosWorld [3563.06,3184.01,17.1448];
	_this setVectorDirAndUp [[-0.0450356,-0.997294,0.0580985],[0.071814,0.0547751,0.995913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item344 = objNull;
if (_layer239 && _layer459) then {
	_item344 = createVehicle ["Land_Shoot_House_Wall_F",[3563.51,3194,0],[],0,"CAN_COLLIDE"];
	_this = _item344;
	_objects pushback _this;
	_objectIDs pushback 344;
	_this setPosWorld [3563.51,3194,17.0014];
	_this setVectorDirAndUp [[-0.0451489,-0.998979,-0.00143964],[0.0119996,-0.00198332,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item345 = objNull;
if (_layer239 && _layer459) then {
	_item345 = createVehicle ["Land_Shoot_House_Wall_F",[3567.32,3189.83,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item345;
	_objects pushback _this;
	_objectIDs pushback 345;
	_this setPosWorld [3567.32,3189.83,16.9468];
	_this setVectorDirAndUp [[-0.0451489,-0.99897,-0.00444444],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item346 = objNull;
if (_layer239 && _layer459) then {
	_item346 = createVehicle ["Land_Shoot_House_Wall_F",[3565.78,3199.91,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item346;
	_objects pushback _this;
	_objectIDs pushback 346;
	_this setPosWorld [3565.78,3199.91,17.0144];
	_this setVectorDirAndUp [[-0.0451511,-0.998958,-0.0066761],[0.00699926,-0.00699909,0.999951]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item347 = objNull;
if (_layer239 && _layer459) then {
	_item347 = createVehicle ["Land_Shoot_House_Wall_F",[3565.05,3183.92,0],[],0,"CAN_COLLIDE"];
	_this = _item347;
	_objects pushback _this;
	_objectIDs pushback 347;
	_this setPosWorld [3565.05,3183.92,17.0062];
	_this setVectorDirAndUp [[-0.0450356,-0.997294,0.0580985],[0.071814,0.0547751,0.995913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item350 = objNull;
if (_layer239 && _layer459) then {
	_item350 = createVehicle ["Land_Shoot_House_Wall_F",[3567.05,3183.83,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item350;
	_objects pushback _this;
	_objectIDs pushback 350;
	_this setPosWorld [3567.05,3183.83,16.9201];
	_this setVectorDirAndUp [[-0.0451489,-0.99897,-0.00444444],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item351 = objNull;
if (_layer239 && _layer459) then {
	_item351 = createVehicle ["Land_Shoot_House_Wall_F",[3567.05,3183.83,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item351;
	_objects pushback _this;
	_objectIDs pushback 351;
	_this setPosWorld [3567.05,3183.83,16.9201];
	_this setVectorDirAndUp [[-0.0451489,-0.99897,-0.00444444],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item352 = objNull;
if (_layer239 && _layer459) then {
	_item352 = createVehicle ["Land_Shoot_House_Wall_F",[3554.65,3197.4,0],[],0,"CAN_COLLIDE"];
	_this = _item352;
	_objects pushback _this;
	_objectIDs pushback 352;
	_this setPosWorld [3554.65,3197.4,17.1359];
	_this setVectorDirAndUp [[0.998852,-0.04512,-0.0160707],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item353 = objNull;
if (_layer239 && _layer459) then {
	_item353 = createVehicle ["Land_Shoot_House_Wall_F",[3565.5,3193.91,0],[],0,"CAN_COLLIDE"];
	_this = _item353;
	_objects pushback _this;
	_objectIDs pushback 353;
	_this setPosWorld [3565.5,3193.91,16.9773];
	_this setVectorDirAndUp [[-0.0451489,-0.998979,-0.00143964],[0.0119996,-0.00198332,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item354 = objNull;
if (_layer239 && _layer459) then {
	_item354 = createVehicle ["Land_Shoot_House_Wall_F",[3557.06,3184.28,2.86102e-006],[],0,"CAN_COLLIDE"];
	_this = _item354;
	_objects pushback _this;
	_objectIDs pushback 354;
	_this setPosWorld [3557.06,3184.28,17.3793];
	_this setVectorDirAndUp [[-0.0451499,-0.997448,0.0553117],[0.0100004,0.0549141,0.998441]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item355 = objNull;
if (_layer239 && _layer459) then {
	_item355 = createVehicle ["Land_Shoot_House_Wall_F",[3554.56,3195.41,0],[],0,"CAN_COLLIDE"];
	_this = _item355;
	_objects pushback _this;
	_objectIDs pushback 355;
	_this setPosWorld [3554.56,3195.41,17.1332];
	_this setVectorDirAndUp [[0.99893,-0.0450705,-0.0103454],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item356 = objNull;
if (_layer239 && _layer459) then {
	_item356 = createVehicle ["Land_Shoot_House_Wall_F",[3554.29,3189.41,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item356;
	_objects pushback _this;
	_objectIDs pushback 356;
	_this setPosWorld [3554.29,3189.41,17.1249];
	_this setVectorDirAndUp [[0.99893,-0.0456323,-0.0074955],[0.0100004,0.0549141,0.998441]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item357 = objNull;
if (_layer239 && _layer459) then {
	_item357 = createVehicle ["Land_Shoot_House_Wall_F",[3554.2,3187.41,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item357;
	_objects pushback _this;
	_objectIDs pushback 357;
	_this setPosWorld [3554.2,3187.41,17.2357];
	_this setVectorDirAndUp [[0.99893,-0.0456323,-0.0074955],[0.0100004,0.0549141,0.998441]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item358 = objNull;
if (_layer239 && _layer459) then {
	_item358 = createVehicle ["Land_Shoot_House_Wall_F",[3563.78,3200,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item358;
	_objects pushback _this;
	_objectIDs pushback 358;
	_this setPosWorld [3563.78,3200,17.029];
	_this setVectorDirAndUp [[-0.0451511,-0.998958,-0.0066761],[0.00699926,-0.00699909,0.999951]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item359 = objNull;
if (_layer239 && _layer459) then {
	_item359 = createVehicle ["Land_Shoot_House_Wall_F",[3562.78,3200.04,0],[],0,"CAN_COLLIDE"];
	_this = _item359;
	_objects pushback _this;
	_objectIDs pushback 359;
	_this setPosWorld [3562.78,3200.04,17.0364];
	_this setVectorDirAndUp [[-0.0451511,-0.998951,-0.00767641],[0.00699926,-0.0080004,0.999943]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item360 = objNull;
if (_layer239 && _layer459) then {
	_item360 = createVehicle ["Land_Shoot_House_Wall_F",[3554.74,3199.4,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item360;
	_objects pushback _this;
	_objectIDs pushback 360;
	_this setPosWorld [3554.74,3199.4,17.1385];
	_this setVectorDirAndUp [[0.998852,-0.04512,-0.0160707],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item361 = objNull;
if (_layer239 && _layer459) then {
	_item361 = createVehicle ["Land_Shoot_House_Wall_F",[3563.33,3190,0],[],0,"CAN_COLLIDE"];
	_this = _item361;
	_objects pushback _this;
	_objectIDs pushback 361;
	_this setPosWorld [3563.33,3190,16.9956];
	_this setVectorDirAndUp [[-0.0451489,-0.998979,-0.00143964],[0.0119996,-0.00198332,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item362 = objNull;
if (_layer239 && _layer459) then {
	_item362 = createVehicle ["Land_Shoot_House_Wall_F",[3565.05,3183.92,0],[],0,"CAN_COLLIDE"];
	_this = _item362;
	_objects pushback _this;
	_objectIDs pushback 362;
	_this setPosWorld [3565.05,3183.92,17.0062];
	_this setVectorDirAndUp [[-0.0450356,-0.997294,0.0580985],[0.071814,0.0547751,0.995913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item363 = objNull;
if (_layer239 && _layer459) then {
	_item363 = createVehicle ["Land_Shoot_House_Wall_F",[3555.06,3184.37,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item363;
	_objects pushback _this;
	_objectIDs pushback 363;
	_this setPosWorld [3555.06,3184.37,17.3915];
	_this setVectorDirAndUp [[-0.0451516,-0.997722,0.0501114],[0.00499134,0.0499367,0.99874]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item364 = objNull;
if (_layer239 && _layer459) then {
	_item364 = createVehicle ["Land_Shoot_House_Wall_F",[3561.51,3194.09,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item364;
	_objects pushback _this;
	_objectIDs pushback 364;
	_this setPosWorld [3561.51,3194.09,17.0256];
	_this setVectorDirAndUp [[-0.0451489,-0.998979,-0.00143964],[0.0119996,-0.00198332,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item365 = objNull;
if (_layer239 && _layer459) then {
	_item365 = createVehicle ["Land_Shoot_House_Wall_F",[3561.14,3185.88,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item365;
	_objects pushback _this;
	_objectIDs pushback 365;
	_this setPosWorld [3561.14,3185.88,17.1799];
	_this setVectorDirAndUp [[-0.0450356,-0.997294,0.0580985],[0.071814,0.0547751,0.995913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item366 = objNull;
if (_layer239 && _layer459) then {
	_item366 = createVehicle ["Land_Shoot_House_Wall_F",[3561.33,3190.1,0],[],0,"CAN_COLLIDE"];
	_this = _item366;
	_objects pushback _this;
	_objectIDs pushback 366;
	_this setPosWorld [3561.33,3190.1,17.0198];
	_this setVectorDirAndUp [[-0.0451489,-0.998979,-0.00143964],[0.0119996,-0.00198332,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item367 = objNull;
if (_layer239 && _layer459) then {
	_item367 = createVehicle ["Land_Shoot_House_Wall_F",[3557.33,3190.28,0],[],0,"CAN_COLLIDE"];
	_this = _item367;
	_objects pushback _this;
	_objectIDs pushback 367;
	_this setPosWorld [3557.33,3190.28,17.0644];
	_this setVectorDirAndUp [[-0.0451499,-0.998952,-0.00754117],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item368 = objNull;
if (_layer239 && _layer459) then {
	_item368 = createVehicle ["Land_Shoot_House_Wall_F",[3555.52,3194.36,0],[],0,"CAN_COLLIDE"];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [3555.52,3194.36,17.1152];
	_this setVectorDirAndUp [[-0.0451499,-0.998952,-0.00754117],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item369 = objNull;
if (_layer239 && _layer459) then {
	_item369 = createVehicle ["Land_Shoot_House_Wall_F",[3555.33,3190.37,0],[],0,"CAN_COLLIDE"];
	_this = _item369;
	_objects pushback _this;
	_objectIDs pushback 369;
	_this setPosWorld [3555.33,3190.37,17.0851];
	_this setVectorDirAndUp [[-0.0451499,-0.998952,-0.00754117],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item370 = objNull;
if (_layer239 && _layer459) then {
	_item370 = createVehicle ["Land_Shoot_House_Wall_F",[3565.32,3189.92,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item370;
	_objects pushback _this;
	_objectIDs pushback 370;
	_this setPosWorld [3565.32,3189.92,16.9712];
	_this setVectorDirAndUp [[-0.0451489,-0.99897,-0.00444444],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item371 = objNull;
if (_layer239 && _layer459) then {
	_item371 = createVehicle ["Land_Shoot_House_Wall_F",[3563.73,3199,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item371;
	_objects pushback _this;
	_objectIDs pushback 371;
	_this setPosWorld [3563.73,3199,17.0224];
	_this setVectorDirAndUp [[0.998956,-0.0451017,-0.00730798],[0.00699926,-0.00699909,0.999951]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item372 = objNull;
if (_layer239 && _layer459) then {
	_item372 = createVehicle ["Land_Shoot_House_Wall_F",[3563.64,3197,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item372;
	_objects pushback _this;
	_objectIDs pushback 372;
	_this setPosWorld [3563.64,3197,17.009];
	_this setVectorDirAndUp [[0.998956,-0.0451017,-0.00730798],[0.00699926,-0.00699909,0.999951]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item373 = objNull;
if (_layer239 && _layer459) then {
	_item373 = createVehicle ["Land_Shoot_House_Wall_F",[3563.55,3195,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item373;
	_objects pushback _this;
	_objectIDs pushback 373;
	_this setPosWorld [3563.55,3195,17.0029];
	_this setVectorDirAndUp [[0.998908,-0.0451279,-0.0120769],[0.0119996,-0.00198332,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item374 = objNull;
if (_layer239 && _layer459) then {
	_item374 = createVehicle ["Land_Shoot_House_Wall_F",[3566.67,3191.02,-0.00455856],[],0,"CAN_COLLIDE"];
	_this = _item374;
	_objects pushback _this;
	_objectIDs pushback 374;
	_this setPosWorld [3566.67,3191.02,16.9529];
	_this setVectorDirAndUp [[0.998908,-0.0450914,-0.0122126],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item375 = objNull;
if (_layer239 && _layer459) then {
	_item375 = createVehicle ["Land_Shoot_House_Wall_F",[3570.35,3192.79,-0.0221062],[],0,"CAN_COLLIDE"];
	_this = _item375;
	_objects pushback _this;
	_objectIDs pushback 375;
	_this setPosWorld [3570.35,3192.79,16.9073];
	_this setVectorDirAndUp [[0.998908,-0.0450914,-0.0122126],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item376 = objNull;
if (_layer239 && _layer459) then {
	_item376 = createVehicle ["Land_Shoot_House_Wall_F",[3566.09,3184.88,0],[],0,"CAN_COLLIDE"];
	_this = _item376;
	_objects pushback _this;
	_objectIDs pushback 376;
	_this setPosWorld [3566.09,3184.88,16.9368];
	_this setVectorDirAndUp [[0.998908,-0.0450914,-0.0122126],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item377 = objNull;
if (_layer239 && _layer459) then {
	_item377 = createVehicle ["Land_Shoot_House_Wall_F",[3554.11,3185.42,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item377;
	_objects pushback _this;
	_objectIDs pushback 377;
	_this setPosWorld [3554.11,3185.42,17.3441];
	_this setVectorDirAndUp [[0.998968,-0.0453444,-0.00272527],[0.00499134,0.0499367,0.99874]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item378 = objNull;
if (_layer239 && _layer459) then {
	_item378 = createVehicle ["Land_Shoot_House_Wall_F",[3560.28,3189.14,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item378;
	_objects pushback _this;
	_objectIDs pushback 378;
	_this setPosWorld [3560.28,3189.14,17.0624];
	_this setVectorDirAndUp [[0.996401,-0.0490234,-0.0691529],[0.071814,0.0547751,0.995913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item379 = objNull;
if (_layer239 && _layer459) then {
	_item379 = createVehicle ["Land_Shoot_House_Wall_F",[3565.78,3199.91,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item379;
	_objects pushback _this;
	_objectIDs pushback 379;
	_this setPosWorld [3565.78,3199.91,17.0144];
	_this setVectorDirAndUp [[-0.0451511,-0.998958,-0.0066761],[0.00699926,-0.00699909,0.999951]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item380 = objNull;
if (_layer239 && _layer459) then {
	_item380 = createVehicle ["Land_Shoot_House_Wall_F",[3554.38,3191.41,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item380;
	_objects pushback _this;
	_objectIDs pushback 380;
	_this setPosWorld [3554.38,3191.41,17.103];
	_this setVectorDirAndUp [[0.99893,-0.0450705,-0.0103454],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item381 = objNull;
if (_layer239 && _layer459) then {
	_item381 = createVehicle ["Land_Shoot_House_Wall_F",[3557.51,3194.27,0],[],0,"CAN_COLLIDE"];
	_this = _item381;
	_objects pushback _this;
	_objectIDs pushback 381;
	_this setPosWorld [3557.51,3194.27,17.0838];
	_this setVectorDirAndUp [[-0.0451464,-0.99898,-0.00125912],[0.0159975,-0.00198321,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item382 = objNull;
if (_layer239 && _layer459) then {
	_item382 = createVehicle ["Land_Shoot_House_Wall_F",[3571.05,3183.65,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item382;
	_objects pushback _this;
	_objectIDs pushback 382;
	_this setPosWorld [3571.05,3183.65,16.8712];
	_this setVectorDirAndUp [[-0.0451489,-0.99897,-0.00444444],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item383 = objNull;
if (_layer239 && _layer459) then {
	_item383 = createVehicle ["Land_Shoot_House_Wall_F",[3581.29,3192.19,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item383;
	_objects pushback _this;
	_objectIDs pushback 383;
	_this setPosWorld [3581.29,3192.19,16.7759];
	_this setVectorDirAndUp [[0.998948,-0.0450356,-0.00861638],[0.00799344,-0.0139941,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item384 = objNull;
if (_layer239 && _layer459) then {
	_item384 = createVehicle ["Land_Shoot_House_Wall_F",[3569.77,3199.72,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item384;
	_objects pushback _this;
	_objectIDs pushback 384;
	_this setPosWorld [3569.77,3199.72,16.9852];
	_this setVectorDirAndUp [[-0.0451511,-0.998958,-0.0066761],[0.00699926,-0.00699909,0.999951]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item385 = objNull;
if (_layer239 && _layer459) then {
	_item385 = createVehicle ["Land_Shoot_House_Wall_F",[3575.01,3183.46,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item385;
	_objects pushback _this;
	_objectIDs pushback 385;
	_this setPosWorld [3575.01,3183.46,16.8226];
	_this setVectorDirAndUp [[-0.0451489,-0.99897,-0.00444444],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item386 = objNull;
if (_layer239 && _layer459) then {
	_item386 = createVehicle ["Land_Shoot_House_Wall_F",[3576.77,3199.41,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item386;
	_objects pushback _this;
	_objectIDs pushback 386;
	_this setPosWorld [3576.77,3199.41,16.9163];
	_this setVectorDirAndUp [[-0.0451503,-0.998888,-0.0135741],[0.00899667,-0.013994,0.999862]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item387 = objNull;
if (_layer239 && _layer459) then {
	_item387 = createVehicle ["Land_Shoot_House_Wall_F",[3569.5,3193.73,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item387;
	_objects pushback _this;
	_objectIDs pushback 387;
	_this setPosWorld [3569.5,3193.73,16.9451];
	_this setVectorDirAndUp [[-0.0451511,-0.998958,-0.0066761],[0.00699926,-0.00699909,0.999951]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item388 = objNull;
if (_layer239 && _layer459) then {
	_item388 = createVehicle ["Land_Shoot_House_Wall_F",[3573.17,3185.47,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item388;
	_objects pushback _this;
	_objectIDs pushback 388;
	_this setPosWorld [3573.17,3185.47,16.8548];
	_this setVectorDirAndUp [[-0.0451489,-0.99897,-0.00444444],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item389 = objNull;
if (_layer239 && _layer459) then {
	_item389 = createVehicle ["Land_Shoot_House_Wall_F",[3581.38,3194.19,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item389;
	_objects pushback _this;
	_objectIDs pushback 389;
	_this setPosWorld [3581.38,3194.19,16.8031];
	_this setVectorDirAndUp [[0.998948,-0.0450356,-0.00861638],[0.00799344,-0.0139941,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item390 = objNull;
if (_layer239 && _layer459) then {
	_item390 = createVehicle ["Land_Shoot_House_Wall_F",[3579.89,3183.25,0],[],0,"CAN_COLLIDE"];
	_this = _item390;
	_objects pushback _this;
	_objectIDs pushback 390;
	_this setPosWorld [3579.89,3183.25,16.7505];
	_this setVectorDirAndUp [[-0.0451464,-0.99898,-0.00025307],[0.0159975,-0.000976263,0.999872]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item391 = objNull;
if (_layer239 && _layer459) then {
	_item391 = createVehicle ["Land_Shoot_House_Wall_F",[3581.11,3188.2,0],[],0,"CAN_COLLIDE"];
	_this = _item391;
	_objects pushback _this;
	_objectIDs pushback 391;
	_this setPosWorld [3581.11,3188.2,16.7459];
	_this setVectorDirAndUp [[0.998956,-0.0451449,-0.0070362],[0.00699926,-0.000976364,0.999975]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item392 = objNull;
if (_layer239 && _layer459) then {
	_item392 = createVehicle ["Land_Shoot_House_Wall_F",[3581.02,3186.2,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item392;
	_objects pushback _this;
	_objectIDs pushback 392;
	_this setPosWorld [3581.02,3186.2,16.7446];
	_this setVectorDirAndUp [[0.998956,-0.0451449,-0.0070362],[0.00699926,-0.000976364,0.999975]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item393 = objNull;
if (_layer239 && _layer459) then {
	_item393 = createVehicle ["Land_Shoot_House_Wall_F",[3571.5,3193.64,0],[],0,"CAN_COLLIDE"];
	_this = _item393;
	_objects pushback _this;
	_objectIDs pushback 393;
	_this setPosWorld [3571.5,3193.64,16.917];
	_this setVectorDirAndUp [[-0.0451464,-0.998961,-0.00626982],[0.0159975,-0.00699836,0.999848]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item394 = objNull;
if (_layer239 && _layer459) then {
	_item394 = createVehicle ["Land_Shoot_House_Wall_F",[3571.32,3189.65,0],[],0,"CAN_COLLIDE"];
	_this = _item394;
	_objects pushback _this;
	_objectIDs pushback 394;
	_this setPosWorld [3571.32,3189.65,16.8941];
	_this setVectorDirAndUp [[-0.0451464,-0.99898,-0.00025307],[0.0159975,-0.000976263,0.999872]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item396 = objNull;
if (_layer239 && _layer459) then {
	_item396 = createVehicle ["Land_Shoot_House_Wall_F",[3575.01,3193.43,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item396;
	_objects pushback _this;
	_objectIDs pushback 396;
	_this setPosWorld [3575.01,3193.43,16.8593];
	_this setVectorDirAndUp [[-0.0451464,-0.998961,-0.00626982],[0.0159975,-0.00699836,0.999848]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item397 = objNull;
if (_layer239 && _layer459) then {
	_item397 = createVehicle ["Land_Shoot_House_Wall_F",[3580.34,3193.24,0],[],0,"CAN_COLLIDE"];
	_this = _item397;
	_objects pushback _this;
	_objectIDs pushback 397;
	_this setPosWorld [3580.34,3193.24,16.7981];
	_this setVectorDirAndUp [[-0.0451507,-0.998887,-0.0136194],[0.00799344,-0.0139941,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item398 = objNull;
if (_layer239 && _layer459) then {
	_item398 = createVehicle ["Land_Shoot_House_Wall_F",[3580.61,3199.23,0],[],0,"CAN_COLLIDE"];
	_this = _item398;
	_objects pushback _this;
	_objectIDs pushback 398;
	_this setPosWorld [3580.61,3199.23,16.8799];
	_this setVectorDirAndUp [[-0.0451507,-0.998887,-0.0136194],[0.00799344,-0.0139941,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item399 = objNull;
if (_layer239 && _layer459) then {
	_item399 = createVehicle ["Land_Shoot_House_Wall_F",[3580.16,3189.24,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item399;
	_objects pushback _this;
	_objectIDs pushback 399;
	_this setPosWorld [3580.16,3189.24,16.7536];
	_this setVectorDirAndUp [[-0.0451511,-0.99898,-0.00065936],[0.00699926,-0.000976364,0.999975]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item400 = objNull;
if (_layer239 && _layer459) then {
	_item400 = createVehicle ["Land_Shoot_House_Wall_F",[3573.32,3189.55,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item400;
	_objects pushback _this;
	_objectIDs pushback 400;
	_this setPosWorld [3573.32,3189.55,16.862];
	_this setVectorDirAndUp [[-0.0451464,-0.99898,-0.00025307],[0.0159975,-0.000976263,0.999872]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item401 = objNull;
if (_layer239 && _layer459) then {
	_item401 = createVehicle ["Land_Shoot_House_Wall_F",[3581.56,3198.19,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item401;
	_objects pushback _this;
	_objectIDs pushback 401;
	_this setPosWorld [3581.56,3198.19,16.8576];
	_this setVectorDirAndUp [[0.998948,-0.0450356,-0.00861638],[0.00799344,-0.0139941,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item402 = objNull;
if (_layer239 && _layer459) then {
	_item402 = createVehicle ["Land_Shoot_House_Wall_F",[3570.72,3198.68,0],[],0,"CAN_COLLIDE"];
	_this = _item402;
	_objects pushback _this;
	_objectIDs pushback 402;
	_this setPosWorld [3570.72,3198.68,16.9647];
	_this setVectorDirAndUp [[0.998852,-0.0450388,-0.0162968],[0.0159975,-0.00699836,0.999848]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item403 = objNull;
if (_layer239 && _layer459) then {
	_item403 = createVehicle ["Land_Shoot_House_Wall_F",[3570.54,3194.69,0],[],0,"CAN_COLLIDE"];
	_this = _item403;
	_objects pushback _this;
	_objectIDs pushback 403;
	_this setPosWorld [3570.54,3194.69,16.9396];
	_this setVectorDirAndUp [[0.998852,-0.0450388,-0.0162968],[0.0159975,-0.00699836,0.999848]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item404 = objNull;
if (_layer239 && _layer459) then {
	_item404 = createVehicle ["Land_Shoot_House_Wall_F",[3572.27,3188.6,0],[],0,"CAN_COLLIDE"];
	_this = _item404;
	_objects pushback _this;
	_objectIDs pushback 404;
	_this setPosWorld [3572.27,3188.6,16.8778];
	_this setVectorDirAndUp [[0.998852,-0.0451361,-0.0160253],[0.0159975,-0.000976263,0.999872]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item406 = objNull;
if (_layer239 && _layer459) then {
	_item406 = createVehicle ["Land_Shoot_House_Wall_F",[3574.18,3184.46,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item406;
	_objects pushback _this;
	_objectIDs pushback 406;
	_this setPosWorld [3574.18,3184.46,16.8377];
	_this setVectorDirAndUp [[0.998908,-0.0450914,-0.0122126],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item407 = objNull;
if (_layer239 && _layer459) then {
	_item407 = createVehicle ["Land_Shoot_House_Wall_F",[3580.93,3184.2,0],[],0,"CAN_COLLIDE"];
	_this = _item407;
	_objects pushback _this;
	_objectIDs pushback 407;
	_this setPosWorld [3580.93,3184.2,16.7432];
	_this setVectorDirAndUp [[0.998956,-0.0451449,-0.0070362],[0.00699926,-0.000976364,0.999975]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item408 = objNull;
if (_layer239 && _layer459) then {
	_item408 = createVehicle ["Land_Shoot_House_Wall_F",[3569.77,3199.72,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item408;
	_objects pushback _this;
	_objectIDs pushback 408;
	_this setPosWorld [3569.77,3199.72,16.9852];
	_this setVectorDirAndUp [[-0.0451511,-0.998958,-0.0066761],[0.00699926,-0.00699909,0.999951]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item409 = objNull;
if (_layer239 && _layer459) then {
	_item409 = createVehicle ["Land_Shoot_House_Wall_F",[3569.07,3183.76,0],[],0,"CAN_COLLIDE"];
	_this = _item409;
	_objects pushback _this;
	_objectIDs pushback 409;
	_this setPosWorld [3569.07,3183.76,16.8954];
	_this setVectorDirAndUp [[0.0451479,0.99897,0.00444446],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item410 = objNull;
if (_layer239 && _layer459) then {
	_item410 = createVehicle ["Land_Shoot_House_Wall_F",[3578.13,3189.29,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item410;
	_objects pushback _this;
	_objectIDs pushback 410;
	_this setPosWorld [3578.13,3189.29,16.7847];
	_this setVectorDirAndUp [[-0.0451464,-0.99898,-0.00025307],[0.0159975,-0.000976263,0.999872]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item411 = objNull;
if (_layer239 && _layer459) then {
	_item411 = createVehicle ["Land_Shoot_House_Wall_F",[3577.04,3183.42,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item411;
	_objects pushback _this;
	_objectIDs pushback 411;
	_this setPosWorld [3577.04,3183.42,16.7963];
	_this setVectorDirAndUp [[0.0451454,0.99898,0.000253087],[0.0159975,-0.000976263,0.999872]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item412 = objNull;
if (_layer239 && _layer459) then {
	_item412 = createVehicle ["Land_Shoot_House_Wall_F",[3577.02,3193.37,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item412;
	_objects pushback _this;
	_objectIDs pushback 412;
	_this setPosWorld [3577.02,3193.37,16.8295];
	_this setVectorDirAndUp [[-0.0451503,-0.998888,-0.0135741],[0.00899667,-0.013994,0.999862]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item413 = objNull;
if (_layer239 && _layer459) then {
	_item413 = createVehicle ["Land_Shoot_House_Wall_F",[3570.63,3196.68,0],[],0,"CAN_COLLIDE"];
	_this = _item413;
	_objects pushback _this;
	_objectIDs pushback 413;
	_this setPosWorld [3570.63,3196.68,16.9521];
	_this setVectorDirAndUp [[0.998852,-0.0450388,-0.0162968],[0.0159975,-0.00699836,0.999848]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item414 = objNull;
if (_layer239 && _layer459) then {
	_item414 = createVehicle ["Land_Shoot_House_Wall_F",[3582.16,3208.18,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item414;
	_objects pushback _this;
	_objectIDs pushback 414;
	_this setPosWorld [3582.16,3208.18,16.8948];
	_this setVectorDirAndUp [[0.998818,-0.0451342,-0.0180218],[0.0179961,-0.000976229,0.999838]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item415 = objNull;
if (_layer239 && _layer459) then {
	_item415 = createVehicle ["Land_Shoot_House_Wall_F",[3555.57,3217.39,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item415;
	_objects pushback _this;
	_objectIDs pushback 415;
	_this setPosWorld [3555.57,3217.39,17.3098];
	_this setVectorDirAndUp [[0.998643,-0.0449426,-0.0263232],[0.0259893,-0.00799789,0.99963]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item416 = objNull;
if (_layer239 && _layer459) then {
	_item416 = createVehicle ["Land_Shoot_House_Wall_F",[3572.37,3212.64,0],[],0,"CAN_COLLIDE"];
	_this = _item416;
	_objects pushback _this;
	_objectIDs pushback 416;
	_this setPosWorld [3572.37,3212.64,17.0171];
	_this setVectorDirAndUp [[0.99893,-0.0451319,-0.0100797],[0.0100004,-0.00198337,0.999948]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item419 = objNull;
if (_layer239 && _layer459) then {
	_item419 = createVehicle ["Land_Shoot_House_Wall_F",[3581.21,3190.2,0],[],0,"CAN_COLLIDE"];
	_this = _item419;
	_objects pushback _this;
	_objectIDs pushback 419;
	_this setPosWorld [3581.21,3190.2,16.7486];
	_this setVectorDirAndUp [[0.998948,-0.0450356,-0.00861638],[0.00799344,-0.0139941,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item420 = objNull;
if (_layer239 && _layer459) then {
	_item420 = createVehicle ["Land_Shoot_House_Wall_F",[3581.45,3196.21,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item420;
	_objects pushback _this;
	_objectIDs pushback 420;
	_this setPosWorld [3581.45,3196.21,16.8309];
	_this setVectorDirAndUp [[0.998948,-0.0450356,-0.00861638],[0.00799344,-0.0139941,0.99987]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item421 = objNull;
if (_layer239 && _layer459) then {
	_item421 = createVehicle ["Land_Shoot_House_Wall_F",[3554.49,3193.4,0],[],0,"CAN_COLLIDE"];
	_this = _item421;
	_objects pushback _this;
	_objectIDs pushback 421;
	_this setPosWorld [3554.49,3193.4,17.1178];
	_this setVectorDirAndUp [[0.99893,-0.0450705,-0.0103454],[0.00999464,-0.00800019,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item422 = objNull;
if (_layer239 && _layer459) then {
	_item422 = createVehicle ["Land_Shoot_House_Wall_F",[3559.05,3184.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item422;
	_objects pushback _this;
	_objectIDs pushback 422;
	_this setPosWorld [3559.05,3184.2,17.3639];
	_this setVectorDirAndUp [[-0.0451499,-0.997448,0.0553117],[0.0100004,0.0549141,0.998441]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item423 = objNull;
if (_layer239 && _layer459) then {
	_item423 = createVehicle ["Land_Shoot_House_Wall_F",[3572.1,3184.61,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item423;
	_objects pushback _this;
	_objectIDs pushback 423;
	_this setPosWorld [3572.1,3184.61,16.8634];
	_this setVectorDirAndUp [[0.998908,-0.0450914,-0.0122126],[0.0119996,-0.00499098,0.999916]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item424 = objNull;
if (_layer239 && _layer459) then {
	_item424 = createVehicle ["Land_Shoot_House_Wall_F",[3560.04,3185.06,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item424;
	_objects pushback _this;
	_objectIDs pushback 424;
	_this setPosWorld [3560.04,3185.06,17.3043];
	_this setVectorDirAndUp [[0.996401,-0.0490234,-0.0691529],[0.071814,0.0547751,0.995913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item425 = objNull;
if (_layer239 && _layer459) then {
	_item425 = createVehicle ["Land_Shoot_House_Wall_F",[3562.17,3184.9,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item425;
	_objects pushback _this;
	_objectIDs pushback 425;
	_this setPosWorld [3562.17,3184.9,17.1598];
	_this setVectorDirAndUp [[0.996401,-0.0490234,-0.0691529],[0.071814,0.0547751,0.995913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item426 = objNull;
if (_layer239 && _layer459) then {
	_item426 = createVehicle ["Land_Shoot_House_Wall_F",[3555.05,3205.42,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item426;
	_objects pushback _this;
	_objectIDs pushback 426;
	_this setPosWorld [3555.05,3205.42,17.2227];
	_this setVectorDirAndUp [[0.998668,-0.0449506,-0.0253261],[0.0249911,-0.00799809,0.999656]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item427 = objNull;
if (_layer239 && _layer459) then {
	_item427 = createVehicle ["Land_Shoot_House_Wall_F",[3554.87,3201.42,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item427;
	_objects pushback _this;
	_objectIDs pushback 427;
	_this setPosWorld [3554.87,3201.42,17.1618];
	_this setVectorDirAndUp [[0.998852,-0.0448737,-0.0167462],[0.0159975,-0.0169923,0.999728]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item428 = objNull;
if (_layer239 && _layer459) then {
	_item428 = createVehicle ["Land_Shoot_House_Wall_F",[3554.96,3203.42,0],[],0,"CAN_COLLIDE"];
	_this = _item428;
	_objects pushback _this;
	_objectIDs pushback 428;
	_this setPosWorld [3554.96,3203.42,17.1944];
	_this setVectorDirAndUp [[0.998852,-0.0448737,-0.0167462],[0.0159975,-0.0169923,0.999728]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item429 = objNull;
if (_layer239 && _layer459) then {
	_item429 = createVehicle ["Land_Shoot_House_Wall_F",[3578.47,3183.34,0],[],0,"CAN_COLLIDE"];
	_this = _item429;
	_objects pushback _this;
	_objectIDs pushback 429;
	_this setPosWorld [3578.47,3183.34,16.7734];
	_this setVectorDirAndUp [[0.0451454,0.99898,0.000253087],[0.0159975,-0.000976263,0.999872]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item430 = objNull;
if (_layer239 && _layer459) then {
	_item430 = createVehicle ["Land_Shoot_House_Wall_F",[3581.91,3204.16,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item430;
	_objects pushback _this;
	_objectIDs pushback 430;
	_this setPosWorld [3581.91,3204.16,16.8835];
	_this setVectorDirAndUp [[0.998868,-0.0450915,-0.0151627],[0.0149977,-0.00399621,0.99988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item431 = objNull;
if (_layer239 && _layer459) then {
	_item431 = createVehicle ["Land_Shoot_House_Wall_F",[3581.82,3202.16,0],[],0,"CAN_COLLIDE"];
	_this = _item431;
	_objects pushback _this;
	_objectIDs pushback 431;
	_this setPosWorld [3581.82,3202.16,16.8768];
	_this setVectorDirAndUp [[0.998868,-0.0450915,-0.0151627],[0.0149977,-0.00399621,0.99988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item432 = objNull;
if (_layer239 && _layer459) then {
	_item432 = createVehicle ["Land_Shoot_House_Wall_F",[3581.73,3200.17,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item432;
	_objects pushback _this;
	_objectIDs pushback 432;
	_this setPosWorld [3581.73,3200.17,16.8702];
	_this setVectorDirAndUp [[0.998868,-0.0450915,-0.0151627],[0.0149977,-0.00399621,0.99988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item433 = objNull;
if (_layer239 && _layer459) then {
	_item433 = createVehicle ["VR_Area_01_circle_4_yellow_F",[3586.83,3201.08,0],[],0,"CAN_COLLIDE"];
	_this = _item433;
	_objects pushback _this;
	_objectIDs pushback 433;
	_this setPosWorld [3586.83,3201.08,15.1223];
	_this setVectorDirAndUp [[-0.998826,0.0484515,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item437 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item437 = createVehicle ["Sign_Arrow_F",[3563.11,3201.33,0],[],0,"CAN_COLLIDE"];
	_this = _item437;
	_objects pushback _this;
	_objectIDs pushback 437;
	_this setPosWorld [3563.11,3201.33,15.7422];
	_this setVectorDirAndUp [[0.0299912,0.99952,0.00778708],[0.00699926,-0.0080004,0.999943]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item438 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item438 = createVehicle ["Sign_Arrow_F",[3556.58,3193,0],[],0,"CAN_COLLIDE"];
	_this = _item438;
	_objects pushback _this;
	_objectIDs pushback 438;
	_this setPosWorld [3556.58,3193,15.7915];
	_this setVectorDirAndUp [[0.998701,-0.0498914,-0.0103816],[0.00999464,-0.00800019,0.999918]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item439 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item439 = createVehicle ["Sign_Arrow_F",[3567.65,3184.83,0],[],0,"CAN_COLLIDE"];
	_this = _item439;
	_objects pushback _this;
	_objectIDs pushback 439;
	_this setPosWorld [3567.65,3184.83,15.6156];
	_this setVectorDirAndUp [[0.0453684,0.99896,0.00444176],[0.0119996,-0.00499098,0.999916]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item440 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item440 = createVehicle ["Sign_Arrow_F",[3577.87,3197.29,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item440;
	_objects pushback _this;
	_objectIDs pushback 440;
	_this setPosWorld [3577.87,3197.29,15.5745];
	_this setVectorDirAndUp [[-0.996732,0.0801473,0.0100902],[0.00899667,-0.013994,0.999862]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item441 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item441 = createVehicle ["Sign_Arrow_F",[3578.55,3186.43,0],[],0,"CAN_COLLIDE"];
	_this = _item441;
	_objects pushback _this;
	_objectIDs pushback 441;
	_this setPosWorld [3578.55,3186.43,15.4728];
	_this setVectorDirAndUp [[-0.995762,0.0905659,0.0160202],[0.0159975,-0.000976263,0.999872]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item442 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item442 = createVehicle ["Sign_Arrow_F",[3578.48,3202.49,0],[],0,"CAN_COLLIDE"];
	_this = _item442;
	_objects pushback _this;
	_objectIDs pushback 442;
	_this setPosWorld [3578.48,3202.49,15.6184];
	_this setVectorDirAndUp [[0.999853,0.0139715,-0.00994363],[0.0100004,-0.00399646,0.999942]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item443 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item443 = createVehicle ["Sign_Arrow_F",[3567.24,3214.93,0],[],0,"CAN_COLLIDE"];
	_this = _item443;
	_objects pushback _this;
	_objectIDs pushback 443;
	_this setPosWorld [3567.24,3214.93,15.7874];
	_this setVectorDirAndUp [[-0.999513,0.0267528,0.0160449],[0.0159975,-0.00198321,0.99987]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item444 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item444 = createVehicle ["Sign_Arrow_F",[3563.23,3209.59,-0.0342903],[],0,"CAN_COLLIDE"];
	_this = _item444;
	_objects pushback _this;
	_objectIDs pushback 444;
	_this setPosWorld [3563.23,3209.59,15.7646];
	_this setVectorDirAndUp [[-0.999825,0.0157297,0.0100778],[0.0100004,-0.00499109,0.999938]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item445 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item445 = createVehicle ["Sign_Arrow_F",[3570.23,3208.89,0],[],0,"CAN_COLLIDE"];
	_this = _item445;
	_objects pushback _this;
	_objectIDs pushback 445;
	_this setPosWorld [3570.23,3208.89,15.7256];
	_this setVectorDirAndUp [[0.999076,-0.0419756,-0.00919835],[0.00899667,-0.00499113,0.999947]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item446 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item446 = createVehicle ["Sign_Arrow_F",[3567.76,3201.87,0],[],0,"CAN_COLLIDE"];
	_this = _item446;
	_objects pushback _this;
	_objectIDs pushback 446;
	_this setPosWorld [3567.76,3201.87,15.7139];
	_this setVectorDirAndUp [[-0.0440288,-0.999001,-0.00768467],[0.00699926,-0.0080004,0.999943]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item447 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item447 = createVehicle ["Sign_Arrow_F",[3557.48,3208.39,0],[],0,"CAN_COLLIDE"];
	_this = _item447;
	_objects pushback _this;
	_objectIDs pushback 447;
	_this setPosWorld [3557.48,3208.39,15.8833];
	_this setVectorDirAndUp [[0.0425292,0.999071,0.0069302],[0.0249911,-0.00799809,0.999656]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item448 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item448 = createVehicle ["Sign_Arrow_F",[3571.46,3188.82,0],[],0,"CAN_COLLIDE"];
	_this = _item448;
	_objects pushback _this;
	_objectIDs pushback 448;
	_this setPosWorld [3571.46,3188.82,15.5887];
	_this setVectorDirAndUp [[0.0453659,0.99897,0.000249548],[0.0159975,-0.000976263,0.999872]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item449 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item449 = createVehicle ["Sign_Arrow_F",[3570.65,3214.21,-0.00267506],[],0,"CAN_COLLIDE"];
	_this = _item449;
	_objects pushback _this;
	_objectIDs pushback 449;
	_this setPosWorld [3570.65,3214.21,15.7325];
	_this setVectorDirAndUp [[0.0453694,0.998969,0.00152769],[0.0100004,-0.00198337,0.999948]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item450 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item450 = createVehicle ["Sign_Arrow_F",[3558.37,3217.5,0],[],0,"CAN_COLLIDE"];
	_this = _item450;
	_objects pushback _this;
	_objectIDs pushback 450;
	_this setPosWorld [3558.37,3217.5,15.9356];
	_this setVectorDirAndUp [[0.0453564,0.998948,0.00681321],[0.0259893,-0.00799789,0.99963]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item451 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item451 = createVehicle ["Sign_Arrow_F",[3556.62,3195.46,0],[],0,"CAN_COLLIDE"];
	_this = _item451;
	_objects pushback _this;
	_objectIDs pushback 451;
	_this setPosWorld [3556.62,3195.46,15.7982];
	_this setVectorDirAndUp [[-0.0440242,-0.99903,-0.00127718],[0.0159975,-0.00198321,0.99987]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item452 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item452 = createVehicle ["Sign_Arrow_F",[3562.55,3196.58,0],[],0,"CAN_COLLIDE"];
	_this = _item452;
	_objects pushback _this;
	_objectIDs pushback 452;
	_this setPosWorld [3562.55,3196.58,15.7159];
	_this setVectorDirAndUp [[-0.0440267,-0.999029,-0.0014532],[0.0119996,-0.00198332,0.999926]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item453 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item453 = createVehicle ["Sign_Arrow_F",[3579.56,3216.85,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item453;
	_objects pushback _this;
	_objectIDs pushback 453;
	_this setPosWorld [3579.56,3216.85,15.6449];
	_this setVectorDirAndUp [[-0.0440272,-0.99903,-0.000491123],[0.0109998,-0.000976328,0.999939]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item454 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item454 = createVehicle ["Sign_Arrow_F",[3555.69,3186.99,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item454;
	_objects pushback _this;
	_objectIDs pushback 454;
	_this setPosWorld [3555.69,3186.99,15.9417];
	_this setVectorDirAndUp [[0.0299904,0.998025,-0.0551917],[0.0100004,0.0549141,0.998441]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item455 = objNull;
if (_layer436 && _layer239 && _layer459) then {
	_item455 = createVehicle ["Sign_Arrow_F",[3563.42,3216.95,0],[],0,"CAN_COLLIDE"];
	_this = _item455;
	_objects pushback _this;
	_objectIDs pushback 455;
	_this setPosWorld [3563.42,3216.95,15.8524];
	_this setVectorDirAndUp [[0.0453659,0.99897,0.00125559],[0.0159975,-0.00198321,0.99987]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item460 = objNull;
if (_layer239 && _layer459) then {
	_item460 = createVehicle ["Land_Shoot_House_Wall_F",[3567.78,3199.78,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item460;
	_objects pushback _this;
	_objectIDs pushback 460;
	_this setPosWorld [3567.78,3199.78,16.9995];
	_this setVectorDirAndUp [[-0.0451511,-0.998958,-0.0066761],[0.00699926,-0.00699909,0.999951]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item461 = objNull;
if (_layer459) then {
	_item461 = createVehicle ["Gunrack1",[3625.56,2976.14,1.30884],[],0,"CAN_COLLIDE"];
	_this = _item461;
	_objects pushback _this;
	_objectIDs pushback 461;
	_this setPosWorld [3625.56,2976.14,17.1339];
	_this setVectorDirAndUp [[0.999626,-0.0273355,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item478 = objNull;
if (_layer459) then {
	_item478 = createVehicle ["Gunrack1",[3629.12,2976,1.35062],[],0,"CAN_COLLIDE"];
	_this = _item478;
	_objects pushback _this;
	_objectIDs pushback 478;
	_this setPosWorld [3629.12,2976,17.1339];
	_this setVectorDirAndUp [[0.999626,-0.0273355,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item479 = objNull;
if (_layer459) then {
	_item479 = createVehicle ["Gunrack1",[3632.48,2975.9,1.38283],[],0,"CAN_COLLIDE"];
	_this = _item479;
	_objects pushback _this;
	_objectIDs pushback 479;
	_this setPosWorld [3632.48,2975.9,17.1339];
	_this setVectorDirAndUp [[0.999626,-0.0273355,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item486 = objNull;
if (_layer459) then {
	_item486 = createVehicle ["Gunrack1",[3625.22,2968.4,1.26534],[],0,"CAN_COLLIDE"];
	_this = _item486;
	_objects pushback _this;
	_objectIDs pushback 486;
	_this setPosWorld [3625.22,2968.4,17.1248];
	_this setVectorDirAndUp [[0.999626,-0.0273355,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item487 = objNull;
if (_layer459) then {
	_item487 = createVehicle ["Gunrack1",[3628.78,2968.26,1.29907],[],0,"CAN_COLLIDE"];
	_this = _item487;
	_objects pushback _this;
	_objectIDs pushback 487;
	_this setPosWorld [3628.78,2968.26,17.1345];
	_this setVectorDirAndUp [[0.999626,-0.0273355,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item488 = objNull;
if (_layer459) then {
	_item488 = createVehicle ["Gunrack1",[3632.14,2968.05,1.3287],[],0,"CAN_COLLIDE"];
	_this = _item488;
	_objects pushback _this;
	_objectIDs pushback 488;
	_this setPosWorld [3632.14,2968.05,17.1339];
	_this setVectorDirAndUp [[0.999626,-0.0273355,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item463 = objNull;
if (_layerRoot) then {
	_item463 = createVehicle ["Land_Hangar_2",[3629.29,2963.15,0.263132],[],0,"CAN_COLLIDE"];
	_this = _item463;
	_objects pushback _this;
	_objectIDs pushback 463;
	_this setPosWorld [3629.29,2963.15,18.3292];
	_this setVectorDirAndUp [[-0.999444,0.0333448,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item465 = objNull;
if (_layerRoot) then {
	_item465 = createVehicle ["Land_RampConcrete_F",[3645.91,2971.08,-0.808684],[],0,"CAN_COLLIDE"];
	_this = _item465;
	_objects pushback _this;
	_objectIDs pushback 465;
	_this setPosWorld [3645.91,2971.08,14.5912];
	_this setVectorDirAndUp [[0.999957,0.00932008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item466 = objNull;
if (_layerRoot) then {
	_item466 = createSimpleObject ["Land_Pallets_stack_F",[3618.92,2962.8,15.5128]];
	_this = _item466;
	_objects pushback _this;
	_objectIDs pushback 466;
	_this setPosWorld [3618.92,2962.8,15.9422];
	_this setVectorDirAndUp [[0,0.999872,-0.0159977],[0.0159975,0.0159956,0.999744]];
	0 remoteExec ['setFeatureType', _this];
};

private _item467 = objNull;
if (_layerRoot) then {
	_item467 = createVehicle ["Misc_palletsfoiled_heap",[3621.69,2952.88,0.1403],[],0,"CAN_COLLIDE"];
	_this = _item467;
	_objects pushback _this;
	_objectIDs pushback 467;
	_this setPosWorld [3621.69,2952.88,16.8695];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item468 = objNull;
if (_layerRoot) then {
	_item468 = createVehicle ["Misc_palletsfoiled_heap",[3621.76,2958.74,0.242698],[],0,"CAN_COLLIDE"];
	_this = _item468;
	_objects pushback _this;
	_objectIDs pushback 468;
	_this setPosWorld [3621.76,2958.74,16.8695];
	_this setVectorDirAndUp [[-0.00768567,-0.99997,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item469 = objNull;
if (_layerRoot) then {
	_item469 = createVehicle ["Misc_palletsfoiled_heap",[3625.86,2953.45,0.259043],[],0,"CAN_COLLIDE"];
	_this = _item469;
	_objects pushback _this;
	_objectIDs pushback 469;
	_this setPosWorld [3625.86,2953.45,16.8695];
	_this setVectorDirAndUp [[-0.99996,-0.00894819,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item470 = objNull;
if (_layerRoot) then {
	_item470 = createVehicle ["Land_TentLamp_01_suspended_F",[3628.69,2972.72,6.13732],[],0,"CAN_COLLIDE"];
	_this = _item470;
	_objects pushback _this;
	_objectIDs pushback 470;
	_this setPosWorld [3628.69,2972.72,21.488];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item471 = objNull;
if (_layerRoot) then {
	_item471 = createVehicle ["Land_LampHalogen_F",[3688.14,3015.62,-0.00020504],[],0,"CAN_COLLIDE"];
	_this = _item471;
	_objects pushback _this;
	_objectIDs pushback 471;
	_this setPosWorld [3688.14,3015.62,21.6191];
	_this setVectorDirAndUp [[-0.798196,0.602398,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item472 = objNull;
if (_layerRoot) then {
	_item472 = createVehicle ["Land_LampHalogen_F",[3639.18,2986.05,7.53403e-005],[],0,"CAN_COLLIDE"];
	_this = _item472;
	_objects pushback _this;
	_objectIDs pushback 472;
	_this setPosWorld [3639.18,2986.05,21.0462];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item473 = objNull;
if (_layerRoot) then {
	_item473 = createVehicle ["Land_LampHalogen_F",[3594.82,2986.8,0.000348091],[],0,"CAN_COLLIDE"];
	_this = _item473;
	_objects pushback _this;
	_objectIDs pushback 473;
	_this setPosWorld [3594.82,2986.8,21.6017];
	_this setVectorDirAndUp [[-0.0844692,-0.996426,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item474 = objNull;
if (_layerRoot) then {
	_item474 = createVehicle ["Land_LampHalogen_F",[3592.71,2986.57,0.000289917],[],0,"CAN_COLLIDE"];
	_this = _item474;
	_objects pushback _this;
	_objectIDs pushback 474;
	_this setPosWorld [3592.71,2986.57,21.6434];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item475 = objNull;
if (_layerRoot) then {
	_item475 = createSimpleObject ["Land_WoodenTable_large_F",[3625.56,2976.13,15.7646]];
	_this = _item475;
	_objects pushback _this;
	_objectIDs pushback 475;
	_this setPosWorld [3625.56,2976.13,16.1969];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item476 = objNull;
if (_layerRoot) then {
	_item476 = createSimpleObject ["Land_WoodenTable_large_F",[3629,2976.01,15.7646]];
	_this = _item476;
	_objects pushback _this;
	_objectIDs pushback 476;
	_this setPosWorld [3629,2976.01,16.1969];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item477 = objNull;
if (_layerRoot) then {
	_item477 = createSimpleObject ["Land_WoodenTable_large_F",[3632.46,2975.93,15.7646]];
	_this = _item477;
	_objects pushback _this;
	_objectIDs pushback 477;
	_this setPosWorld [3632.46,2975.93,16.1969];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item485 = objNull;
if (_layerRoot) then {
	_item485 = createSimpleObject ["Land_WoodenTable_large_F",[3625.22,2968.39,15.7555]];
	_this = _item485;
	_objects pushback _this;
	_objectIDs pushback 485;
	_this setPosWorld [3625.22,2968.39,16.1878];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item489 = objNull;
if (_layerRoot) then {
	_item489 = createSimpleObject ["Land_WoodenTable_large_F",[3628.66,2968.27,15.7646]];
	_this = _item489;
	_objects pushback _this;
	_objectIDs pushback 489;
	_this setPosWorld [3628.66,2968.27,16.1969];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item490 = objNull;
if (_layerRoot) then {
	_item490 = createSimpleObject ["Land_WoodenTable_large_F",[3632.12,2968.19,15.7646]];
	_this = _item490;
	_objects pushback _this;
	_objectIDs pushback 490;
	_this setPosWorld [3632.12,2968.19,16.1969];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item491 = objNull;
if (_layerRoot) then {
	_item491 = createVehicle ["Land_MapBoard_F",[3620.34,2976.89,0.401],[],0,"CAN_COLLIDE"];
	_this = _item491;
	_objects pushback _this;
	_objectIDs pushback 491;
	_this setPosWorld [3620.34,2976.89,16.7337];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
};

private _item492 = objNull;
if (_layerRoot) then {
	_item492 = createVehicle ["Land_CampingChair_V2_F",[3619.81,2973.9,0.398254],[],0,"CAN_COLLIDE"];
	_this = _item492;
	_objects pushback _this;
	_objectIDs pushback 492;
	_this setPosWorld [3619.81,2973.9,16.2787];
	_this setVectorDirAndUp [[0.0701484,-0.997537,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item493 = objNull;
if (_layerRoot) then {
	_item493 = createVehicle ["Land_CampingChair_V2_F",[3620.82,2973.97,0.398254],[],0,"CAN_COLLIDE"];
	_this = _item493;
	_objects pushback _this;
	_objectIDs pushback 493;
	_this setPosWorld [3620.82,2973.97,16.2711];
	_this setVectorDirAndUp [[0.0701484,-0.997537,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item494 = objNull;
if (_layerRoot) then {
	_item494 = createVehicle ["Land_CampingChair_V2_F",[3621.83,2974.04,0.398253],[],0,"CAN_COLLIDE"];
	_this = _item494;
	_objects pushback _this;
	_objectIDs pushback 494;
	_this setPosWorld [3621.83,2974.04,16.2638];
	_this setVectorDirAndUp [[0.0701484,-0.997537,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item495 = objNull;
if (_layerRoot) then {
	_item495 = createVehicle ["Land_CampingChair_V2_F",[3621.93,2972.69,0.398254],[],0,"CAN_COLLIDE"];
	_this = _item495;
	_objects pushback _this;
	_objectIDs pushback 495;
	_this setPosWorld [3621.93,2972.69,16.2659];
	_this setVectorDirAndUp [[0.0701484,-0.997537,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item496 = objNull;
if (_layerRoot) then {
	_item496 = createVehicle ["Land_CampingChair_V2_F",[3620.92,2972.61,0.398254],[],0,"CAN_COLLIDE"];
	_this = _item496;
	_objects pushback _this;
	_objectIDs pushback 496;
	_this setPosWorld [3620.92,2972.61,16.2731];
	_this setVectorDirAndUp [[0.0701484,-0.997537,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item497 = objNull;
if (_layerRoot) then {
	_item497 = createSimpleObject ["Land_CampingChair_V2_F",[3619.9,2972.54,15.774]];
	_this = _item497;
	_objects pushback _this;
	_objectIDs pushback 497;
	_this setPosWorld [3619.9,2972.54,16.2805];
	_this setVectorDirAndUp [[0.0701484,-0.997537,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item498 = objNull;
if (_layerRoot) then {
	_item498 = createVehicle ["Land_TentLamp_01_suspended_F",[3623.21,2972.27,6.08232],[],0,"CAN_COLLIDE"];
	_this = _item498;
	_objects pushback _this;
	_objectIDs pushback 498;
	_this setPosWorld [3623.21,2972.27,21.4793];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item499 = objNull;
if (_layerRoot) then {
	_item499 = createVehicle ["TK_GUE_WarfareBFieldhHospital_Base_EP1",[3601.79,2996.89,0],[],0,"CAN_COLLIDE"];
	_this = _item499;
	_objects pushback _this;
	_objectIDs pushback 499;
	_this setPosWorld [3601.79,2996.89,15.0391];
	_this setVectorDirAndUp [[0,0.999968,-0.0080009],[0.00999464,0.0080005,0.999918]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item502 = objNull;
if (_layerRoot) then {
	_item502 = _item500 createUnit ["B_Soldier_F",[3646.2,3010.05,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item502;
	_objects pushback _this;
	_objectIDs pushback 502;
	_this setPosWorld [3646.2,3010.1,14.9614];
	_this setVectorDirAndUp [[-0.999968,0.00806324,0],[0,0,1]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Matthew Wilson";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.04;;
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

private _item503 = objNull;
if (_layerRoot) then {
	_item503 = _item500 createUnit ["B_Soldier_F",[3644.03,3010.37,0.0150003],[],0,"CAN_COLLIDE"];
	_item500 selectLeader _item503;
	_this = _item503;
	_objects pushback _this;
	_objectIDs pushback 503;
	_this setPosWorld [3644.03,3010.42,14.9764];
	_this setVectorDirAndUp [[0.999397,-0.034725,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Wallace Anderson";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male07ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["RELAX_3",["Acts_Ambient_Relax_3"],false,true] # 0 isEqualTo '') then      {        ["RELAX_3",["Acts_Ambient_Relax_3"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item504 = objNull;
if (_layerRoot) then {
	_item504 = _item500 createUnit ["B_Soldier_F",[3619.88,2972.65,0.474784],[],0,"CAN_COLLIDE"];
	_this = _item504;
	_objects pushback _this;
	_objectIDs pushback 504;
	_this setPosWorld [3619.88,2972.7,15.852];
	_this setVectorDirAndUp [[-0.15959,0.987183,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Oliver Johnson";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1;;
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

private _item505 = objNull;
if (_layerRoot) then {
	_item505 = _item500 createUnit ["B_Soldier_F",[3647.29,2954.06,0],[],0,"CAN_COLLIDE"];
	_this = _item505;
	_objects pushback _this;
	_objectIDs pushback 505;
	_this setPosWorld [3647.29,2954.11,15.2359];
	_this setVectorDirAndUp [[0.39903,-0.916938,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Terrence Jackson";;
	_this setface "AfricanHead_02";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.04;;
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

private _item506 = objNull;
if (_layerRoot) then {
	_item506 = _item500 createUnit ["B_Soldier_F",[3656.34,2960.34,-0.166538],[],0,"CAN_COLLIDE"];
	_this = _item506;
	_objects pushback _this;
	_objectIDs pushback 506;
	_this setPosWorld [3656.34,2960.39,14.8842];
	_this setVectorDirAndUp [[-0.730231,-0.683201,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "William Jackson";;
	_this setface "WhiteHead_19";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.04;;
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

private _item510 = objNull;
if (_layerRoot) then {
	_item510 = createVehicle ["ProtectionZone_Invisible_F",[3641.91,2972.78,0],[],0,"CAN_COLLIDE"];
	_this = _item510;
	_objects pushback _this;
	_objectIDs pushback 510;
	_this setPosWorld [3641.91,2972.78,19.8949];
	_this setVectorDirAndUp [[0,0.999902,-0.0139989],[0.0189951,0.0139964,0.999722]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item232 = objNull;
if (_layer459) then {
	_item232 = createTrigger ["EmptyDetectorArea10x10",[3601.27,2997.4,0.100034],false];
	_this = _item232;
	_triggers pushback _this;
	_triggerIDs pushback 232;
	_item232 setPosATL [3601.27,2997.4,0.100034];
	_this setTriggerArea [6,6,181.199,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item235 = objNull;
if (_layer234 && _layer459) then {
	_item235 = createTrigger ["EmptyDetectorArea10x10",[3655.31,2953.68,9.53674e-007],true];
	_this = _item235;
	_triggers pushback _this;
	_triggerIDs pushback 235;
	_item235 setPosATL [3655.31,2953.68,9.53674e-007];
	_this setTriggerArea [5,12,150.763,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item434 = objNull;
if (_layer239 && _layer459) then {
	_item434 = createTrigger ["EmptyDetectorAreaR50",[3550.46,3200.05,0],false];
	_this = _item434;
	_triggers pushback _this;
	_triggerIDs pushback 434;
	_item434 setPosATL [3550.46,3200.05,0];
	_this setTriggerArea [50,50,284.959,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item435 = objNull;
if (_layer239 && _layer459) then {
	_item435 = createTrigger ["EmptyDetectorArea10x10",[3567.95,3202.18,0],true];
	_this = _item435;
	_triggers pushback _this;
	_triggerIDs pushback 435;
	_item435 setPosATL [3567.95,3202.18,0];
	_this setTriggerArea [18,13.5,92.2522,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item500;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["HQ"];                            } else {                                [_this, "HQ"] call CBA_fnc_setCallsign;                            };                        ;
	_this enableDynamicSimulation true;
	      //if (!is3DEN && (["","ColorWEST","HQ",true] # 0 != '') then      {        [_this, ["","ColorWEST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ",true]'];          ["","ColorWEST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item233 = objNull;
if (_layer459) then {
	_item233 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[3649,2999.52,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_logics pushback _this;
	_logicIDs pushback 233;
	_this setPosWorld [3649,2999.52,14.9659];
	_this setVectorDirAndUp [[0.804019,0.594577,-0.00558984],[0.00399666,0.00399671,0.999984]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item457 = objNull;
if (_layer456 && _layer239 && _layer459) then {
	_item457 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[3567.24,3197.3,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item457;
	_logics pushback _this;
	_logicIDs pushback 457;
	_this setPosWorld [3567.24,3197.3,15.3104];
	_this setVectorDirAndUp [[-0.966086,0.258078,0.00856862],[0.00699926,-0.00699909,0.999951]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item458 = objNull;
if (_layer456 && _layer239 && _layer459) then {
	_item458 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[3584.87,3194.9,0],[],0,"CAN_COLLIDE"];
	_this = _item458;
	_logics pushback _this;
	_logicIDs pushback 458;
	_this setPosWorld [3584.87,3194.9,15.1096];
	_this setVectorDirAndUp [[-0.966078,0.258002,0.0113343],[0.00799344,-0.0139941,0.99987]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};

private _item464 = objNull;
if (_layerRoot) then {
	_item464 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[3628.68,2959.32,0.0965567],[],0,"CAN_COLLIDE"];
	_this = _item464;
	_logics pushback _this;
	_logicIDs pushback 464;
	_this setPosWorld [3628.68,2959.32,15.5032];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer456) then {missionNamespace setVariable ["base_mil_Spawns",[[_item457,_item458],[]]];};
if (_layer436) then {missionNamespace setVariable ["base_mil_Shoothouse Targets",[[_item437,_item438,_item439,_item440,_item441,_item442,_item443,_item444,_item445,_item446,_item447,_item448,_item449,_item450,_item451,_item452,_item453,_item454,_item455],[]]];};
if (_layer239) then {missionNamespace setVariable ["base_mil_Shoothouse Pit",[[_item240,_item241,_item242,_item243,_item244,_item245,_item248,_item249,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item268,_item269,_item270,_item271,_item272,_item275,_item276,_item277,_item278,_item279,_item280,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item291,_item292,_item293,_item295,_item296,_item297,_item298,_item299,_item300,_item301,_item302,_item303,_item304,_item305,_item306,_item307,_item308,_item309,_item310,_item311,_item313,_item314,_item315,_item316,_item317,_item318,_item321,_item322,_item323,_item326,_item328,_item331,_item332,_item333,_item334,_item335,_item336,_item337,_item338,_item339,_item340,_item341,_item343,_item344,_item345,_item346,_item347,_item350,_item351,_item352,_item353,_item354,_item355,_item356,_item357,_item358,_item359,_item360,_item361,_item362,_item363,_item364,_item365,_item366,_item367,_item368,_item369,_item370,_item371,_item372,_item373,_item374,_item375,_item376,_item377,_item378,_item379,_item380,_item381,_item382,_item383,_item384,_item385,_item386,_item387,_item388,_item389,_item390,_item391,_item392,_item393,_item394,_item396,_item397,_item398,_item399,_item400,_item401,_item402,_item403,_item404,_item406,_item407,_item408,_item409,_item410,_item411,_item412,_item413,_item414,_item415,_item416,_item419,_item420,_item421,_item422,_item423,_item424,_item425,_item426,_item427,_item428,_item429,_item430,_item431,_item432,_item433,_item434,_item435,_item437,_item438,_item439,_item440,_item441,_item442,_item443,_item444,_item445,_item446,_item447,_item448,_item449,_item450,_item451,_item452,_item453,_item454,_item455,_item457,_item458,_item460],[]]];};
if (_layer237) then {missionNamespace setVariable ["base_mil_Repair Station",[[_item238],[]]];};
if (_layer234) then {missionNamespace setVariable ["base_mil_bargate",[[_item235,_item236],[]]];};
if (_layer459) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item230,_item232,_item233,_item235,_item236,_item238,_item240,_item241,_item242,_item243,_item244,_item245,_item248,_item249,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item268,_item269,_item270,_item271,_item272,_item275,_item276,_item277,_item278,_item279,_item280,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item291,_item292,_item293,_item295,_item296,_item297,_item298,_item299,_item300,_item301,_item302,_item303,_item304,_item305,_item306,_item307,_item308,_item309,_item310,_item311,_item313,_item314,_item315,_item316,_item317,_item318,_item321,_item322,_item323,_item326,_item328,_item331,_item332,_item333,_item334,_item335,_item336,_item337,_item338,_item339,_item340,_item341,_item343,_item344,_item345,_item346,_item347,_item350,_item351,_item352,_item353,_item354,_item355,_item356,_item357,_item358,_item359,_item360,_item361,_item362,_item363,_item364,_item365,_item366,_item367,_item368,_item369,_item370,_item371,_item372,_item373,_item374,_item375,_item376,_item377,_item378,_item379,_item380,_item381,_item382,_item383,_item384,_item385,_item386,_item387,_item388,_item389,_item390,_item391,_item392,_item393,_item394,_item396,_item397,_item398,_item399,_item400,_item401,_item402,_item403,_item404,_item406,_item407,_item408,_item409,_item410,_item411,_item412,_item413,_item414,_item415,_item416,_item419,_item420,_item421,_item422,_item423,_item424,_item425,_item426,_item427,_item428,_item429,_item430,_item431,_item432,_item433,_item434,_item435,_item437,_item438,_item439,_item440,_item441,_item442,_item443,_item444,_item445,_item446,_item447,_item448,_item449,_item450,_item451,_item452,_item453,_item454,_item455,_item457,_item458,_item460,_item461,_item478,_item479,_item486,_item487,_item488],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item461) then {
		this = _item461;
		call{arsenals pushBack this};
	};
	if !(isnull _item478) then {
		this = _item478;
		call{arsenals pushBack this};
	};
	if !(isnull _item479) then {
		this = _item479;
		call{arsenals pushBack this};
	};
	if !(isnull _item486) then {
		this = _item486;
		call{arsenals pushBack this};
	};
	if !(isnull _item487) then {
		this = _item487;
		call{arsenals pushBack this};
	};
	if !(isnull _item488) then {
		this = _item488;
		call{arsenals pushBack this};
	};
	if !(isnull _item491) then {
		this = _item491;
		this setObjectTextureGlobal [0, "\ibr\IslaDuala3\data\pictureMap_ca.paa"];;
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item464) then {_item464 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
