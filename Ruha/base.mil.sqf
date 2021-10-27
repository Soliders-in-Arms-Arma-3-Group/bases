// Export of 'Ruha%2eMilitaryBase.ruha' by Knight on v0.9

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

private _item285 = grpNull;
if (_layerRoot) then {
	_item285 = createGroup west;
	_this = _item285;
	_groups pushback _this;
	_groupIDs pushback 285;
};

private _item290 = grpNull;
if (_layerRoot) then {
	_item290 = createGroup west;
	_this = _item290;
	_groups pushback _this;
	_groupIDs pushback 290;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layer229) then {
	_item0 = createVehicle ["Land_InfoStand_V1_F",[6645.88,1155.54,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [6645.88,1155.54,47.2454];
	_this setVectorDirAndUp [[0.999984,-0.00564267,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item1 = objNull;
if (_layer229) then {
	_item1 = createVehicle ["B_supplyCrate_F",[6653.49,1152.72,0],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [6653.49,1152.72,47.5624];
	_this setVectorDirAndUp [[-0.999364,-0.035671,0],[0,0,1]];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item6 = objNull;
if (_layer4 && _layer229) then {
	_item6 = createVehicle ["Land_BarGate_F",[6700.95,1110.89,0],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [6700.95,1110.89,50.7203];
	_this setVectorDirAndUp [[-0.9998,0.0199987,0],[0,0,1]];
	gate = _this;
	_this setVehicleVarName "gate";
};

private _item8 = objNull;
if (_layer7 && _layer229) then {
	_item8 = createVehicle ["Land_RepairDepot_01_tan_F",[6605.92,1165.02,0],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [6605.92,1165.05,49.0878];
	_this setVectorDirAndUp [[-0.0198505,0.999803,0],[0,0,1]];
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
	_item10 = createVehicle ["Land_InfoStand_V1_F",[7019.75,1276.53,0],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [7019.75,1276.53,47.2454];
	_this setVectorDirAndUp [[-0.203935,0.978984,0],[0,0,1]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item11 = objNull;
if (_layer9 && _layer229) then {
	_item11 = createVehicle ["Land_Scaffolding_New_F",[6996.43,1293.56,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [6996.43,1293.56,49.4189];
	_this setVectorDirAndUp [[0.20381,-0.97901,0],[0,0,1]];
};

private _item12 = objNull;
if (_layer9 && _layer229) then {
	_item12 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7028.37,1299.44,0],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [7028.37,1299.44,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer9 && _layer229) then {
	_item13 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7020.58,1297.92,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [7020.58,1297.92,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layer9 && _layer229) then {
	_item14 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7031.69,1292.95,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [7031.69,1292.95,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer9 && _layer229) then {
	_item15 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7023.84,1291.41,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [7023.84,1291.41,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item16 = objNull;
if (_layer9 && _layer229) then {
	_item16 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7014.24,1293.59,0],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [7014.24,1293.59,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item17 = objNull;
if (_layer9 && _layer229) then {
	_item17 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7021.77,1297.15,0],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [7021.77,1297.15,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item18 = objNull;
if (_layer9 && _layer229) then {
	_item18 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7018.04,1294.31,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [7018.04,1294.31,48.3455];
	_this setVectorDirAndUp [[-0.975028,-0.222084,0],[0,0,1]];
	_this enableSimulation false;
};

private _item19 = objNull;
if (_layer9 && _layer229) then {
	_item19 = createVehicle ["Land_Shoot_House_Wall_F",[7026.43,1309.24,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [7026.43,1309.24,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item20 = objNull;
if (_layer9 && _layer229) then {
	_item20 = createVehicle ["Land_Shoot_House_Wall_F",[7018.19,1304.56,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [7018.19,1304.56,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer9 && _layer229) then {
	_item21 = createVehicle ["Land_Shoot_House_Wall_F",[7018.96,1300.64,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [7018.96,1300.64,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layer9 && _layer229) then {
	_item22 = createVehicle ["Land_Shoot_House_Wall_F",[7018.58,1307.69,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [7018.58,1307.69,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer9 && _layer229) then {
	_item23 = createVehicle ["Land_Shoot_House_Wall_F",[7031.53,1309.22,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [7031.53,1309.22,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer9 && _layer229) then {
	_item24 = createVehicle ["Land_Shoot_House_Wall_F",[7032.7,1303.34,0],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [7032.7,1303.34,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer9 && _layer229) then {
	_item25 = createVehicle ["Land_Shoot_House_Wall_F",[7032.31,1305.31,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [7032.31,1305.31,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer9 && _layer229) then {
	_item26 = createVehicle ["Land_Shoot_House_Wall_F",[7024.47,1308.85,0],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [7024.47,1308.85,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer9 && _layer229) then {
	_item27 = createVehicle ["Land_Shoot_House_Wall_F",[7020.55,1308.08,0],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [7020.55,1308.08,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item28 = objNull;
if (_layer9 && _layer229) then {
	_item28 = createVehicle ["Land_Shoot_House_Wall_F",[7022.49,1298.28,0],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [7022.49,1298.28,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item29 = objNull;
if (_layer9 && _layer229) then {
	_item29 = createVehicle ["Land_Shoot_House_Wall_F",[7017.8,1306.52,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [7017.8,1306.52,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer9 && _layer229) then {
	_item30 = createVehicle ["Land_Shoot_House_Wall_F",[7022.51,1308.46,0],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [7022.51,1308.46,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer9 && _layer229) then {
	_item31 = createVehicle ["Land_Shoot_House_Wall_F",[7030.36,1310.01,0],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [7030.36,1310.01,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer9 && _layer229) then {
	_item32 = createVehicle ["Land_Shoot_House_Wall_F",[7032.29,1300.21,0],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [7032.29,1300.21,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer9 && _layer229) then {
	_item33 = createVehicle ["Land_Shoot_House_Wall_F",[7031.93,1307.26,0],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [7031.93,1307.26,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item34 = objNull;
if (_layer9 && _layer229) then {
	_item34 = createVehicle ["Land_Shoot_House_Wall_F",[7017.4,1303.39,0],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [7017.4,1303.39,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer9 && _layer229) then {
	_item35 = createVehicle ["Land_Shoot_House_Wall_F",[7016.02,1300.06,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [7016.02,1300.06,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer9 && _layer229) then {
	_item36 = createVehicle ["Land_Shoot_House_Wall_F",[7017.98,1300.44,0],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [7017.98,1300.44,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer9 && _layer229) then {
	_item37 = createVehicle ["Land_Shoot_House_Wall_F",[7014.06,1299.67,0],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [7014.06,1299.67,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer9 && _layer229) then {
	_item38 = createVehicle ["Land_Shoot_House_Wall_F",[7013.47,1302.61,0],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [7013.47,1302.61,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layer9 && _layer229) then {
	_item39 = createVehicle ["Land_Shoot_House_Wall_F",[7033.08,1301.38,0],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [7033.08,1301.38,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer9 && _layer229) then {
	_item40 = createVehicle ["Land_Shoot_House_Wall_F",[7030.33,1299.82,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [7030.33,1299.82,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layer9 && _layer229) then {
	_item41 = createVehicle ["Land_Shoot_House_Wall_F",[7015.02,1294.76,0],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [7015.02,1294.76,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer9 && _layer229) then {
	_item42 = createVehicle ["Land_Shoot_House_Wall_F",[7016.98,1295.15,0],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [7016.98,1295.15,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item43 = objNull;
if (_layer9 && _layer229) then {
	_item43 = createVehicle ["Land_Shoot_House_Wall_F",[7029.93,1296.69,0],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [7029.93,1296.69,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item44 = objNull;
if (_layer9 && _layer229) then {
	_item44 = createVehicle ["Land_Shoot_House_Wall_F",[7030.91,1296.88,0],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [7030.91,1296.88,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item45 = objNull;
if (_layer9 && _layer229) then {
	_item45 = createVehicle ["Land_Shoot_House_Wall_F",[7027.58,1298.27,0],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [7027.58,1298.27,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item46 = objNull;
if (_layer9 && _layer229) then {
	_item46 = createVehicle ["Land_Shoot_House_Wall_F",[7029.54,1298.65,0],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [7029.54,1298.65,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layer9 && _layer229) then {
	_item47 = createVehicle ["Land_Shoot_House_Wall_F",[7027.97,1296.3,0],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [7027.97,1296.3,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item48 = objNull;
if (_layer9 && _layer229) then {
	_item48 = createVehicle ["Land_Shoot_House_Wall_F",[7024.45,1298.66,0],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [7024.45,1298.66,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item49 = objNull;
if (_layer9 && _layer229) then {
	_item49 = createVehicle ["Land_Shoot_House_Wall_F",[7019.76,1296.73,0],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [7019.76,1296.73,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item50 = objNull;
if (_layer9 && _layer229) then {
	_item50 = createVehicle ["Land_Shoot_House_Wall_F",[7020.14,1294.77,0],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [7020.14,1294.77,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item51 = objNull;
if (_layer9 && _layer229) then {
	_item51 = createVehicle ["Land_Shoot_House_Wall_F",[7022.11,1295.16,0],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [7022.11,1295.16,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item52 = objNull;
if (_layer9 && _layer229) then {
	_item52 = createVehicle ["Land_Shoot_House_Wall_F",[7015.44,1303,0],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [7015.44,1303,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layer9 && _layer229) then {
	_item53 = createVehicle ["Land_Shoot_House_Wall_F",[7031.52,1304.13,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [7031.52,1304.13,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item54 = objNull;
if (_layer9 && _layer229) then {
	_item54 = createVehicle ["Land_Shoot_House_Wall_F",[7027.6,1303.36,0],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [7027.6,1303.36,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item55 = objNull;
if (_layer9 && _layer229) then {
	_item55 = createVehicle ["Land_Shoot_House_Wall_F",[7025.23,1299.84,0],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [7025.23,1299.84,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item56 = objNull;
if (_layer9 && _layer229) then {
	_item56 = createVehicle ["Land_Shoot_House_Wall_F",[7024.85,1301.8,0],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [7024.85,1301.8,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item57 = objNull;
if (_layer9 && _layer229) then {
	_item57 = createVehicle ["Land_Shoot_House_Wall_F",[7025.63,1302.97,0],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [7025.63,1302.97,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item58 = objNull;
if (_layer9 && _layer229) then {
	_item58 = createVehicle ["Land_Shoot_House_Wall_F",[7019.37,1303.77,0],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [7019.37,1303.77,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item59 = objNull;
if (_layer9 && _layer229) then {
	_item59 = createVehicle ["Land_Shoot_House_Wall_F",[7021.33,1304.16,0],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [7021.33,1304.16,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item60 = objNull;
if (_layer9 && _layer229) then {
	_item60 = createVehicle ["Land_Shoot_House_Wall_F",[7022.12,1305.33,0],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [7022.12,1305.33,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item61 = objNull;
if (_layer9 && _layer229) then {
	_item61 = createVehicle ["Land_Shoot_House_Wall_F",[7025.25,1304.93,0],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [7025.25,1304.93,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item62 = objNull;
if (_layer9 && _layer229) then {
	_item62 = createVehicle ["Land_Shoot_House_Wall_F",[7026.03,1306.1,0],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [7026.03,1306.1,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item63 = objNull;
if (_layer9 && _layer229) then {
	_item63 = createVehicle ["Land_Shoot_House_Wall_F",[7025.65,1308.06,0],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [7025.65,1308.06,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item64 = objNull;
if (_layer9 && _layer229) then {
	_item64 = createVehicle ["Land_Shoot_House_Wall_F",[7024.07,1305.71,0],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [7024.07,1305.71,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item65 = objNull;
if (_layer9 && _layer229) then {
	_item65 = createVehicle ["Land_Shoot_House_Wall_F",[7023.67,1302.59,0],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [7023.67,1302.59,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item66 = objNull;
if (_layer9 && _layer229) then {
	_item66 = createVehicle ["Land_Shoot_House_Wall_F",[7019.75,1301.81,0],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [7019.75,1301.81,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item67 = objNull;
if (_layer9 && _layer229) then {
	_item67 = createVehicle ["Land_Shoot_House_Wall_F",[7021.09,1289.85,0],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [7021.09,1289.85,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer9 && _layer229) then {
	_item68 = createVehicle ["Land_Shoot_House_Wall_F",[7033.65,1293.34,0],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [7033.65,1293.34,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer9 && _layer229) then {
	_item69 = createVehicle ["Land_Shoot_House_Wall_F",[7029.7,1282.37,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [7029.7,1282.37,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layer9 && _layer229) then {
	_item70 = createVehicle ["Land_Shoot_House_Wall_F",[7034.83,1292.56,0],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [7034.83,1292.56,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item71 = objNull;
if (_layer9 && _layer229) then {
	_item71 = createVehicle ["Land_Shoot_House_Wall_F",[7021.87,1285.92,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [7021.87,1285.92,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer9 && _layer229) then {
	_item72 = createVehicle ["Land_Shoot_House_Wall_F",[7029.72,1292.57,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [7029.72,1292.57,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer9 && _layer229) then {
	_item73 = createVehicle ["Land_Shoot_House_Wall_F",[7021.88,1291.02,0],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [7021.88,1291.02,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer9 && _layer229) then {
	_item74 = createVehicle ["Land_Shoot_House_Wall_F",[7035.6,1288.63,0],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [7035.6,1288.63,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer9 && _layer229) then {
	_item75 = createVehicle ["Land_Shoot_House_Wall_F",[7035.99,1286.67,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [7035.99,1286.67,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer9 && _layer229) then {
	_item76 = createVehicle ["Land_Shoot_House_Wall_F",[7036.38,1284.71,0],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [7036.38,1284.71,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer9 && _layer229) then {
	_item77 = createVehicle ["Land_Shoot_House_Wall_F",[7035.59,1283.53,0],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [7035.59,1283.53,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item78 = objNull;
if (_layer9 && _layer229) then {
	_item78 = createVehicle ["Land_Shoot_House_Wall_F",[7033.63,1283.14,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [7033.63,1283.14,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layer9 && _layer229) then {
	_item79 = createVehicle ["Land_Shoot_House_Wall_F",[7031.66,1282.76,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [7031.66,1282.76,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layer9 && _layer229) then {
	_item80 = createVehicle ["Land_Shoot_House_Wall_F",[7022.64,1281.99,0],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [7022.64,1281.99,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item81 = objNull;
if (_layer9 && _layer229) then {
	_item81 = createVehicle ["Land_Shoot_House_Wall_F",[7027.74,1281.98,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [7027.74,1281.98,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer9 && _layer229) then {
	_item82 = createVehicle ["Land_Shoot_House_Wall_F",[7025.8,1291.79,0],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [7025.8,1291.79,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer9 && _layer229) then {
	_item83 = createVehicle ["Land_Shoot_House_Wall_F",[7016.18,1288.88,0],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [7016.18,1288.88,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer9 && _layer229) then {
	_item84 = createVehicle ["Land_Shoot_House_Wall_F",[7018.15,1289.26,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [7018.15,1289.26,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item85 = objNull;
if (_layer9 && _layer229) then {
	_item85 = createVehicle ["Land_Shoot_House_Wall_F",[7020.11,1289.65,0],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [7020.11,1289.65,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layer9 && _layer229) then {
	_item86 = createVehicle ["Land_Shoot_House_Wall_F",[7020.69,1286.71,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [7020.69,1286.71,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item87 = objNull;
if (_layer9 && _layer229) then {
	_item87 = createVehicle ["Land_Shoot_House_Wall_F",[7018.73,1286.32,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [7018.73,1286.32,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item88 = objNull;
if (_layer9 && _layer229) then {
	_item88 = createVehicle ["Land_Shoot_House_Wall_F",[7016.76,1285.93,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [7016.76,1285.93,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item89 = objNull;
if (_layer9 && _layer229) then {
	_item89 = createVehicle ["Land_Shoot_House_Wall_F",[7015.41,1292.8,0],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [7015.41,1292.8,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layer9 && _layer229) then {
	_item90 = createVehicle ["Land_Shoot_House_Wall_F",[7017.37,1293.19,0],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [7017.37,1293.19,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layer9 && _layer229) then {
	_item91 = createVehicle ["Land_Shoot_House_Wall_F",[7024.63,1292.58,0],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [7024.63,1292.58,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item92 = objNull;
if (_layer9 && _layer229) then {
	_item92 = createVehicle ["Land_Shoot_House_Wall_F",[7024.24,1294.54,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [7024.24,1294.54,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item93 = objNull;
if (_layer9 && _layer229) then {
	_item93 = createVehicle ["Land_Shoot_House_Wall_F",[7035.21,1290.59,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [7035.21,1290.59,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item94 = objNull;
if (_layer9 && _layer229) then {
	_item94 = createVehicle ["Land_Shoot_House_Wall_F",[7022.28,1294.16,0],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [7022.28,1294.16,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer9 && _layer229) then {
	_item95 = createVehicle ["Land_Shoot_House_Wall_F",[7032.48,1294.13,0],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [7032.48,1294.13,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer9 && _layer229) then {
	_item96 = createVehicle ["Land_Shoot_House_Wall_F",[7030.51,1293.74,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [7030.51,1293.74,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layer9 && _layer229) then {
	_item97 = createVehicle ["Land_Shoot_House_Wall_F",[7032.09,1296.09,0],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [7032.09,1296.09,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item98 = objNull;
if (_layer9 && _layer229) then {
	_item98 = createVehicle ["Land_Shoot_House_Wall_F",[7023.82,1281.21,0],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [7023.82,1281.21,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item99 = objNull;
if (_layer9 && _layer229) then {
	_item99 = createVehicle ["Land_Shoot_House_Wall_F",[7029.14,1295.51,0],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [7029.14,1295.51,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item100 = objNull;
if (_layer9 && _layer229) then {
	_item100 = createVehicle ["Land_Shoot_House_Wall_F",[7023.11,1295.24,0],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [7023.11,1295.24,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item101 = objNull;
if (_layer9 && _layer229) then {
	_item101 = createVehicle ["Land_Shoot_House_Wall_F",[7030.13,1295.7,0],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [7030.13,1295.7,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layer9 && _layer229) then {
	_item102 = createVehicle ["Land_Shoot_House_Wall_F",[7022.25,1283.96,0],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [7022.25,1283.96,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layer9 && _layer229) then {
	_item103 = createVehicle ["Land_Shoot_House_Wall_F",[7022.85,1286.11,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [7022.85,1286.11,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layer9 && _layer229) then {
	_item104 = createVehicle ["Land_Shoot_House_Wall_F",[7024.81,1286.5,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [7024.81,1286.5,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item105 = objNull;
if (_layer9 && _layer229) then {
	_item105 = createVehicle ["Land_Shoot_House_Wall_F",[7026.77,1286.89,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [7026.77,1286.89,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item106 = objNull;
if (_layer9 && _layer229) then {
	_item106 = createVehicle ["Land_Shoot_House_Wall_F",[7027.94,1286.1,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [7027.94,1286.1,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layer9 && _layer229) then {
	_item107 = createVehicle ["Land_Shoot_House_Wall_F",[7032.42,1289.16,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [7032.42,1289.16,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item108 = objNull;
if (_layer9 && _layer229) then {
	_item108 = createVehicle ["Land_Shoot_House_Wall_F",[7031.63,1287.99,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [7031.63,1287.99,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item109 = objNull;
if (_layer9 && _layer229) then {
	_item109 = createVehicle ["Land_Shoot_House_Wall_F",[7032.02,1286.02,0],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [7032.02,1286.02,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer9 && _layer229) then {
	_item110 = createVehicle ["Land_Shoot_House_Wall_F",[7031.23,1284.85,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [7031.23,1284.85,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer9 && _layer229) then {
	_item111 = createVehicle ["Land_Shoot_House_Wall_F",[7030.45,1283.67,0],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [7030.45,1283.67,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item112 = objNull;
if (_layer9 && _layer229) then {
	_item112 = createVehicle ["Land_Shoot_House_Wall_F",[7022.67,1292.19,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [7022.67,1292.19,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item113 = objNull;
if (_layer9 && _layer229) then {
	_item113 = createVehicle ["Land_Shoot_House_Wall_F",[6997.76,1294.41,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [6997.76,1294.41,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item114 = objNull;
if (_layer9 && _layer229) then {
	_item114 = createVehicle ["Land_Shoot_House_Wall_F",[7007.57,1296.35,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [7007.57,1296.35,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layer9 && _layer229) then {
	_item115 = createVehicle ["Land_Shoot_House_Wall_F",[7004.42,1291.66,0],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [7004.42,1291.66,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layer9 && _layer229) then {
	_item116 = createVehicle ["Land_Shoot_House_Wall_F",[7013.85,1295.55,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [7013.85,1295.55,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layer9 && _layer229) then {
	_item117 = createVehicle ["Land_Shoot_House_Wall_F",[6998.15,1292.45,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [6998.15,1292.45,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item118 = objNull;
if (_layer9 && _layer229) then {
	_item118 = createVehicle ["Land_Shoot_House_Wall_F",[7011.91,1305.36,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [7011.91,1305.36,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item119 = objNull;
if (_layer9 && _layer229) then {
	_item119 = createVehicle ["Land_Shoot_House_Wall_F",[7012.3,1303.4,0],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [7012.3,1303.4,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer9 && _layer229) then {
	_item120 = createVehicle ["Land_Shoot_House_Wall_F",[6998.54,1290.49,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [6998.54,1290.49,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer9 && _layer229) then {
	_item121 = createVehicle ["Land_Shoot_House_Wall_F",[6998.54,1290.49,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [6998.54,1290.49,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer9 && _layer229) then {
	_item122 = createVehicle ["Land_Shoot_House_Wall_F",[7008.77,1305.76,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [7008.77,1305.76,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer9 && _layer229) then {
	_item123 = createVehicle ["Land_Shoot_House_Wall_F",[7007.96,1294.39,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [7007.96,1294.39,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer9 && _layer229) then {
	_item124 = createVehicle ["Land_Shoot_House_Wall_F",[6996.6,1300.3,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [6996.6,1300.3,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer9 && _layer229) then {
	_item125 = createVehicle ["Land_Shoot_House_Wall_F",[7006.81,1305.38,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [7006.81,1305.38,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer9 && _layer229) then {
	_item126 = createVehicle ["Land_Shoot_House_Wall_F",[7000.93,1304.21,0],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [7000.93,1304.21,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer9 && _layer229) then {
	_item127 = createVehicle ["Land_Shoot_House_Wall_F",[6998.96,1303.83,0],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [6998.96,1303.83,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer9 && _layer229) then {
	_item128 = createVehicle ["Land_Shoot_House_Wall_F",[7013.46,1297.51,0],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [7013.46,1297.51,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer9 && _layer229) then {
	_item129 = createVehicle ["Land_Shoot_House_Wall_F",[7013.27,1298.49,0],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [7013.27,1298.49,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer9 && _layer229) then {
	_item130 = createVehicle ["Land_Shoot_House_Wall_F",[7010.74,1306.15,0],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [7010.74,1306.15,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer9 && _layer229) then {
	_item131 = createVehicle ["Land_Shoot_House_Wall_F",[7003.65,1295.58,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [7003.65,1295.58,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer9 && _layer229) then {
	_item132 = createVehicle ["Land_Shoot_House_Wall_F",[6998.15,1292.45,0],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [6998.15,1292.45,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer9 && _layer229) then {
	_item133 = createVehicle ["Land_Shoot_House_Wall_F",[6996.22,1302.26,0],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [6996.22,1302.26,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer9 && _layer229) then {
	_item134 = createVehicle ["Land_Shoot_House_Wall_F",[7007.19,1298.31,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [7007.19,1298.31,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer9 && _layer229) then {
	_item135 = createVehicle ["Land_Shoot_House_Wall_F",[6999.13,1296.72,0],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [6999.13,1296.72,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer9 && _layer229) then {
	_item136 = createVehicle ["Land_Shoot_House_Wall_F",[7003.26,1297.54,0],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [7003.26,1297.54,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer9 && _layer229) then {
	_item137 = createVehicle ["Land_Shoot_House_Wall_F",[7002.49,1301.46,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [7002.49,1301.46,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer9 && _layer229) then {
	_item138 = createVehicle ["Land_Shoot_House_Wall_F",[7006.02,1304.2,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [7006.02,1304.2,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer9 && _layer229) then {
	_item139 = createVehicle ["Land_Shoot_House_Wall_F",[7002.1,1303.42,0],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [7002.1,1303.42,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer9 && _layer229) then {
	_item140 = createVehicle ["Land_Shoot_House_Wall_F",[7004.04,1293.61,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [7004.04,1293.61,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer9 && _layer229) then {
	_item141 = createVehicle ["Land_Shoot_House_Wall_F",[7012.48,1297.32,0],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [7012.48,1297.32,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer9 && _layer229) then {
	_item142 = createVehicle ["Land_Shoot_House_Wall_F",[7010.52,1296.93,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [7010.52,1296.93,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer9 && _layer229) then {
	_item143 = createVehicle ["Land_Shoot_House_Wall_F",[7008.55,1296.54,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [7008.55,1296.54,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer9 && _layer229) then {
	_item144 = createVehicle ["Land_Shoot_House_Wall_F",[7003.25,1292.44,0],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [7003.25,1292.44,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer9 && _layer229) then {
	_item145 = createVehicle ["Land_Shoot_House_Wall_F",[7004.09,1288.51,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [7004.09,1288.51,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer9 && _layer229) then {
	_item146 = createVehicle ["Land_Shoot_House_Wall_F",[6999.33,1291.67,0],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [6999.33,1291.67,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer9 && _layer229) then {
	_item147 = createVehicle ["Land_Shoot_House_Wall_F",[6997,1303.44,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [6997,1303.44,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer9 && _layer229) then {
	_item148 = createVehicle ["Land_Shoot_House_Wall_F",[7002.09,1298.33,0],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [7002.09,1298.33,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer9 && _layer229) then {
	_item149 = createVehicle ["Land_Shoot_House_Wall_F",[7013.85,1295.55,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [7013.85,1295.55,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer9 && _layer229) then {
	_item150 = createVehicle ["Land_Shoot_House_Wall_F",[7002.89,1304.6,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [7002.89,1304.6,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer9 && _layer229) then {
	_item151 = createVehicle ["Land_Shoot_House_Wall_F",[7006.41,1302.24,0],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [7006.41,1302.24,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer9 && _layer229) then {
	_item152 = createVehicle ["Land_Shoot_House_Wall_F",[6999.31,1286.57,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [6999.31,1286.57,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer9 && _layer229) then {
	_item153 = createVehicle ["Land_Shoot_House_Wall_F",[7010.05,1278.65,0],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [7010.05,1278.65,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer9 && _layer229) then {
	_item154 = createVehicle ["Land_Shoot_House_Wall_F",[7014.62,1291.63,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [7014.62,1291.63,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer9 && _layer229) then {
	_item155 = createVehicle ["Land_Shoot_House_Wall_F",[7000.07,1282.67,0],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [7000.07,1282.67,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layer9 && _layer229) then {
	_item156 = createVehicle ["Land_Shoot_House_Wall_F",[7015.98,1284.76,0],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [7015.98,1284.76,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer9 && _layer229) then {
	_item157 = createVehicle ["Land_Shoot_House_Wall_F",[7008.74,1290.47,0],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [7008.74,1290.47,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer9 && _layer229) then {
	_item158 = createVehicle ["Land_Shoot_House_Wall_F",[7001.58,1284.94,0],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [7001.58,1284.94,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item159 = objNull;
if (_layer9 && _layer229) then {
	_item159 = createVehicle ["Land_Shoot_House_Wall_F",[7012,1279.03,0],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [7012,1279.03,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item160 = objNull;
if (_layer9 && _layer229) then {
	_item160 = createVehicle ["Land_Shoot_House_Wall_F",[7001.02,1277.88,0],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [7001.02,1277.88,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layer9 && _layer229) then {
	_item161 = createVehicle ["Land_Shoot_House_Wall_F",[7006.12,1277.87,0],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [7006.12,1277.87,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item162 = objNull;
if (_layer9 && _layer229) then {
	_item162 = createVehicle ["Land_Shoot_House_Wall_F",[7004.16,1277.48,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [7004.16,1277.48,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer9 && _layer229) then {
	_item163 = createVehicle ["Land_Shoot_House_Wall_F",[7009.12,1288.5,0],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [7009.12,1288.5,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer9 && _layer229) then {
	_item164 = createVehicle ["Land_Shoot_House_Wall_F",[7005.2,1287.73,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [7005.2,1287.73,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer9 && _layer229) then {
	_item165 = createVehicle ["Land_Shoot_House_Wall_F",[7016.37,1282.8,0],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [7016.37,1282.8,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer9 && _layer229) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[7009.91,1284.53,0],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [7009.91,1284.53,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer9 && _layer229) then {
	_item167 = createVehicle ["Land_Shoot_House_Wall_F",[7010.83,1279.82,0],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [7010.83,1279.82,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer9 && _layer229) then {
	_item168 = createVehicle ["Land_Shoot_House_Wall_F",[7016.72,1280.98,0],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [7016.72,1280.98,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer9 && _layer229) then {
	_item169 = createVehicle ["Land_Shoot_House_Wall_F",[7006.91,1279.04,0],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [7006.91,1279.04,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer9 && _layer229) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[7005.59,1285.76,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [7005.59,1285.76,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer9 && _layer229) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[7015.93,1279.81,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [7015.93,1279.81,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer9 && _layer229) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[7013.83,1290.45,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [7013.83,1290.45,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer9 && _layer229) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[7009.91,1289.68,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [7009.91,1289.68,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer9 && _layer229) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[7004.41,1286.56,0],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [7004.41,1286.56,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer9 && _layer229) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[7002.45,1286.17,0],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [7002.45,1286.17,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer9 && _layer229) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[7000.84,1283.72,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [7000.84,1283.72,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer9 && _layer229) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[7002.19,1277.1,0],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [7002.19,1277.1,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer9 && _layer229) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[7014.62,1291.63,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [7014.62,1291.63,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer9 && _layer229) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[6998.95,1288.51,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [6998.95,1288.51,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer9 && _layer229) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[7006.48,1281.03,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [7006.48,1281.03,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer9 && _layer229) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[7000.51,1280.69,0],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [7000.51,1280.69,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer9 && _layer229) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[7009.51,1286.54,0],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [7009.51,1286.54,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer9 && _layer229) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[7011.87,1290.07,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [7011.87,1290.07,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer9 && _layer229) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[7025.78,1281.6,0],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [7025.78,1281.6,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer9 && _layer229) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[7028.41,1309.62,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [7028.41,1309.62,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer9 && _layer229) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[7027.78,1292.17,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [7027.78,1292.17,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer9 && _layer229) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[7021.27,1293.95,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [7021.27,1293.95,48.3455];
	_this setVectorDirAndUp [[-0.193592,0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer9 && _layer229) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[7003.02,1289.34,0],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [7003.02,1289.34,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer9 && _layer229) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[7008.08,1278.25,0],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [7008.08,1278.25,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer9 && _layer229) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[7013.99,1279.45,0],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [7013.99,1279.45,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer9 && _layer229) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[7004.84,1304.97,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [7004.84,1304.97,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer9 && _layer229) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[6997,1298.35,0],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [6997,1298.35,48.3455];
	_this setVectorDirAndUp [[-0.981082,-0.193591,0],[0,0,1]];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer9 && _layer229) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[7000.49,1285.78,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [7000.49,1285.78,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer9 && _layer229) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[6998.07,1297.59,0],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [6998.07,1297.59,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer9 && _layer229) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[6998.42,1295.49,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [6998.42,1295.49,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer9 && _layer229) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[7016.65,1307.28,0],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [7016.65,1307.28,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer9 && _layer229) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[7012.73,1306.51,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [7012.73,1306.51,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer9 && _layer229) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[7014.69,1306.9,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [7014.69,1306.9,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer9 && _layer229) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[7000.77,1279.28,0],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [7000.77,1279.28,48.3455];
	_this setVectorDirAndUp [[0.981082,0.193592,0],[0,0,1]];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer9 && _layer229) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[7021.82,1280.89,0],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [7021.82,1280.89,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer9 && _layer229) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[7019.86,1280.5,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [7019.86,1280.5,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer9 && _layer229) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[7017.9,1280.11,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [7017.9,1280.11,48.3455];
	_this setVectorDirAndUp [[0.193592,-0.981082,0],[0,0,1]];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer9 && _layer229) then {
	_item203 = createVehicle ["VR_Area_01_circle_4_yellow_F",[7019.99,1275.37,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [7019.99,1275.37,46.6705];
	_this setVectorDirAndUp [[-0.19035,0.981716,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item207 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item207 = createVehicle ["Sign_Arrow_F",[7014.6,1298.48,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [7014.6,1298.48,47.0433];
	_this setVectorDirAndUp [[0.978032,0.208453,0],[0,0,1]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item208 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item208 = createVehicle ["Sign_Arrow_F",[7004.95,1302.85,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [7004.95,1302.85,47.0433];
	_this setVectorDirAndUp [[0.188854,-0.982005,0],[0,0,1]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item209 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item209 = createVehicle ["Sign_Arrow_F",[6999.65,1290.15,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [6999.65,1290.15,47.0433];
	_this setVectorDirAndUp [[0.981125,0.193376,0],[0,0,1]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item210 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item210 = createVehicle ["Sign_Arrow_F",[7014.18,1283.18,0],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [7014.18,1283.18,47.0433];
	_this setVectorDirAndUp [[-0.158945,0.987287,0],[0,0,1]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item211 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item211 = createVehicle ["Sign_Arrow_F",[7003.79,1279.93,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [7003.79,1279.93,47.0433];
	_this setVectorDirAndUp [[-0.148729,0.988878,0],[0,0,1]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item212 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item212 = createVehicle ["Sign_Arrow_F",[7031.48,1294.91,0],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [7031.48,1294.91,47.0433];
	_this setVectorDirAndUp [[0.251201,-0.967935,0],[0,0,1]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item213 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item213 = createVehicle ["Sign_Arrow_F",[7028.79,1297.7,0],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [7028.79,1297.7,47.0433];
	_this setVectorDirAndUp [[-0.21159,0.977359,0],[0,0,1]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item214 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item214 = createVehicle ["Sign_Arrow_F",[7021.06,1296.85,0],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [7021.06,1296.85,47.0433];
	_this setVectorDirAndUp [[-0.222335,0.97497,0],[0,0,1]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item215 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item215 = createVehicle ["Sign_Arrow_F",[7023.64,1293.36,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [7023.64,1293.36,47.0433];
	_this setVectorDirAndUp [[0.196665,-0.980471,0],[0,0,1]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item216 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item216 = createVehicle ["Sign_Arrow_F",[7016.23,1294.09,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [7016.23,1294.09,47.0433];
	_this setVectorDirAndUp [[-0.980864,-0.194693,0],[0,0,1]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item217 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item217 = createVehicle ["Sign_Arrow_F",[7020.12,1305.62,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [7020.12,1305.62,47.0433];
	_this setVectorDirAndUp [[0.980573,0.196154,0],[0,0,1]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item218 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item218 = createVehicle ["Sign_Arrow_F",[7004.43,1287.39,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [7004.43,1287.39,47.0433];
	_this setVectorDirAndUp [[0.981125,0.193376,0],[0,0,1]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item219 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item219 = createVehicle ["Sign_Arrow_F",[7027.79,1293.31,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [7027.79,1293.31,47.0433];
	_this setVectorDirAndUp [[0.981125,0.193376,0],[0,0,1]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item220 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item220 = createVehicle ["Sign_Arrow_F",[7025.21,1306.45,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [7025.21,1306.45,47.0433];
	_this setVectorDirAndUp [[0.981125,0.193376,0],[0,0,1]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item221 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item221 = createVehicle ["Sign_Arrow_F",[7007.35,1303.38,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [7007.35,1303.38,47.0433];
	_this setVectorDirAndUp [[-0.980864,-0.194693,0],[0,0,1]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item222 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item222 = createVehicle ["Sign_Arrow_F",[7009.85,1297.9,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [7009.85,1297.9,47.0433];
	_this setVectorDirAndUp [[-0.980864,-0.194693,0],[0,0,1]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item223 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item223 = createVehicle ["Sign_Arrow_F",[7033.58,1286.19,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [7033.58,1286.19,47.0433];
	_this setVectorDirAndUp [[-0.980864,-0.194693,0],[0,0,1]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item224 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item224 = createVehicle ["Sign_Arrow_F",[6998.91,1302.28,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [6998.91,1302.28,47.0433];
	_this setVectorDirAndUp [[0.978032,0.208453,0],[0,0,1]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item225 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item225 = createVehicle ["Sign_Arrow_F",[7029.84,1301.89,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [7029.84,1301.89,47.0433];
	_this setVectorDirAndUp [[0.981125,0.193376,0],[0,0,1]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item230 = objNull;
if (_layer229) then {
	_item230 = createVehicle ["B_supplyCrate_F",[6653.61,1150.43,0],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [6653.61,1150.43,47.5624];
	_this setVectorDirAndUp [[-0.998844,-0.0480619,0],[0,0,1]];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item231 = objNull;
if (_layer229) then {
	_item231 = createVehicle ["B_supplyCrate_F",[6653.63,1147.97,0],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [6653.63,1147.97,47.5624];
	_this setVectorDirAndUp [[-0.99951,-0.0312997,0],[0,0,1]];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item232 = objNull;
if (_layer229) then {
	_item232 = createVehicle ["B_supplyCrate_F",[6653.71,1145.39,0],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [6653.71,1145.39,47.5624];
	_this setVectorDirAndUp [[-0.998596,-0.0529799,0],[0,0,1]];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item233 = objNull;
if (_layerRoot) then {
	_item233 = createVehicle ["Land_ConnectorTent_01_floor_dark_F",[6650.85,1151.07,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [6650.85,1151.07,46.67];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
};

private _item234 = objNull;
if (_layerRoot) then {
	_item234 = createVehicle ["Land_ConnectorTent_01_floor_dark_F",[6650.82,1141.83,0],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [6650.82,1141.83,46.67];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
};

private _item235 = objNull;
if (_layerRoot) then {
	_item235 = createVehicle ["Land_ConnectorTent_01_floor_dark_F",[6604.01,1146.52,0],[],0,"CAN_COLLIDE"];
	_this = _item235;
	_objects pushback _this;
	_objectIDs pushback 235;
	_this setPosWorld [6604.01,1146.52,46.67];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item236 = objNull;
if (_layerRoot) then {
	_item236 = createVehicle ["Land_ConnectorTent_01_floor_dark_F",[6604.02,1151.16,0],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [6604.02,1151.16,46.67];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item237 = objNull;
if (_layerRoot) then {
	_item237 = createVehicle ["Land_ConnectorTent_01_floor_dark_F",[6607.14,1146.47,0],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [6607.14,1146.47,46.67];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item238 = objNull;
if (_layerRoot) then {
	_item238 = createVehicle ["Land_ConnectorTent_01_floor_dark_F",[6607.16,1151.27,0],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [6607.16,1151.27,46.67];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item239 = objNull;
if (_layerRoot) then {
	_item239 = createVehicle ["Land_Shoot_House_Panels_F",[6602.31,1141.77,0],[],0,"CAN_COLLIDE"];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [6602.31,1141.77,48.3455];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item240 = objNull;
if (_layerRoot) then {
	_item240 = createVehicle ["Land_Shoot_House_Panels_F",[6604.36,1141.8,0],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [6604.36,1141.8,48.3455];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item241 = objNull;
if (_layerRoot) then {
	_item241 = createVehicle ["Land_Shoot_House_Panels_F",[6610.4,1141.67,0],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [6610.4,1141.67,48.3455];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item242 = objNull;
if (_layerRoot) then {
	_item242 = createVehicle ["Land_Shoot_House_Panels_F",[6606.37,1141.77,0],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [6606.37,1141.77,48.3455];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item243 = objNull;
if (_layerRoot) then {
	_item243 = createVehicle ["Land_Shoot_House_Panels_F",[6603.13,1156.06,0],[],0,"CAN_COLLIDE"];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [6603.13,1156.06,48.3455];
	_this setVectorDirAndUp [[-0.0543528,-0.998522,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item244 = objNull;
if (_layerRoot) then {
	_item244 = createVehicle ["Land_Shoot_House_Panels_F",[6605.12,1155.92,0],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [6605.12,1155.92,48.3455];
	_this setVectorDirAndUp [[-0.0543528,-0.998522,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item245 = objNull;
if (_layerRoot) then {
	_item245 = createVehicle ["Land_Shoot_House_Panels_F",[6607.1,1155.88,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [6607.1,1155.88,48.3455];
	_this setVectorDirAndUp [[-0.0543528,-0.998522,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item246 = objNull;
if (_layerRoot) then {
	_item246 = createVehicle ["Land_Shoot_House_Panels_F",[6609.11,1155.76,0],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [6609.11,1155.76,48.3455];
	_this setVectorDirAndUp [[-0.0543528,-0.998522,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item247 = objNull;
if (_layerRoot) then {
	_item247 = createVehicle ["Land_Shoot_House_Panels_F",[6611.3,1142.62,0],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [6611.3,1142.62,48.3455];
	_this setVectorDirAndUp [[-0.999924,-0.0123378,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item248 = objNull;
if (_layerRoot) then {
	_item248 = createVehicle ["Land_Shoot_House_Panels_F",[6611.26,1144.66,0],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [6611.26,1144.66,48.3455];
	_this setVectorDirAndUp [[-0.999924,-0.0123393,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item249 = objNull;
if (_layerRoot) then {
	_item249 = createVehicle ["Land_Shoot_House_Panels_F",[6611.21,1148.72,0],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [6611.21,1148.72,48.3455];
	_this setVectorDirAndUp [[-0.999924,-0.0123378,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item250 = objNull;
if (_layerRoot) then {
	_item250 = createVehicle ["Land_Shoot_House_Panels_F",[6611.25,1146.68,0],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [6611.25,1146.68,48.3455];
	_this setVectorDirAndUp [[-0.999924,-0.0123378,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item251 = objNull;
if (_layerRoot) then {
	_item251 = createVehicle ["Land_Shoot_House_Panels_F",[6611,1152.8,0],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [6611,1152.8,48.3455];
	_this setVectorDirAndUp [[-0.999787,0.0206456,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item252 = objNull;
if (_layerRoot) then {
	_item252 = createVehicle ["Land_Shoot_House_Panels_F",[6610.51,1154.72,0],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [6610.51,1154.72,48.3455];
	_this setVectorDirAndUp [[-0.904922,-0.425577,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item254 = objNull;
if (_layerRoot) then {
	_item254 = createVehicle ["Land_Shoot_House_Panels_F",[6608.4,1141.73,0],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [6608.4,1141.73,48.3455];
	_this setVectorDirAndUp [[0.0170878,0.999854,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item255 = objNull;
if (_layerRoot) then {
	_item255 = createVehicle ["Land_Shoot_House_Tunnel_F",[6609.63,1150.66,0],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [6609.63,1150.66,48.26];
	_this setVectorDirAndUp [[0.997486,0.0708616,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item256 = objNull;
if (_layerRoot) then {
	_item256 = createVehicle ["Land_CampingTable_white_F",[6601.73,1151.07,0],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [6601.73,1151.07,47.0816];
	_this setVectorDirAndUp [[-0.999407,-0.0344275,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item257 = objNull;
if (_layerRoot) then {
	_item257 = createVehicle ["Land_CampingTable_white_F",[6601.51,1146.28,0],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [6601.51,1146.28,47.0816];
	_this setVectorDirAndUp [[-0.999946,-0.0104036,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item258 = objNull;
if (_layerRoot) then {
	_item258 = createVehicle ["Land_CampingChair_V2_white_F",[6603.38,1144.44,0],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [6603.38,1144.44,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0184993,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item259 = objNull;
if (_layerRoot) then {
	_item259 = createVehicle ["Land_CampingChair_V2_white_F",[6603.33,1145.43,0],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [6603.33,1145.43,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0184993,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item260 = objNull;
if (_layerRoot) then {
	_item260 = createVehicle ["Land_CampingChair_V2_white_F",[6603.35,1146.53,0],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [6603.35,1146.53,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0184993,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item261 = objNull;
if (_layerRoot) then {
	_item261 = createVehicle ["Land_CampingChair_V2_white_F",[6603.29,1147.52,0],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [6603.29,1147.52,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0184993,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item262 = objNull;
if (_layerRoot) then {
	_item262 = createVehicle ["Land_CampingChair_V2_white_F",[6604.89,1145.48,0],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [6604.89,1145.48,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item263 = objNull;
if (_layerRoot) then {
	_item263 = createVehicle ["Land_CampingChair_V2_white_F",[6604.94,1144.49,0],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [6604.94,1144.49,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item264 = objNull;
if (_layerRoot) then {
	_item264 = createVehicle ["Land_CampingChair_V2_white_F",[6604.9,1146.58,0],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [6604.9,1146.58,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item265 = objNull;
if (_layerRoot) then {
	_item265 = createVehicle ["Land_CampingChair_V2_white_F",[6604.85,1147.57,0],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [6604.85,1147.57,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item266 = objNull;
if (_layerRoot) then {
	_item266 = createVehicle ["Land_CampingChair_V2_white_F",[6603.16,1150.87,0],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [6603.16,1150.87,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item267 = objNull;
if (_layerRoot) then {
	_item267 = createVehicle ["Land_CampingChair_V2_white_F",[6603.21,1149.89,0],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [6603.21,1149.89,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item268 = objNull;
if (_layerRoot) then {
	_item268 = createVehicle ["Land_CampingChair_V2_white_F",[6603.18,1151.97,0],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [6603.18,1151.97,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item269 = objNull;
if (_layerRoot) then {
	_item269 = createVehicle ["Land_CampingChair_V2_white_F",[6603.13,1152.96,0],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [6603.13,1152.96,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item270 = objNull;
if (_layerRoot) then {
	_item270 = createVehicle ["Land_CampingChair_V2_white_F",[6604.61,1150.83,0],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [6604.61,1150.83,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item271 = objNull;
if (_layerRoot) then {
	_item271 = createVehicle ["Land_CampingChair_V2_white_F",[6604.66,1149.85,0],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [6604.66,1149.85,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item272 = objNull;
if (_layerRoot) then {
	_item272 = createVehicle ["Land_CampingChair_V2_white_F",[6604.63,1151.94,0],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [6604.63,1151.94,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item273 = objNull;
if (_layerRoot) then {
	_item273 = createVehicle ["Land_CampingChair_V2_white_F",[6604.58,1152.92,0],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [6604.58,1152.92,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item274 = objNull;
if (_layerRoot) then {
	_item274 = createVehicle ["Land_CampingChair_V2_white_F",[6606.54,1145.41,0],[],0,"CAN_COLLIDE"];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [6606.54,1145.41,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0184993,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item275 = objNull;
if (_layerRoot) then {
	_item275 = createVehicle ["Land_CampingChair_V2_white_F",[6606.59,1144.43,0],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [6606.59,1144.43,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0184993,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item276 = objNull;
if (_layerRoot) then {
	_item276 = createVehicle ["Land_CampingChair_V2_white_F",[6606.55,1146.51,0],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [6606.55,1146.51,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0184993,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item277 = objNull;
if (_layerRoot) then {
	_item277 = createVehicle ["Land_CampingChair_V2_white_F",[6606.5,1147.5,0],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [6606.5,1147.5,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item278 = objNull;
if (_layerRoot) then {
	_item278 = createVehicle ["Land_CampingChair_V2_white_F",[6606.35,1150.78,0],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [6606.35,1150.78,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item279 = objNull;
if (_layerRoot) then {
	_item279 = createVehicle ["Land_CampingChair_V2_white_F",[6606.4,1149.8,0],[],0,"CAN_COLLIDE"];
	_this = _item279;
	_objects pushback _this;
	_objectIDs pushback 279;
	_this setPosWorld [6606.4,1149.8,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item280 = objNull;
if (_layerRoot) then {
	_item280 = createVehicle ["Land_CampingChair_V2_white_F",[6606.37,1151.89,0],[],0,"CAN_COLLIDE"];
	_this = _item280;
	_objects pushback _this;
	_objectIDs pushback 280;
	_this setPosWorld [6606.37,1151.89,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item281 = objNull;
if (_layerRoot) then {
	_item281 = createVehicle ["Land_CampingChair_V2_white_F",[6606.32,1152.87,0],[],0,"CAN_COLLIDE"];
	_this = _item281;
	_objects pushback _this;
	_objectIDs pushback 281;
	_this setPosWorld [6606.32,1152.87,47.1765];
	_this setVectorDirAndUp [[0.999829,0.0185029,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item282 = objNull;
if (_layerRoot) then {
	_item282 = createVehicle ["MapBoard_seismic_F",[6600.47,1153.05,0],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [6600.47,1153.05,47.6389];
	_this setVectorDirAndUp [[-0.79547,0.605993,0],[0,0,1]];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\structures_f_epc\civ\infoboards\data\mapboard_seismic_co.paa"];
};

private _item283 = objNull;
if (_layerRoot) then {
	_item283 = createVehicle ["Land_Map_F",[6601.72,1150.71,0.815598],[],0,"CAN_COLLIDE"];
	_this = _item283;
	_objects pushback _this;
	_objectIDs pushback 283;
	_this setPosWorld [6601.72,1150.71,47.4936];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this allowdamage false;;
};

private _item284 = objNull;
if (_layerRoot) then {
	_item284 = createVehicle ["Land_Map_blank_F",[6601.55,1146.17,0.815598],[],0,"CAN_COLLIDE"];
	_this = _item284;
	_objects pushback _this;
	_objectIDs pushback 284;
	_this setPosWorld [6601.55,1146.17,47.4906];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item286 = objNull;
if (_layerRoot) then {
	_item286 = _item285 createUnit ["B_Soldier_TL_F",[6604.51,1169.01,0],[],0,"CAN_COLLIDE"];
	_item285 selectLeader _item286;
	_this = _item286;
	_objects pushback _this;
	_objectIDs pushback 286;
	_this setPosWorld [6604.51,1169.06,46.6714];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "Jamie O'Connor";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item287 = objNull;
if (_layerRoot) then {
	_item287 = _item285 createUnit ["B_soldier_AR_F",[6647,1156.62,0],[],0,"CAN_COLLIDE"];
	_this = _item287;
	_objects pushback _this;
	_objectIDs pushback 287;
	_this setPosWorld [6647,1156.67,46.6714];
	_this setVectorDirAndUp [[-0.315239,0.949012,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "George Conrad";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "male02eng";;
	_this setpitch 1.03216;;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item288 = objNull;
if (_layerRoot) then {
	_item288 = _item285 createUnit ["B_Soldier_GL_F",[6611.86,1148.81,0],[],0,"CAN_COLLIDE"];
	_this = _item288;
	_objects pushback _this;
	_objectIDs pushback 288;
	_this setPosWorld [6611.86,1148.86,46.6714];
	_this setVectorDirAndUp [[0.998845,0.048052,0],[0,0,1]];
	_this setSkill 0.4;
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "Connor Spiegelman";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male08eng";;
	_this setpitch 1.02407;;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item289 = objNull;
if (_layerRoot) then {
	_item289 = _item285 createUnit ["B_soldier_LAT_F",[6607.33,1169.02,0],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [6607.33,1169.07,46.6714];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "Dwan Hall";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male01ENG";;
	_this setpitch 0.99;;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item291 = objNull;
if (_layerRoot) then {
	_item291 = _item290 createUnit ["B_Soldier_TL_F",[6703.12,1117.12,0],[],0,"CAN_COLLIDE"];
	_item290 selectLeader _item291;
	_this = _item291;
	_objects pushback _this;
	_objectIDs pushback 291;
	_this setPosWorld [6703.12,1117.17,46.6714];
	_this setVectorDirAndUp [[-0.97579,-0.21871,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "Tyler Wood";;
	_this setface "WhiteHead_15";;
	_this setspeaker "male10eng";;
	_this setpitch 0.979157;;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item292 = objNull;
if (_layerRoot) then {
	_item292 = _item290 createUnit ["B_soldier_AR_F",[6708.95,1093.16,0],[],0,"CAN_COLLIDE"];
	_this = _item292;
	_objects pushback _this;
	_objectIDs pushback 292;
	_this setPosWorld [6708.95,1093.21,46.6714];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "Benjamin Patel";;
	_this setface "WhiteHead_12";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.04;;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item293 = objNull;
if (_layerRoot) then {
	_item293 = _item290 createUnit ["B_Soldier_GL_F",[6701.49,1104.82,0],[],0,"CAN_COLLIDE"];
	_this = _item293;
	_objects pushback _this;
	_objectIDs pushback 293;
	_this setPosWorld [6701.49,1104.87,46.6714];
	_this setVectorDirAndUp [[-0.99885,0.0479345,0],[0,0,1]];
	_this setSkill 0.4;
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "Ethan Young";;
	_this setface "WhiteHead_28";;
	_this setspeaker "male12eng";;
	_this setpitch 0.987779;;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item294 = objNull;
if (_layerRoot) then {
	_item294 = _item290 createUnit ["B_soldier_LAT_F",[6719.47,1095.2,0],[],0,"CAN_COLLIDE"];
	_this = _item294;
	_objects pushback _this;
	_objectIDs pushback 294;
	_this setPosWorld [6719.47,1095.25,46.6714];
	_this setVectorDirAndUp [[0.207665,-0.9782,0],[0,0,1]];
	_this setSkill 0.4;
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "Sean Harrison";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male02ENG";;
	_this setpitch 1.04;;
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

private _item2 = objNull;
if (_layer229) then {
	_item2 = createTrigger ["EmptyDetectorArea10x10",[6638.61,1150.29,0],false];
	_this = _item2;
	_triggers pushback _this;
	_triggerIDs pushback 2;
	_item2 setPosATL [6638.61,1150.29,0];
	_this setTriggerArea [6,6,268.283,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item5 = objNull;
if (_layer4 && _layer229) then {
	_item5 = createTrigger ["EmptyDetectorArea10x10",[6706.14,1104.37,0],true];
	_this = _item5;
	_triggers pushback _this;
	_triggerIDs pushback 5;
	_item5 setPosATL [6706.14,1104.37,0];
	_this setTriggerArea [5,20,319.558,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item204 = objNull;
if (_layer9 && _layer229) then {
	_item204 = createTrigger ["EmptyDetectorAreaR50",[7010.35,1310.46,0],false];
	_this = _item204;
	_triggers pushback _this;
	_triggerIDs pushback 204;
	_item204 setPosATL [7010.35,1310.46,0];
	_this setTriggerArea [50,50,1.20909,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item205 = objNull;
if (_layer9 && _layer229) then {
	_item205 = createTrigger ["EmptyDetectorArea10x10",[7016.58,1293.98,0],true];
	_this = _item205;
	_triggers pushback _this;
	_triggerIDs pushback 205;
	_item205 setPosATL [7016.58,1293.98,0];
	_this setTriggerArea [18,13.5,168.502,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item285;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["Alpha 1-1"];                            } else {                                [_this, "Alpha 1-1"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item290;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["Alpha 1-2"];                            } else {                                [_this, "Alpha 1-2"] call CBA_fnc_setCallsign;                            };                        ;
};


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
	_item3 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[6632.1,1148.7,0],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_logics pushback _this;
	_logicIDs pushback 3;
	_this setPosWorld [6632.1,1148.7,46.67];
	_this setVectorDirAndUp [[0.87263,-0.488383,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item227 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item227 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[7025.54,1284.29,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_logics pushback _this;
	_logicIDs pushback 227;
	_this setPosWorld [7025.54,1284.29,46.67];
	_this setVectorDirAndUp [[0.0210967,0.999777,0],[0,0,1]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item228 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item228 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[7013.53,1275.81,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_logics pushback _this;
	_logicIDs pushback 228;
	_this setPosWorld [7013.53,1275.81,46.67];
	_this setVectorDirAndUp [[0.021101,0.999777,0],[0,0,1]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer226) then {missionNamespace setVariable ["Ruha%2eMilitaryBase_Spawns",[[_item227,_item228],[]]];};
if (_layer206) then {missionNamespace setVariable ["Ruha%2eMilitaryBase_Shoothouse Targets",[[_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225],[]]];};
if (_layer9) then {missionNamespace setVariable ["Ruha%2eMilitaryBase_Shoothouse Pit",[[_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228],[]]];};
if (_layer7) then {missionNamespace setVariable ["Ruha%2eMilitaryBase_Repair Station",[[_item8],[]]];};
if (_layer4) then {missionNamespace setVariable ["Ruha%2eMilitaryBase_bargate",[[_item5,_item6],[]]];};
if (_layer229) then {missionNamespace setVariable ["Ruha%2eMilitaryBase_SIA ZGM Essentials",[[_item0,_item1,_item2,_item3,_item5,_item6,_item8,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228,_item230,_item231,_item232],[]]];};


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
