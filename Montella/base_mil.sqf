// Export of 'Montella%2eMilitarybase.MontellaV3' by Knight on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer226 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer206 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer9 = (_allWhitelisted || {"shoothouse pit" in _layerWhiteList}) && {!("shoothouse pit" in _layerBlackList)};
private _layer7 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer4 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer229 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layer229) then {
	_item0 = createVehicle ["Land_InfoStand_V1_F",[2430.94,8269.86,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [2430.98,8269.71,351.081];
	_this setVectorDirAndUp [[0.904301,0.426825,-0.00773925],[0.0087209,-0.000345254,0.999962]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item1 = objNull;
if (_layer229) then {
	_item1 = createVehicle ["B_supplyCrate_F",[2430.79,8267.96,0],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [2430.85,8267.73,351.387];
	_this setVectorDirAndUp [[-0.236862,0.971541,0.00215138],[0.00908246,0,0.999959]];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item6 = objNull;
if (_layer4 && _layer229) then {
	_item6 = createVehicle ["Land_BarGate_F",[2450.52,8254.51,0],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [2450.52,8254.51,354.27];
	_this setVectorDirAndUp [[-0.231874,0.97272,-0.00709128],[0.00329363,0.00807501,0.999962]];
	gate = _this;
	_this setVehicleVarName "gate";
};

private _item8 = objNull;
if (_layer7 && _layer229) then {
	_item8 = createVehicle ["Land_RepairDepot_01_tan_F",[2395.39,8331.94,0],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [2395.4,8331.33,352.875];
	_this setVectorDirAndUp [[-0.961237,-0.275725,0],[0,0,1]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item10 = objNull;
if (_layer9 && _layer229) then {
	_item10 = createVehicle ["Land_InfoStand_V1_F",[2130.88,8034.12,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [2130.91,8034.14,423.178];
	_this setVectorDirAndUp [[-0.974649,0.218443,0.0483874],[0.057066,0.0335929,0.997805]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item11 = objNull;
if (_layer9 && _layer229) then {
	_item11 = createVehicle ["Land_Scaffolding_New_F",[2106.36,8020.29,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [2106.36,8020.29,428.233];
	_this setVectorDirAndUp [[0.976213,-0.216815,0],[0,0,1]];
};

private _item12 = objNull;
if (_layer9 && _layer229) then {
	_item12 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2114.14,8051.82,0],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [2114.14,8051.82,425.578];
	_this setVectorDirAndUp [[0.953247,-0.239882,-0.183786],[0.204845,0.0658109,0.976579]];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer9 && _layer229) then {
	_item13 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2112.32,8044.1,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [2112.32,8044.1,426.36];
	_this setVectorDirAndUp [[0.95456,-0.23383,-0.18477],[0.198296,0.0355112,0.979499]];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layer9 && _layer229) then {
	_item14 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2121.42,8052.18,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [2121.42,8052.18,424.309];
	_this setVectorDirAndUp [[-0.964763,0.235845,0.116659],[0.136652,0.0702257,0.988127]];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer9 && _layer229) then {
	_item15 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2119.6,8044.39,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [2119.6,8044.39,425.044];
	_this setVectorDirAndUp [[-0.960603,0.233721,0.150386],[0.164676,0.042763,0.98542]];
	_this enableSimulation false;
};

private _item16 = objNull;
if (_layer9 && _layer229) then {
	_item16 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2113.66,8036.53,0],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [2113.66,8036.53,426.294];
	_this setVectorDirAndUp [[0.222763,0.972914,-0.0617671],[0.191904,0.0183566,0.981242]];
	_this enableSimulation false;
};

private _item17 = objNull;
if (_layer9 && _layer229) then {
	_item17 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2113.52,8044.86,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [2113.52,8044.86,426.091];
	_this setVectorDirAndUp [[-0.222475,-0.971629,0.0802651],[0.198296,0.0355112,0.979499]];
	_this enableSimulation false;
};

private _item18 = objNull;
if (_layer9 && _layer229) then {
	_item18 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2114.56,8040.3,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [2114.56,8040.3,426.043];
	_this setVectorDirAndUp [[-0.194831,-0.978549,0.0669599],[0.191904,0.0289184,0.980988]];
	_this enableSimulation false;
};

private _item19 = objNull;
if (_layer9 && _layer229) then {
	_item19 = createVehicle ["Land_Shoot_House_Wall_F",[2104.41,8054.08,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [2104.41,8054.08,427.643];
	_this setVectorDirAndUp [[0.941542,-0.242304,-0.234067],[0.255626,0.0612732,0.964832]];
	_this enableSimulation false;
};

private _item20 = objNull;
if (_layer9 && _layer229) then {
	_item20 = createVehicle ["Land_Shoot_House_Wall_F",[2105.29,8044.65,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [2105.29,8044.65,427.911];
	_this setVectorDirAndUp [[-0.221311,-0.972479,0.0728367],[0.222145,0.0224527,0.974755]];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer9 && _layer229) then {
	_item21 = createVehicle ["Land_Shoot_House_Wall_F",[2109.18,8043.74,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [2109.18,8043.74,427.027];
	_this setVectorDirAndUp [[-0.220998,-0.97195,0.0804527],[0.228107,0.0286912,0.973213]];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layer9 && _layer229) then {
	_item22 = createVehicle ["Land_Shoot_House_Wall_F",[2102.59,8046.29,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [2102.59,8046.29,428.54];
	_this setVectorDirAndUp [[0.942755,-0.236699,-0.234918],[0.250868,0.0392389,0.967226]];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer9 && _layer229) then {
	_item23 = createVehicle ["Land_Shoot_House_Wall_F",[2106.52,8058.73,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [2106.52,8058.73,426.768];
	_this setVectorDirAndUp [[-0.220774,-0.966753,0.129024],[0.232291,0.0763626,0.969644]];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer9 && _layer229) then {
	_item24 = createVehicle ["Land_Shoot_House_Wall_F",[2112.36,8057.37,0],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [2112.36,8057.37,425.551];
	_this setVectorDirAndUp [[-0.222169,-0.967242,0.122814],[0.204845,0.076846,0.975773]];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer9 && _layer229) then {
	_item25 = createVehicle ["Land_Shoot_House_Wall_F",[2110.41,8057.83,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [2110.41,8057.83,425.923];
	_this setVectorDirAndUp [[-0.222169,-0.967242,0.122814],[0.204845,0.076846,0.975773]];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer9 && _layer229) then {
	_item26 = createVehicle ["Land_Shoot_House_Wall_F",[2103.96,8052.14,0],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [2103.96,8052.14,427.887];
	_this setVectorDirAndUp [[0.941542,-0.242304,-0.234067],[0.255626,0.0612732,0.964832]];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer9 && _layer229) then {
	_item27 = createVehicle ["Land_Shoot_House_Wall_F",[2103.05,8048.24,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [2103.05,8048.24,428.338];
	_this setVectorDirAndUp [[0.941876,-0.237741,-0.237377],[0.254323,0.0428841,0.966168]];
	_this enableSimulation false;
};

private _item28 = objNull;
if (_layer9 && _layer229) then {
	_item28 = createVehicle ["Land_Shoot_House_Wall_F",[2112.78,8045.98,0],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [2112.78,8045.98,426.188];
	_this setVectorDirAndUp [[0.95456,-0.236025,-0.181957],[0.198296,0.0472343,0.979003]];
	_this enableSimulation false;
};

private _item29 = objNull;
if (_layer9 && _layer229) then {
	_item29 = createVehicle ["Land_Shoot_House_Wall_F",[2103.34,8045.09,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [2103.34,8045.09,428.394];
	_this setVectorDirAndUp [[-0.219724,-0.97079,0.096373],[0.250868,0.0392389,0.967226]];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer9 && _layer229) then {
	_item30 = createVehicle ["Land_Shoot_House_Wall_F",[2103.5,8050.19,0],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [2103.5,8050.19,428.129];
	_this setVectorDirAndUp [[0.941877,-0.241889,-0.233149],[0.254323,0.0599105,0.965262]];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer9 && _layer229) then {
	_item31 = createVehicle ["Land_Shoot_House_Wall_F",[2105.32,8057.98,0],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [2105.32,8057.98,427.116];
	_this setVectorDirAndUp [[0.947081,-0.244273,-0.20825],[0.233055,0.0771478,0.969399]];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer9 && _layer229) then {
	_item32 = createVehicle ["Land_Shoot_House_Wall_F",[2115.05,8055.72,0],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [2115.05,8055.72,425.12];
	_this setVectorDirAndUp [[0.95913,-0.239549,-0.150619],[0.173494,0.0773374,0.981794]];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer9 && _layer229) then {
	_item33 = createVehicle ["Land_Shoot_House_Wall_F",[2108.47,8058.28,0],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [2108.47,8058.28,426.338];
	_this setVectorDirAndUp [[-0.220774,-0.966753,0.129024],[0.232291,0.0763626,0.969644]];
	_this enableSimulation false;
};

private _item34 = objNull;
if (_layer9 && _layer229) then {
	_item34 = createVehicle ["Land_Shoot_House_Wall_F",[2106.03,8043.44,0],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [2106.03,8043.44,427.77];
	_this setVectorDirAndUp [[0.949565,-0.231904,-0.211063],[0.222145,0.0224527,0.974755]];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer9 && _layer229) then {
	_item35 = createVehicle ["Land_Shoot_House_Wall_F",[2108.5,8040.81,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [2108.5,8040.81,427.268];
	_this setVectorDirAndUp [[0.949565,-0.231904,-0.211063],[0.222145,0.0224527,0.974755]];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer9 && _layer229) then {
	_item36 = createVehicle ["Land_Shoot_House_Wall_F",[2108.95,8042.76,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [2108.95,8042.76,427.109];
	_this setVectorDirAndUp [[0.948223,-0.23343,-0.215368],[0.228107,0.0286912,0.973213]];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer9 && _layer229) then {
	_item37 = createVehicle ["Land_Shoot_House_Wall_F",[2108.04,8038.87,0],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [2108.04,8038.87,427.401];
	_this setVectorDirAndUp [[0.949565,-0.229069,-0.214136],[0.222145,0.00945582,0.974968]];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer9 && _layer229) then {
	_item38 = createVehicle ["Land_Shoot_House_Wall_F",[2105.12,8039.55,0],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [2105.12,8039.55,428.058];
	_this setVectorDirAndUp [[0.951408,-0.227106,-0.207956],[0.213668,0.000584209,0.976906]];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layer9 && _layer229) then {
	_item39 = createVehicle ["Land_Shoot_House_Wall_F",[2114.31,8056.92,0],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [2114.31,8056.92,425.179];
	_this setVectorDirAndUp [[-0.222168,-0.96724,0.122835],[0.204863,0.0768628,0.975768]];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer9 && _layer229) then {
	_item40 = createVehicle ["Land_Shoot_House_Wall_F",[2114.6,8053.77,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [2114.6,8053.77,425.352];
	_this setVectorDirAndUp [[0.953247,-0.239882,-0.183786],[0.204845,0.0658109,0.976579]];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layer9 && _layer229) then {
	_item41 = createVehicle ["Land_Shoot_House_Wall_F",[2112.91,8037.73,0],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [2112.91,8037.73,426.418];
	_this setVectorDirAndUp [[-0.955798,0.230438,0.182617],[0.191904,0.0183566,0.981242]];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer9 && _layer229) then {
	_item42 = createVehicle ["Land_Shoot_House_Wall_F",[2113.37,8039.68,0],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [2113.37,8039.68,426.292];
	_this setVectorDirAndUp [[-0.955798,0.230438,0.182617],[0.191904,0.0183566,0.981242]];
	_this enableSimulation false;
};

private _item43 = objNull;
if (_layer9 && _layer229) then {
	_item43 = createVehicle ["Land_Shoot_House_Wall_F",[2117.29,8052.11,0],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [2117.29,8052.11,424.984];
	_this setVectorDirAndUp [[-0.223679,-0.969101,0.103976],[0.169975,0.0662583,0.983218]];
	_this enableSimulation false;
};

private _item44 = objNull;
if (_layer9 && _layer229) then {
	_item44 = createVehicle ["Land_Shoot_House_Wall_F",[2117.52,8053.09,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [2117.52,8053.09,424.877];
	_this setVectorDirAndUp [[0.95913,-0.238389,-0.15245],[0.173494,0.0698157,0.982357]];
	_this enableSimulation false;
};

private _item45 = objNull;
if (_layer9 && _layer229) then {
	_item45 = createVehicle ["Land_Shoot_House_Wall_F",[2114.89,8050.62,0],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [2114.89,8050.62,425.503];
	_this setVectorDirAndUp [[0.222168,0.968569,-0.111873],[0.204845,0.0658109,0.976579]];
	_this enableSimulation false;
};

private _item46 = objNull;
if (_layer9 && _layer229) then {
	_item46 = createVehicle ["Land_Shoot_House_Wall_F",[2115.34,8052.57,0],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [2115.34,8052.57,425.289];
	_this setVectorDirAndUp [[0.223678,0.969101,-0.103976],[0.169975,0.0662583,0.983218]];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layer9 && _layer229) then {
	_item47 = createVehicle ["Land_Shoot_House_Wall_F",[2116.84,8050.17,0],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [2116.84,8050.17,425.194];
	_this setVectorDirAndUp [[0.223678,0.969101,-0.103976],[0.169975,0.0662583,0.983218]];
	_this enableSimulation false;
};

private _item48 = objNull;
if (_layer9 && _layer229) then {
	_item48 = createVehicle ["Land_Shoot_House_Wall_F",[2113.23,8047.93,0],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [2113.23,8047.93,425.996];
	_this setVectorDirAndUp [[0.953698,-0.237079,-0.185076],[0.202618,0.0516768,0.977893]];
	_this enableSimulation false;
};

private _item49 = objNull;
if (_layer9 && _layer229) then {
	_item49 = createVehicle ["Land_Shoot_House_Wall_F",[2113.06,8042.86,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [2113.06,8042.86,426.255];
	_this setVectorDirAndUp [[0.222474,0.971629,-0.0802649],[0.198296,0.0355112,0.979499]];
	_this enableSimulation false;
};

private _item50 = objNull;
if (_layer9 && _layer229) then {
	_item50 = createVehicle ["Land_Shoot_House_Wall_F",[2115.01,8042.4,0],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [2115.01,8042.4,425.878];
	_this setVectorDirAndUp [[0.224137,0.971962,-0.0710835],[0.157812,0.0357783,0.986821]];
	_this enableSimulation false;
};

private _item51 = objNull;
if (_layer9 && _layer229) then {
	_item51 = createVehicle ["Land_Shoot_House_Wall_F",[2115.47,8044.35,0],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [2115.47,8044.35,425.735];
	_this setVectorDirAndUp [[0.224137,0.971962,-0.0710835],[0.157812,0.0357783,0.986821]];
	_this enableSimulation false;
};

private _item52 = objNull;
if (_layer9 && _layer229) then {
	_item52 = createVehicle ["Land_Shoot_House_Wall_F",[2105.58,8041.5,0],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [2105.58,8041.5,427.918];
	_this setVectorDirAndUp [[0.949565,-0.231904,-0.211063],[0.222145,0.0224527,0.974755]];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layer9 && _layer229) then {
	_item53 = createVehicle ["Land_Shoot_House_Wall_F",[2111.15,8056.62,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [2111.15,8056.62,425.861];
	_this setVectorDirAndUp [[0.953247,-0.241944,-0.181062],[0.204845,0.076846,0.975773]];
	_this enableSimulation false;
};

private _item54 = objNull;
if (_layer9 && _layer229) then {
	_item54 = createVehicle ["Land_Shoot_House_Wall_F",[2110.25,8052.73,0],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [2110.25,8052.73,426.327];
	_this setVectorDirAndUp [[0.953698,-0.239306,-0.182187],[0.202617,0.0635321,0.977195]];
	_this enableSimulation false;
};

private _item55 = objNull;
if (_layer9 && _layer229) then {
	_item55 = createVehicle ["Land_Shoot_House_Wall_F",[2112.49,8049.13,0],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [2112.49,8049.13,426.088];
	_this setVectorDirAndUp [[0.222273,0.970115,-0.0973203],[0.202618,0.0516768,0.977893]];
	_this enableSimulation false;
};

private _item56 = objNull;
if (_layer9 && _layer229) then {
	_item56 = createVehicle ["Land_Shoot_House_Wall_F",[2110.54,8049.58,0],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [2110.54,8049.58,426.467];
	_this setVectorDirAndUp [[0.222273,0.970115,-0.0973203],[0.202618,0.0516768,0.977893]];
	_this enableSimulation false;
};

private _item57 = objNull;
if (_layer9 && _layer229) then {
	_item57 = createVehicle ["Land_Shoot_House_Wall_F",[2109.79,8050.78,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [2109.79,8050.78,426.555];
	_this setVectorDirAndUp [[0.947081,-0.241229,-0.211768],[0.233055,0.0630904,0.970415]];
	_this enableSimulation false;
};

private _item58 = objNull;
if (_layer9 && _layer229) then {
	_item58 = createVehicle ["Land_Shoot_House_Wall_F",[2106.49,8045.4,0],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [2106.49,8045.4,427.602];
	_this setVectorDirAndUp [[-0.948223,0.236609,0.21187],[0.228107,0.0431718,0.972679]];
	_this enableSimulation false;
};

private _item59 = objNull;
if (_layer9 && _layer229) then {
	_item59 = createVehicle ["Land_Shoot_House_Wall_F",[2106.94,8047.34,0],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [2106.94,8047.34,427.409];
	_this setVectorDirAndUp [[-0.948223,0.236609,0.21187],[0.228107,0.0431718,0.972679]];
	_this enableSimulation false;
};

private _item60 = objNull;
if (_layer9 && _layer229) then {
	_item60 = createVehicle ["Land_Shoot_House_Wall_F",[2106.2,8048.54,0],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [2106.2,8048.54,427.531];
	_this setVectorDirAndUp [[-0.220998,-0.970645,0.0949087],[0.228107,0.0431718,0.972679]];
	_this enableSimulation false;
};

private _item61 = objNull;
if (_layer9 && _layer229) then {
	_item61 = createVehicle ["Land_Shoot_House_Wall_F",[2107.85,8051.23,0],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [2107.85,8051.23,426.989];
	_this setVectorDirAndUp [[-0.947404,0.240825,0.210782],[0.231668,0.0616547,0.970839]];
	_this enableSimulation false;
};

private _item62 = objNull;
if (_layer9 && _layer229) then {
	_item62 = createVehicle ["Land_Shoot_House_Wall_F",[2107.11,8052.43,0],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [2107.11,8052.43,427.091];
	_this setVectorDirAndUp [[-0.220807,-0.968608,0.114204],[0.231668,0.0616547,0.970839]];
	_this enableSimulation false;
};

private _item63 = objNull;
if (_layer9 && _layer229) then {
	_item63 = createVehicle ["Land_Shoot_House_Wall_F",[2105.16,8052.89,0],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [2105.16,8052.89,427.526];
	_this setVectorDirAndUp [[-0.220807,-0.968608,0.114204],[0.231668,0.0616547,0.970839]];
	_this enableSimulation false;
};

private _item64 = objNull;
if (_layer9 && _layer229) then {
	_item64 = createVehicle ["Land_Shoot_House_Wall_F",[2106.65,8050.48,0],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [2106.65,8050.48,427.323];
	_this setVectorDirAndUp [[-0.220807,-0.968608,0.114204],[0.231668,0.0616547,0.970839]];
	_this enableSimulation false;
};

private _item65 = objNull;
if (_layer9 && _layer229) then {
	_item65 = createVehicle ["Land_Shoot_House_Wall_F",[2109.34,8048.83,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [2109.34,8048.83,426.769];
	_this setVectorDirAndUp [[-0.947404,0.237591,0.21442],[0.231668,0.0468814,0.971665]];
	_this enableSimulation false;
};

private _item66 = objNull;
if (_layer9 && _layer229) then {
	_item66 = createVehicle ["Land_Shoot_House_Wall_F",[2108.43,8044.94,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [2108.43,8044.94,427.167];
	_this setVectorDirAndUp [[-0.948223,0.233429,0.215368],[0.228107,0.0286912,0.973213]];
	_this enableSimulation false;
};

private _item67 = objNull;
if (_layer9 && _layer229) then {
	_item67 = createVehicle ["Land_Shoot_House_Wall_F",[2119.89,8041.24,0],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [2119.89,8041.24,425.132];
	_this setVectorDirAndUp [[-0.223883,-0.971363,0.0795667],[0.164676,0.042763,0.98542]];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer9 && _layer229) then {
	_item68 = createVehicle ["Land_Shoot_House_Wall_F",[2121.87,8054.13,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [2121.87,8054.13,424.103];
	_this setVectorDirAndUp [[0.964127,-0.236741,-0.120053],[0.141305,0.0748845,0.98713]];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer9 && _layer229) then {
	_item69 = createVehicle ["Land_Shoot_House_Wall_F",[2130.25,8046.02,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [2130.25,8046.02,423.709];
	_this setVectorDirAndUp [[0.971572,-0.231173,-0.0510521],[0.0690846,0.0705882,0.99511]];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layer9 && _layer229) then {
	_item70 = createVehicle ["Land_Shoot_House_Wall_F",[2123.07,8054.88,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [2123.07,8054.88,423.875];
	_this setVectorDirAndUp [[-0.224705,-0.968682,0.105651],[0.141305,0.0748845,0.98713]];
	_this enableSimulation false;
};

private _item71 = objNull;
if (_layer9 && _layer229) then {
	_item71 = createVehicle ["Land_Shoot_House_Wall_F",[2123.79,8040.33,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [2123.79,8040.33,424.682];
	_this setVectorDirAndUp [[-0.225245,-0.971768,0.07023],[0.123498,0.0430243,0.991412]];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer9 && _layer229) then {
	_item72 = createVehicle ["Land_Shoot_House_Wall_F",[2120.96,8050.23,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [2120.96,8050.23,424.51];
	_this setVectorDirAndUp [[0.964763,-0.235845,-0.116659],[0.136652,0.0702257,0.988127]];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer9 && _layer229) then {
	_item73 = createVehicle ["Land_Shoot_House_Wall_F",[2119.14,8042.44,0],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [2119.14,8042.44,425.205];
	_this setVectorDirAndUp [[0.960603,-0.233721,-0.150386],[0.164676,0.042763,0.98542]];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer9 && _layer229) then {
	_item74 = createVehicle ["Land_Shoot_House_Wall_F",[2126.96,8053.97,0],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [2126.96,8053.97,423.457];
	_this setVectorDirAndUp [[-0.225611,-0.968694,0.103598],[0.10977,0.0803856,0.990701]];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer9 && _layer229) then {
	_item75 = createVehicle ["Land_Shoot_House_Wall_F",[2128.92,8053.51,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [2128.92,8053.51,423.278];
	_this setVectorDirAndUp [[-0.225611,-0.968694,0.103598],[0.10977,0.0803856,0.990701]];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer9 && _layer229) then {
	_item76 = createVehicle ["Land_Shoot_House_Wall_F",[2130.86,8053.06,0],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [2130.86,8053.06,423.13];
	_this setVectorDirAndUp [[-0.226349,-0.969339,0.0956468],[0.0746262,0.0806488,0.993945]];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer9 && _layer229) then {
	_item77 = createVehicle ["Land_Shoot_House_Wall_F",[2131.61,8051.86,0],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [2131.61,8051.86,423.172];
	_this setVectorDirAndUp [[0.971183,-0.232116,-0.0540834],[0.0746262,0.0806488,0.993945]];
	_this enableSimulation false;
};

private _item78 = objNull;
if (_layer9 && _layer229) then {
	_item78 = createVehicle ["Land_Shoot_House_Wall_F",[2131.16,8049.91,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [2131.16,8049.91,423.364];
	_this setVectorDirAndUp [[0.971183,-0.231865,-0.0551492],[0.074627,0.0760848,0.994305]];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layer9 && _layer229) then {
	_item79 = createVehicle ["Land_Shoot_House_Wall_F",[2130.7,8047.96,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [2130.7,8047.96,423.539];
	_this setVectorDirAndUp [[0.971572,-0.231173,-0.0510521],[0.0690846,0.0705882,0.99511]];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layer9 && _layer229) then {
	_item80 = createVehicle ["Land_Shoot_House_Wall_F",[2127.69,8039.43,0],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [2127.69,8039.43,424.323];
	_this setVectorDirAndUp [[-0.226029,-0.97212,0.0623961],[0.0915693,0.0425666,0.994888]];
	_this enableSimulation false;
};

private _item81 = objNull;
if (_layer9 && _layer229) then {
	_item81 = createVehicle ["Land_Shoot_House_Wall_F",[2129.79,8044.07,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [2129.79,8044.07,423.872];
	_this setVectorDirAndUp [[0.969178,-0.232108,-0.0825866],[0.0983489,0.0571586,0.993509]];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer9 && _layer229) then {
	_item82 = createVehicle ["Land_Shoot_House_Wall_F",[2120.05,8046.34,0],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [2120.05,8046.34,424.866];
	_this setVectorDirAndUp [[0.965559,-0.234007,-0.113734],[0.130586,0.0577752,0.989752]];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer9 && _layer229) then {
	_item83 = createVehicle ["Land_Shoot_House_Wall_F",[2118.76,8036.37,0],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [2118.76,8036.37,425.466];
	_this setVectorDirAndUp [[0.961695,-0.231107,-0.147417],[0.157812,0.0270523,0.987099]];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer9 && _layer229) then {
	_item84 = createVehicle ["Land_Shoot_House_Wall_F",[2119.21,8038.32,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [2119.21,8038.32,425.34];
	_this setVectorDirAndUp [[0.961695,-0.231107,-0.147417],[0.157812,0.0270523,0.987099]];
	_this enableSimulation false;
};

private _item85 = objNull;
if (_layer9 && _layer229) then {
	_item85 = createVehicle ["Land_Shoot_House_Wall_F",[2119.66,8040.26,0],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [2119.66,8040.26,425.212];
	_this setVectorDirAndUp [[0.961695,-0.232401,-0.145368],[0.157812,0.0357783,0.986821]];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layer9 && _layer229) then {
	_item86 = createVehicle ["Land_Shoot_House_Wall_F",[2122.59,8039.59,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [2122.59,8039.59,424.861];
	_this setVectorDirAndUp [[0.966444,-0.23111,-0.112138],[0.123498,0.0352414,0.991719]];
	_this enableSimulation false;
};

private _item87 = objNull;
if (_layer9 && _layer229) then {
	_item87 = createVehicle ["Land_Shoot_House_Wall_F",[2122.13,8037.64,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [2122.13,8037.64,424.985];
	_this setVectorDirAndUp [[0.967376,-0.229979,-0.106266],[0.115542,0.02721,0.99293]];
	_this enableSimulation false;
};

private _item88 = objNull;
if (_layer9 && _layer229) then {
	_item88 = createVehicle ["Land_Shoot_House_Wall_F",[2121.68,8035.69,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [2121.68,8035.69,425.091];
	_this setVectorDirAndUp [[0.967376,-0.229979,-0.106266],[0.115542,0.02721,0.99293]];
	_this enableSimulation false;
};

private _item89 = objNull;
if (_layer9 && _layer229) then {
	_item89 = createVehicle ["Land_Shoot_House_Wall_F",[2114.86,8037.28,0],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [2114.86,8037.28,426.045];
	_this setVectorDirAndUp [[-0.955798,0.230438,0.182617],[0.191904,0.0183566,0.981242]];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layer9 && _layer229) then {
	_item90 = createVehicle ["Land_Shoot_House_Wall_F",[2115.31,8039.23,0],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [2115.31,8039.23,425.934];
	_this setVectorDirAndUp [[-0.962966,0.229664,0.141249],[0.14942,0.0184943,0.988601]];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layer9 && _layer229) then {
	_item91 = createVehicle ["Land_Shoot_House_Wall_F",[2118.85,8045.59,0],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [2118.85,8045.59,425.111];
	_this setVectorDirAndUp [[-0.223883,-0.970569,0.0887205],[0.164676,0.0520509,0.984973]];
	_this enableSimulation false;
};

private _item92 = objNull;
if (_layer9 && _layer229) then {
	_item92 = createVehicle ["Land_Shoot_House_Wall_F",[2116.9,8046.04,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [2116.9,8046.04,425.413];
	_this setVectorDirAndUp [[-0.223883,-0.970569,0.0887205],[0.164676,0.0520509,0.984973]];
	_this enableSimulation false;
};

private _item93 = objNull;
if (_layer9 && _layer229) then {
	_item93 = createVehicle ["Land_Shoot_House_Wall_F",[2125.02,8054.42,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [2125.02,8054.42,423.632];
	_this setVectorDirAndUp [[-0.225738,-0.969313,0.0973392],[0.104581,0.0752287,0.991667]];
	_this enableSimulation false;
};

private _item94 = objNull;
if (_layer9 && _layer229) then {
	_item94 = createVehicle ["Land_Shoot_House_Wall_F",[2116.45,8044.09,0],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [2116.45,8044.09,425.583];
	_this setVectorDirAndUp [[-0.223883,-0.971363,0.0795667],[0.164676,0.042763,0.98542]];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer9 && _layer229) then {
	_item95 = createVehicle ["Land_Shoot_House_Wall_F",[2120.67,8053.38,0],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [2120.67,8053.38,424.327];
	_this setVectorDirAndUp [[-0.224853,-0.96925,0.0999798],[0.136652,0.0702257,0.988127]];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer9 && _layer229) then {
	_item96 = createVehicle ["Land_Shoot_House_Wall_F",[2120.22,8051.43,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [2120.22,8051.43,424.528];
	_this setVectorDirAndUp [[-0.224853,-0.96925,0.0999798],[0.136652,0.0702257,0.988127]];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layer9 && _layer229) then {
	_item97 = createVehicle ["Land_Shoot_House_Wall_F",[2118.72,8053.83,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [2118.72,8053.83,424.612];
	_this setVectorDirAndUp [[-0.22354,-0.968657,0.108321],[0.173494,0.0698157,0.982357]];
	_this enableSimulation false;
};

private _item98 = objNull;
if (_layer9 && _layer229) then {
	_item98 = createVehicle ["Land_Shoot_House_Wall_F",[2128.89,8040.17,0],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [2128.89,8040.17,424.18];
	_this setVectorDirAndUp [[0.969807,-0.231203,-0.077581],[0.0915693,0.050382,0.994523]];
	_this enableSimulation false;
};

private _item99 = objNull;
if (_layer9 && _layer229) then {
	_item99 = createVehicle ["Land_Shoot_House_Wall_F",[2118.04,8050.91,0],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [2118.04,8050.91,424.936];
	_this setVectorDirAndUp [[-0.959727,0.237598,0.149903],[0.169975,0.0662583,0.983218]];
	_this enableSimulation false;
};

private _item100 = objNull;
if (_layer9 && _layer229) then {
	_item100 = createVehicle ["Land_Shoot_House_Wall_F",[2115.81,8045.3,0],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [2115.81,8045.3,425.635];
	_this setVectorDirAndUp [[-0.960603,0.235129,0.148176],[0.164676,0.0520509,0.984973]];
	_this enableSimulation false;
};

private _item101 = objNull;
if (_layer9 && _layer229) then {
	_item101 = createVehicle ["Land_Shoot_House_Wall_F",[2118.27,8051.89,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [2118.27,8051.89,424.83];
	_this setVectorDirAndUp [[-0.22354,-0.968657,0.108321],[0.173494,0.0698157,0.982357]];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layer9 && _layer229) then {
	_item102 = createVehicle ["Land_Shoot_House_Wall_F",[2125.74,8039.88,0],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [2125.74,8039.88,424.483];
	_this setVectorDirAndUp [[-0.226029,-0.97212,0.0623961],[0.0915693,0.0425666,0.994888]];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layer9 && _layer229) then {
	_item103 = createVehicle ["Land_Shoot_House_Wall_F",[2124.01,8041.31,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [2124.01,8041.31,424.609];
	_this setVectorDirAndUp [[0.965559,-0.233126,-0.115531],[0.130586,0.0501625,0.990167]];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layer9 && _layer229) then {
	_item104 = createVehicle ["Land_Shoot_House_Wall_F",[2124.47,8043.25,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [2124.47,8043.25,424.451];
	_this setVectorDirAndUp [[0.965559,-0.233126,-0.115531],[0.130586,0.0501625,0.990167]];
	_this enableSimulation false;
};

private _item105 = objNull;
if (_layer9 && _layer229) then {
	_item105 = createVehicle ["Land_Shoot_House_Wall_F",[2124.92,8045.2,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [2124.92,8045.2,424.29];
	_this setVectorDirAndUp [[0.964763,-0.23509,-0.118174],[0.136652,0.0638665,0.988558]];
	_this enableSimulation false;
};

private _item106 = objNull;
if (_layer9 && _layer229) then {
	_item106 = createVehicle ["Land_Shoot_House_Wall_F",[2126.12,8045.95,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [2126.12,8045.95,424.12];
	_this setVectorDirAndUp [[-0.225882,-0.970434,0.0850656],[0.0983489,0.0641588,0.993082]];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layer9 && _layer229) then {
	_item107 = createVehicle ["Land_Shoot_House_Wall_F",[2125.18,8051.28,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [2125.18,8051.28,423.853];
	_this setVectorDirAndUp [[-0.968559,0.234036,0.0843898],[0.104581,0.0752287,0.991667]];
	_this enableSimulation false;
};

private _item108 = objNull;
if (_layer9 && _layer229) then {
	_item108 = createVehicle ["Land_Shoot_House_Wall_F",[2125.92,8050.09,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [2125.92,8050.09,423.866];
	_this setVectorDirAndUp [[0.225737,0.969313,-0.0973391],[0.104581,0.0752287,0.991667]];
	_this enableSimulation false;
};

private _item109 = objNull;
if (_layer9 && _layer229) then {
	_item109 = createVehicle ["Land_Shoot_House_Wall_F",[2127.87,8049.63,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [2127.87,8049.63,423.693];
	_this setVectorDirAndUp [[0.225737,0.969779,-0.0925887],[0.10458,0.0703692,0.992024]];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer9 && _layer229) then {
	_item110 = createVehicle ["Land_Shoot_House_Wall_F",[2128.62,8048.43,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [2128.62,8048.43,423.7];
	_this setVectorDirAndUp [[-0.968559,0.233619,0.0855349],[0.10458,0.0703692,0.992024]];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer9 && _layer229) then {
	_item111 = createVehicle ["Land_Shoot_House_Wall_F",[2129.36,8047.23,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [2129.36,8047.23,423.707];
	_this setVectorDirAndUp [[0.225737,0.969779,-0.0925887],[0.10458,0.0703692,0.992024]];
	_this enableSimulation false;
};

private _item112 = objNull;
if (_layer9 && _layer229) then {
	_item112 = createVehicle ["Land_Shoot_House_Wall_F",[2118.4,8043.64,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [2118.4,8043.64,425.277];
	_this setVectorDirAndUp [[-0.223883,-0.971363,0.0795667],[0.164676,0.042763,0.98542]];
	_this enableSimulation false;
};

private _item113 = objNull;
if (_layer9 && _layer229) then {
	_item113 = createVehicle ["Land_Shoot_House_Wall_F",[2106.13,8021.86,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [2106.13,8021.86,427.313];
	_this setVectorDirAndUp [[-0.223558,-0.974184,-0.0314377],[0.173057,-0.0714136,0.982319]];
	_this enableSimulation false;
};

private _item114 = objNull;
if (_layer9 && _layer229) then {
	_item114 = createVehicle ["Land_Shoot_House_Wall_F",[2108.4,8031.59,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [2108.4,8031.59,427.306];
	_this setVectorDirAndUp [[-0.222277,-0.974688,0.0240126],[0.202549,-0.0220718,0.979023]];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layer9 && _layer229) then {
	_item115 = createVehicle ["Land_Shoot_House_Wall_F",[2111.39,8026.79,0],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [2111.39,8026.79,426.612];
	_this setVectorDirAndUp [[-0.224058,-0.974563,0.00498122],[0.159997,-0.0317415,0.986607]];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layer9 && _layer229) then {
	_item116 = createVehicle ["Land_Shoot_House_Wall_F",[2111.71,8036.99,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [2111.71,8036.99,426.654];
	_this setVectorDirAndUp [[-0.223134,-0.973449,0.0510641],[0.183367,0.0095337,0.982998]];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layer9 && _layer229) then {
	_item117 = createVehicle ["Land_Shoot_House_Wall_F",[2108.08,8021.4,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [2108.08,8021.4,426.938];
	_this setVectorDirAndUp [[-0.223558,-0.974184,-0.0314377],[0.173057,-0.0714136,0.982319]];
	_this enableSimulation false;
};

private _item118 = objNull;
if (_layer9 && _layer229) then {
	_item118 = createVehicle ["Land_Shoot_House_Wall_F",[2101.97,8039.25,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [2101.97,8039.25,428.849];
	_this setVectorDirAndUp [[-0.220059,-0.973865,0.0562137],[0.245091,0.00057978,0.9695]];
	_this enableSimulation false;
};

private _item119 = objNull;
if (_layer9 && _layer229) then {
	_item119 = createVehicle ["Land_Shoot_House_Wall_F",[2103.92,8038.8,0],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [2103.92,8038.8,428.357];
	_this setVectorDirAndUp [[-0.220059,-0.973865,0.0562137],[0.245091,0.00057978,0.9695]];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer9 && _layer229) then {
	_item120 = createVehicle ["Land_Shoot_House_Wall_F",[2110.03,8020.95,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [2110.03,8020.95,426.548];
	_this setVectorDirAndUp [[-0.22456,-0.974223,-0.0214763],[0.145694,-0.0553579,0.98778]];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer9 && _layer229) then {
	_item121 = createVehicle ["Land_Shoot_House_Wall_F",[2110.03,8020.95,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [2110.03,8020.95,426.548];
	_this setVectorDirAndUp [[-0.22456,-0.974223,-0.0214763],[0.145694,-0.0553579,0.98778]];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer9 && _layer229) then {
	_item122 = createVehicle ["Land_Shoot_House_Wall_F",[2100.32,8036.56,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [2100.32,8036.56,429.24];
	_this setVectorDirAndUp [[0.946233,-0.224981,-0.232436],[0.23666,-0.0083998,0.971556]];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer9 && _layer229) then {
	_item123 = createVehicle ["Land_Shoot_House_Wall_F",[2110.35,8031.14,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [2110.35,8031.14,426.89];
	_this setVectorDirAndUp [[-0.223573,-0.974261,0.028811],[0.172672,-0.0104984,0.984923]];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer9 && _layer229) then {
	_item124 = createVehicle ["Land_Shoot_House_Wall_F",[2100.29,8023.22,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [2100.29,8023.22,428.604];
	_this setVectorDirAndUp [[-0.222636,-0.973922,-0.0436858],[0.194752,-0.0883376,0.976867]];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer9 && _layer229) then {
	_item125 = createVehicle ["Land_Shoot_House_Wall_F",[2099.86,8034.61,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [2099.86,8034.61,429.326];
	_this setVectorDirAndUp [[0.94303,-0.2184,-0.25099],[0.249777,-0.033614,0.96772]];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer9 && _layer229) then {
	_item126 = createVehicle ["Land_Shoot_House_Wall_F",[2098.5,8028.77,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [2098.5,8028.77,429.423];
	_this setVectorDirAndUp [[0.945772,-0.212229,-0.245915],[0.238595,-0.0598516,0.969273]];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer9 && _layer229) then {
	_item127 = createVehicle ["Land_Shoot_House_Wall_F",[2098.05,8026.82,0],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [2098.05,8026.82,429.413];
	_this setVectorDirAndUp [[0.949006,-0.209539,-0.235545],[0.224649,-0.0747115,0.971571]];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer9 && _layer229) then {
	_item128 = createVehicle ["Land_Shoot_House_Wall_F",[2109.77,8037.44,0],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [2109.77,8037.44,427.023];
	_this setVectorDirAndUp [[-0.221311,-0.973364,0.0598657],[0.222145,0.00945582,0.974968]];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer9 && _layer229) then {
	_item129 = createVehicle ["Land_Shoot_House_Wall_F",[2108.79,8037.67,0],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [2108.79,8037.67,427.243];
	_this setVectorDirAndUp [[-0.221311,-0.973364,0.0598657],[0.222145,0.00945582,0.974968]];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer9 && _layer229) then {
	_item130 = createVehicle ["Land_Shoot_House_Wall_F",[2100.77,8038.51,0],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [2100.77,8038.51,429.147];
	_this setVectorDirAndUp [[0.946233,-0.224981,-0.232436],[0.23666,-0.0083998,0.971556]];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer9 && _layer229) then {
	_item131 = createVehicle ["Land_Shoot_House_Wall_F",[2107.5,8027.7,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [2107.5,8027.7,427.384];
	_this setVectorDirAndUp [[-0.222277,-0.974874,0.0146347],[0.202548,-0.0314892,0.978766]];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer9 && _layer229) then {
	_item132 = createVehicle ["Land_Shoot_House_Wall_F",[2108.08,8021.4,0],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [2108.08,8021.4,426.938];
	_this setVectorDirAndUp [[-0.223558,-0.974184,-0.0314377],[0.173057,-0.0714136,0.982319]];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer9 && _layer229) then {
	_item133 = createVehicle ["Land_Shoot_House_Wall_F",[2098.34,8023.67,0],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [2098.34,8023.67,429.084];
	_this setVectorDirAndUp [[-0.221181,-0.974534,-0.0369271],[0.224649,-0.08776,0.97048]];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer9 && _layer229) then {
	_item134 = createVehicle ["Land_Shoot_House_Wall_F",[2106.46,8032.05,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [2106.46,8032.05,427.719];
	_this setVectorDirAndUp [[-0.222277,-0.974688,0.0240126],[0.202549,-0.0220718,0.979023]];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer9 && _layer229) then {
	_item135 = createVehicle ["Land_Shoot_House_Wall_F",[2104.59,8024.05,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [2104.59,8024.05,427.76];
	_this setVectorDirAndUp [[-0.221853,-0.974815,-0.0227582],[0.211396,-0.070869,0.974828]];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer9 && _layer229) then {
	_item136 = createVehicle ["Land_Shoot_House_Wall_F",[2105.55,8028.16,0],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [2105.55,8028.16,427.783];
	_this setVectorDirAndUp [[-0.222896,-0.974839,-0.00254525],[0.188901,-0.0457532,0.98093]];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer9 && _layer229) then {
	_item137 = createVehicle ["Land_Shoot_House_Wall_F",[2101.65,8029.06,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [2101.65,8029.06,428.705];
	_this setVectorDirAndUp [[-0.221139,-0.975225,0.00573684],[0.225434,-0.0453939,0.9732]];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer9 && _layer229) then {
	_item138 = createVehicle ["Land_Shoot_House_Wall_F",[2100.61,8033.41,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [2100.61,8033.41,429.108];
	_this setVectorDirAndUp [[-0.221139,-0.975088,0.0173305],[0.225434,-0.0338207,0.973671]];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer9 && _layer229) then {
	_item139 = createVehicle ["Land_Shoot_House_Wall_F",[2099.7,8029.51,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [2099.7,8029.51,429.174];
	_this setVectorDirAndUp [[-0.220427,-0.975385,-0.00596895],[0.238595,-0.0598516,0.969273]];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer9 && _layer229) then {
	_item140 = createVehicle ["Land_Shoot_House_Wall_F",[2109.44,8027.25,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [2109.44,8027.25,426.967];
	_this setVectorDirAndUp [[-0.222277,-0.974874,0.0146347],[0.202548,-0.0314892,0.978766]];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer9 && _layer229) then {
	_item141 = createVehicle ["Land_Shoot_House_Wall_F",[2109.54,8036.46,0],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [2109.54,8036.46,427.085];
	_this setVectorDirAndUp [[0.949565,-0.229069,-0.214136],[0.222145,0.00945582,0.974968]];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer9 && _layer229) then {
	_item142 = createVehicle ["Land_Shoot_House_Wall_F",[2109.08,8034.52,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [2109.08,8034.52,427.189];
	_this setVectorDirAndUp [[0.951408,-0.22475,-0.2105],[0.213668,-0.0104178,0.976851]];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer9 && _layer229) then {
	_item143 = createVehicle ["Land_Shoot_House_Wall_F",[2108.63,8032.57,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [2108.63,8032.57,427.267];
	_this setVectorDirAndUp [[0.951408,-0.22475,-0.2105],[0.213668,-0.0104178,0.976851]];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer9 && _layer229) then {
	_item144 = createVehicle ["Land_Shoot_House_Wall_F",[2110.19,8026.05,0],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [2110.19,8026.05,426.782];
	_this setVectorDirAndUp [[0.961353,-0.221854,-0.163039],[0.159997,-0.0317415,0.986607]];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer9 && _layer229) then {
	_item145 = createVehicle ["Land_Shoot_House_Wall_F",[2114.12,8025.19,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [2114.12,8025.19,426.117];
	_this setVectorDirAndUp [[0.961353,-0.221854,-0.163039],[0.159997,-0.0317415,0.986607]];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer9 && _layer229) then {
	_item146 = createVehicle ["Land_Shoot_House_Wall_F",[2109.28,8022.15,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [2109.28,8022.15,426.758];
	_this setVectorDirAndUp [[0.956365,-0.216332,-0.196383],[0.188901,-0.0549465,0.980458]];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer9 && _layer229) then {
	_item147 = createVehicle ["Land_Shoot_House_Wall_F",[2097.59,8024.87,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [2097.59,8024.87,429.365];
	_this setVectorDirAndUp [[0.949006,-0.206355,-0.238339],[0.224649,-0.08776,0.97048]];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer9 && _layer229) then {
	_item148 = createVehicle ["Land_Shoot_House_Wall_F",[2104.35,8027.41,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [2104.35,8027.41,428.004];
	_this setVectorDirAndUp [[0.948829,-0.216506,-0.229887],[0.225434,-0.0453939,0.9732]];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer9 && _layer229) then {
	_item149 = createVehicle ["Land_Shoot_House_Wall_F",[2111.71,8036.99,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [2111.71,8036.99,426.654];
	_this setVectorDirAndUp [[-0.223134,-0.973449,0.0510641],[0.183367,0.0095337,0.982998]];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer9 && _layer229) then {
	_item150 = createVehicle ["Land_Shoot_House_Wall_F",[2098.96,8030.72,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [2098.96,8030.72,429.421];
	_this setVectorDirAndUp [[0.945772,-0.215823,-0.242767],[0.238595,-0.0455901,0.970048]];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer9 && _layer229) then {
	_item151 = createVehicle ["Land_Shoot_House_Wall_F",[2102.56,8032.96,0],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [2102.56,8032.96,428.635];
	_this setVectorDirAndUp [[-0.220534,-0.974862,0.0317507],[0.23666,-0.0219013,0.971346]];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer9 && _layer229) then {
	_item152 = createVehicle ["Land_Shoot_House_Wall_F",[2113.92,8020.04,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [2113.92,8020.04,425.923];
	_this setVectorDirAndUp [[-0.22456,-0.974223,-0.0214763],[0.145694,-0.0553579,0.98778]];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer9 && _layer229) then {
	_item153 = createVehicle ["Land_Shoot_House_Wall_F",[2125.56,8026.57,0],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [2125.56,8026.57,424.791];
	_this setVectorDirAndUp [[0.971577,-0.227133,-0.066691],[0.0690062,0.00225867,0.997614]];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer9 && _layer229) then {
	_item154 = createVehicle ["Land_Shoot_House_Wall_F",[2115.61,8036.08,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [2115.61,8036.08,425.949];
	_this setVectorDirAndUp [[-0.224434,-0.973094,0.0521259],[0.14942,0.0184943,0.988601]];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer9 && _layer229) then {
	_item155 = createVehicle ["Land_Shoot_House_Wall_F",[2117.79,8019.13,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [2117.79,8019.13,425.389];
	_this setVectorDirAndUp [[-0.225448,-0.973906,-0.0260719],[0.11608,-0.0534221,0.991802]];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layer9 && _layer229) then {
	_item156 = createVehicle ["Land_Shoot_House_Wall_F",[2122.43,8034.49,0],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [2122.43,8034.49,425.033];
	_this setVectorDirAndUp [[-0.225462,-0.973194,0.0453953],[0.115542,0.0195565,0.99311]];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer9 && _layer229) then {
	_item157 = createVehicle ["Land_Shoot_House_Wall_F",[2114.25,8030.23,0],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [2114.25,8030.23,426.198];
	_this setVectorDirAndUp [[-0.223573,-0.974261,0.028811],[0.172672,-0.0104984,0.984923]];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer9 && _layer229) then {
	_item158 = createVehicle ["Land_Shoot_House_Wall_F",[2116.34,8021.44,0],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [2116.34,8021.44,425.665];
	_this setVectorDirAndUp [[-0.225448,-0.974158,-0.0137872],[0.11608,-0.0409097,0.992397]];
	_this enableSimulation false;
};

private _item159 = objNull;
if (_layer9 && _layer229) then {
	_item159 = createVehicle ["Land_Shoot_House_Wall_F",[2126.01,8028.51,0],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [2126.01,8028.51,424.755];
	_this setVectorDirAndUp [[0.971577,-0.227133,-0.066691],[0.0690062,0.00225867,0.997614]];
	_this enableSimulation false;
};

private _item160 = objNull;
if (_layer9 && _layer229) then {
	_item160 = createVehicle ["Land_Shoot_House_Wall_F",[2122.54,8018.03,0],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [2122.54,8018.03,424.87];
	_this setVectorDirAndUp [[-0.226118,-0.973841,-0.0224469],[0.0871855,-0.0431843,0.995256]];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layer9 && _layer229) then {
	_item161 = createVehicle ["Land_Shoot_House_Wall_F",[2124.65,8022.67,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [2124.65,8022.67,424.824];
	_this setVectorDirAndUp [[0.969283,-0.22519,-0.0988927],[0.0972474,-0.0184147,0.99509]];
	_this enableSimulation false;
};

private _item162 = objNull;
if (_layer9 && _layer229) then {
	_item162 = createVehicle ["Land_Shoot_House_Wall_F",[2124.2,8020.72,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [2124.2,8020.72,424.832];
	_this setVectorDirAndUp [[0.970191,-0.224452,-0.0913858],[0.0871848,-0.0285782,0.995782]];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer9 && _layer229) then {
	_item163 = createVehicle ["Land_Shoot_House_Wall_F",[2116.2,8029.78,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [2116.2,8029.78,425.893];
	_this setVectorDirAndUp [[-0.224761,-0.974107,0.0244473],[0.139551,-0.00734856,0.990188]];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer9 && _layer229) then {
	_item164 = createVehicle ["Land_Shoot_House_Wall_F",[2115.29,8025.88,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [2115.29,8025.88,425.948];
	_this setVectorDirAndUp [[-0.225106,-0.974276,0.0106687],[0.128324,-0.0187913,0.991554]];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer9 && _layer229) then {
	_item165 = createVehicle ["Land_Shoot_House_Wall_F",[2124.37,8034.03,0],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [2124.37,8034.03,424.815];
	_this setVectorDirAndUp [[-0.225462,-0.973194,0.0453953],[0.115542,0.0195565,0.99311]];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer9 && _layer229) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[2120.14,8028.87,0],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [2120.14,8028.87,425.336];
	_this setVectorDirAndUp [[-0.225906,-0.974036,0.0148533],[0.097248,-0.00737801,0.995233]];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer9 && _layer229) then {
	_item167 = createVehicle ["Land_Shoot_House_Wall_F",[2124.81,8027.77,0],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [2124.81,8027.77,424.847];
	_this setVectorDirAndUp [[-0.225685,-0.973842,0.0264129],[0.106765,0.0022248,0.994282]];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer9 && _layer229) then {
	_item168 = createVehicle ["Land_Shoot_House_Wall_F",[2126.17,8033.61,0],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [2126.17,8033.61,424.66];
	_this setVectorDirAndUp [[-0.226311,-0.973367,0.0366168],[0.0768594,0.0196301,0.996849]];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer9 && _layer229) then {
	_item169 = createVehicle ["Land_Shoot_House_Wall_F",[2123.9,8023.87,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [2123.9,8023.87,424.919];
	_this setVectorDirAndUp [[-0.225906,-0.974141,0.00405017],[0.0972474,-0.0184147,0.99509]];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer9 && _layer229) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[2117.24,8025.43,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [2117.24,8025.43,425.687];
	_this setVectorDirAndUp [[-0.225106,-0.974276,0.0106687],[0.128324,-0.0187913,0.991554]];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer9 && _layer229) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[2126.92,8032.41,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [2126.92,8032.41,424.626];
	_this setVectorDirAndUp [[0.971018,-0.228411,-0.0703699],[0.0768594,0.0196301,0.996849]];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer9 && _layer229) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[2116.35,8034.88,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [2116.35,8034.88,425.857];
	_this setVectorDirAndUp [[0.962966,-0.228533,-0.143072],[0.14942,0.0106269,0.988717]];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer9 && _layer229) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[2115.45,8030.98,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [2115.45,8030.98,426];
	_this setVectorDirAndUp [[0.964369,-0.227048,-0.135798],[0.139551,0.000483503,0.990215]];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer9 && _layer229) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[2116.03,8024.68,0],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [2116.03,8024.68,425.826];
	_this setVectorDirAndUp [[0.965847,-0.223303,-0.131436],[0.128325,-0.0284503,0.991324]];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer9 && _layer229) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[2115.58,8022.74,0],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [2115.58,8022.74,425.807];
	_this setVectorDirAndUp [[0.967315,-0.222133,-0.122304],[0.11608,-0.0409097,0.992397]];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer9 && _layer229) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[2117.15,8020.26,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [2117.15,8020.26,425.522];
	_this setVectorDirAndUp [[0.967315,-0.222133,-0.122304],[0.11608,-0.0409097,0.992397]];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer9 && _layer229) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[2123.74,8018.77,0],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [2123.74,8018.77,424.797];
	_this setVectorDirAndUp [[0.97019,-0.223088,-0.0946695],[0.0871855,-0.0431843,0.995256]];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer9 && _layer229) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[2115.61,8036.08,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [2115.61,8036.08,425.949];
	_this setVectorDirAndUp [[-0.224434,-0.973094,0.0521259],[0.14942,0.0184943,0.988601]];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer9 && _layer229) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[2112,8020.5,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [2112,8020.5,426.232];
	_this setVectorDirAndUp [[0.224559,0.974224,0.0214764],[0.145694,-0.0553579,0.98778]];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer9 && _layer229) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[2121.92,8024.29,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [2121.92,8024.29,425.121];
	_this setVectorDirAndUp [[-0.225906,-0.974141,0.00405017],[0.0972474,-0.0184147,0.99509]];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer9 && _layer229) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[2119.77,8018.71,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [2119.77,8018.71,425.135];
	_this setVectorDirAndUp [[0.225447,0.973907,0.026072],[0.11608,-0.0534221,0.991802]];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer9 && _layer229) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[2118.14,8029.33,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [2118.14,8029.33,425.615];
	_this setVectorDirAndUp [[-0.224761,-0.974107,0.0244473],[0.139551,-0.00734856,0.990188]];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer9 && _layer229) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[2115.9,8032.93,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [2115.9,8032.93,425.935];
	_this setVectorDirAndUp [[0.964369,-0.227048,-0.135798],[0.139551,0.000483503,0.990215]];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer9 && _layer229) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[2129.33,8042.12,0],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [2129.33,8042.12,424.03];
	_this setVectorDirAndUp [[0.969178,-0.232108,-0.0825866],[0.0983489,0.0571586,0.993509]];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer9 && _layer229) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[2104.87,8056.04,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [2104.87,8056.04,427.38];
	_this setVectorDirAndUp [[0.94169,-0.245972,-0.229605],[0.255052,0.0767093,0.96388]];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer9 && _layer229) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[2120.52,8048.3,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [2120.52,8048.3,424.69];
	_this setVectorDirAndUp [[0.965559,-0.234007,-0.113734],[0.130586,0.0577752,0.989752]];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer9 && _layer229) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[2116.22,8043.09,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [2116.22,8043.09,425.66];
	_this setVectorDirAndUp [[-0.961695,0.232401,0.145368],[0.157812,0.0357783,0.986821]];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer9 && _layer229) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[2112.93,8024.56,0],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [2112.93,8024.56,426.287];
	_this setVectorDirAndUp [[-0.224058,-0.974568,-0.00382745],[0.159997,-0.0406575,0.98628]];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer9 && _layer229) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[2125.11,8024.62,0],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [2125.11,8024.62,424.819];
	_this setVectorDirAndUp [[0.972092,-0.225846,-0.0634851],[0.0608847,-0.0184681,0.997974]];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer9 && _layer229) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[2126.45,8030.49,0],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [2126.45,8030.49,424.701];
	_this setVectorDirAndUp [[0.971018,-0.228411,-0.0703699],[0.0768594,0.0196301,0.996849]];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer9 && _layer229) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[2099.43,8032.65,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [2099.43,8032.65,429.371];
	_this setVectorDirAndUp [[0.94303,-0.2184,-0.25099],[0.249777,-0.033614,0.96772]];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer9 && _layer229) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[2102.23,8022.78,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [2102.23,8022.78,428.179];
	_this setVectorDirAndUp [[-0.221853,-0.974815,-0.0227582],[0.211396,-0.070869,0.974828]];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer9 && _layer229) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[2115.13,8020.79,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [2115.13,8020.79,425.78];
	_this setVectorDirAndUp [[0.967315,-0.222133,-0.122304],[0.11608,-0.0409097,0.992397]];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer9 && _layer229) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[2103.36,8023.44,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [2103.36,8023.44,427.982];
	_this setVectorDirAndUp [[0.951889,-0.211456,-0.221795],[0.211396,-0.070869,0.974828]];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer9 && _layer229) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[2105.43,8022.89,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [2105.43,8022.89,427.513];
	_this setVectorDirAndUp [[0.959205,-0.214164,-0.184554],[0.173057,-0.0714136,0.982319]];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer9 && _layer229) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[2102.17,8044.37,0],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [2102.17,8044.37,428.716];
	_this setVectorDirAndUp [[0.942755,-0.232548,-0.239028],[0.250868,0.0222917,0.967765]];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer9 && _layer229) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[2101.27,8040.47,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [2101.27,8040.47,429.02];
	_this setVectorDirAndUp [[0.944195,-0.230931,-0.234875],[0.245091,0.016171,0.969365]];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer9 && _layer229) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[2101.72,8042.42,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [2101.72,8042.42,428.873];
	_this setVectorDirAndUp [[0.944195,-0.230931,-0.234875],[0.245091,0.016171,0.969365]];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer9 && _layer229) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[2121.16,8018.38,0],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [2121.16,8018.38,425.001];
	_this setVectorDirAndUp [[0.226311,0.973427,0.0349711],[0.0768169,-0.0536268,0.995602]];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer9 && _layer229) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[2128.36,8038.22,0],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [2128.36,8038.22,424.313];
	_this setVectorDirAndUp [[0.969807,-0.230586,-0.0793951],[0.0915693,0.0425666,0.994888]];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer9 && _layer229) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[2127.9,8036.27,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [2127.9,8036.27,424.432];
	_this setVectorDirAndUp [[0.970424,-0.229758,-0.0740865],[0.0844022,0.0353866,0.995803]];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer9 && _layer229) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[2127.45,8034.33,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [2127.45,8034.33,424.534];
	_this setVectorDirAndUp [[0.970424,-0.229141,-0.075973],[0.0844022,0.027198,0.99606]];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer9 && _layer229) then {
	_item203 = createVehicle ["VR_Area_01_circle_4_yellow_F",[2133.25,8033.87,0.275574],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [2133.25,8033.87,422.752];
	_this setVectorDirAndUp [[-0.973144,0.230198,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item207 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item207 = createVehicle ["Sign_Arrow_F",[2109.35,8038.88,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [2109.35,8038.88,425.801];
	_this setVectorDirAndUp [[0.20688,0.976727,-0.0566103],[0.222145,0.00945582,0.974968]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item208 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item208 = createVehicle ["Sign_Arrow_F",[2101.41,8031.88,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [2101.41,8031.88,427.569];
	_this setVectorDirAndUp [[0.947751,-0.223927,-0.227211],[0.225434,-0.0338207,0.973671]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item209 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item209 = createVehicle ["Sign_Arrow_F",[2110.8,8021.82,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [2110.8,8021.82,425.181];
	_this setVectorDirAndUp [[0.224772,0.974175,0.0214423],[0.145694,-0.0553579,0.98778]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item210 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item210 = createVehicle ["Sign_Arrow_F",[2123.13,8032.2,0],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [2123.13,8032.2,423.694];
	_this setVectorDirAndUp [[-0.958843,0.263261,0.106371],[0.115542,0.0195565,0.99311]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item211 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item211 = createVehicle ["Sign_Arrow_F",[2121.81,8021.4,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [2121.81,8021.4,423.757];
	_this setVectorDirAndUp [[-0.958891,0.268562,0.0916624],[0.0871848,-0.0285782,0.995782]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item212 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item212 = createVehicle ["Sign_Arrow_F",[2119.54,8052.79,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [2119.54,8052.79,423.239];
	_this setVectorDirAndUp [[0.970658,-0.180759,-0.158582],[0.173494,0.0698157,0.982357]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item213 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item213 = createVehicle ["Sign_Arrow_F",[2115.89,8051.49,0],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [2115.89,8051.49,423.965];
	_this setVectorDirAndUp [[-0.963676,0.219748,0.151788],[0.169975,0.0662583,0.983218]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item214 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item214 = createVehicle ["Sign_Arrow_F",[2113.5,8044.09,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [2113.5,8044.09,424.821];
	_this setVectorDirAndUp [[-0.960684,0.20518,0.187048],[0.198296,0.0355112,0.979499]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item215 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item215 = createVehicle ["Sign_Arrow_F",[2117.74,8045.01,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [2117.74,8045.01,424.026];
	_this setVectorDirAndUp [[0.9613,-0.232086,-0.148454],[0.164676,0.0520509,0.984973]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item216 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item216 = createVehicle ["Sign_Arrow_F",[2114.02,8038.55,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [2114.02,8038.55,424.883];
	_this setVectorDirAndUp [[-0.22169,-0.973172,0.0615621],[0.191904,0.0183566,0.981242]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item217 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item217 = createVehicle ["Sign_Arrow_F",[2105.11,8046.84,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [2105.11,8046.84,426.558];
	_this setVectorDirAndUp [[0.21852,0.97126,-0.0943549],[0.228107,0.0431718,0.972679]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item218 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item218 = createVehicle ["Sign_Arrow_F",[2115.27,8025.04,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [2115.27,8025.04,424.632];
	_this setVectorDirAndUp [[0.225318,0.974227,-0.0106971],[0.128324,-0.0187913,0.991554]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item219 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item219 = createVehicle ["Sign_Arrow_F",[2119.49,8048.77,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [2119.49,8048.77,423.516];
	_this setVectorDirAndUp [[0.22389,0.969944,-0.0953035],[0.169975,0.0574273,0.983774]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item220 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item220 = createVehicle ["Sign_Arrow_F",[2106.45,8051.82,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [2106.45,8051.82,425.983];
	_this setVectorDirAndUp [[0.221015,0.968555,-0.11425],[0.231668,0.0616547,0.970839]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item221 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item221 = createVehicle ["Sign_Arrow_F",[2101.9,8034.28,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [2101.9,8034.28,427.523];
	_this setVectorDirAndUp [[-0.219471,-0.975111,0.031486],[0.23666,-0.0219013,0.971346]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item222 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item222 = createVehicle ["Sign_Arrow_F",[2107.93,8034.3,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [2107.93,8034.3,426.137];
	_this setVectorDirAndUp [[-0.220671,-0.974613,0.037874],[0.213668,-0.0104178,0.976851]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item223 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item223 = createVehicle ["Sign_Arrow_F",[2128.36,8051.12,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [2128.36,8051.12,422.228];
	_this setVectorDirAndUp [[-0.224649,-0.969575,0.0972443],[0.104581,0.0752287,0.991667]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item224 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item224 = createVehicle ["Sign_Arrow_F",[2099.44,8026.14,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [2099.44,8026.14,427.729];
	_this setVectorDirAndUp [[0.206054,0.978493,0.00969893],[0.238595,-0.0598516,0.969273]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item225 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item225 = createVehicle ["Sign_Arrow_F",[2112.51,8054.17,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [2112.51,8054.17,424.459];
	_this setVectorDirAndUp [[0.222378,0.968516,-0.111913],[0.204845,0.0658109,0.976579]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item230 = objNull;
if (_layer229) then {
	_item230 = createVehicle ["B_supplyCrate_F",[2431.61,8265.77,0],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [2431.62,8265.77,351.413];
	_this setVectorDirAndUp [[-0.236862,0.971541,0.00215138],[0.00908246,0,0.999959]];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item231 = objNull;
if (_layer229) then {
	_item231 = createVehicle ["B_supplyCrate_F",[2431.69,8262.64,0],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [2431.69,8262.64,351.42];
	_this setVectorDirAndUp [[-0.236869,0.971541,0.00106946],[0.00451494,0,0.99999]];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item232 = objNull;
if (_layer229) then {
	_item232 = createVehicle ["B_supplyCrate_F",[2428.63,8261.87,0],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [2428.63,8261.87,351.428];
	_this setVectorDirAndUp [[-0.236872,0.971541,0],[0,0,1]];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item2 = objNull;
if (_layer229) then {
	_item2 = createTrigger ["EmptyDetectorArea10x10",[2437,8267.44,0],false];
	_this = _item2;
	_triggers pushback _this;
	_triggerIDs pushback 2;
	_item2 setPosATL [2437,8267.44,0];
	_this setTriggerArea [6,6,75.0168,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item5 = objNull;
if (_layer4 && _layer229) then {
	_item5 = createTrigger ["EmptyDetectorArea10x10",[2450.95,8254.42,0],true];
	_this = _item5;
	_triggers pushback _this;
	_triggerIDs pushback 5;
	_item5 setPosATL [2450.95,8254.42,0];
	_this setTriggerArea [5,20,341.757,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item204 = objNull;
if (_layer9 && _layer229) then {
	_item204 = createTrigger ["EmptyDetectorAreaR50",[2096.68,8039.93,3.05176e-005],false];
	_this = _item204;
	_triggers pushback _this;
	_triggerIDs pushback 204;
	_item204 setPosATL [2096.68,8039.93,3.05176e-005];
	_this setTriggerArea [50,50,295.491,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item205 = objNull;
if (_layer9 && _layer229) then {
	_item205 = createTrigger ["EmptyDetectorArea10x10",[2114.26,8038.83,0],true];
	_this = _item205;
	_triggers pushback _this;
	_triggerIDs pushback 205;
	_item205 setPosATL [2114.26,8038.83,0];
	_this setTriggerArea [18,13.5,-257.216,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item3 = objNull;
if (_layer229) then {
	_item3 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[2423.24,8265.67,0],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_logics pushback _this;
	_logicIDs pushback 3;
	_this setPosWorld [2423.24,8265.67,350.535];
	_this setVectorDirAndUp [[-0.917248,0.398317,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item227 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item227 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[2126.79,8043.01,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_logics pushback _this;
	_logicIDs pushback 227;
	_this setPosWorld [2126.79,8043.01,422.553];
	_this setVectorDirAndUp [[-0.902655,0.430366,0],[0,0,1]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item228 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item228 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[2129.58,8028.58,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_logics pushback _this;
	_logicIDs pushback 228;
	_this setPosWorld [2129.58,8028.58,422.808];
	_this setVectorDirAndUp [[-0.902653,0.430369,0],[0,0,1]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer226) then {missionNamespace setVariable ["Montella%2eMilitarybase_Spawns",[[_item227,_item228],[]]];};
if (_layer206) then {missionNamespace setVariable ["Montella%2eMilitarybase_Shoothouse Targets",[[_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225],[]]];};
if (_layer9) then {missionNamespace setVariable ["Montella%2eMilitarybase_Shoothouse Pit",[[_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228],[]]];};
if (_layer7) then {missionNamespace setVariable ["Montella%2eMilitarybase_Repair Station",[[_item8],[]]];};
if (_layer4) then {missionNamespace setVariable ["Montella%2eMilitarybase_bargate",[[_item5,_item6],[]]];};
if (_layer229) then {missionNamespace setVariable ["Montella%2eMilitarybase_SIA ZGM Essentials",[[_item0,_item1,_item2,_item3,_item5,_item6,_item8,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228,_item230,_item231,_item232],[]]];};


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
		call{arsenals pushBack this};
	};
	if !(isnull _item230) then {
		this = _item230;
		call{arsenals pushBack this};
	};
	if !(isnull _item231) then {
		this = _item231;
		call{arsenals pushBack this};
	};
	if !(isnull _item232) then {
		this = _item232;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
