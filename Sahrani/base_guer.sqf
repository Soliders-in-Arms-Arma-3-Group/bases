// Export of 'Sahrani%20Guerilla%20Base.sara' by Jibcraneknight on v0.9

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

private _item241 = grpNull;
if (_layerRoot) then {
	_item241 = createGroup west;
	_this = _item241;
	_groups pushback _this;
	_groupIDs pushback 241;
};

private _item247 = grpNull;
if (_layerRoot) then {
	_item247 = createGroup west;
	_this = _item247;
	_groups pushback _this;
	_groupIDs pushback 247;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layer229) then {
	_item0 = createVehicle ["Land_InfoStand_V1_F",[17244,13649.1,-0.0185509],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [17244,13649.1,34.6872];
	_this setVectorDirAndUp [[-0.444404,0.895744,0.0121235],[-0.00899675,-0.0179954,0.999798]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item6 = objNull;
if (_layer4 && _layer229) then {
	_item6 = createVehicle ["Land_BarGate_F",[17444.9,13535.1,0.304277],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [17444.9,13535.1,29.8124];
	_this setVectorDirAndUp [[0.998586,0.0531637,0],[0,0,1]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item8 = objNull;
if (_layer7 && _layer229) then {
	_item8 = createVehicle ["Land_RepairDepot_01_tan_F",[17182,13567,0.172295],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [17182,13567.2,44.476];
	_this setVectorDirAndUp [[0.242462,0.965165,-0.0983324],[0.0292387,0.094041,0.995139]];
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
	_item10 = createVehicle ["Land_InfoStand_V1_F",[17129.5,13713.8,-0.00642776],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [17129.5,13713.7,60.5275];
	_this setVectorDirAndUp [[-0.974681,0.205561,0.0879821],[0.0564892,-0.154342,0.986401]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item11 = objNull;
if (_layer9 && _layer229) then {
	_item11 = createVehicle ["Land_Scaffolding_New_F",[17104.4,13699.5,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [17104.4,13699.5,65.2862];
	_this setVectorDirAndUp [[0.976213,-0.216815,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item12 = objNull;
if (_layer9 && _layer229) then {
	_item12 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17112.2,13731,0],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [17112.2,13731,64.5246];
	_this setVectorDirAndUp [[0.972881,-0.228379,-0.0366702],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer9 && _layer229) then {
	_item13 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17110.4,13723.3,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [17110.4,13723.3,64.1143];
	_this setVectorDirAndUp [[0.971236,-0.220759,-0.0892498],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layer9 && _layer229) then {
	_item14 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17119.5,13731.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [17119.5,13731.4,64.2628];
	_this setVectorDirAndUp [[-0.972481,0.229924,-0.0376321],[-0.0539514,-0.0651056,0.996419]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer9 && _layer229) then {
	_item15 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17117.6,13723.6,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [17117.6,13723.6,63.6322];
	_this setVectorDirAndUp [[-0.972881,0.221048,0.0681138],[0.045703,-0.104965,0.993425]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item16 = objNull;
if (_layer9 && _layer229) then {
	_item16 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17111.7,13715.7,0],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [17111.7,13715.7,63.6064];
	_this setVectorDirAndUp [[0.217939,0.969449,-0.112564],[0.279445,0.0485224,0.958935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item17 = objNull;
if (_layer9 && _layer229) then {
	_item17 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17111.6,13724.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [17111.6,13724.1,64.0844];
	_this setVectorDirAndUp [[-0.226362,-0.972294,-0.0583446],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item18 = objNull;
if (_layer9 && _layer229) then {
	_item18 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17112.6,13719.5,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [17112.6,13719.5,63.6088];
	_this setVectorDirAndUp [[-0.197978,-0.96922,-0.146349],[0.0738961,-0.163637,0.983749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item19 = objNull;
if (_layer9 && _layer229) then {
	_item19 = createVehicle ["Land_Shoot_House_Wall_F",[17102.5,13733.3,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [17102.5,13733.3,64.4549];
	_this setVectorDirAndUp [[0.97387,-0.226421,0.0176217],[-0.0076894,0.0446739,0.998972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item20 = objNull;
if (_layer9 && _layer229) then {
	_item20 = createVehicle ["Land_Shoot_House_Wall_F",[17103.3,13723.8,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [17103.3,13723.8,64.4912];
	_this setVectorDirAndUp [[-0.225381,-0.971357,0.0752981],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer9 && _layer229) then {
	_item21 = createVehicle ["Land_Shoot_House_Wall_F",[17107.2,13722.9,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [17107.2,13722.9,64.0919];
	_this setVectorDirAndUp [[-0.226976,-0.970867,-0.0768059],[-0.00768165,-0.0770771,0.996996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layer9 && _layer229) then {
	_item22 = createVehicle ["Land_Shoot_House_Wall_F",[17100.6,13725.5,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [17100.6,13725.5,64.7311];
	_this setVectorDirAndUp [[0.96703,-0.232442,-0.104035],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer9 && _layer229) then {
	_item23 = createVehicle ["Land_Shoot_House_Wall_F",[17104.6,13737.9,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [17104.6,13737.9,64.289];
	_this setVectorDirAndUp [[-0.226946,-0.973462,0.0294465],[-0.0179697,0.0344158,0.999246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer9 && _layer229) then {
	_item24 = createVehicle ["Land_Shoot_House_Wall_F",[17110.4,13736.6,0],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [17110.4,13736.6,64.415];
	_this setVectorDirAndUp [[-0.226745,-0.972965,0.0438868],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer9 && _layer229) then {
	_item25 = createVehicle ["Land_Shoot_House_Wall_F",[17108.4,13737,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [17108.4,13737,64.3899];
	_this setVectorDirAndUp [[-0.226946,-0.973462,0.0294465],[-0.0179697,0.0344158,0.999246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer9 && _layer229) then {
	_item26 = createVehicle ["Land_Shoot_House_Wall_F",[17102,13731.3,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [17102,13731.3,64.5385];
	_this setVectorDirAndUp [[0.97387,-0.226421,0.0176217],[-0.0076894,0.0446739,0.998972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer9 && _layer229) then {
	_item27 = createVehicle ["Land_Shoot_House_Wall_F",[17101.1,13727.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [17101.1,13727.4,64.5797];
	_this setVectorDirAndUp [[0.96703,-0.232442,-0.104035],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item28 = objNull;
if (_layer9 && _layer229) then {
	_item28 = createVehicle ["Land_Shoot_House_Wall_F",[17110.8,13725.2,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [17110.8,13725.2,64.226];
	_this setVectorDirAndUp [[0.971236,-0.220759,-0.0892498],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item29 = objNull;
if (_layer9 && _layer229) then {
	_item29 = createVehicle ["Land_Shoot_House_Wall_F",[17101.4,13724.3,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [17101.4,13724.3,64.7015];
	_this setVectorDirAndUp [[-0.225381,-0.971357,0.0752981],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer9 && _layer229) then {
	_item30 = createVehicle ["Land_Shoot_House_Wall_F",[17101.5,13729.4,0],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [17101.5,13729.4,64.547];
	_this setVectorDirAndUp [[0.97387,-0.226883,-0.0100367],[-0.00768165,-0.0770771,0.996996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer9 && _layer229) then {
	_item31 = createVehicle ["Land_Shoot_House_Wall_F",[17103.4,13737.2,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [17103.4,13737.2,64.2932];
	_this setVectorDirAndUp [[0.973742,-0.226245,0.0253034],[-0.0179697,0.0344158,0.999246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer9 && _layer229) then {
	_item32 = createVehicle ["Land_Shoot_House_Wall_F",[17113.1,13734.9,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [17113.1,13734.9,64.349];
	_this setVectorDirAndUp [[0.972881,-0.228379,-0.0366702],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer9 && _layer229) then {
	_item33 = createVehicle ["Land_Shoot_House_Wall_F",[17106.5,13737.5,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [17106.5,13737.5,64.3395];
	_this setVectorDirAndUp [[-0.226946,-0.973462,0.0294465],[-0.0179697,0.0344158,0.999246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item34 = objNull;
if (_layer9 && _layer229) then {
	_item34 = createVehicle ["Land_Shoot_House_Wall_F",[17104.1,13722.6,0],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [17104.1,13722.6,64.4628];
	_this setVectorDirAndUp [[0.96703,-0.232442,-0.104035],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer9 && _layer229) then {
	_item35 = createVehicle ["Land_Shoot_House_Wall_F",[17106.5,13720,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [17106.5,13720,64.2989];
	_this setVectorDirAndUp [[0.96703,-0.232442,-0.104035],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer9 && _layer229) then {
	_item36 = createVehicle ["Land_Shoot_House_Wall_F",[17107,13722,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [17107,13722,64.1479];
	_this setVectorDirAndUp [[0.96703,-0.232442,-0.104035],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer9 && _layer229) then {
	_item37 = createVehicle ["Land_Shoot_House_Wall_F",[17106.1,13718.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [17106.1,13718.1,64.4516];
	_this setVectorDirAndUp [[0.96703,-0.232527,-0.103845],[0.118558,0.0501793,0.991678]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer9 && _layer229) then {
	_item38 = createVehicle ["Land_Shoot_House_Wall_F",[17103.2,13718.7,0],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [17103.2,13718.7,64.7664];
	_this setVectorDirAndUp [[0.96703,-0.232527,-0.103845],[0.118558,0.0501793,0.991678]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layer9 && _layer229) then {
	_item39 = createVehicle ["Land_Shoot_House_Wall_F",[17112.3,13736.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [17112.3,13736.1,64.3415];
	_this setVectorDirAndUp [[-0.226745,-0.972965,0.0438868],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer9 && _layer229) then {
	_item40 = createVehicle ["Land_Shoot_House_Wall_F",[17112.6,13733,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [17112.6,13733,64.4368];
	_this setVectorDirAndUp [[0.972881,-0.228379,-0.0366702],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layer9 && _layer229) then {
	_item41 = createVehicle ["Land_Shoot_House_Wall_F",[17111,13716.9,0],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [17111,13716.9,63.7638];
	_this setVectorDirAndUp [[-0.9351,0.240445,0.260333],[0.279445,0.0485224,0.958935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer9 && _layer229) then {
	_item42 = createVehicle ["Land_Shoot_House_Wall_F",[17111.4,13718.9,0],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [17111.4,13718.9,63.5948];
	_this setVectorDirAndUp [[-0.971236,0.212096,0.108236],[0.0738961,-0.163637,0.983749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item43 = objNull;
if (_layer9 && _layer229) then {
	_item43 = createVehicle ["Land_Shoot_House_Wall_F",[17115.3,13731.3,0],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [17115.3,13731.3,64.3704];
	_this setVectorDirAndUp [[-0.226745,-0.972965,0.0438868],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item44 = objNull;
if (_layer9 && _layer229) then {
	_item44 = createVehicle ["Land_Shoot_House_Wall_F",[17115.6,13732.3,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [17115.6,13732.3,64.3266];
	_this setVectorDirAndUp [[0.972881,-0.228379,-0.0366702],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item45 = objNull;
if (_layer9 && _layer229) then {
	_item45 = createVehicle ["Land_Shoot_House_Wall_F",[17112.9,13729.8,0],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [17112.9,13729.8,64.5063];
	_this setVectorDirAndUp [[0.226744,0.969598,0.0920161],[0.045703,-0.104965,0.993425]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item46 = objNull;
if (_layer9 && _layer229) then {
	_item46 = createVehicle ["Land_Shoot_House_Wall_F",[17113.4,13731.8,0],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [17113.4,13731.8,64.4439];
	_this setVectorDirAndUp [[0.226744,0.972965,-0.0438868],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layer9 && _layer229) then {
	_item47 = createVehicle ["Land_Shoot_House_Wall_F",[17114.9,13729.4,0],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [17114.9,13729.4,64.3688];
	_this setVectorDirAndUp [[0.226744,0.969598,0.0920161],[0.045703,-0.104965,0.993425]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item48 = objNull;
if (_layer9 && _layer229) then {
	_item48 = createVehicle ["Land_Shoot_House_Wall_F",[17111.3,13727.1,0],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [17111.3,13727.1,64.3425];
	_this setVectorDirAndUp [[0.971236,-0.220759,-0.0892498],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item49 = objNull;
if (_layer9 && _layer229) then {
	_item49 = createVehicle ["Land_Shoot_House_Wall_F",[17111.1,13722.1,0],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [17111.1,13722.1,63.9634];
	_this setVectorDirAndUp [[0.226361,0.972295,0.0583447],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item50 = objNull;
if (_layer9 && _layer229) then {
	_item50 = createVehicle ["Land_Shoot_House_Wall_F",[17113.1,13721.6,0],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [17113.1,13721.6,63.7837];
	_this setVectorDirAndUp [[0.226361,0.972295,0.0583447],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item51 = objNull;
if (_layer9 && _layer229) then {
	_item51 = createVehicle ["Land_Shoot_House_Wall_F",[17113.5,13723.5,0],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [17113.5,13723.5,63.9006];
	_this setVectorDirAndUp [[0.226361,0.972295,0.0583447],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item52 = objNull;
if (_layer9 && _layer229) then {
	_item52 = createVehicle ["Land_Shoot_House_Wall_F",[17103.6,13720.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [17103.6,13720.7,64.6139];
	_this setVectorDirAndUp [[0.96703,-0.232442,-0.104035],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layer9 && _layer229) then {
	_item53 = createVehicle ["Land_Shoot_House_Wall_F",[17109.2,13735.8,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [17109.2,13735.8,64.4448];
	_this setVectorDirAndUp [[0.973742,-0.226245,0.0253034],[-0.0179697,0.0344158,0.999246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item54 = objNull;
if (_layer9 && _layer229) then {
	_item54 = createVehicle ["Land_Shoot_House_Wall_F",[17108.3,13731.9,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [17108.3,13731.9,64.5626];
	_this setVectorDirAndUp [[0.973742,-0.226245,0.0253034],[-0.0179697,0.0344158,0.999246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item55 = objNull;
if (_layer9 && _layer229) then {
	_item55 = createVehicle ["Land_Shoot_House_Wall_F",[17110.5,13728.3,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [17110.5,13728.3,64.4906];
	_this setVectorDirAndUp [[0.226361,0.972295,0.0583447],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item56 = objNull;
if (_layer9 && _layer229) then {
	_item56 = createVehicle ["Land_Shoot_House_Wall_F",[17108.6,13728.8,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [17108.6,13728.8,64.554];
	_this setVectorDirAndUp [[0.226975,0.970867,0.0768059],[-0.00768165,-0.0770771,0.996996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item57 = objNull;
if (_layer9 && _layer229) then {
	_item57 = createVehicle ["Land_Shoot_House_Wall_F",[17107.8,13730,0],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [17107.8,13730,64.6411];
	_this setVectorDirAndUp [[0.97387,-0.226883,-0.0100367],[-0.00768165,-0.0770771,0.996996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item58 = objNull;
if (_layer9 && _layer229) then {
	_item58 = createVehicle ["Land_Shoot_House_Wall_F",[17104.5,13724.6,0],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [17104.5,13724.6,64.3106];
	_this setVectorDirAndUp [[-0.96703,0.232441,0.104035],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item59 = objNull;
if (_layer9 && _layer229) then {
	_item59 = createVehicle ["Land_Shoot_House_Wall_F",[17105,13726.5,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [17105,13726.5,64.3534];
	_this setVectorDirAndUp [[-0.97387,0.226883,0.0100367],[-0.00768165,-0.0770771,0.996996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item60 = objNull;
if (_layer9 && _layer229) then {
	_item60 = createVehicle ["Land_Shoot_House_Wall_F",[17104.2,13727.7,0],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [17104.2,13727.7,64.4405];
	_this setVectorDirAndUp [[-0.226976,-0.970867,-0.0768059],[-0.00768165,-0.0770771,0.996996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item61 = objNull;
if (_layer9 && _layer229) then {
	_item61 = createVehicle ["Land_Shoot_House_Wall_F",[17105.9,13730.4,0],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [17105.9,13730.4,64.6089];
	_this setVectorDirAndUp [[-0.97387,0.22642,-0.0176217],[-0.0076894,0.0446739,0.998972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item62 = objNull;
if (_layer9 && _layer229) then {
	_item62 = createVehicle ["Land_Shoot_House_Wall_F",[17105.2,13731.6,0],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [17105.2,13731.6,64.5496];
	_this setVectorDirAndUp [[-0.226976,-0.973004,0.0417656],[-0.0076894,0.0446739,0.998972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item63 = objNull;
if (_layer9 && _layer229) then {
	_item63 = createVehicle ["Land_Shoot_House_Wall_F",[17103.2,13732.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [17103.2,13732.1,64.5143];
	_this setVectorDirAndUp [[-0.226976,-0.973004,0.0417656],[-0.0076894,0.0446739,0.998972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item64 = objNull;
if (_layer9 && _layer229) then {
	_item64 = createVehicle ["Land_Shoot_House_Wall_F",[17104.7,13729.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [17104.7,13729.7,64.594];
	_this setVectorDirAndUp [[-0.226976,-0.970867,-0.0768059],[-0.00768165,-0.0770771,0.996996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item65 = objNull;
if (_layer9 && _layer229) then {
	_item65 = createVehicle ["Land_Shoot_House_Wall_F",[17107.4,13728,0],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [17107.4,13728,64.4873];
	_this setVectorDirAndUp [[-0.97387,0.226883,0.0100367],[-0.00768165,-0.0770771,0.996996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item66 = objNull;
if (_layer9 && _layer229) then {
	_item66 = createVehicle ["Land_Shoot_House_Wall_F",[17106.5,13724.1,0],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [17106.5,13724.1,64.179];
	_this setVectorDirAndUp [[-0.97387,0.226883,0.0100367],[-0.00768165,-0.0770771,0.996996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item67 = objNull;
if (_layer9 && _layer229) then {
	_item67 = createVehicle ["Land_Shoot_House_Wall_F",[17117.9,13720.4,0],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [17117.9,13720.4,63.3324];
	_this setVectorDirAndUp [[-0.226362,-0.972294,-0.0583446],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer9 && _layer229) then {
	_item68 = createVehicle ["Land_Shoot_House_Wall_F",[17119.9,13733.3,0],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [17119.9,13733.3,64.4145];
	_this setVectorDirAndUp [[0.972481,-0.229925,0.0376321],[-0.0539514,-0.0651056,0.996419]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer9 && _layer229) then {
	_item69 = createVehicle ["Land_Shoot_House_Wall_F",[17128.3,13725.2,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [17128.3,13725.2,63.3225];
	_this setVectorDirAndUp [[0.97348,-0.221239,-0.0582298],[0.0293464,-0.131665,0.99086]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layer9 && _layer229) then {
	_item70 = createVehicle ["Land_Shoot_House_Wall_F",[17121.1,13734.1,0],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [17121.1,13734.1,64.4354];
	_this setVectorDirAndUp [[-0.226885,-0.972261,-0.0568519],[0.0293464,-0.0651725,0.997442]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item71 = objNull;
if (_layer9 && _layer229) then {
	_item71 = createVehicle ["Land_Shoot_House_Wall_F",[17121.8,13719.5,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [17121.8,13719.5,62.9682];
	_this setVectorDirAndUp [[-0.22662,-0.964174,-0.137886],[0.0564892,-0.154342,0.986401]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer9 && _layer229) then {
	_item72 = createVehicle ["Land_Shoot_House_Wall_F",[17119,13729.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [17119,13729.4,64.1872];
	_this setVectorDirAndUp [[0.972881,-0.221048,-0.0681138],[0.045703,-0.104965,0.993425]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer9 && _layer229) then {
	_item73 = createVehicle ["Land_Shoot_House_Wall_F",[17117.2,13721.6,0],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [17117.2,13721.6,63.4804];
	_this setVectorDirAndUp [[0.971236,-0.220759,-0.0892498],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer9 && _layer229) then {
	_item74 = createVehicle ["Land_Shoot_House_Wall_F",[17125,13733.2,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [17125,13733.2,64.2618];
	_this setVectorDirAndUp [[-0.226885,-0.972261,-0.0568519],[0.0293464,-0.0651725,0.997442]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer9 && _layer229) then {
	_item75 = createVehicle ["Land_Shoot_House_Wall_F",[17127,13732.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [17127,13732.7,64.1749];
	_this setVectorDirAndUp [[-0.226885,-0.972261,-0.0568519],[0.0293464,-0.0651725,0.997442]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer9 && _layer229) then {
	_item76 = createVehicle ["Land_Shoot_House_Wall_F",[17128.9,13732.3,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [17128.9,13732.3,63.9731];
	_this setVectorDirAndUp [[-0.225141,-0.97239,0.0613942],[0.127111,0.0331598,0.991334]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer9 && _layer229) then {
	_item77 = createVehicle ["Land_Shoot_House_Wall_F",[17129.7,13731.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [17129.7,13731.1,63.9178];
	_this setVectorDirAndUp [[0.965999,-0.230993,-0.116136],[0.127111,0.0331598,0.991334]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item78 = objNull;
if (_layer9 && _layer229) then {
	_item78 = createVehicle ["Land_Shoot_House_Wall_F",[17129.2,13729.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [17129.2,13729.1,63.8135];
	_this setVectorDirAndUp [[0.97348,-0.221239,-0.0582298],[0.0293464,-0.131665,0.99086]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layer9 && _layer229) then {
	_item79 = createVehicle ["Land_Shoot_House_Wall_F",[17128.7,13727.2,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [17128.7,13727.2,63.5678];
	_this setVectorDirAndUp [[0.97348,-0.221239,-0.0582298],[0.0293464,-0.131665,0.99086]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layer9 && _layer229) then {
	_item80 = createVehicle ["Land_Shoot_House_Wall_F",[17125.7,13718.6,0],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [17125.7,13718.6,62.6057];
	_this setVectorDirAndUp [[-0.22662,-0.964174,-0.137886],[0.0564892,-0.154342,0.986401]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item81 = objNull;
if (_layer9 && _layer229) then {
	_item81 = createVehicle ["Land_Shoot_House_Wall_F",[17127.8,13723.3,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [17127.8,13723.3,63.0769];
	_this setVectorDirAndUp [[0.97348,-0.221239,-0.0582298],[0.0293464,-0.131665,0.99086]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer9 && _layer229) then {
	_item82 = createVehicle ["Land_Shoot_House_Wall_F",[17118.1,13725.5,0],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [17118.1,13725.5,63.817];
	_this setVectorDirAndUp [[0.972881,-0.221048,-0.0681138],[0.045703,-0.104965,0.993425]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer9 && _layer229) then {
	_item83 = createVehicle ["Land_Shoot_House_Wall_F",[17116.8,13715.6,0],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [17116.8,13715.6,62.6452];
	_this setVectorDirAndUp [[0.971236,-0.212096,-0.108236],[0.0738961,-0.163637,0.983749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer9 && _layer229) then {
	_item84 = createVehicle ["Land_Shoot_House_Wall_F",[17117.3,13717.5,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [17117.3,13717.5,62.9355];
	_this setVectorDirAndUp [[0.971236,-0.212096,-0.108236],[0.0738961,-0.163637,0.983749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item85 = objNull;
if (_layer9 && _layer229) then {
	_item85 = createVehicle ["Land_Shoot_House_Wall_F",[17117.7,13719.5,0],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [17117.7,13719.5,63.2255];
	_this setVectorDirAndUp [[0.971236,-0.212096,-0.108236],[0.0738961,-0.163637,0.983749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layer9 && _layer229) then {
	_item86 = createVehicle ["Land_Shoot_House_Wall_F",[17120.6,13718.8,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [17120.6,13718.8,62.9134];
	_this setVectorDirAndUp [[0.972838,-0.216449,-0.0820702],[0.0466595,-0.163907,0.985372]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item87 = objNull;
if (_layer9 && _layer229) then {
	_item87 = createVehicle ["Land_Shoot_House_Wall_F",[17120.2,13716.8,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [17120.2,13716.8,62.6106];
	_this setVectorDirAndUp [[0.972838,-0.216449,-0.0820702],[0.0466595,-0.163907,0.985372]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item88 = objNull;
if (_layer9 && _layer229) then {
	_item88 = createVehicle ["Land_Shoot_House_Wall_F",[17119.7,13714.9,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [17119.7,13714.9,62.315];
	_this setVectorDirAndUp [[0.971236,-0.212096,-0.108236],[0.0738961,-0.163637,0.983749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item89 = objNull;
if (_layer9 && _layer229) then {
	_item89 = createVehicle ["Land_Shoot_House_Wall_F",[17112.9,13716.5,0],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [17112.9,13716.5,63.2197];
	_this setVectorDirAndUp [[-0.9351,0.240445,0.260333],[0.279445,0.0485224,0.958935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layer9 && _layer229) then {
	_item90 = createVehicle ["Land_Shoot_House_Wall_F",[17113.4,13718.4,0],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [17113.4,13718.4,63.3753];
	_this setVectorDirAndUp [[-0.971236,0.212096,0.108236],[0.0738961,-0.163637,0.983749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layer9 && _layer229) then {
	_item91 = createVehicle ["Land_Shoot_House_Wall_F",[17116.9,13724.8,0],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [17116.9,13724.8,63.7931];
	_this setVectorDirAndUp [[-0.226745,-0.969598,-0.092016],[0.045703,-0.104965,0.993425]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item92 = objNull;
if (_layer9 && _layer229) then {
	_item92 = createVehicle ["Land_Shoot_House_Wall_F",[17114.9,13725.2,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [17114.9,13725.2,63.9302];
	_this setVectorDirAndUp [[-0.226745,-0.969598,-0.092016],[0.045703,-0.104965,0.993425]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item93 = objNull;
if (_layer9 && _layer229) then {
	_item93 = createVehicle ["Land_Shoot_House_Wall_F",[17123.1,13733.6,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [17123.1,13733.6,64.3486];
	_this setVectorDirAndUp [[-0.226885,-0.972261,-0.0568519],[0.0293464,-0.0651725,0.997442]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item94 = objNull;
if (_layer9 && _layer229) then {
	_item94 = createVehicle ["Land_Shoot_House_Wall_F",[17114.5,13723.3,0],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [17114.5,13723.3,63.8078];
	_this setVectorDirAndUp [[-0.226362,-0.972294,-0.0583446],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer9 && _layer229) then {
	_item95 = createVehicle ["Land_Shoot_House_Wall_F",[17118.7,13732.6,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [17118.7,13732.6,64.3008];
	_this setVectorDirAndUp [[-0.226652,-0.971028,-0.0757188],[-0.0539514,-0.0651056,0.996419]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer9 && _layer229) then {
	_item96 = createVehicle ["Land_Shoot_House_Wall_F",[17118.3,13730.6,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [17118.3,13730.6,64.2601];
	_this setVectorDirAndUp [[-0.226745,-0.972965,0.0438868],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layer9 && _layer229) then {
	_item97 = createVehicle ["Land_Shoot_House_Wall_F",[17116.8,13733,0],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [17116.8,13733,64.2458];
	_this setVectorDirAndUp [[-0.226745,-0.972965,0.0438868],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item98 = objNull;
if (_layer9 && _layer229) then {
	_item98 = createVehicle ["Land_Shoot_House_Wall_F",[17126.9,13719.4,0],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [17126.9,13719.4,62.6547];
	_this setVectorDirAndUp [[0.972344,-0.215748,-0.0894423],[0.0564892,-0.154342,0.986401]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item99 = objNull;
if (_layer9 && _layer229) then {
	_item99 = createVehicle ["Land_Shoot_House_Wall_F",[17116.1,13730.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [17116.1,13730.1,64.3776];
	_this setVectorDirAndUp [[-0.972881,0.228379,0.0366702],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item100 = objNull;
if (_layer9 && _layer229) then {
	_item100 = createVehicle ["Land_Shoot_House_Wall_F",[17113.9,13724.5,0],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [17113.9,13724.5,63.9489];
	_this setVectorDirAndUp [[-0.971236,0.220759,0.0892498],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item101 = objNull;
if (_layer9 && _layer229) then {
	_item101 = createVehicle ["Land_Shoot_House_Wall_F",[17116.3,13731.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [17116.3,13731.1,64.3336];
	_this setVectorDirAndUp [[-0.226745,-0.972965,0.0438868],[0.0457016,0.0343819,0.998363]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layer9 && _layer229) then {
	_item102 = createVehicle ["Land_Shoot_House_Wall_F",[17123.8,13719.1,0],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [17123.8,13719.1,62.7869];
	_this setVectorDirAndUp [[-0.22662,-0.964174,-0.137886],[0.0564892,-0.154342,0.986401]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layer9 && _layer229) then {
	_item103 = createVehicle ["Land_Shoot_House_Wall_F",[17122.1,13720.5,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [17122.1,13720.5,63.0823];
	_this setVectorDirAndUp [[0.972344,-0.219945,-0.0785604],[0.0564892,-0.104907,0.992876]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layer9 && _layer229) then {
	_item104 = createVehicle ["Land_Shoot_House_Wall_F",[17122.5,13722.4,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [17122.5,13722.4,63.2621];
	_this setVectorDirAndUp [[0.972344,-0.219945,-0.0785604],[0.0564892,-0.104907,0.992876]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item105 = objNull;
if (_layer9 && _layer229) then {
	_item105 = createVehicle ["Land_Shoot_House_Wall_F",[17123,13724.4,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [17123,13724.4,63.4425];
	_this setVectorDirAndUp [[0.972344,-0.219945,-0.0785604],[0.0564892,-0.104907,0.992876]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item106 = objNull;
if (_layer9 && _layer229) then {
	_item106 = createVehicle ["Land_Shoot_House_Wall_F",[17124.2,13725.1,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [17124.2,13725.1,63.4533];
	_this setVectorDirAndUp [[-0.22662,-0.969855,-0.0895813],[0.0564892,-0.104907,0.992876]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layer9 && _layer229) then {
	_item107 = createVehicle ["Land_Shoot_House_Wall_F",[17123.2,13730.5,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [17123.2,13730.5,64.1389];
	_this setVectorDirAndUp [[-0.97348,0.224635,0.0433189],[0.0293464,-0.0651725,0.997442]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item108 = objNull;
if (_layer9 && _layer229) then {
	_item108 = createVehicle ["Land_Shoot_House_Wall_F",[17124,13729.3,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [17124,13729.3,63.9902];
	_this setVectorDirAndUp [[0.226884,0.966291,0.121681],[0.0293464,-0.131665,0.99086]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item109 = objNull;
if (_layer9 && _layer229) then {
	_item109 = createVehicle ["Land_Shoot_House_Wall_F",[17125.9,13728.8,0],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [17125.9,13728.8,63.8725];
	_this setVectorDirAndUp [[0.226884,0.966291,0.121681],[0.0293464,-0.131665,0.99086]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer9 && _layer229) then {
	_item110 = createVehicle ["Land_Shoot_House_Wall_F",[17126.7,13727.6,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [17126.7,13727.6,63.691];
	_this setVectorDirAndUp [[-0.97348,0.221239,0.0582298],[0.0293464,-0.131665,0.99086]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer9 && _layer229) then {
	_item111 = createVehicle ["Land_Shoot_House_Wall_F",[17127.4,13726.4,0],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [17127.4,13726.4,63.5095];
	_this setVectorDirAndUp [[0.226884,0.966291,0.121681],[0.0293464,-0.131665,0.99086]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item112 = objNull;
if (_layer9 && _layer229) then {
	_item112 = createVehicle ["Land_Shoot_House_Wall_F",[17116.4,13722.8,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [17116.4,13722.8,63.6286];
	_this setVectorDirAndUp [[-0.226362,-0.972294,-0.0583446],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item113 = objNull;
if (_layer9 && _layer229) then {
	_item113 = createVehicle ["Land_Shoot_House_Wall_F",[17104.2,13701.1,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [17104.2,13701.1,64.4352];
	_this setVectorDirAndUp [[-0.224621,-0.97432,-0.0156668],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item114 = objNull;
if (_layer9 && _layer229) then {
	_item114 = createVehicle ["Land_Shoot_House_Wall_F",[17106.4,13710.8,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [17106.4,13710.8,64.7492];
	_this setVectorDirAndUp [[-0.225635,-0.972093,0.0642189],[0.10879,0.0403646,0.993245]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layer9 && _layer229) then {
	_item115 = createVehicle ["Land_Shoot_House_Wall_F",[17109.4,13706,0],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [17109.4,13706,64.1114];
	_this setVectorDirAndUp [[-0.225635,-0.972457,-0.0584482],[0.10879,-0.0847715,0.990444]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layer9 && _layer229) then {
	_item116 = createVehicle ["Land_Shoot_House_Wall_F",[17109.8,13716.2,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [17109.8,13716.2,64.1089];
	_this setVectorDirAndUp [[-0.225381,-0.971295,0.0760928],[0.118558,0.0501793,0.991678]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layer9 && _layer229) then {
	_item117 = createVehicle ["Land_Shoot_House_Wall_F",[17106.1,13700.6,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [17106.1,13700.6,64.1299];
	_this setVectorDirAndUp [[-0.224621,-0.97432,-0.0156668],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item118 = objNull;
if (_layer9 && _layer229) then {
	_item118 = createVehicle ["Land_Shoot_House_Wall_F",[17100,13718.5,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [17100,13718.5,65.1414];
	_this setVectorDirAndUp [[-0.225635,-0.972093,0.0642189],[0.10879,0.0403646,0.993245]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item119 = objNull;
if (_layer9 && _layer229) then {
	_item119 = createVehicle ["Land_Shoot_House_Wall_F",[17102,13718,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [17102,13718,64.9467];
	_this setVectorDirAndUp [[-0.225635,-0.972093,0.0642189],[0.10879,0.0403646,0.993245]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer9 && _layer229) then {
	_item120 = createVehicle ["Land_Shoot_House_Wall_F",[17108.1,13700.1,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [17108.1,13700.1,63.8246];
	_this setVectorDirAndUp [[-0.224621,-0.97432,-0.0156668],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer9 && _layer229) then {
	_item121 = createVehicle ["Land_Shoot_House_Wall_F",[17108.1,13700.1,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [17108.1,13700.1,63.8246];
	_this setVectorDirAndUp [[-0.224621,-0.97432,-0.0156668],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer9 && _layer229) then {
	_item122 = createVehicle ["Land_Shoot_House_Wall_F",[17098.4,13715.8,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [17098.4,13715.8,65.3279];
	_this setVectorDirAndUp [[0.972884,-0.2286,-0.0352071],[0.0456521,0.0405633,0.998133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer9 && _layer229) then {
	_item123 = createVehicle ["Land_Shoot_House_Wall_F",[17108.4,13710.3,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [17108.4,13710.3,64.5544];
	_this setVectorDirAndUp [[-0.225635,-0.972093,0.0642189],[0.10879,0.0403646,0.993245]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer9 && _layer229) then {
	_item124 = createVehicle ["Land_Shoot_House_Wall_F",[17098.3,13702.4,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [17098.3,13702.4,65.1285];
	_this setVectorDirAndUp [[-0.226969,-0.972824,-0.0458114],[0.0109073,-0.0495752,0.998711]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer9 && _layer229) then {
	_item125 = createVehicle ["Land_Shoot_House_Wall_F",[17097.9,13713.8,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [17097.9,13713.8,65.4277];
	_this setVectorDirAndUp [[0.972884,-0.2286,-0.0352071],[0.0456521,0.0405633,0.998133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer9 && _layer229) then {
	_item126 = createVehicle ["Land_Shoot_House_Wall_F",[17096.5,13708,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [17096.5,13708,65.4235];
	_this setVectorDirAndUp [[0.973841,-0.226176,-0.0218628],[0.0109073,-0.0495752,0.998711]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer9 && _layer229) then {
	_item127 = createVehicle ["Land_Shoot_House_Wall_F",[17096.1,13706,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [17096.1,13706,65.3318];
	_this setVectorDirAndUp [[0.973841,-0.226176,-0.0218628],[0.0109073,-0.0495752,0.998711]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer9 && _layer229) then {
	_item128 = createVehicle ["Land_Shoot_House_Wall_F",[17107.8,13716.6,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [17107.8,13716.6,64.3181];
	_this setVectorDirAndUp [[-0.225381,-0.971295,0.0760928],[0.118558,0.0501793,0.991678]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer9 && _layer229) then {
	_item129 = createVehicle ["Land_Shoot_House_Wall_F",[17106.8,13716.9,0],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [17106.8,13716.9,64.4232];
	_this setVectorDirAndUp [[-0.225381,-0.971295,0.0760928],[0.118558,0.0501793,0.991678]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer9 && _layer229) then {
	_item130 = createVehicle ["Land_Shoot_House_Wall_F",[17098.8,13717.7,0],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [17098.8,13717.7,65.228];
	_this setVectorDirAndUp [[0.972884,-0.2286,-0.0352071],[0.0456521,0.0405633,0.998133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer9 && _layer229) then {
	_item131 = createVehicle ["Land_Shoot_House_Wall_F",[17105.5,13706.9,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [17105.5,13706.9,64.6149];
	_this setVectorDirAndUp [[-0.225635,-0.972457,-0.0584482],[0.10879,-0.0847715,0.990444]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer9 && _layer229) then {
	_item132 = createVehicle ["Land_Shoot_House_Wall_F",[17106.1,13700.6,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [17106.1,13700.6,64.1299];
	_this setVectorDirAndUp [[-0.224621,-0.97432,-0.0156668],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer9 && _layer229) then {
	_item133 = createVehicle ["Land_Shoot_House_Wall_F",[17096.4,13702.9,0],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [17096.4,13702.9,65.2353];
	_this setVectorDirAndUp [[-0.225957,-0.972559,0.0554264],[0.0949389,0.0346411,0.99488]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer9 && _layer229) then {
	_item134 = createVehicle ["Land_Shoot_House_Wall_F",[17104.5,13711.2,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [17104.5,13711.2,64.9441];
	_this setVectorDirAndUp [[-0.225635,-0.972093,0.0642189],[0.10879,0.0403646,0.993245]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer9 && _layer229) then {
	_item135 = createVehicle ["Land_Shoot_House_Wall_F",[17102.6,13703.2,0],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [17102.6,13703.2,64.7682];
	_this setVectorDirAndUp [[-0.224621,-0.97432,-0.0156668],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer9 && _layer229) then {
	_item136 = createVehicle ["Land_Shoot_House_Wall_F",[17103.6,13707.4,0],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [17103.6,13707.4,64.867];
	_this setVectorDirAndUp [[-0.225635,-0.972457,-0.0584482],[0.10879,-0.0847715,0.990444]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer9 && _layer229) then {
	_item137 = createVehicle ["Land_Shoot_House_Wall_F",[17099.7,13708.3,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [17099.7,13708.3,65.4038];
	_this setVectorDirAndUp [[-0.226969,-0.972824,-0.0458114],[0.0109073,-0.0495752,0.998711]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer9 && _layer229) then {
	_item138 = createVehicle ["Land_Shoot_House_Wall_F",[17098.7,13712.6,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [17098.7,13712.6,65.4425];
	_this setVectorDirAndUp [[-0.226746,-0.972675,0.0498995],[0.0456521,0.0405633,0.998133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer9 && _layer229) then {
	_item139 = createVehicle ["Land_Shoot_House_Wall_F",[17097.7,13708.7,0],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [17097.7,13708.7,65.4474];
	_this setVectorDirAndUp [[-0.226969,-0.972824,-0.0458114],[0.0109073,-0.0495752,0.998711]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer9 && _layer229) then {
	_item140 = createVehicle ["Land_Shoot_House_Wall_F",[17107.5,13706.4,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [17107.5,13706.4,64.3631];
	_this setVectorDirAndUp [[-0.225635,-0.972457,-0.0584482],[0.10879,-0.0847715,0.990444]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer9 && _layer229) then {
	_item141 = createVehicle ["Land_Shoot_House_Wall_F",[17107.6,13715.7,0],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [17107.6,13715.7,64.395];
	_this setVectorDirAndUp [[0.96703,-0.232527,-0.103845],[0.118558,0.0501793,0.991678]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer9 && _layer229) then {
	_item142 = createVehicle ["Land_Shoot_House_Wall_F",[17107.1,13713.7,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [17107.1,13713.7,64.5478];
	_this setVectorDirAndUp [[0.96703,-0.232527,-0.103845],[0.118558,0.0501793,0.991678]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer9 && _layer229) then {
	_item143 = createVehicle ["Land_Shoot_House_Wall_F",[17106.7,13711.8,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [17106.7,13711.8,64.6849];
	_this setVectorDirAndUp [[0.968119,-0.231097,-0.0966468],[0.10879,0.0403646,0.993245]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer9 && _layer229) then {
	_item144 = createVehicle ["Land_Shoot_House_Wall_F",[17108.2,13705.2,0],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [17108.2,13705.2,64.1788];
	_this setVectorDirAndUp [[0.968119,-0.21712,-0.124921],[0.10879,-0.0847715,0.990444]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer9 && _layer229) then {
	_item145 = createVehicle ["Land_Shoot_House_Wall_F",[17112.2,13704.4,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [17112.2,13704.4,63.3699];
	_this setVectorDirAndUp [[0.944685,-0.205966,-0.255241],[0.243092,-0.0827196,0.96647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer9 && _layer229) then {
	_item146 = createVehicle ["Land_Shoot_House_Wall_F",[17107.3,13701.3,0],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [17107.3,13701.3,63.9926];
	_this setVectorDirAndUp [[0.963766,-0.219756,-0.151203],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer9 && _layer229) then {
	_item147 = createVehicle ["Land_Shoot_House_Wall_F",[17095.6,13704.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [17095.6,13704.1,65.2648];
	_this setVectorDirAndUp [[0.9695,-0.230062,-0.0845063],[0.0949389,0.0346411,0.99488]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer9 && _layer229) then {
	_item148 = createVehicle ["Land_Shoot_House_Wall_F",[17102.4,13706.6,0],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [17102.4,13706.6,64.9708];
	_this setVectorDirAndUp [[0.963766,-0.219756,-0.151203],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer9 && _layer229) then {
	_item149 = createVehicle ["Land_Shoot_House_Wall_F",[17109.8,13716.2,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [17109.8,13716.2,64.1089];
	_this setVectorDirAndUp [[-0.225381,-0.971295,0.0760928],[0.118558,0.0501793,0.991678]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer9 && _layer229) then {
	_item150 = createVehicle ["Land_Shoot_House_Wall_F",[17097,13709.9,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [17097,13709.9,65.5152];
	_this setVectorDirAndUp [[0.973841,-0.226176,-0.0218628],[0.0109073,-0.0495752,0.998711]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer9 && _layer229) then {
	_item151 = createVehicle ["Land_Shoot_House_Wall_F",[17100.6,13712.2,0],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [17100.6,13712.2,65.3333];
	_this setVectorDirAndUp [[-0.225635,-0.972093,0.0642189],[0.10879,0.0403646,0.993245]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer9 && _layer229) then {
	_item152 = createVehicle ["Land_Shoot_House_Wall_F",[17112,13699.2,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [17112,13699.2,62.9063];
	_this setVectorDirAndUp [[-0.220174,-0.968287,-0.118083],[0.243092,-0.1717,0.954686]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer9 && _layer229) then {
	_item153 = createVehicle ["Land_Shoot_House_Wall_F",[17123.6,13705.8,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [17123.6,13705.8,60.9387];
	_this setVectorDirAndUp [[0.969282,-0.222477,-0.104862],[0.0972565,-0.0449004,0.994246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer9 && _layer229) then {
	_item154 = createVehicle ["Land_Shoot_House_Wall_F",[17113.7,13715.3,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [17113.7,13715.3,63.0631];
	_this setVectorDirAndUp [[-0.21794,-0.969449,0.112565],[0.279445,0.0485224,0.958935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer9 && _layer229) then {
	_item155 = createVehicle ["Land_Shoot_House_Wall_F",[17115.8,13698.3,0],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [17115.8,13698.3,61.7727];
	_this setVectorDirAndUp [[-0.220174,-0.968287,-0.118083],[0.243092,-0.1717,0.954686]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layer9 && _layer229) then {
	_item156 = createVehicle ["Land_Shoot_House_Wall_F",[17120.5,13713.7,0],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [17120.5,13713.7,62.0727];
	_this setVectorDirAndUp [[-0.226735,-0.962437,-0.149355],[0.0466595,-0.163907,0.985372]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer9 && _layer229) then {
	_item157 = createVehicle ["Land_Shoot_House_Wall_F",[17112.3,13709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [17112.3,13709.4,63.7006];
	_this setVectorDirAndUp [[-0.21794,-0.975769,0.0194278],[0.279445,-0.043317,0.959184]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer9 && _layer229) then {
	_item158 = createVehicle ["Land_Shoot_House_Wall_F",[17114.4,13700.6,0],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [17114.4,13700.6,62.4922];
	_this setVectorDirAndUp [[-0.220174,-0.975057,-0.0280752],[0.243092,-0.0827196,0.96647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item159 = objNull;
if (_layer9 && _layer229) then {
	_item159 = createVehicle ["Land_Shoot_House_Wall_F",[17124.1,13707.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [17124.1,13707.7,61.0723];
	_this setVectorDirAndUp [[0.972838,-0.221589,-0.0669614],[0.0466595,-0.0956235,0.994323]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item160 = objNull;
if (_layer9 && _layer229) then {
	_item160 = createVehicle ["Land_Shoot_House_Wall_F",[17120.6,13697.2,0],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [17120.6,13697.2,60.5015];
	_this setVectorDirAndUp [[-0.226691,-0.960556,-0.161069],[0.0506754,-0.176783,0.982944]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layer9 && _layer229) then {
	_item161 = createVehicle ["Land_Shoot_House_Wall_F",[17122.7,13701.9,0],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [17122.7,13701.9,60.8515];
	_this setVectorDirAndUp [[0.969282,-0.222477,-0.104862],[0.0972565,-0.0449004,0.994246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item162 = objNull;
if (_layer9 && _layer229) then {
	_item162 = createVehicle ["Land_Shoot_House_Wall_F",[17122.2,13699.9,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [17122.2,13699.9,60.8009];
	_this setVectorDirAndUp [[0.969282,-0.212529,-0.123789],[0.0972565,-0.131088,0.986589]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer9 && _layer229) then {
	_item163 = createVehicle ["Land_Shoot_House_Wall_F",[17114.2,13709,0],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [17114.2,13709,63.112];
	_this setVectorDirAndUp [[-0.21794,-0.975769,0.0194278],[0.279445,-0.043317,0.959184]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer9 && _layer229) then {
	_item164 = createVehicle ["Land_Shoot_House_Wall_F",[17113.3,13705.1,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [17113.3,13705.1,63.1369];
	_this setVectorDirAndUp [[-0.220174,-0.975057,-0.0280752],[0.243092,-0.0827196,0.96647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer9 && _layer229) then {
	_item165 = createVehicle ["Land_Shoot_House_Wall_F",[17122.4,13713.2,0],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [17122.4,13713.2,61.9064];
	_this setVectorDirAndUp [[-0.226735,-0.962437,-0.149355],[0.0466595,-0.163907,0.985372]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer9 && _layer229) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[17118.2,13708.1,0],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [17118.2,13708.1,61.9225];
	_this setVectorDirAndUp [[-0.21794,-0.975769,0.0194278],[0.279445,-0.043317,0.959184]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer9 && _layer229) then {
	_item167 = createVehicle ["Land_Shoot_House_Wall_F",[17122.9,13707,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [17122.9,13707,61.066];
	_this setVectorDirAndUp [[-0.225906,-0.973903,-0.0218837],[0.0972565,-0.0449004,0.994246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer9 && _layer229) then {
	_item168 = createVehicle ["Land_Shoot_House_Wall_F",[17124.2,13712.8,0],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [17124.2,13712.8,61.752];
	_this setVectorDirAndUp [[-0.226735,-0.962437,-0.149355],[0.0466595,-0.163907,0.985372]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer9 && _layer229) then {
	_item169 = createVehicle ["Land_Shoot_House_Wall_F",[17121.9,13703.1,0],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [17121.9,13703.1,60.9788];
	_this setVectorDirAndUp [[-0.225906,-0.973903,-0.0218837],[0.0972565,-0.0449004,0.994246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer9 && _layer229) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[17115.3,13704.6,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [17115.3,13704.6,62.6095];
	_this setVectorDirAndUp [[-0.220174,-0.975057,-0.0280752],[0.243092,-0.0827196,0.96647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer9 && _layer229) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[17125,13711.6,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [17125,13711.6,61.5173];
	_this setVectorDirAndUp [[0.972838,-0.216449,-0.0820702],[0.0466595,-0.163907,0.985372]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer9 && _layer229) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[17114.4,13714.1,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [17114.4,13714.1,62.9068];
	_this setVectorDirAndUp [[0.9351,-0.240445,-0.260333],[0.279445,0.0485224,0.958935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer9 && _layer229) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[17113.5,13710.2,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [17113.5,13710.2,63.3678];
	_this setVectorDirAndUp [[0.9351,-0.240445,-0.260333],[0.279445,0.0485224,0.958935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer9 && _layer229) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[17114.1,13703.9,0],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [17114.1,13703.9,62.8473];
	_this setVectorDirAndUp [[0.944685,-0.205966,-0.255241],[0.243092,-0.0827196,0.96647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer9 && _layer229) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[17113.6,13701.9,0],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [17113.6,13701.9,62.794];
	_this setVectorDirAndUp [[0.944685,-0.205966,-0.255241],[0.243092,-0.0827196,0.96647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer9 && _layer229) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[17115.2,13699.5,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [17115.2,13699.5,62.1385];
	_this setVectorDirAndUp [[0.944685,-0.181491,-0.273187],[0.243092,-0.1717,0.954686]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer9 && _layer229) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[17121.8,13698,0],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [17121.8,13698,60.5748];
	_this setVectorDirAndUp [[0.972648,-0.214661,-0.0887515],[0.0506754,-0.176783,0.982944]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer9 && _layer229) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[17113.7,13715.3,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [17113.7,13715.3,63.0631];
	_this setVectorDirAndUp [[-0.21794,-0.969449,0.112565],[0.279445,0.0485224,0.958935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer9 && _layer229) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[17110,13699.7,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [17110,13699.7,63.4487];
	_this setVectorDirAndUp [[0.224018,0.950316,0.216139],[0.161069,-0.254827,0.953478]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer9 && _layer229) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[17120,13703.5,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [17120,13703.5,61.1988];
	_this setVectorDirAndUp [[-0.21794,-0.975769,0.0194278],[0.279445,-0.043317,0.959184]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer9 && _layer229) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[17117.8,13697.9,0],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [17117.8,13697.9,61.2013];
	_this setVectorDirAndUp [[0.220173,0.968287,0.118084],[0.243092,-0.1717,0.954686]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer9 && _layer229) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[17116.2,13708.5,0],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [17116.2,13708.5,62.5257];
	_this setVectorDirAndUp [[-0.21794,-0.975769,0.0194278],[0.279445,-0.043317,0.959184]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer9 && _layer229) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[17113.9,13712.1,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [17113.9,13712.1,63.1371];
	_this setVectorDirAndUp [[0.9351,-0.240445,-0.260333],[0.279445,0.0485224,0.958935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer9 && _layer229) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[17127.4,13721.3,0],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [17127.4,13721.3,62.8673];
	_this setVectorDirAndUp [[0.972344,-0.219945,-0.0785604],[0.0564892,-0.104907,0.992876]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer9 && _layer229) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[17102.9,13735.2,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [17102.9,13735.2,64.371];
	_this setVectorDirAndUp [[0.97387,-0.226421,0.0176217],[-0.0076894,0.0446739,0.998972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer9 && _layer229) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[17118.6,13727.5,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [17118.6,13727.5,64.0027];
	_this setVectorDirAndUp [[0.972881,-0.221048,-0.0681138],[0.045703,-0.104965,0.993425]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer9 && _layer229) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[17114.3,13722.3,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [17114.3,13722.3,63.7468];
	_this setVectorDirAndUp [[-0.971236,0.220759,0.0892498],[0.073897,-0.0768691,0.994299]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer9 && _layer229) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[17111,13703.8,0],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [17111,13703.8,63.6153];
	_this setVectorDirAndUp [[-0.220174,-0.975057,-0.0280752],[0.243092,-0.0827196,0.96647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer9 && _layer229) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[17123.2,13703.8,0],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [17123.2,13703.8,60.8945];
	_this setVectorDirAndUp [[0.969282,-0.222477,-0.104862],[0.0972565,-0.0449004,0.994246]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer9 && _layer229) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[17124.5,13709.7,0],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [17124.5,13709.7,61.2422];
	_this setVectorDirAndUp [[0.972838,-0.221589,-0.0669614],[0.0466595,-0.0956235,0.994323]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer9 && _layer229) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[17097.5,13711.8,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [17097.5,13711.8,65.5037];
	_this setVectorDirAndUp [[0.973841,-0.22704,-0.00929473],[0.0109073,0.00584882,0.999923]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer9 && _layer229) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[17100.3,13702,0],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [17100.3,13702,65.0488];
	_this setVectorDirAndUp [[-0.224621,-0.97432,-0.0156668],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer9 && _layer229) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[17113.2,13700,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [17113.2,13700,62.739];
	_this setVectorDirAndUp [[0.944685,-0.181491,-0.273187],[0.243092,-0.1717,0.954686]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer9 && _layer229) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[17101.4,13702.6,0],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [17101.4,13702.6,64.917];
	_this setVectorDirAndUp [[0.963766,-0.219756,-0.151203],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer9 && _layer229) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[17103.5,13702.1,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [17103.5,13702.1,64.5897];
	_this setVectorDirAndUp [[0.963766,-0.219756,-0.151203],[0.143877,-0.0490624,0.988379]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer9 && _layer229) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[17100.2,13723.6,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [17100.2,13723.6,64.8772];
	_this setVectorDirAndUp [[0.96703,-0.232442,-0.104035],[0.118558,0.049368,0.991719]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer9 && _layer229) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[17099.3,13719.7,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [17099.3,13719.7,65.1257];
	_this setVectorDirAndUp [[0.972884,-0.2286,-0.0352071],[0.0456521,0.0405633,0.998133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer9 && _layer229) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[17099.8,13721.6,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [17099.8,13721.6,65.0333];
	_this setVectorDirAndUp [[0.964567,-0.233388,-0.123047],[0.138103,0.0492422,0.989193]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer9 && _layer229) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[17119.2,13697.6,0],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [17119.2,13697.6,60.793];
	_this setVectorDirAndUp [[0.220173,0.968287,0.118084],[0.243092,-0.1717,0.954686]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer9 && _layer229) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[17126.4,13717.4,0],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [17126.4,13717.4,62.379];
	_this setVectorDirAndUp [[0.972344,-0.215748,-0.0894423],[0.0564892,-0.154342,0.986401]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer9 && _layer229) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[17125.9,13715.5,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [17125.9,13715.5,62.1];
	_this setVectorDirAndUp [[0.972344,-0.215748,-0.0894423],[0.0564892,-0.154342,0.986401]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer9 && _layer229) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[17125.5,13713.5,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [17125.5,13713.5,61.8114];
	_this setVectorDirAndUp [[0.972838,-0.216449,-0.0820702],[0.0466595,-0.163907,0.985372]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer9 && _layer229) then {
	_item203 = createVehicle ["VR_Area_01_circle_4_yellow_F",[17130.7,13713.5,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [17130.7,13713.5,59.8766];
	_this setVectorDirAndUp [[-0.973144,0.230198,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item207 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item207 = createVehicle ["Sign_Arrow_F",[17107.4,13718.1,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [17107.4,13718.1,62.9932];
	_this setVectorDirAndUp [[0.210685,0.97471,-0.0745086],[0.118558,0.0501793,0.991678]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item208 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item208 = createVehicle ["Sign_Arrow_F",[17099.4,13711.1,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [17099.4,13711.1,64.1662];
	_this setVectorDirAndUp [[0.971778,-0.233292,-0.0349659],[0.0456521,0.0405633,0.998133]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item209 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item209 = createVehicle ["Sign_Arrow_F",[17108.8,13701,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [17108.8,13701,62.4536];
	_this setVectorDirAndUp [[0.224832,0.974272,0.0156336],[0.143877,-0.0490624,0.988379]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item210 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item210 = createVehicle ["Sign_Arrow_F",[17121.2,13711.4,0],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [17121.2,13711.4,60.3581];
	_this setVectorDirAndUp [[-0.964256,0.250186,0.0872756],[0.0466595,-0.163907,0.985372]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item211 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item211 = createVehicle ["Sign_Arrow_F",[17119.9,13700.6,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [17119.9,13700.6,59.7967];
	_this setVectorDirAndUp [[-0.92421,0.25867,0.280938],[0.279445,-0.043317,0.959184]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item212 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item212 = createVehicle ["Sign_Arrow_F",[17117.6,13732,0],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [17117.6,13732,62.9418];
	_this setVectorDirAndUp [[0.984575,-0.170513,-0.0391983],[0.0457016,0.0343819,0.998363]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item213 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item213 = createVehicle ["Sign_Arrow_F",[17113.9,13730.7,0],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [17113.9,13730.7,63.1536];
	_this setVectorDirAndUp [[-0.976884,0.210459,0.0374705],[0.0457016,0.0343819,0.998363]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item214 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item214 = createVehicle ["Sign_Arrow_F",[17111.5,13723.3,0],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [17111.5,13723.3,62.7244];
	_this setVectorDirAndUp [[-0.977468,0.192095,0.087497],[0.073897,-0.0768691,0.994299]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item215 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item215 = createVehicle ["Sign_Arrow_F",[17115.8,13724.2,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [17115.8,13724.2,62.4808];
	_this setVectorDirAndUp [[0.971941,-0.217711,-0.0890665],[0.073897,-0.0768691,0.994299]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item216 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item216 = createVehicle ["Sign_Arrow_F",[17112.1,13717.7,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [17112.1,13717.7,62.0962];
	_this setVectorDirAndUp [[-0.216889,-0.969719,0.112272],[0.279445,0.0485224,0.958935]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item217 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item217 = createVehicle ["Sign_Arrow_F",[17103.2,13726,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [17103.2,13726,63.1007];
	_this setVectorDirAndUp [[0.222855,0.97196,-0.0750261],[0.118558,0.049368,0.991719]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item218 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item218 = createVehicle ["Sign_Arrow_F",[17113.3,13704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [17113.3,13704.2,61.766];
	_this setVectorDirAndUp [[0.220381,0.975011,0.0280191],[0.243092,-0.0827196,0.96647]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item219 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item219 = createVehicle ["Sign_Arrow_F",[17117.5,13728,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [17117.5,13728,62.7977];
	_this setVectorDirAndUp [[0.226959,0.969549,0.0920011],[0.045703,-0.104965,0.993425]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item220 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item220 = createVehicle ["Sign_Arrow_F",[17104.5,13731,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [17104.5,13731,63.2697];
	_this setVectorDirAndUp [[0.22719,0.972955,-0.0417617],[-0.0076894,0.0446739,0.998972]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item221 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item221 = createVehicle ["Sign_Arrow_F",[17099.9,13713.5,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [17099.9,13713.5,64.0458];
	_this setVectorDirAndUp [[-0.225653,-0.972931,0.0498599],[0.0456521,0.0405633,0.998133]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item222 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item222 = createVehicle ["Sign_Arrow_F",[17106,13713.5,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [17106,13713.5,63.3891];
	_this setVectorDirAndUp [[-0.224547,-0.972352,0.0641103],[0.10879,0.0403646,0.993245]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item223 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item223 = createVehicle ["Sign_Arrow_F",[17126.4,13730.3,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [17126.4,13730.3,62.7326];
	_this setVectorDirAndUp [[-0.225791,-0.972513,-0.0569005],[0.0293464,-0.0651725,0.997442]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item224 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item224 = createVehicle ["Sign_Arrow_F",[17097.5,13705.3,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [17097.5,13705.3,63.9804];
	_this setVectorDirAndUp [[0.212169,0.976143,0.0461378],[0.0109073,-0.0495752,0.998711]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item225 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item225 = createVehicle ["Sign_Arrow_F",[17110.6,13733.4,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [17110.6,13733.4,63.2159];
	_this setVectorDirAndUp [[0.226959,0.972915,-0.0438949],[0.0457016,0.0343819,0.998363]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item230 = objNull;
if (_layer229) then {
	_item230 = createVehicle ["Gunrack1",[17236.4,13657.8,0.145973],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [17236.4,13657.8,35.2346];
	_this setVectorDirAndUp [[-0.999945,0.0103463,-0.00174859],[-0.00176052,-0.00114471,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item231 = objNull;
if (_layer229) then {
	_item231 = createVehicle ["Gunrack1",[17236.5,13653.9,0.221096],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [17236.5,13653.9,35.2302];
	_this setVectorDirAndUp [[-0.0603126,0.998179,0.00103645],[-0.00176052,-0.00114471,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item232 = objNull;
if (_layer229) then {
	_item232 = createVehicle ["Gunrack1",[17239.9,13655,0.527546],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [17239.9,13655,35.2377];
	_this setVectorDirAndUp [[-0.999954,0.00943563,-0.00174964],[-0.00176052,-0.00114471,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item233 = objNull;
if (_layer229) then {
	_item233 = createVehicle ["Gunrack1",[17239.8,13659.8,0.435753],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [17239.8,13659.8,35.2429];
	_this setVectorDirAndUp [[-0.0367504,-0.999324,-0.00120864],[-0.00176052,-0.00114471,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item234 = objNull;
if (_layer229) then {
	_item234 = createVehicle ["Gunrack1",[17240.2,13657.4,0.490295],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [17240.2,13657.4,35.2409];
	_this setVectorDirAndUp [[0.999052,-0.0434931,0.00170907],[-0.00176052,-0.00114471,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item242 = objNull;
if (_layerRoot) then {
	_item242 = _item241 createUnit ["B_soldier_AR_F",[17278,13612.1,0.321999],[],0,"CAN_COLLIDE"];
	_item241 selectLeader _item242;
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [17278,13612.2,35.1358];
	_this setVectorDirAndUp [[0.66609,0.745871,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Tyler Wood";;
	_this setface "WhiteHead_12";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["BRIEFING_POINT_RIGHT",["hubbriefing_loop","hubbriefing_loop","hubbriefing_loop","hubbriefing_lookaround1","hubbriefing_lookaround2","hubbriefing_pointright","hubbriefing_scratch","hubbriefing_stretch","hubbriefing_talkaround"],false,false] # 0 isEqualTo '') then      {        ["BRIEFING_POINT_RIGHT",["hubbriefing_loop","hubbriefing_loop","hubbriefing_loop","hubbriefing_lookaround1","hubbriefing_lookaround2","hubbriefing_pointright","hubbriefing_scratch","hubbriefing_stretch","hubbriefing_talkaround"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item244 = objNull;
if (_layerRoot) then {
	_item244 = _item241 createUnit ["B_soldier_AR_F",[17280.9,13611.1,0.273998],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [17280.9,13611.2,35.1356];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kyle King";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["REPAIR_VEH_KNEEL",["inbasemoves_repairvehicleknl"],false,false] # 0 isEqualTo '') then      {        ["REPAIR_VEH_KNEEL",["inbasemoves_repairvehicleknl"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item240 = objNull;
if (_layerRoot) then {
	_item240 = _item241 createUnit ["B_soldier_AR_F",[17206.4,13622.4,0],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [17206.4,13622.5,37.5968];
	_this setVectorDirAndUp [[0.835261,-0.549854,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kyle Clarke";;
	_this setface "WhiteHead_21";;
	_this setspeaker "Male08ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["LEAN",["inbasemoves_lean1"],false,false] # 0 isEqualTo '') then      {        ["LEAN",["inbasemoves_lean1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item238 = objNull;
if (_layerRoot) then {
	_item238 = _item241 createUnit ["B_soldier_AR_F",[17238.3,13652.5,0.396],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [17238.3,13652.6,34.7127];
	_this setVectorDirAndUp [[0.859487,-0.511158,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Oliver Williams";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["LEAN",["inbasemoves_lean1"],false,false] # 0 isEqualTo '') then      {        ["LEAN",["inbasemoves_lean1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item236 = objNull;
if (_layerRoot) then {
	_item236 = _item241 createUnit ["B_soldier_AR_F",[17242.3,13595.7,0],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [17242.3,13595.8,36.3494];
	_this setVectorDirAndUp [[-0.986658,0.162809,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Luke Watson";;
	_this setface "WhiteHead_08";;
	_this setspeaker "Male08ENG";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item246 = objNull;
if (_layerRoot) then {
	_item246 = _item241 createUnit ["B_soldier_AR_F",[17445,13528.5,0],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [17445,13528.5,25.563];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Henry Edwards";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.02;;
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

private _item248 = objNull;
if (_layerRoot) then {
	_item248 = _item247 createUnit ["B_soldier_AAR_F",[17241,13595.7,0],[],0,"CAN_COLLIDE"];
	_item247 selectLeader _item248;
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [17241,13595.7,36.3402];
	_this setVectorDirAndUp [[0.986441,0.164118,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ethan Morgan";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item2 = objNull;
if (_layer229) then {
	_item2 = createTrigger ["EmptyDetectorArea10x10",[17247.5,13642.4,0],false];
	_this = _item2;
	_triggers pushback _this;
	_triggerIDs pushback 2;
	_item2 setPosATL [17247.5,13642.4,0];
	_this setTriggerArea [6,6,195.06,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item5 = objNull;
if (_layer4 && _layer229) then {
	_item5 = createTrigger ["EmptyDetectorArea10x10",[17437.5,13534.6,0],true];
	_this = _item5;
	_triggers pushback _this;
	_triggerIDs pushback 5;
	_item5 setPosATL [17437.5,13534.6,0];
	_this setTriggerArea [5,20,-74.0078,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item204 = objNull;
if (_layer9 && _layer229) then {
	_item204 = createTrigger ["EmptyDetectorAreaR50",[17094.7,13719.1,0],false];
	_this = _item204;
	_triggers pushback _this;
	_triggerIDs pushback 204;
	_item204 setPosATL [17094.7,13719.1,0];
	_this setTriggerArea [50,50,295.491,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item205 = objNull;
if (_layer9 && _layer229) then {
	_item205 = createTrigger ["EmptyDetectorArea10x10",[17112.3,13718,0],true];
	_this = _item205;
	_triggers pushback _this;
	_triggerIDs pushback 205;
	_item205 setPosATL [17112.3,13718,0];
	_this setTriggerArea [18,13.5,102.784,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item241;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["HQ"];                            } else {                                [_this, "HQ"] call CBA_fnc_setCallsign;                            };                        ;
	_this setCombatMode "BLUE";
	_this setBehaviour "CARELESS";
	_this setSpeedMode "LIMITED";
	_this enableDynamicSimulation true;
	      if (!is3DEN && (["","ColorWEST","HQ",true] # 0 != '') then      {        [_this, ["","ColorWEST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ",true]'];          ["","ColorWEST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item247;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["Alpha 1-2"];                            } else {                                [_this, "Alpha 1-2"] call CBA_fnc_setCallsign;                            };                        ;
	      if (!is3DEN && (["","ColorWEST","Alpha 1-2",true] # 0 != '') then      {        [_this, ["","ColorWEST","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-2",true]'];          ["","ColorWEST","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
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
	_item3 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[17250.9,13633.1,0],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_logics pushback _this;
	_logicIDs pushback 3;
	_this setPosWorld [17250.9,13633.1,34.1054];
	_this setVectorDirAndUp [[0.803993,0.594638,0.000546226],[-0.00899675,0.0112457,0.999896]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item227 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item227 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[17124.8,13722.2,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_logics pushback _this;
	_logicIDs pushback 227;
	_this setPosWorld [17124.8,13722.2,61.4303];
	_this setVectorDirAndUp [[-0.901213,0.422625,0.0959287],[0.0564892,-0.104907,0.992876]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item228 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item228 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[17127.6,13707.8,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_logics pushback _this;
	_logicIDs pushback 228;
	_this setPosWorld [17127.6,13707.8,59.2363];
	_this setVectorDirAndUp [[-0.90167,0.424361,0.0831222],[0.0466595,-0.0956235,0.994323]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer226) then {missionNamespace setVariable ["Sahrani%20Guerilla%20Base_Spawns",[[_item227,_item228],[]]];};
if (_layer206) then {missionNamespace setVariable ["Sahrani%20Guerilla%20Base_Shoothouse Targets",[[_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225],[]]];};
if (_layer9) then {missionNamespace setVariable ["Sahrani%20Guerilla%20Base_Shoothouse Pit",[[_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228],[]]];};
if (_layer7) then {missionNamespace setVariable ["Sahrani%20Guerilla%20Base_Repair Station",[[_item8],[]]];};
if (_layer4) then {missionNamespace setVariable ["Sahrani%20Guerilla%20Base_bargate",[[_item5,_item6],[]]];};
if (_layer229) then {missionNamespace setVariable ["Sahrani%20Guerilla%20Base_SIA ZGM Essentials",[[_item0,_item2,_item3,_item5,_item6,_item8,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228,_item230,_item231,_item232,_item233,_item234],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
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
	if !(isnull _item233) then {
		this = _item233;
		call{arsenals pushBack this};
	};
	if !(isnull _item234) then {
		this = _item234;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
