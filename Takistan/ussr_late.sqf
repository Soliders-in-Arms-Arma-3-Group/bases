// Export of 'tempMissionSP.takistan' by Greg on v0.9

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

private _item619 = grpNull;
if (_layerRoot) then {
	_item619 = createGroup east;
	_this = _item619;
	_groups pushback _this;
	_groupIDs pushback 619;
};

private _item696 = grpNull;
if (_layerRoot) then {
	_item696 = createGroup east;
	_this = _item696;
	_groups pushback _this;
	_groupIDs pushback 696;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layer229) then {
	_item0 = createVehicle ["Land_InfoStand_V1_F",[8217.16,2144.35,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [8217.16,2144.35,296.615];
	_this setVectorDirAndUp [[-0.918637,-0.395104,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item6 = objNull;
if (_layer4 && _layer229) then {
	_item6 = createVehicle ["Land_BarGate_F",[8217.51,2176.73,0],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [8217.51,2176.73,299.563];
	_this setVectorDirAndUp [[-0.300646,0.953465,-0.0227186],[-0.00959931,0.0207943,0.999738]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item8 = objNull;
if (_layer7 && _layer229) then {
	_item8 = createVehicle ["Land_RepairDepot_01_tan_F",[8095.06,2023.21,0],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [8095.06,2023.21,298.458];
	_this setVectorDirAndUp [[0.461491,-0.887145,0],[0,0,1]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item10 = objNull;
if (_layer9 && _layer229) then {
	_item10 = createVehicle ["Land_InfoStand_V1_F",[7726.64,1762.53,-0.00350952],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [7726.64,1762.53,296.612];
	_this setVectorDirAndUp [[-0.974814,0.223019,0],[0,0,1]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item11 = objNull;
if (_layer9 && _layer229) then {
	_item11 = createVehicle ["Land_Scaffolding_New_F",[7701.43,1748.45,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [7701.43,1748.45,298.789];
	_this setVectorDirAndUp [[0.974786,-0.223144,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item12 = objNull;
if (_layer9 && _layer229) then {
	_item12 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7709.41,1779.93,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [7709.41,1779.93,297.129];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer9 && _layer229) then {
	_item13 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7707.54,1772.22,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [7707.54,1772.22,297.268];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layer9 && _layer229) then {
	_item14 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7716.69,1780.24,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [7716.69,1780.24,297.638];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer9 && _layer229) then {
	_item15 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7714.82,1772.46,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [7714.82,1772.46,297.596];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item16 = objNull;
if (_layer9 && _layer229) then {
	_item16 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7708.83,1764.64,0],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [7708.83,1764.64,297.562];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item17 = objNull;
if (_layer9 && _layer229) then {
	_item17 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7708.74,1772.97,0],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [7708.74,1772.97,297.298];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item18 = objNull;
if (_layer9 && _layer229) then {
	_item18 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7709.76,1768.4,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [7709.76,1768.4,297.526];
	_this setVectorDirAndUp [[-0.204874,-0.978788,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item19 = objNull;
if (_layer9 && _layer229) then {
	_item19 = createVehicle ["Land_Shoot_House_Wall_F",[7699.69,1782.25,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [7699.69,1782.25,296.019];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item20 = objNull;
if (_layer9 && _layer229) then {
	_item20 = createVehicle ["Land_Shoot_House_Wall_F",[7700.51,1772.81,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [7700.51,1772.81,296.724];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer9 && _layer229) then {
	_item21 = createVehicle ["Land_Shoot_House_Wall_F",[7704.39,1771.88,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [7704.39,1771.88,297.062];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layer9 && _layer229) then {
	_item22 = createVehicle ["Land_Shoot_House_Wall_F",[7697.83,1774.48,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [7697.83,1774.48,296.337];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer9 && _layer229) then {
	_item23 = createVehicle ["Land_Shoot_House_Wall_F",[7701.83,1786.88,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [7701.83,1786.88,296.07];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer9 && _layer229) then {
	_item24 = createVehicle ["Land_Shoot_House_Wall_F",[7707.66,1785.49,0],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [7707.66,1785.49,296.809];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer9 && _layer229) then {
	_item25 = createVehicle ["Land_Shoot_House_Wall_F",[7705.71,1785.96,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [7705.71,1785.96,296.596];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer9 && _layer229) then {
	_item26 = createVehicle ["Land_Shoot_House_Wall_F",[7699.23,1780.31,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [7699.23,1780.31,296.075];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer9 && _layer229) then {
	_item27 = createVehicle ["Land_Shoot_House_Wall_F",[7698.29,1776.42,0],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [7698.29,1776.42,296.231];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item28 = objNull;
if (_layer9 && _layer229) then {
	_item28 = createVehicle ["Land_Shoot_House_Wall_F",[7708.01,1774.1,0],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [7708.01,1774.1,297.224];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item29 = objNull;
if (_layer9 && _layer229) then {
	_item29 = createVehicle ["Land_Shoot_House_Wall_F",[7698.57,1773.27,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [7698.57,1773.27,296.504];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer9 && _layer229) then {
	_item30 = createVehicle ["Land_Shoot_House_Wall_F",[7698.76,1778.37,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [7698.76,1778.37,296.151];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer9 && _layer229) then {
	_item31 = createVehicle ["Land_Shoot_House_Wall_F",[7700.63,1786.14,0],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [7700.63,1786.14,295.95];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer9 && _layer229) then {
	_item32 = createVehicle ["Land_Shoot_House_Wall_F",[7710.34,1783.82,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [7710.34,1783.82,297.116];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer9 && _layer229) then {
	_item33 = createVehicle ["Land_Shoot_House_Wall_F",[7703.78,1786.43,0],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [7703.78,1786.43,296.334];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item34 = objNull;
if (_layer9 && _layer229) then {
	_item34 = createVehicle ["Land_Shoot_House_Wall_F",[7701.24,1771.6,0],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [7701.24,1771.6,296.856];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer9 && _layer229) then {
	_item35 = createVehicle ["Land_Shoot_House_Wall_F",[7703.7,1768.96,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [7703.7,1768.96,297.195];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer9 && _layer229) then {
	_item36 = createVehicle ["Land_Shoot_House_Wall_F",[7704.16,1770.9,0],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [7704.16,1770.9,297.085];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer9 && _layer229) then {
	_item37 = createVehicle ["Land_Shoot_House_Wall_F",[7703.23,1767.02,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [7703.23,1767.02,297.246];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer9 && _layer229) then {
	_item38 = createVehicle ["Land_Shoot_House_Wall_F",[7700.31,1767.71,0],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [7700.31,1767.71,297.064];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layer9 && _layer229) then {
	_item39 = createVehicle ["Land_Shoot_House_Wall_F",[7709.61,1785.02,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [7709.61,1785.02,297.021];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer9 && _layer229) then {
	_item40 = createVehicle ["Land_Shoot_House_Wall_F",[7709.88,1781.87,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [7709.88,1781.87,297.126];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layer9 && _layer229) then {
	_item41 = createVehicle ["Land_Shoot_House_Wall_F",[7708.09,1765.85,0],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [7708.09,1765.85,297.505];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer9 && _layer229) then {
	_item42 = createVehicle ["Land_Shoot_House_Wall_F",[7708.56,1767.79,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [7708.56,1767.79,297.478];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item43 = objNull;
if (_layer9 && _layer229) then {
	_item43 = createVehicle ["Land_Shoot_House_Wall_F",[7712.56,1780.2,0],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [7712.56,1780.2,297.408];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item44 = objNull;
if (_layer9 && _layer229) then {
	_item44 = createVehicle ["Land_Shoot_House_Wall_F",[7712.79,1781.17,0],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [7712.79,1781.17,297.403];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item45 = objNull;
if (_layer9 && _layer229) then {
	_item45 = createVehicle ["Land_Shoot_House_Wall_F",[7710.15,1778.72,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [7710.15,1778.72,297.219];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item46 = objNull;
if (_layer9 && _layer229) then {
	_item46 = createVehicle ["Land_Shoot_House_Wall_F",[7710.62,1780.67,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [7710.62,1780.67,297.225];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layer9 && _layer229) then {
	_item47 = createVehicle ["Land_Shoot_House_Wall_F",[7712.09,1778.26,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [7712.09,1778.26,297.406];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item48 = objNull;
if (_layer9 && _layer229) then {
	_item48 = createVehicle ["Land_Shoot_House_Wall_F",[7708.48,1776.04,0],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [7708.48,1776.04,297.19];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item49 = objNull;
if (_layer9 && _layer229) then {
	_item49 = createVehicle ["Land_Shoot_House_Wall_F",[7708.27,1770.97,0],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [7708.27,1770.97,297.357];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item50 = objNull;
if (_layer9 && _layer229) then {
	_item50 = createVehicle ["Land_Shoot_House_Wall_F",[7710.22,1770.51,0],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [7710.22,1770.51,297.465];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item51 = objNull;
if (_layer9 && _layer229) then {
	_item51 = createVehicle ["Land_Shoot_House_Wall_F",[7710.69,1772.45,0],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [7710.69,1772.45,297.441];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item52 = objNull;
if (_layer9 && _layer229) then {
	_item52 = createVehicle ["Land_Shoot_House_Wall_F",[7700.78,1769.66,0],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [7700.78,1769.66,296.967];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layer9 && _layer229) then {
	_item53 = createVehicle ["Land_Shoot_House_Wall_F",[7706.45,1784.75,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [7706.45,1784.75,296.722];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item54 = objNull;
if (_layer9 && _layer229) then {
	_item54 = createVehicle ["Land_Shoot_House_Wall_F",[7705.52,1780.86,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [7705.52,1780.86,296.75];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item55 = objNull;
if (_layer9 && _layer229) then {
	_item55 = createVehicle ["Land_Shoot_House_Wall_F",[7707.74,1777.24,0],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [7707.74,1777.24,297.089];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item56 = objNull;
if (_layer9 && _layer229) then {
	_item56 = createVehicle ["Land_Shoot_House_Wall_F",[7705.79,1777.71,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [7705.79,1777.71,296.917];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item57 = objNull;
if (_layer9 && _layer229) then {
	_item57 = createVehicle ["Land_Shoot_House_Wall_F",[7705.06,1778.92,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [7705.06,1778.92,296.781];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item58 = objNull;
if (_layer9 && _layer229) then {
	_item58 = createVehicle ["Land_Shoot_House_Wall_F",[7701.72,1773.55,0],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [7701.72,1773.55,296.751];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item59 = objNull;
if (_layer9 && _layer229) then {
	_item59 = createVehicle ["Land_Shoot_House_Wall_F",[7702.18,1775.5,0],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [7702.18,1775.5,296.693];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item60 = objNull;
if (_layer9 && _layer229) then {
	_item60 = createVehicle ["Land_Shoot_House_Wall_F",[7701.44,1776.7,0],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [7701.44,1776.7,296.545];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item61 = objNull;
if (_layer9 && _layer229) then {
	_item61 = createVehicle ["Land_Shoot_House_Wall_F",[7703.12,1779.38,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [7703.12,1779.38,296.54];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item62 = objNull;
if (_layer9 && _layer229) then {
	_item62 = createVehicle ["Land_Shoot_House_Wall_F",[7702.38,1780.58,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [7702.38,1780.58,296.405];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item63 = objNull;
if (_layer9 && _layer229) then {
	_item63 = createVehicle ["Land_Shoot_House_Wall_F",[7700.43,1781.05,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [7700.43,1781.05,296.163];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item64 = objNull;
if (_layer9 && _layer229) then {
	_item64 = createVehicle ["Land_Shoot_House_Wall_F",[7701.91,1778.64,0],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [7701.91,1778.64,296.453];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item65 = objNull;
if (_layer9 && _layer229) then {
	_item65 = createVehicle ["Land_Shoot_House_Wall_F",[7704.59,1776.97,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [7704.59,1776.97,296.812];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item66 = objNull;
if (_layer9 && _layer229) then {
	_item66 = createVehicle ["Land_Shoot_House_Wall_F",[7703.65,1773.08,0],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [7703.65,1773.08,296.943];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item67 = objNull;
if (_layer9 && _layer229) then {
	_item67 = createVehicle ["Land_Shoot_House_Wall_F",[7715.09,1769.31,0],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [7715.09,1769.31,297.67];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer9 && _layer229) then {
	_item68 = createVehicle ["Land_Shoot_House_Wall_F",[7717.15,1782.18,0],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [7717.15,1782.18,297.659];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer9 && _layer229) then {
	_item69 = createVehicle ["Land_Shoot_House_Wall_F",[7725.48,1774.02,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [7725.48,1774.02,297.785];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layer9 && _layer229) then {
	_item70 = createVehicle ["Land_Shoot_House_Wall_F",[7718.36,1782.93,0],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [7718.36,1782.93,297.748];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item71 = objNull;
if (_layer9 && _layer229) then {
	_item71 = createVehicle ["Land_Shoot_House_Wall_F",[7718.98,1768.38,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [7718.98,1768.38,297.734];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer9 && _layer229) then {
	_item72 = createVehicle ["Land_Shoot_House_Wall_F",[7716.22,1778.29,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [7716.22,1778.29,297.607];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer9 && _layer229) then {
	_item73 = createVehicle ["Land_Shoot_House_Wall_F",[7714.35,1770.52,0],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [7714.35,1770.52,297.633];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer9 && _layer229) then {
	_item74 = createVehicle ["Land_Shoot_House_Wall_F",[7722.25,1781.99,0],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [7722.25,1781.99,297.833];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer9 && _layer229) then {
	_item75 = createVehicle ["Land_Shoot_House_Wall_F",[7724.19,1781.53,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [7724.19,1781.53,297.864];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer9 && _layer229) then {
	_item76 = createVehicle ["Land_Shoot_House_Wall_F",[7726.14,1781.06,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [7726.14,1781.06,297.871];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer9 && _layer229) then {
	_item77 = createVehicle ["Land_Shoot_House_Wall_F",[7726.88,1779.85,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [7726.88,1779.85,297.852];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item78 = objNull;
if (_layer9 && _layer229) then {
	_item78 = createVehicle ["Land_Shoot_House_Wall_F",[7726.41,1777.91,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [7726.41,1777.91,297.828];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layer9 && _layer229) then {
	_item79 = createVehicle ["Land_Shoot_House_Wall_F",[7725.95,1775.96,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [7725.95,1775.96,297.805];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layer9 && _layer229) then {
	_item80 = createVehicle ["Land_Shoot_House_Wall_F",[7722.87,1767.45,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [7722.87,1767.45,297.731];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item81 = objNull;
if (_layer9 && _layer229) then {
	_item81 = createVehicle ["Land_Shoot_House_Wall_F",[7725.01,1772.07,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [7725.01,1772.07,297.767];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer9 && _layer229) then {
	_item82 = createVehicle ["Land_Shoot_House_Wall_F",[7715.29,1774.4,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [7715.29,1774.4,297.615];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer9 && _layer229) then {
	_item83 = createVehicle ["Land_Shoot_House_Wall_F",[7713.92,1764.45,0],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [7713.92,1764.45,297.689];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer9 && _layer229) then {
	_item84 = createVehicle ["Land_Shoot_House_Wall_F",[7714.39,1766.39,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [7714.39,1766.39,297.671];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item85 = objNull;
if (_layer9 && _layer229) then {
	_item85 = createVehicle ["Land_Shoot_House_Wall_F",[7714.86,1768.34,0],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [7714.86,1768.34,297.678];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layer9 && _layer229) then {
	_item86 = createVehicle ["Land_Shoot_House_Wall_F",[7717.78,1767.64,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [7717.78,1767.64,297.718];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item87 = objNull;
if (_layer9 && _layer229) then {
	_item87 = createVehicle ["Land_Shoot_House_Wall_F",[7717.31,1765.69,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [7717.31,1765.69,297.705];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item88 = objNull;
if (_layer9 && _layer229) then {
	_item88 = createVehicle ["Land_Shoot_House_Wall_F",[7716.84,1763.75,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [7716.84,1763.75,297.701];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item89 = objNull;
if (_layer9 && _layer229) then {
	_item89 = createVehicle ["Land_Shoot_House_Wall_F",[7710.04,1765.38,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [7710.04,1765.38,297.567];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layer9 && _layer229) then {
	_item90 = createVehicle ["Land_Shoot_House_Wall_F",[7710.5,1767.33,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [7710.5,1767.33,297.57];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layer9 && _layer229) then {
	_item91 = createVehicle ["Land_Shoot_House_Wall_F",[7714.08,1773.67,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [7714.08,1773.67,297.564];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item92 = objNull;
if (_layer9 && _layer229) then {
	_item92 = createVehicle ["Land_Shoot_House_Wall_F",[7712.14,1774.13,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [7712.14,1774.13,297.5];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item93 = objNull;
if (_layer9 && _layer229) then {
	_item93 = createVehicle ["Land_Shoot_House_Wall_F",[7720.3,1782.46,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [7720.3,1782.46,297.803];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item94 = objNull;
if (_layer9 && _layer229) then {
	_item94 = createVehicle ["Land_Shoot_House_Wall_F",[7711.67,1772.19,0],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [7711.67,1772.19,297.513];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer9 && _layer229) then {
	_item95 = createVehicle ["Land_Shoot_House_Wall_F",[7715.95,1781.45,0],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [7715.95,1781.45,297.593];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer9 && _layer229) then {
	_item96 = createVehicle ["Land_Shoot_House_Wall_F",[7715.48,1779.5,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [7715.48,1779.5,297.564];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layer9 && _layer229) then {
	_item97 = createVehicle ["Land_Shoot_House_Wall_F",[7714,1781.91,0],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [7714,1781.91,297.47];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item98 = objNull;
if (_layer9 && _layer229) then {
	_item98 = createVehicle ["Land_Shoot_House_Wall_F",[7724.08,1768.18,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [7724.08,1768.18,297.734];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item99 = objNull;
if (_layer9 && _layer229) then {
	_item99 = createVehicle ["Land_Shoot_House_Wall_F",[7713.3,1778.99,0],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [7713.3,1778.99,297.461];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item100 = objNull;
if (_layer9 && _layer229) then {
	_item100 = createVehicle ["Land_Shoot_House_Wall_F",[7711.03,1773.4,0],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [7711.03,1773.4,297.443];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item101 = objNull;
if (_layer9 && _layer229) then {
	_item101 = createVehicle ["Land_Shoot_House_Wall_F",[7713.54,1779.97,0],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [7713.54,1779.97,297.452];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layer9 && _layer229) then {
	_item102 = createVehicle ["Land_Shoot_House_Wall_F",[7720.93,1767.91,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [7720.93,1767.91,297.733];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layer9 && _layer229) then {
	_item103 = createVehicle ["Land_Shoot_House_Wall_F",[7719.21,1769.35,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [7719.21,1769.35,297.737];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layer9 && _layer229) then {
	_item104 = createVehicle ["Land_Shoot_House_Wall_F",[7719.68,1771.29,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [7719.68,1771.29,297.744];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item105 = objNull;
if (_layer9 && _layer229) then {
	_item105 = createVehicle ["Land_Shoot_House_Wall_F",[7720.15,1773.24,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [7720.15,1773.24,297.75];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item106 = objNull;
if (_layer9 && _layer229) then {
	_item106 = createVehicle ["Land_Shoot_House_Wall_F",[7721.35,1773.98,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [7721.35,1773.98,297.762];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layer9 && _layer229) then {
	_item107 = createVehicle ["Land_Shoot_House_Wall_F",[7720.44,1779.32,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [7720.44,1779.32,297.773];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item108 = objNull;
if (_layer9 && _layer229) then {
	_item108 = createVehicle ["Land_Shoot_House_Wall_F",[7721.18,1778.12,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [7721.18,1778.12,297.776];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item109 = objNull;
if (_layer9 && _layer229) then {
	_item109 = createVehicle ["Land_Shoot_House_Wall_F",[7723.13,1777.65,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [7723.13,1777.65,297.796];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer9 && _layer229) then {
	_item110 = createVehicle ["Land_Shoot_House_Wall_F",[7723.87,1776.44,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [7723.87,1776.44,297.794];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer9 && _layer229) then {
	_item111 = createVehicle ["Land_Shoot_House_Wall_F",[7724.6,1775.24,0],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [7724.6,1775.24,297.793];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item112 = objNull;
if (_layer9 && _layer229) then {
	_item112 = createVehicle ["Land_Shoot_House_Wall_F",[7713.61,1771.72,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [7713.61,1771.72,297.595];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item113 = objNull;
if (_layer9 && _layer229) then {
	_item113 = createVehicle ["Land_Shoot_House_Wall_F",[7701.21,1750.02,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [7701.21,1750.02,297.715];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item114 = objNull;
if (_layer9 && _layer229) then {
	_item114 = createVehicle ["Land_Shoot_House_Wall_F",[7703.54,1759.74,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [7703.54,1759.74,297.557];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layer9 && _layer229) then {
	_item115 = createVehicle ["Land_Shoot_House_Wall_F",[7706.49,1754.92,0],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [7706.49,1754.92,297.708];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layer9 && _layer229) then {
	_item116 = createVehicle ["Land_Shoot_House_Wall_F",[7706.89,1765.11,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [7706.89,1765.11,297.511];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layer9 && _layer229) then {
	_item117 = createVehicle ["Land_Shoot_House_Wall_F",[7703.15,1749.55,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [7703.15,1749.55,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item118 = objNull;
if (_layer9 && _layer229) then {
	_item118 = createVehicle ["Land_Shoot_House_Wall_F",[7697.16,1767.44,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [7697.16,1767.44,296.844];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item119 = objNull;
if (_layer9 && _layer229) then {
	_item119 = createVehicle ["Land_Shoot_House_Wall_F",[7699.11,1766.97,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [7699.11,1766.97,297.031];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer9 && _layer229) then {
	_item120 = createVehicle ["Land_Shoot_House_Wall_F",[7705.09,1749.08,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [7705.09,1749.08,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer9 && _layer229) then {
	_item121 = createVehicle ["Land_Shoot_House_Wall_F",[7705.09,1749.08,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [7705.09,1749.08,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer9 && _layer229) then {
	_item122 = createVehicle ["Land_Shoot_House_Wall_F",[7695.49,1764.76,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [7695.49,1764.76,296.959];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer9 && _layer229) then {
	_item123 = createVehicle ["Land_Shoot_House_Wall_F",[7705.49,1759.27,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [7705.49,1759.27,297.628];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer9 && _layer229) then {
	_item124 = createVehicle ["Land_Shoot_House_Wall_F",[7695.37,1751.42,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [7695.37,1751.42,297.682];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer9 && _layer229) then {
	_item125 = createVehicle ["Land_Shoot_House_Wall_F",[7695.02,1762.81,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [7695.02,1762.81,297.126];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer9 && _layer229) then {
	_item126 = createVehicle ["Land_Shoot_House_Wall_F",[7693.62,1756.98,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [7693.62,1756.98,297.502];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer9 && _layer229) then {
	_item127 = createVehicle ["Land_Shoot_House_Wall_F",[7693.15,1755.03,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [7693.15,1755.03,297.575];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer9 && _layer229) then {
	_item128 = createVehicle ["Land_Shoot_House_Wall_F",[7704.94,1765.57,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [7704.94,1765.57,297.403];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer9 && _layer229) then {
	_item129 = createVehicle ["Land_Shoot_House_Wall_F",[7703.97,1765.81,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [7703.97,1765.81,297.335];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer9 && _layer229) then {
	_item130 = createVehicle ["Land_Shoot_House_Wall_F",[7695.95,1766.7,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [7695.95,1766.7,296.796];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer9 && _layer229) then {
	_item131 = createVehicle ["Land_Shoot_House_Wall_F",[7702.61,1755.85,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [7702.61,1755.85,297.677];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer9 && _layer229) then {
	_item132 = createVehicle ["Land_Shoot_House_Wall_F",[7703.15,1749.55,0],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [7703.15,1749.55,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer9 && _layer229) then {
	_item133 = createVehicle ["Land_Shoot_House_Wall_F",[7693.43,1751.88,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [7693.43,1751.88,297.66];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer9 && _layer229) then {
	_item134 = createVehicle ["Land_Shoot_House_Wall_F",[7701.6,1760.21,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [7701.6,1760.21,297.504];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer9 && _layer229) then {
	_item135 = createVehicle ["Land_Shoot_House_Wall_F",[7699.68,1752.22,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [7699.68,1752.22,297.69];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer9 && _layer229) then {
	_item136 = createVehicle ["Land_Shoot_House_Wall_F",[7700.66,1756.32,0],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [7700.66,1756.32,297.658];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer9 && _layer229) then {
	_item137 = createVehicle ["Land_Shoot_House_Wall_F",[7696.77,1757.25,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [7696.77,1757.25,297.534];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer9 && _layer229) then {
	_item138 = createVehicle ["Land_Shoot_House_Wall_F",[7695.76,1761.6,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [7695.76,1761.6,297.229];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer9 && _layer229) then {
	_item139 = createVehicle ["Land_Shoot_House_Wall_F",[7694.83,1757.72,0],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [7694.83,1757.72,297.471];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer9 && _layer229) then {
	_item140 = createVehicle ["Land_Shoot_House_Wall_F",[7704.55,1755.39,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [7704.55,1755.39,297.693];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer9 && _layer229) then {
	_item141 = createVehicle ["Land_Shoot_House_Wall_F",[7704.71,1764.6,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [7704.71,1764.6,297.424];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer9 && _layer229) then {
	_item142 = createVehicle ["Land_Shoot_House_Wall_F",[7704.24,1762.66,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [7704.24,1762.66,297.521];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer9 && _layer229) then {
	_item143 = createVehicle ["Land_Shoot_House_Wall_F",[7703.77,1760.71,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [7703.77,1760.71,297.548];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer9 && _layer229) then {
	_item144 = createVehicle ["Land_Shoot_House_Wall_F",[7705.29,1754.18,0],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [7705.29,1754.18,297.701];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer9 && _layer229) then {
	_item145 = createVehicle ["Land_Shoot_House_Wall_F",[7709.22,1753.3,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [7709.22,1753.3,297.71];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer9 && _layer229) then {
	_item146 = createVehicle ["Land_Shoot_House_Wall_F",[7704.36,1750.29,0],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [7704.36,1750.29,297.713];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer9 && _layer229) then {
	_item147 = createVehicle ["Land_Shoot_House_Wall_F",[7692.69,1753.09,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [7692.69,1753.09,297.606];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer9 && _layer229) then {
	_item148 = createVehicle ["Land_Shoot_House_Wall_F",[7699.46,1755.58,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [7699.46,1755.58,297.654];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer9 && _layer229) then {
	_item149 = createVehicle ["Land_Shoot_House_Wall_F",[7706.89,1765.11,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [7706.89,1765.11,297.511];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer9 && _layer229) then {
	_item150 = createVehicle ["Land_Shoot_House_Wall_F",[7694.09,1758.92,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [7694.09,1758.92,297.369];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer9 && _layer229) then {
	_item151 = createVehicle ["Land_Shoot_House_Wall_F",[7697.71,1761.14,0],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [7697.71,1761.14,297.342];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer9 && _layer229) then {
	_item152 = createVehicle ["Land_Shoot_House_Wall_F",[7708.99,1748.15,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [7708.99,1748.15,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer9 && _layer229) then {
	_item153 = createVehicle ["Land_Shoot_House_Wall_F",[7720.66,1754.6,0],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [7720.66,1754.6,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer9 && _layer229) then {
	_item154 = createVehicle ["Land_Shoot_House_Wall_F",[7710.77,1764.18,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [7710.77,1764.18,297.613];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer9 && _layer229) then {
	_item155 = createVehicle ["Land_Shoot_House_Wall_F",[7712.85,1747.21,0],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [7712.85,1747.21,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layer9 && _layer229) then {
	_item156 = createVehicle ["Land_Shoot_House_Wall_F",[7717.58,1762.54,0],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [7717.58,1762.54,297.713];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer9 && _layer229) then {
	_item157 = createVehicle ["Land_Shoot_House_Wall_F",[7709.37,1758.34,0],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [7709.37,1758.34,297.674];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer9 && _layer229) then {
	_item158 = createVehicle ["Land_Shoot_House_Wall_F",[7711.41,1749.53,0],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [7711.41,1749.53,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item159 = objNull;
if (_layer9 && _layer229) then {
	_item159 = createVehicle ["Land_Shoot_House_Wall_F",[7721.13,1756.54,0],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [7721.13,1756.54,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item160 = objNull;
if (_layer9 && _layer229) then {
	_item160 = createVehicle ["Land_Shoot_House_Wall_F",[7717.59,1746.08,0],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [7717.59,1746.08,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layer9 && _layer229) then {
	_item161 = createVehicle ["Land_Shoot_House_Wall_F",[7719.73,1750.71,0],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [7719.73,1750.71,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item162 = objNull;
if (_layer9 && _layer229) then {
	_item162 = createVehicle ["Land_Shoot_House_Wall_F",[7719.26,1748.77,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [7719.26,1748.77,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer9 && _layer229) then {
	_item163 = createVehicle ["Land_Shoot_House_Wall_F",[7711.32,1757.87,0],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [7711.32,1757.87,297.692];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer9 && _layer229) then {
	_item164 = createVehicle ["Land_Shoot_House_Wall_F",[7710.39,1753.98,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [7710.39,1753.98,297.712];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer9 && _layer229) then {
	_item165 = createVehicle ["Land_Shoot_House_Wall_F",[7719.53,1762.08,0],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [7719.53,1762.08,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer9 && _layer229) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[7715.26,1756.93,0],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [7715.26,1756.93,297.714];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer9 && _layer229) then {
	_item167 = createVehicle ["Land_Shoot_House_Wall_F",[7719.92,1755.8,0],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [7719.92,1755.8,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer9 && _layer229) then {
	_item168 = createVehicle ["Land_Shoot_House_Wall_F",[7721.32,1761.64,0],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [7721.32,1761.64,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer9 && _layer229) then {
	_item169 = createVehicle ["Land_Shoot_House_Wall_F",[7718.99,1751.92,0],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [7718.99,1751.92,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer9 && _layer229) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[7712.33,1753.52,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [7712.33,1753.52,297.715];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer9 && _layer229) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[7722.06,1760.43,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [7722.06,1760.43,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer9 && _layer229) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[7711.51,1762.97,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [7711.51,1762.97,297.671];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer9 && _layer229) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[7710.58,1759.08,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [7710.58,1759.08,297.677];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer9 && _layer229) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[7711.12,1752.78,0],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [7711.12,1752.78,297.713];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer9 && _layer229) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[7710.66,1750.83,0],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [7710.66,1750.83,297.714];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer9 && _layer229) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[7712.21,1748.35,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [7712.21,1748.35,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer9 && _layer229) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[7718.8,1746.82,0],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [7718.8,1746.82,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer9 && _layer229) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[7710.77,1764.18,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [7710.77,1764.18,297.613];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer9 && _layer229) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[7707.07,1748.63,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [7707.07,1748.63,297.716];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer9 && _layer229) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[7717.01,1752.35,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [7717.01,1752.35,297.716];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer9 && _layer229) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[7714.83,1746.79,0],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [7714.83,1746.79,297.716];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer9 && _layer229) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[7713.27,1757.41,0],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [7713.27,1757.41,297.714];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer9 && _layer229) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[7711.05,1761.02,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [7711.05,1761.02,297.682];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer9 && _layer229) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[7724.54,1770.13,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [7724.54,1770.13,297.746];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer9 && _layer229) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[7700.17,1784.21,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [7700.17,1784.21,295.988];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer9 && _layer229) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[7715.77,1776.36,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [7715.77,1776.36,297.61];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer9 && _layer229) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[7711.44,1771.18,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [7711.44,1771.18,297.519];
	_this setVectorDirAndUp [[-0.972406,0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer9 && _layer229) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[7708.02,1752.68,0],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [7708.02,1752.68,297.711];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer9 && _layer229) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[7720.2,1752.65,0],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [7720.2,1752.65,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer9 && _layer229) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[7721.58,1758.52,0],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [7721.58,1758.52,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer9 && _layer229) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[7694.57,1760.85,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [7694.57,1760.85,297.231];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer9 && _layer229) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[7697.31,1750.96,0],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [7697.31,1750.96,297.692];
	_this setVectorDirAndUp [[-0.233296,-0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer9 && _layer229) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[7710.2,1748.89,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [7710.2,1748.89,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer9 && _layer229) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[7698.44,1751.62,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [7698.44,1751.62,297.678];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer9 && _layer229) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[7700.51,1751.06,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [7700.51,1751.06,297.705];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer9 && _layer229) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[7697.39,1772.55,0],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [7697.39,1772.55,296.428];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer9 && _layer229) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[7696.46,1768.66,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [7696.46,1768.66,296.708];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer9 && _layer229) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[7696.93,1770.61,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [7696.93,1770.61,296.552];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer9 && _layer229) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[7716.21,1746.44,0],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [7716.21,1746.44,297.716];
	_this setVectorDirAndUp [[0.233294,0.972406,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer9 && _layer229) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[7723.54,1766.23,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [7723.54,1766.23,297.727];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer9 && _layer229) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[7723.07,1764.29,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [7723.07,1764.29,297.721];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer9 && _layer229) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[7722.6,1762.35,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [7722.6,1762.35,297.716];
	_this setVectorDirAndUp [[0.972406,-0.233295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer9 && _layer229) then {
	_item203 = createVehicle ["VR_Area_01_circle_4_yellow_F",[7727.79,1762.28,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [7727.79,1762.28,296.04];
	_this setVectorDirAndUp [[-0.97163,0.236506,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item207 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item207 = createVehicle ["Sign_Arrow_F",[7704.54,1767.01,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [7704.54,1767.01,296.023];
	_this setVectorDirAndUp [[0.218517,0.975833,0],[0,0,1]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item208 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item208 = createVehicle ["Sign_Arrow_F",[7696.55,1760.07,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [7696.55,1760.07,296.029];
	_this setVectorDirAndUp [[0.971269,-0.237985,0],[0,0,1]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item209 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item209 = createVehicle ["Sign_Arrow_F",[7705.87,1749.95,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [7705.87,1749.95,296.413];
	_this setVectorDirAndUp [[0.233509,0.972355,0],[0,0,1]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item210 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item210 = createVehicle ["Sign_Arrow_F",[7718.27,1760.25,0],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [7718.27,1760.25,296.413];
	_this setVectorDirAndUp [[-0.963593,0.267372,0],[0,0,1]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item211 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item211 = createVehicle ["Sign_Arrow_F",[7716.88,1749.46,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [7716.88,1749.46,296.413];
	_this setVectorDirAndUp [[-0.960778,0.27732,0],[0,0,1]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item212 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item212 = createVehicle ["Sign_Arrow_F",[7714.82,1780.86,0],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [7714.82,1780.86,296.224];
	_this setVectorDirAndUp [[0.984488,-0.175453,0],[0,0,1]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item213 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item213 = createVehicle ["Sign_Arrow_F",[7711.16,1779.59,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [7711.16,1779.59,295.993];
	_this setVectorDirAndUp [[-0.976529,0.215384,0],[0,0,1]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item214 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item214 = createVehicle ["Sign_Arrow_F",[7708.71,1772.2,0],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [7708.71,1772.2,296.019];
	_this setVectorDirAndUp [[-0.978841,0.204623,0],[0,0,1]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item215 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item215 = createVehicle ["Sign_Arrow_F",[7712.96,1773.09,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [7712.96,1773.09,296.253];
	_this setVectorDirAndUp [[0.973132,-0.230246,0],[0,0,1]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item216 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item216 = createVehicle ["Sign_Arrow_F",[7709.21,1766.66,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [7709.21,1766.66,296.216];
	_this setVectorDirAndUp [[-0.232203,-0.972667,0],[0,0,1]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item217 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item217 = createVehicle ["Sign_Arrow_F",[7700.35,1775.01,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [7700.35,1775.01,295.263];
	_this setVectorDirAndUp [[0.230755,0.973012,0],[0,0,1]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item218 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item218 = createVehicle ["Sign_Arrow_F",[7710.37,1753.14,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [7710.37,1753.14,296.41];
	_this setVectorDirAndUp [[0.233509,0.972355,0],[0,0,1]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item219 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item219 = createVehicle ["Sign_Arrow_F",[7714.74,1776.84,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [7714.74,1776.84,296.258];
	_this setVectorDirAndUp [[0.233509,0.972355,0],[0,0,1]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item220 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item220 = createVehicle ["Sign_Arrow_F",[7701.72,1779.98,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [7701.72,1779.98,295.054];
	_this setVectorDirAndUp [[0.233509,0.972355,0],[0,0,1]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item221 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item221 = createVehicle ["Sign_Arrow_F",[7697.06,1762.47,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [7697.06,1762.47,295.953];
	_this setVectorDirAndUp [[-0.232203,-0.972667,0],[0,0,1]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item222 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item222 = createVehicle ["Sign_Arrow_F",[7703.08,1762.45,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [7703.08,1762.45,296.193];
	_this setVectorDirAndUp [[-0.232203,-0.972667,0],[0,0,1]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item223 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item223 = createVehicle ["Sign_Arrow_F",[7723.63,1779.14,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [7723.63,1779.14,296.522];
	_this setVectorDirAndUp [[-0.232203,-0.972667,0],[0,0,1]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item224 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item224 = createVehicle ["Sign_Arrow_F",[7694.54,1754.34,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [7694.54,1754.34,296.309];
	_this setVectorDirAndUp [[0.218517,0.975833,0],[0,0,1]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item225 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item225 = createVehicle ["Sign_Arrow_F",[7707.8,1782.29,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [7707.8,1782.29,295.621];
	_this setVectorDirAndUp [[0.233509,0.972355,0],[0,0,1]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item746 = objNull;
if (_layer229) then {
	_item746 = createVehicle ["UK3CB_RPK74_Equipbox_Opfor",[8204.34,2150.8,0.218689],[],0,"CAN_COLLIDE"];
	_this = _item746;
	_objects pushback _this;
	_objectIDs pushback 746;
	_this setPosWorld [8204.34,2150.81,296.583];
	_this setVectorDirAndUp [[-0.965419,-0.260541,0.00919617],[0.00873456,0.00292957,0.999958]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item747 = objNull;
if (_layer229) then {
	_item747 = createVehicle ["UK3CB_RPK74_Equipbox_Opfor",[8203.04,2154.48,0.496399],[],0,"CAN_COLLIDE"];
	_this = _item747;
	_objects pushback _this;
	_objectIDs pushback 747;
	_this setPosWorld [8203.05,2154.49,296.563];
	_this setVectorDirAndUp [[-0.220813,0.975313,-0.00232252],[0.0224675,0.00746733,0.99972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item748 = objNull;
if (_layer229) then {
	_item748 = createVehicle ["UK3CB_RPK74_Equipbox_Opfor",[8212.31,2153.92,0.0770569],[],0,"CAN_COLLIDE"];
	_this = _item748;
	_objects pushback _this;
	_objectIDs pushback 748;
	_this setPosWorld [8212.31,2153.92,296.577];
	_this setVectorDirAndUp [[0.388279,-0.921495,-0.00929119],[0.00251358,-0.00902318,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item749 = objNull;
if (_layer229) then {
	_item749 = createVehicle ["UK3CB_RPK74_Equipbox_Opfor",[8211.24,2157.65,0.219452],[],0,"CAN_COLLIDE"];
	_this = _item749;
	_objects pushback _this;
	_objectIDs pushback 749;
	_this setPosWorld [8211.23,2157.65,296.575];
	_this setVectorDirAndUp [[0.554032,-0.832474,0.00586525],[-0.0219469,-0.00756254,0.999731]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item236 = objNull;
if (_layerRoot) then {
	_item236 = createVehicle ["US_WarfareBFieldhHospital_Base_EP1",[8258.88,2080.19,0],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [8258.88,2080.19,294.985];
	_this setVectorDirAndUp [[0.872214,0.489125,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item241 = objNull;
if (_layerRoot) then {
	_item241 = createVehicle ["Flag_CW_SOV_VDV",[8278.92,2099.64,0],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [8278.92,2099.64,300.017];
	_this setVectorDirAndUp [[0.869729,0.493529,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item242 = objNull;
if (_layerRoot) then {
	_item242 = createVehicle ["Flag_CW_SOV",[8274.7,2097.55,0],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [8274.7,2097.55,300.017];
	_this setVectorDirAndUp [[-0.875698,-0.482859,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item756 = objNull;
if (_layerRoot) then {
	_item756 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_AA",[8246.99,2064.94,9.12201],[],0,"CAN_COLLIDE"];
	_this = _item756;
	_objects pushback _this;
	_objectIDs pushback 756;
	_this setPosWorld [8246.99,2064.99,305.163];
	_this setVectorDirAndUp [[0.694646,-0.719352,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dimitri Petrov";;
	_this setface "WhiteHead_12";;
	_this setspeaker "RHS_Male04RUS";;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item757 = objNull;
if (_layerRoot) then {
	_item757 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_AT",[8233.87,2069.58,9.12201],[],0,"CAN_COLLIDE"];
	_this = _item757;
	_objects pushback _this;
	_objectIDs pushback 757;
	_this setPosWorld [8233.87,2069.63,305.163];
	_this setVectorDirAndUp [[-0.848492,0.529208,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ruslan Gorbunov";;
	_this setface "WhiteHead_02";;
	_this setspeaker "RHS_Male01RUS";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH2",["inbasemoves_patrolling2"],false,true] # 0 isEqualTo '') then      {        ["WATCH2",["inbasemoves_patrolling2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item758 = objNull;
if (_layerRoot) then {
	_item758 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_AR",[8277.6,2092.49,1.86801],[],0,"CAN_COLLIDE"];
	_this = _item758;
	_objects pushback _this;
	_objectIDs pushback 758;
	_this setPosWorld [8277.6,2092.54,297.909];
	_this setVectorDirAndUp [[0.864766,0.502175,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Anatoli Mikoyan";;
	_this setface "WhiteHead_13";;
	_this setspeaker "RHS_Male01RUS";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["PRONE_INJURED_U1",["ainjppnemstpsnonwnondnon"],false,true] # 0 isEqualTo '') then      {        ["PRONE_INJURED_U1",["ainjppnemstpsnonwnondnon"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item759 = objNull;
if (_layerRoot) then {
	_item759 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_DEM",[8290.67,2093.06,0.654999],[],0,"CAN_COLLIDE"];
	_this = _item759;
	_objects pushback _this;
	_objectIDs pushback 759;
	_this setPosWorld [8290.67,2093.11,296.696];
	_this setVectorDirAndUp [[0.815158,0.579238,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Oleg Mikoyan";;
	_this setface "WhiteHead_19";;
	_this setspeaker "RHS_Male02RUS";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', true];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', true, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item760 = objNull;
if (_layerRoot) then {
	_item760 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_ENG",[8292.66,2094.04,0.653992],[],0,"CAN_COLLIDE"];
	_this = _item760;
	_objects pushback _this;
	_objectIDs pushback 760;
	_this setPosWorld [8292.66,2094.09,296.695];
	_this setVectorDirAndUp [[-0.879424,-0.476039,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Grigoriy Yefremov";;
	_this setface "WhiteHead_04";;
	_this setspeaker "RHS_Male02RUS";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', true];
	_this setUnitTrait ['ExplosiveSpecialist', true];
	_this setUnitTrait ['UAVHacker', false];
	if !(1 == ([0, 1] select (_this getUnitTrait 'engineer')) || {1 == -1}) then {_this setVariable ['s', 1, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', true, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item761 = objNull;
if (_layerRoot) then {
	_item761 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_GL",[8281.19,2086.16,1.056],[],0,"CAN_COLLIDE"];
	_this = _item761;
	_objects pushback _this;
	_objectIDs pushback 761;
	_this setPosWorld [8281.19,2086.21,297.097];
	_this setVectorDirAndUp [[-0.858638,-0.512583,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Fyodor Fisenko";;
	_this setface "WhiteHead_07";;
	_this setspeaker "RHS_Male03RUS";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["PRONE_INJURED_U2",["hubwoundedprone_idle1","hubwoundedprone_idle2"],false,true] # 0 isEqualTo '') then      {        ["PRONE_INJURED_U2",["hubwoundedprone_idle1","hubwoundedprone_idle2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item762 = objNull;
if (_layerRoot) then {
	_item762 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_LAT",[8192.72,2221.11,0.268005],[],0,"CAN_COLLIDE"];
	_this = _item762;
	_objects pushback _this;
	_objectIDs pushback 762;
	_this setPosWorld [8192.72,2221.16,296.564];
	_this setVectorDirAndUp [[0.309747,-0.950819,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Pyotr Tokarev";;
	_this setface "WhiteHead_20";;
	_this setspeaker "RHS_Male01RUS";;
	_this setpitch 0.98;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item763 = objNull;
if (_layerRoot) then {
	_item763 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_MG",[8120.45,2126.04,5.035],[],0,"CAN_COLLIDE"];
	_this = _item763;
	_objects pushback _this;
	_objectIDs pushback 763;
	_this setPosWorld [8120.45,2126.09,299.626];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Igor Pecharov";;
	_this setface "AsianHead_A3_02";;
	_this setspeaker "RHS_Male04RUS";;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item764 = objNull;
if (_layerRoot) then {
	_item764 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_MK",[8274.39,2194.58,5.08499],[],0,"CAN_COLLIDE"];
	_this = _item764;
	_objects pushback _this;
	_objectIDs pushback 764;
	_this setPosWorld [8274.39,2194.63,301.414];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Yuri Nikolayev";;
	_this setface "AsianHead_A3_03";;
	_this setspeaker "RHS_Male02RUS";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH2",["inbasemoves_patrolling2"],false,true] # 0 isEqualTo '') then      {        ["WATCH2",["inbasemoves_patrolling2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item765 = objNull;
if (_layerRoot) then {
	_item765 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_MD",[8281.7,2093.21,4.69601],[],0,"CAN_COLLIDE"];
	_this = _item765;
	_objects pushback _this;
	_objectIDs pushback 765;
	_this setPosWorld [8281.7,2093.26,300.737];
	_this setVectorDirAndUp [[-0.43721,0.89936,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Vasil Gusakov";;
	_this setface "WhiteHead_07";;
	_this setspeaker "RHS_Male03RUS";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_SAD2",["c5efe_honzaloop"],false,true] # 0 isEqualTo '') then      {        ["SIT_SAD2",["c5efe_honzaloop"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', true];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (1 != -1 && {1 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 1, true]};
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item766 = objNull;
if (_layerRoot) then {
	_item766 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_OFF",[8282.78,2092.51,0.658997],[],0,"CAN_COLLIDE"];
	_this = _item766;
	_objects pushback _this;
	_objectIDs pushback 766;
	_this setPosWorld [8282.78,2092.56,296.7];
	_this setVectorDirAndUp [[-0.932362,-0.361527,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Anatoli Doronin";;
	_this setface "WhiteHead_03";;
	_this setspeaker "RHS_Male01RUS";;
	_this setpitch 0.97;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item767 = objNull;
if (_layerRoot) then {
	_item767 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_OFF",[8241.1,2067.14,9.10999],[],0,"CAN_COLLIDE"];
	_item619 selectLeader _item767;
	_this = _item767;
	_objects pushback _this;
	_objectIDs pushback 767;
	_this setPosWorld [8241.1,2067.19,305.151];
	_this setVectorDirAndUp [[0.140415,-0.990093,0],[0,0,1]];
	_this setRank "COLONEL";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Aleksei Derevenko";;
	_this setface "WhiteHead_09";;
	_this setspeaker "RHS_Male01RUS";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_PISTOL",["Acts_Executioner_StandingLoop"],false,true] # 0 isEqualTo '') then      {        ["STAND_PISTOL",["Acts_Executioner_StandingLoop"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item768 = objNull;
if (_layerRoot) then {
	_item768 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_OFF",[8281.88,2092,0.658997],[],0,"CAN_COLLIDE"];
	_this = _item768;
	_objects pushback _this;
	_objectIDs pushback 768;
	_this setPosWorld [8281.88,2092.05,296.7];
	_this setVectorDirAndUp [[0.769455,0.638701,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Fyodor Vasilyev";;
	_this setface "WhiteHead_14";;
	_this setspeaker "RHS_Male05RUS";;
	_this setpitch 1.04;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item769 = objNull;
if (_layerRoot) then {
	_item769 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_RADIO",[8287.01,2102.19,0.657013],[],0,"CAN_COLLIDE"];
	_this = _item769;
	_objects pushback _this;
	_objectIDs pushback 769;
	_this setPosWorld [8287.01,2102.24,296.698];
	_this setVectorDirAndUp [[-0.446604,0.894732,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Valentin Zhukov";;
	_this setface "WhiteHead_17";;
	_this setspeaker "RHS_Male05RUS";;
	_this setpitch 0.99;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item770 = objNull;
if (_layerRoot) then {
	_item770 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_RIF_1",[8328.5,2117.1,5.05682],[],0,"CAN_COLLIDE"];
	_this = _item770;
	_objects pushback _this;
	_objectIDs pushback 770;
	_this setPosWorld [8328.5,2117.15,301.098];
	_this setVectorDirAndUp [[0.647236,0.76229,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Andrey Potapenko";;
	_this setface "AsianHead_A3_05";;
	_this setspeaker "rhs_male01rus";;
	_this setpitch 0.968253;;
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

private _item771 = objNull;
if (_layerRoot) then {
	_item771 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_RIF_1",[8270.15,2086.79,1.07178],[],0,"CAN_COLLIDE"];
	_this = _item771;
	_objects pushback _this;
	_objectIDs pushback 771;
	_this setPosWorld [8270.15,2086.84,297.113];
	_this setVectorDirAndUp [[-0.887883,-0.460069,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Anatoli Tokarev";;
	_this setface "WhiteHead_10";;
	_this setspeaker "RHS_Male03RUS";;
	_this setpitch 0.95;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["PRONE_INJURED_U1",["ainjppnemstpsnonwnondnon"],false,true] # 0 isEqualTo '') then      {        ["PRONE_INJURED_U1",["ainjppnemstpsnonwnondnon"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item772 = objNull;
if (_layerRoot) then {
	_item772 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_SL",[8193,2219.42,0.355988],[],0,"CAN_COLLIDE"];
	_this = _item772;
	_objects pushback _this;
	_objectIDs pushback 772;
	_this setPosWorld [8193,2219.47,296.563];
	_this setVectorDirAndUp [[-0.262661,0.964888,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Stepan Gorbunov";;
	_this setface "AsianHead_A3_03";;
	_this setspeaker "RHS_Male01RUS";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WARMUP_KNEELING",["Acts_AidlPercMstpSloWWrflDnon_warmup_6_loop"],false,true] # 0 isEqualTo '') then      {        ["WARMUP_KNEELING",["Acts_AidlPercMstpSloWWrflDnon_warmup_6_loop"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item773 = objNull;
if (_layerRoot) then {
	_item773 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_TL",[7966.19,2003.62,5.28799],[],0,"CAN_COLLIDE"];
	_this = _item773;
	_objects pushback _this;
	_objectIDs pushback 773;
	_this setPosWorld [7966.19,2003.67,301.249];
	_this setVectorDirAndUp [[-0.999246,-0.0388238,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kiril Provodnikov";;
	_this setface "WhiteHead_05";;
	_this setspeaker "RHS_Male03RUS";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH2",["inbasemoves_patrolling2"],false,true] # 0 isEqualTo '') then      {        ["WATCH2",["inbasemoves_patrolling2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item774 = objNull;
if (_layerRoot) then {
	_item774 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_VDV_GL",[8241.97,2075.85,0],[],0,"CAN_COLLIDE"];
	_this = _item774;
	_objects pushback _this;
	_objectIDs pushback 774;
	_this setPosWorld [8241.97,2075.9,296.041];
	_this setVectorDirAndUp [[-0.49705,0.867722,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Mikhail Timoshenko";;
	_this setface "WhiteHead_04";;
	_this setspeaker "RHS_Male04RUS";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_IA",["amovpercmstpslowwrfldnon","amovpercmstpslowwrfldnon","aidlpercmstpslowwrfldnon_g01","aidlpercmstpslowwrfldnon_g02","aidlpercmstpslowwrfldnon_g03","aidlpercmstpslowwrfldnon_g05"],false,true] # 0 isEqualTo '') then      {        ["STAND_IA",["amovpercmstpslowwrfldnon","amovpercmstpslowwrfldnon","aidlpercmstpslowwrfldnon_g01","aidlpercmstpslowwrfldnon_g02","aidlpercmstpslowwrfldnon_g03","aidlpercmstpslowwrfldnon_g05"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item775 = objNull;
if (_layerRoot) then {
	_item775 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_VDV_RIF_2",[8268.69,2090.47,0.665924],[],0,"CAN_COLLIDE"];
	_this = _item775;
	_objects pushback _this;
	_objectIDs pushback 775;
	_this setPosWorld [8268.69,2090.52,296.707];
	_this setVectorDirAndUp [[-0.482997,0.875622,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Boris Tokarev";;
	_this setface "WhiteHead_01";;
	_this setspeaker "RHS_Male04RUS";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_SAD1",["c5efe_michalloop"],false,true] # 0 isEqualTo '') then      {        ["SIT_SAD1",["c5efe_michalloop"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item776 = objNull;
if (_layerRoot) then {
	_item776 = _item619 createUnit ["UK3CB_CW_SOV_O_LATE_VDV_RIF_2",[8238.77,2073.94,0],[],0,"CAN_COLLIDE"];
	_this = _item776;
	_objects pushback _this;
	_objectIDs pushback 776;
	_this setPosWorld [8238.77,2073.99,296.041];
	_this setVectorDirAndUp [[-0.521144,0.853469,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Pyotr Krasko";;
	_this setface "WhiteHead_11";;
	_this setspeaker "RHS_Male01RUS";;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item710 = objNull;
if (_layerRoot) then {
	_item710 = createVehicle ["acex_intelitems_notepad",[8282.04,2092.49,4.384],[],0,"CAN_COLLIDE"];
	_this = _item710;
	_objects pushback _this;
	_objectIDs pushback 710;
	_this setPosWorld [8282.04,2092.49,300.435];
	_this setVectorDirAndUp [[-0.977571,0.210608,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"Dear Vasil,

I regret to inform you that your mother has passed away . There was a complication with her surgery and she didn't make it. I would rather have told you this in person when you got home, but you're fighting in war and I wanted you know sooner rather than later. I really am sorry Son. Please, try to hurry back home. Your sister and I miss you and want you to be safe. Just know I am proud of you. Your mother was too. Hurry back and stay safe.

Love,
Your Father, Demitri"] call acex_intelitems_fnc_setObjectData;
};

private _item238 = objNull;
if (_layerRoot) then {
	_item238 = createVehicle ["Land_SM_01_shed_F",[8212.66,2149.9,0],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [8212.66,2149.9,297.725];
	_this setVectorDirAndUp [[-0.948028,-0.318187,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item734 = objNull;
if (_layerRoot) then {
	_item734 = createVehicle ["FoldChair",[8213.93,2150.12,0.00598145],[],0,"CAN_COLLIDE"];
	_this = _item734;
	_objects pushback _this;
	_objectIDs pushback 734;
	_this setPosWorld [8213.92,2150.13,296.544];
	_this setVectorDirAndUp [[-0.26266,0.964847,-0.00889649],[-0.0116471,0.00604913,0.999914]];
	0 remoteExec ['setFeatureType', _this];
};

private _item735 = objNull;
if (_layerRoot) then {
	_item735 = createVehicle ["FoldChair",[8212.91,2149.76,0.000946045],[],0,"CAN_COLLIDE"];
	_this = _item735;
	_objects pushback _this;
	_objectIDs pushback 735;
	_this setPosWorld [8212.91,2149.76,296.54];
	_this setVectorDirAndUp [[-0.262678,0.964884,-0.000128261],[-0.000488281,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item736 = objNull;
if (_layerRoot) then {
	_item736 = createVehicle ["FoldChair",[8212.12,2149.46,0.00292969],[],0,"CAN_COLLIDE"];
	_this = _item736;
	_objects pushback _this;
	_objectIDs pushback 736;
	_this setPosWorld [8212.12,2149.46,296.54];
	_this setVectorDirAndUp [[-0.262678,0.964884,-0.000128261],[-0.000488281,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item737 = objNull;
if (_layerRoot) then {
	_item737 = createVehicle ["FoldChair",[8211.26,2149.14,0.00799561],[],0,"CAN_COLLIDE"];
	_this = _item737;
	_objects pushback _this;
	_objectIDs pushback 737;
	_this setPosWorld [8211.26,2149.14,296.539];
	_this setVectorDirAndUp [[-0.262678,0.964884,-0.000128261],[-0.000488281,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item738 = objNull;
if (_layerRoot) then {
	_item738 = createVehicle ["FoldChair",[8210.2,2148.83,0.0142517],[],0,"CAN_COLLIDE"];
	_this = _item738;
	_objects pushback _this;
	_objectIDs pushback 738;
	_this setPosWorld [8210.2,2148.83,296.539];
	_this setVectorDirAndUp [[-0.262678,0.964884,-0.000128261],[-0.000488281,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item739 = objNull;
if (_layerRoot) then {
	_item739 = createVehicle ["FoldChair",[8210.93,2147.47,0.00973511],[],0,"CAN_COLLIDE"];
	_this = _item739;
	_objects pushback _this;
	_objectIDs pushback 739;
	_this setPosWorld [8210.93,2147.47,296.539];
	_this setVectorDirAndUp [[-0.262678,0.964884,-0.000128261],[-0.000488281,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item740 = objNull;
if (_layerRoot) then {
	_item740 = createVehicle ["FoldChair",[8211.74,2147.71,0.00494385],[],0,"CAN_COLLIDE"];
	_this = _item740;
	_objects pushback _this;
	_objectIDs pushback 740;
	_this setPosWorld [8211.74,2147.71,296.539];
	_this setVectorDirAndUp [[-0.262678,0.964884,-0.000128261],[-0.000488281,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item741 = objNull;
if (_layerRoot) then {
	_item741 = createVehicle ["FoldChair",[8212.6,2147.95,0.00271606],[],0,"CAN_COLLIDE"];
	_this = _item741;
	_objects pushback _this;
	_objectIDs pushback 741;
	_this setPosWorld [8212.6,2147.96,296.542];
	_this setVectorDirAndUp [[-0.26266,0.964847,-0.00889649],[-0.0116471,0.00604913,0.999914]];
	0 remoteExec ['setFeatureType', _this];
};

private _item742 = objNull;
if (_layerRoot) then {
	_item742 = createVehicle ["FoldChair",[8213.43,2148.22,0.0108032],[],0,"CAN_COLLIDE"];
	_this = _item742;
	_objects pushback _this;
	_objectIDs pushback 742;
	_this setPosWorld [8213.43,2148.22,296.55];
	_this setVectorDirAndUp [[-0.26266,0.964847,-0.00889649],[-0.0116471,0.00604913,0.999914]];
	0 remoteExec ['setFeatureType', _this];
};

private _item743 = objNull;
if (_layerRoot) then {
	_item743 = createVehicle ["FoldChair",[8214.36,2148.52,0.0197754],[],0,"CAN_COLLIDE"];
	_this = _item743;
	_objects pushback _this;
	_objectIDs pushback 743;
	_this setPosWorld [8214.36,2148.53,296.559];
	_this setVectorDirAndUp [[-0.26266,0.964847,-0.00889649],[-0.0116471,0.00604913,0.999914]];
	0 remoteExec ['setFeatureType', _this];
};

private _item750 = objNull;
if (_layerRoot) then {
	_item750 = createVehicle ["Land_WoodenCrate_01_stack_x5_F",[8200.45,2161.87,0.874481],[],0,"CAN_COLLIDE"];
	_this = _item750;
	_objects pushback _this;
	_objectIDs pushback 750;
	_this setPosWorld [8200.45,2161.87,297.052];
	_this setVectorDirAndUp [[-0.432405,0.90168,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item751 = objNull;
if (_layerRoot) then {
	_item751 = createVehicle ["Land_WoodenCrate_01_stack_x3_F",[8202.12,2162.28,0.850372],[],0,"CAN_COLLIDE"];
	_this = _item751;
	_objects pushback _this;
	_objectIDs pushback 751;
	_this setPosWorld [8202.12,2162.28,296.798];
	_this setVectorDirAndUp [[-0.913888,-0.405967,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item752 = objNull;
if (_layerRoot) then {
	_item752 = createVehicle ["Land_CratesWooden_F",[8200.86,2159.82,0.813477],[],0,"CAN_COLLIDE"];
	_this = _item752;
	_objects pushback _this;
	_objectIDs pushback 752;
	_this setPosWorld [8200.86,2159.82,296.829];
	_this setVectorDirAndUp [[-0.913255,-0.407389,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item753 = objNull;
if (_layerRoot) then {
	_item753 = createVehicle ["Land_WoodenCrate_01_stack_x3_F",[8202.61,2160.41,0.761292],[],0,"CAN_COLLIDE"];
	_this = _item753;
	_objects pushback _this;
	_objectIDs pushback 753;
	_this setPosWorld [8202.61,2160.41,296.767];
	_this setVectorDirAndUp [[-0.848799,0.527861,0.0300411],[0.0286605,-0.0107985,0.999531]];
	0 remoteExec ['setFeatureType', _this];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item2 = objNull;
if (_layer229) then {
	_item2 = createTrigger ["EmptyDetectorArea10x10",[8260.12,2078.95,0.0908508],false];
	_this = _item2;
	_triggers pushback _this;
	_triggerIDs pushback 2;
	_item2 setPosATL [8260.12,2078.95,0.0908508];
	_this setTriggerArea [6,6,-29.4535,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item5 = objNull;
if (_layer4 && _layer229) then {
	_item5 = createTrigger ["EmptyDetectorArea10x10",[8217.94,2176.67,0],true];
	_this = _item5;
	_triggers pushback _this;
	_triggerIDs pushback 5;
	_item5 setPosATL [8217.94,2176.67,0];
	_this setTriggerArea [5,20,-18.2091,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item204 = objNull;
if (_layer9 && _layer229) then {
	_item204 = createTrigger ["EmptyDetectorAreaR50",[7691.87,1768.15,0],false];
	_this = _item204;
	_triggers pushback _this;
	_triggerIDs pushback 204;
	_item204 setPosATL [7691.87,1768.15,0];
	_this setTriggerArea [50,50,295.863,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item205 = objNull;
if (_layer9 && _layer229) then {
	_item205 = createTrigger ["EmptyDetectorArea10x10",[7709.45,1766.93,3.05176e-005],true];
	_this = _item205;
	_triggers pushback _this;
	_triggerIDs pushback 205;
	_item205 setPosATL [7709.45,1766.93,3.05176e-005];
	_this setTriggerArea [18,13.5,103.155,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item619;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorEAST","HQ",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorEAST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorEAST","HQ",true]'];          ["","ColorEAST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorEAST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorEAST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item696;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-2"] call CBA_fnc_setCallsign;
	      if (!is3DEN && !(["","ColorEAST","Alpha 1-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorEAST","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorEAST","Alpha 1-2",true]'];          ["","ColorEAST","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorEAST","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorEAST","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
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
	_item3 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8274.86,2087.31,0.662903],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_logics pushback _this;
	_logicIDs pushback 3;
	_this setPosWorld [8274.86,2087.31,296.703];
	_this setVectorDirAndUp [[0.804025,0.594595,-0.00039245],[0.000488106,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item227 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item227 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[7722,1771.04,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_logics pushback _this;
	_logicIDs pushback 227;
	_this setPosWorld [7722,1771.04,296.067];
	_this setVectorDirAndUp [[-0.899844,0.436212,0],[0,0,1]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item228 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item228 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[7724.69,1756.58,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_logics pushback _this;
	_logicIDs pushback 228;
	_this setPosWorld [7724.69,1756.58,296.04];
	_this setVectorDirAndUp [[-0.899842,0.436216,0],[0,0,1]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};

private _item237 = objNull;
if (_layerRoot) then {
	_item237 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[8198.36,2155.59,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_logics pushback _this;
	_logicIDs pushback 237;
	_this setPosWorld [8198.36,2155.59,295.347];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer226) then {missionNamespace setVariable ["tempMissionSP_Spawns",[[_item227,_item228],[]]];};
if (_layer206) then {missionNamespace setVariable ["tempMissionSP_Shoothouse Targets",[[_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225],[]]];};
if (_layer9) then {missionNamespace setVariable ["tempMissionSP_Shoothouse Pit",[[_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228],[]]];};
if (_layer7) then {missionNamespace setVariable ["tempMissionSP_Repair Station",[[_item8],[]]];};
if (_layer4) then {missionNamespace setVariable ["tempMissionSP_bargate",[[_item5,_item6],[]]];};
if (_layer229) then {missionNamespace setVariable ["tempMissionSP_SIA ZGM Essentials",[[_item0,_item2,_item3,_item5,_item6,_item8,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228,_item746,_item747,_item748,_item749],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item746) then {
		this = _item746;
		call{arsenals pushBack this};
	};
	if !(isnull _item747) then {
		this = _item747;
		call{arsenals pushBack this};
	};
	if !(isnull _item748) then {
		this = _item748;
		call{arsenals pushBack this};
	};
	if !(isnull _item749) then {
		this = _item749;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item237) then {_item237 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
