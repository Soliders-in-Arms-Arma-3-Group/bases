// Export of 'Beketov%20Military%20Base.Beketov' by Jibcraneknight on v0.9

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

private _item248 = grpNull;
if (_layerRoot) then {
	_item248 = createGroup west;
	_this = _item248;
	_groups pushback _this;
	_groupIDs pushback 248;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layer229) then {
	_item0 = createVehicle ["Land_InfoStand_V1_F",[2166.86,7093.38,-0.00101852],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [2166.86,7093.38,34.5755];
	_this setVectorDirAndUp [[0.985851,-0.167621,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item6 = objNull;
if (_layer4 && _layer229) then {
	_item6 = createVehicle ["Land_BarGate_F",[2329.33,7080.53,0],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [2329.33,7080.53,39.9012];
	_this setVectorDirAndUp [[0.956786,-0.287247,0.0452651],[-0.0532183,-0.0199363,0.998384]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item8 = objNull;
if (_layer7 && _layer229) then {
	_item8 = createVehicle ["Land_RepairDepot_01_tan_F",[2207.75,7169.86,-0.00411987],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [2207.67,7169.98,36.0719];
	_this setVectorDirAndUp [[0.242444,0.969345,-0.0398965],[-0.031661,0.0490068,0.998296]];
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
	_item10 = createVehicle ["Land_InfoStand_V1_F",[1966.5,7183.88,-9.15527e-005],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [1966.5,7183.88,30.9335];
	_this setVectorDirAndUp [[-0.976213,0.21678,0.00387461],[0.00750088,0.0159076,0.999845]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item11 = objNull;
if (_layer9 && _layer229) then {
	_item11 = createVehicle ["Land_Scaffolding_New_F",[1941.39,7169.64,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [1941.39,7169.64,33.0772];
	_this setVectorDirAndUp [[0.976213,-0.216815,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item12 = objNull;
if (_layer9 && _layer229) then {
	_item12 = createVehicle ["Land_Shoot_House_Panels_Window_F",[1949.17,7201.17,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [1949.17,7201.17,32.2766];
	_this setVectorDirAndUp [[0.973894,-0.227004,-0.000573912],[-0.00329363,-0.0166582,0.999856]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer9 && _layer229) then {
	_item13 = createVehicle ["Land_Shoot_House_Panels_Window_F",[1947.35,7193.45,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [1947.35,7193.45,32.0324];
	_this setVectorDirAndUp [[0.973834,-0.227217,0.00444111],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layer9 && _layer229) then {
	_item14 = createVehicle ["Land_Shoot_House_Panels_Window_F",[1956.44,7201.53,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [1956.44,7201.53,32.1673];
	_this setVectorDirAndUp [[-0.973736,0.226653,0.0216127],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer9 && _layer229) then {
	_item15 = createVehicle ["Land_Shoot_House_Panels_Window_F",[1954.62,7193.74,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [1954.62,7193.74,32.0836];
	_this setVectorDirAndUp [[-0.973896,0.226953,0.00434162],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item16 = objNull;
if (_layer9 && _layer229) then {
	_item16 = createVehicle ["Land_Shoot_House_Panels_Window_F",[1948.69,7185.88,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [1948.69,7185.88,32.0463];
	_this setVectorDirAndUp [[0.226975,0.973672,-0.021098],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item17 = objNull;
if (_layer9 && _layer229) then {
	_item17 = createVehicle ["Land_Shoot_House_Panels_Window_F",[1948.54,7194.21,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [1948.54,7194.21,32.0691];
	_this setVectorDirAndUp [[-0.226967,-0.973381,-0.0318502],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item18 = objNull;
if (_layer9 && _layer229) then {
	_item18 = createVehicle ["Land_Shoot_House_Panels_Window_F",[1949.59,7189.64,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [1949.59,7189.64,31.9649];
	_this setVectorDirAndUp [[-0.198515,-0.979863,0.0214567],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item19 = objNull;
if (_layer9 && _layer229) then {
	_item19 = createVehicle ["Land_Shoot_House_Wall_F",[1939.43,7203.43,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [1939.43,7203.43,32.2401];
	_this setVectorDirAndUp [[0.973736,-0.226467,-0.0234823],[0.0183113,-0.0249078,0.999522]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item20 = objNull;
if (_layer9 && _layer229) then {
	_item20 = createVehicle ["Land_Shoot_House_Wall_F",[1940.31,7193.99,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [1940.31,7193.99,31.9906];
	_this setVectorDirAndUp [[-0.226976,-0.973526,-0.0269879],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer9 && _layer229) then {
	_item21 = createVehicle ["Land_Shoot_House_Wall_F",[1944.2,7193.08,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [1944.2,7193.08,31.9962];
	_this setVectorDirAndUp [[-0.226976,-0.973526,-0.0269879],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layer9 && _layer229) then {
	_item22 = createVehicle ["Land_Shoot_House_Wall_F",[1937.62,7195.64,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [1937.62,7195.64,31.991];
	_this setVectorDirAndUp [[0.973761,-0.22733,0.0104778],[-0.016815,-0.025958,0.999522]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer9 && _layer229) then {
	_item23 = createVehicle ["Land_Shoot_House_Wall_F",[1941.55,7208.07,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [1941.55,7208.07,32.3633];
	_this setVectorDirAndUp [[-0.226967,-0.973531,-0.0268813],[-0.0115547,-0.0249079,0.999623]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer9 && _layer229) then {
	_item24 = createVehicle ["Land_Shoot_House_Wall_F",[1947.38,7206.72,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [1947.38,7206.72,32.3631];
	_this setVectorDirAndUp [[-0.226981,-0.973751,-0.016971],[-0.00329363,-0.0166582,0.999856]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer9 && _layer229) then {
	_item25 = createVehicle ["Land_Shoot_House_Wall_F",[1945.43,7207.17,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [1945.43,7207.17,32.3643];
	_this setVectorDirAndUp [[-0.226981,-0.973751,-0.016971],[-0.00329363,-0.0166582,0.999856]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer9 && _layer229) then {
	_item26 = createVehicle ["Land_Shoot_House_Wall_F",[1938.98,7201.48,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [1938.98,7201.48,32.1999];
	_this setVectorDirAndUp [[0.973736,-0.226467,-0.0234823],[0.0183113,-0.0249078,0.999522]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer9 && _layer229) then {
	_item27 = createVehicle ["Land_Shoot_House_Wall_F",[1938.07,7197.59,0],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [1938.07,7197.59,32.0493];
	_this setVectorDirAndUp [[0.973761,-0.22733,0.0104778],[-0.016815,-0.025958,0.999522]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item28 = objNull;
if (_layer9 && _layer229) then {
	_item28 = createVehicle ["Land_Shoot_House_Wall_F",[1947.8,7195.33,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [1947.8,7195.33,32.0942];
	_this setVectorDirAndUp [[0.973834,-0.227217,0.00444111],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item29 = objNull;
if (_layer9 && _layer229) then {
	_item29 = createVehicle ["Land_Shoot_House_Wall_F",[1938.37,7194.44,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [1938.37,7194.44,31.9724];
	_this setVectorDirAndUp [[-0.22695,-0.973472,-0.0290994],[-0.016815,-0.025958,0.999522]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer9 && _layer229) then {
	_item30 = createVehicle ["Land_Shoot_House_Wall_F",[1938.53,7199.54,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [1938.53,7199.54,32.1074];
	_this setVectorDirAndUp [[0.973761,-0.22733,0.0104778],[-0.016815,-0.025958,0.999522]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer9 && _layer229) then {
	_item31 = createVehicle ["Land_Shoot_House_Wall_F",[1940.34,7207.33,0],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [1940.34,7207.33,32.3308];
	_this setVectorDirAndUp [[0.973834,-0.227192,0.00559555],[-0.0115547,-0.0249079,0.999623]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer9 && _layer229) then {
	_item32 = createVehicle ["Land_Shoot_House_Wall_F",[1950.07,7205.06,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [1950.07,7205.06,32.3429];
	_this setVectorDirAndUp [[0.973736,-0.226653,-0.0216127],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer9 && _layer229) then {
	_item33 = createVehicle ["Land_Shoot_House_Wall_F",[1943.49,7207.63,0],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [1943.49,7207.63,32.3655];
	_this setVectorDirAndUp [[-0.226981,-0.973751,-0.016971],[-0.00329363,-0.0166582,0.999856]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item34 = objNull;
if (_layer9 && _layer229) then {
	_item34 = createVehicle ["Land_Shoot_House_Wall_F",[1941.05,7192.79,0],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [1941.05,7192.79,31.9649];
	_this setVectorDirAndUp [[0.973872,-0.227095,0.00141773],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer9 && _layer229) then {
	_item35 = createVehicle ["Land_Shoot_House_Wall_F",[1943.52,7190.16,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [1943.52,7190.16,31.9152];
	_this setVectorDirAndUp [[0.973872,-0.227095,0.00141773],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer9 && _layer229) then {
	_item36 = createVehicle ["Land_Shoot_House_Wall_F",[1943.98,7192.11,0],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [1943.98,7192.11,31.9692];
	_this setVectorDirAndUp [[0.973872,-0.227095,0.00141773],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer9 && _layer229) then {
	_item37 = createVehicle ["Land_Shoot_House_Wall_F",[1943.07,7188.21,0],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [1943.07,7188.21,31.9494];
	_this setVectorDirAndUp [[0.973872,-0.226748,0.0126253],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer9 && _layer229) then {
	_item38 = createVehicle ["Land_Shoot_House_Wall_F",[1940.15,7188.89,0],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [1940.15,7188.89,31.8818];
	_this setVectorDirAndUp [[0.973181,-0.227256,0.0356955],[-0.0384014,-0.00749535,0.999234]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layer9 && _layer229) then {
	_item39 = createVehicle ["Land_Shoot_House_Wall_F",[1949.33,7206.27,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [1949.33,7206.27,32.362];
	_this setVectorDirAndUp [[-0.226981,-0.973751,-0.016971],[-0.00329363,-0.0166582,0.999856]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer9 && _layer229) then {
	_item40 = createVehicle ["Land_Shoot_House_Wall_F",[1949.62,7203.11,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [1949.62,7203.11,32.3105];
	_this setVectorDirAndUp [[0.973894,-0.227004,-0.000573912],[-0.00329363,-0.0166582,0.999856]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layer9 && _layer229) then {
	_item41 = createVehicle ["Land_Shoot_House_Wall_F",[1947.94,7187.08,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [1947.94,7187.08,32.0126];
	_this setVectorDirAndUp [[-0.973872,0.226748,-0.0126253],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer9 && _layer229) then {
	_item42 = createVehicle ["Land_Shoot_House_Wall_F",[1948.39,7189.02,0],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [1948.39,7189.02,31.9704];
	_this setVectorDirAndUp [[-0.973872,0.226748,-0.0126253],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item43 = objNull;
if (_layer9 && _layer229) then {
	_item43 = createVehicle ["Land_Shoot_House_Wall_F",[1952.32,7201.46,0],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [1952.32,7201.46,32.2418];
	_this setVectorDirAndUp [[-0.226944,-0.973833,-0.012071],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item44 = objNull;
if (_layer9 && _layer229) then {
	_item44 = createVehicle ["Land_Shoot_House_Wall_F",[1952.54,7202.43,0],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [1952.54,7202.43,32.2539];
	_this setVectorDirAndUp [[0.973736,-0.226653,-0.0216127],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item45 = objNull;
if (_layer9 && _layer229) then {
	_item45 = createVehicle ["Land_Shoot_House_Wall_F",[1949.91,7199.97,0],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [1949.91,7199.97,32.2579];
	_this setVectorDirAndUp [[0.226966,0.973382,0.0318502],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item46 = objNull;
if (_layer9 && _layer229) then {
	_item46 = createVehicle ["Land_Shoot_House_Wall_F",[1950.37,7201.91,0],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [1950.37,7201.91,32.285];
	_this setVectorDirAndUp [[0.226943,0.973833,0.012071],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layer9 && _layer229) then {
	_item47 = createVehicle ["Land_Shoot_House_Wall_F",[1951.86,7199.51,0],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [1951.86,7199.51,32.2213];
	_this setVectorDirAndUp [[0.226943,0.973896,0.00475895],[0.0183113,-0.00915248,0.99979]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item48 = objNull;
if (_layer9 && _layer229) then {
	_item48 = createVehicle ["Land_Shoot_House_Wall_F",[1948.26,7197.27,0],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [1948.26,7197.27,32.1579];
	_this setVectorDirAndUp [[0.973834,-0.227217,0.00444111],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item49 = objNull;
if (_layer9 && _layer229) then {
	_item49 = createVehicle ["Land_Shoot_House_Wall_F",[1948.09,7192.21,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [1948.09,7192.21,32.0038];
	_this setVectorDirAndUp [[0.226966,0.973382,0.0318502],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item50 = objNull;
if (_layer9 && _layer229) then {
	_item50 = createVehicle ["Land_Shoot_House_Wall_F",[1950.04,7191.75,0],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [1950.04,7191.75,32.0123];
	_this setVectorDirAndUp [[0.226981,0.973443,0.0298013],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item51 = objNull;
if (_layer9 && _layer229) then {
	_item51 = createVehicle ["Land_Shoot_House_Wall_F",[1950.49,7193.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [1950.49,7193.7,32.0719];
	_this setVectorDirAndUp [[0.226981,0.973443,0.0298013],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item52 = objNull;
if (_layer9 && _layer229) then {
	_item52 = createVehicle ["Land_Shoot_House_Wall_F",[1940.6,7190.84,0],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [1940.6,7190.84,31.9109];
	_this setVectorDirAndUp [[0.973872,-0.227095,0.00141773],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layer9 && _layer229) then {
	_item53 = createVehicle ["Land_Shoot_House_Wall_F",[1946.18,7205.97,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [1946.18,7205.97,32.3467];
	_this setVectorDirAndUp [[0.973894,-0.227004,-0.000573912],[-0.00329363,-0.0166582,0.999856]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item54 = objNull;
if (_layer9 && _layer229) then {
	_item54 = createVehicle ["Land_Shoot_House_Wall_F",[1945.27,7202.08,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [1945.27,7202.08,32.2569];
	_this setVectorDirAndUp [[0.973834,-0.227192,0.00559555],[-0.0115547,-0.0249079,0.999623]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item55 = objNull;
if (_layer9 && _layer229) then {
	_item55 = createVehicle ["Land_Shoot_House_Wall_F",[1947.51,7198.47,0],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [1947.51,7198.47,32.1852];
	_this setVectorDirAndUp [[0.226966,0.973382,0.0318502],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item56 = objNull;
if (_layer9 && _layer229) then {
	_item56 = createVehicle ["Land_Shoot_House_Wall_F",[1945.56,7198.93,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [1945.56,7198.93,32.1763];
	_this setVectorDirAndUp [[0.226966,0.973382,0.0318502],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item57 = objNull;
if (_layer9 && _layer229) then {
	_item57 = createVehicle ["Land_Shoot_House_Wall_F",[1944.82,7200.13,0],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [1944.82,7200.13,32.2031];
	_this setVectorDirAndUp [[0.973834,-0.227192,0.00559555],[-0.0115547,-0.0249079,0.999623]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item58 = objNull;
if (_layer9 && _layer229) then {
	_item58 = createVehicle ["Land_Shoot_House_Wall_F",[1941.51,7194.74,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [1941.51,7194.74,32.0191];
	_this setVectorDirAndUp [[-0.973872,0.227095,-0.00141774],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item59 = objNull;
if (_layer9 && _layer229) then {
	_item59 = createVehicle ["Land_Shoot_House_Wall_F",[1941.97,7196.69,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [1941.97,7196.69,32.073];
	_this setVectorDirAndUp [[-0.973872,0.227095,-0.00141774],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item60 = objNull;
if (_layer9 && _layer229) then {
	_item60 = createVehicle ["Land_Shoot_House_Wall_F",[1941.22,7197.89,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [1941.22,7197.89,32.0986];
	_this setVectorDirAndUp [[-0.226976,-0.973526,-0.0269879],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item61 = objNull;
if (_layer9 && _layer229) then {
	_item61 = createVehicle ["Land_Shoot_House_Wall_F",[1942.88,7200.58,0],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [1942.88,7200.58,32.1919];
	_this setVectorDirAndUp [[-0.973834,0.227191,-0.00559555],[-0.0115547,-0.0249079,0.999623]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item62 = objNull;
if (_layer9 && _layer229) then {
	_item62 = createVehicle ["Land_Shoot_House_Wall_F",[1942.13,7201.78,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [1942.13,7201.78,32.2132];
	_this setVectorDirAndUp [[-0.226967,-0.973531,-0.0268813],[-0.0115547,-0.0249079,0.999623]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item63 = objNull;
if (_layer9 && _layer229) then {
	_item63 = createVehicle ["Land_Shoot_House_Wall_F",[1940.18,7202.23,0],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [1940.18,7202.23,32.202];
	_this setVectorDirAndUp [[-0.226967,-0.973531,-0.0268813],[-0.0115547,-0.0249079,0.999623]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item64 = objNull;
if (_layer9 && _layer229) then {
	_item64 = createVehicle ["Land_Shoot_House_Wall_F",[1941.68,7199.83,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [1941.68,7199.83,32.1585];
	_this setVectorDirAndUp [[-0.226967,-0.973381,-0.0318502],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item65 = objNull;
if (_layer9 && _layer229) then {
	_item65 = createVehicle ["Land_Shoot_House_Wall_F",[1944.37,7198.18,0],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [1944.37,7198.18,32.1401];
	_this setVectorDirAndUp [[-0.973834,0.227217,-0.00444112],[-0.0115598,-0.0300088,0.999483]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item66 = objNull;
if (_layer9 && _layer229) then {
	_item66 = createVehicle ["Land_Shoot_House_Wall_F",[1943.45,7194.28,0],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [1943.45,7194.28,32.0218];
	_this setVectorDirAndUp [[-0.973872,0.227095,-0.00141774],[-0.00750901,-0.0259609,0.999635]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item67 = objNull;
if (_layer9 && _layer229) then {
	_item67 = createVehicle ["Land_Shoot_House_Wall_F",[1954.91,7190.59,0],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [1954.91,7190.59,31.9898];
	_this setVectorDirAndUp [[-0.226982,-0.973443,-0.0298013],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer9 && _layer229) then {
	_item68 = createVehicle ["Land_Shoot_House_Wall_F",[1956.89,7203.47,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [1956.89,7203.47,32.1918];
	_this setVectorDirAndUp [[0.973751,-0.226649,-0.020939],[0.0174102,-0.0175577,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer9 && _layer229) then {
	_item69 = createVehicle ["Land_Shoot_House_Wall_F",[1965.27,7195.36,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [1965.27,7195.36,31.9894];
	_this setVectorDirAndUp [[0.973778,-0.226968,-0.015557],[0.015761,-0.000913332,0.999875]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layer9 && _layer229) then {
	_item70 = createVehicle ["Land_Shoot_House_Wall_F",[1958.09,7204.22,0],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [1958.09,7204.22,32.1841];
	_this setVectorDirAndUp [[-0.226948,-0.973818,-0.0131508],[0.0174102,-0.0175577,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item71 = objNull;
if (_layer9 && _layer229) then {
	_item71 = createVehicle ["Land_Shoot_House_Wall_F",[1958.81,7189.68,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [1958.81,7189.68,31.985];
	_this setVectorDirAndUp [[-0.226982,-0.973863,0.00833955],[-0.00253718,0.00915433,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer9 && _layer229) then {
	_item72 = createVehicle ["Land_Shoot_House_Wall_F",[1955.98,7199.58,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [1955.98,7199.58,32.1464];
	_this setVectorDirAndUp [[0.973736,-0.226809,-0.0199104],[0.0183113,-0.00915248,0.99979]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer9 && _layer229) then {
	_item73 = createVehicle ["Land_Shoot_House_Wall_F",[1954.17,7191.79,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [1954.17,7191.79,32.0239];
	_this setVectorDirAndUp [[0.973896,-0.226954,-0.00434162],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer9 && _layer229) then {
	_item74 = createVehicle ["Land_Shoot_House_Wall_F",[1961.99,7203.31,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [1961.99,7203.31,32.1036];
	_this setVectorDirAndUp [[-0.226954,-0.973812,-0.013526],[0.0157572,-0.0175582,0.999722]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer9 && _layer229) then {
	_item75 = createVehicle ["Land_Shoot_House_Wall_F",[1963.94,7202.86,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [1963.94,7202.86,32.0648];
	_this setVectorDirAndUp [[-0.226954,-0.973812,-0.013526],[0.0157572,-0.0175582,0.999722]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer9 && _layer229) then {
	_item76 = createVehicle ["Land_Shoot_House_Wall_F",[1965.89,7202.41,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [1965.89,7202.41,32.0262];
	_this setVectorDirAndUp [[-0.226954,-0.973812,-0.013526],[0.0157572,-0.0175582,0.999722]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer9 && _layer229) then {
	_item77 = createVehicle ["Land_Shoot_House_Wall_F",[1966.63,7201.21,0],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [1966.63,7201.21,31.9933];
	_this setVectorDirAndUp [[0.973778,-0.226677,-0.0193294],[0.0157572,-0.0175582,0.999722]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item78 = objNull;
if (_layer9 && _layer229) then {
	_item78 = createVehicle ["Land_Shoot_House_Wall_F",[1966.18,7199.26,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [1966.18,7199.26,31.9786];
	_this setVectorDirAndUp [[0.973778,-0.226968,-0.015557],[0.015761,-0.000913332,0.999875]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layer9 && _layer229) then {
	_item79 = createVehicle ["Land_Shoot_House_Wall_F",[1965.73,7197.31,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [1965.73,7197.31,31.984];
	_this setVectorDirAndUp [[0.973778,-0.226968,-0.015557],[0.015761,-0.000913332,0.999875]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layer9 && _layer229) then {
	_item80 = createVehicle ["Land_Shoot_House_Wall_F",[1962.71,7188.77,0],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [1962.71,7188.77,31.9843];
	_this setVectorDirAndUp [[-0.226976,-0.973749,0.0171952],[0.00750088,0.0159076,0.999845]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item81 = objNull;
if (_layer9 && _layer229) then {
	_item81 = createVehicle ["Land_Shoot_House_Wall_F",[1964.82,7193.41,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [1964.82,7193.41,31.9802];
	_this setVectorDirAndUp [[0.973872,-0.226905,-0.00938259],[0.00750088,-0.00915376,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer9 && _layer229) then {
	_item82 = createVehicle ["Land_Shoot_House_Wall_F",[1955.08,7195.68,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [1955.08,7195.68,32.1273];
	_this setVectorDirAndUp [[0.973736,-0.226809,-0.0199104],[0.0183113,-0.00915248,0.99979]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer9 && _layer229) then {
	_item83 = createVehicle ["Land_Shoot_House_Wall_F",[1953.78,7185.72,0],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [1953.78,7185.72,32.0157];
	_this setVectorDirAndUp [[0.973832,-0.227186,-0.00608583],[0.0117083,0.0234088,0.999657]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer9 && _layer229) then {
	_item84 = createVehicle ["Land_Shoot_House_Wall_F",[1954.23,7187.66,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [1954.23,7187.66,31.9918];
	_this setVectorDirAndUp [[0.973896,-0.22695,0.00454873],[-0.00253718,0.00915433,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item85 = objNull;
if (_layer9 && _layer229) then {
	_item85 = createVehicle ["Land_Shoot_House_Wall_F",[1954.69,7189.61,0],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [1954.69,7189.61,31.9751];
	_this setVectorDirAndUp [[0.973896,-0.22695,0.00454873],[-0.00253718,0.00915433,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layer9 && _layer229) then {
	_item86 = createVehicle ["Land_Shoot_House_Wall_F",[1957.61,7188.93,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [1957.61,7188.93,31.9888];
	_this setVectorDirAndUp [[0.973896,-0.22695,0.00454873],[-0.00253718,0.00915433,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item87 = objNull;
if (_layer9 && _layer229) then {
	_item87 = createVehicle ["Land_Shoot_House_Wall_F",[1957.16,7186.98,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [1957.16,7186.98,32.0055];
	_this setVectorDirAndUp [[0.973896,-0.22695,0.00454873],[-0.00253718,0.00915433,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item88 = objNull;
if (_layer9 && _layer229) then {
	_item88 = createVehicle ["Land_Shoot_House_Wall_F",[1956.7,7185.03,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [1956.7,7185.03,32.0222];
	_this setVectorDirAndUp [[0.973896,-0.22695,0.00454873],[-0.00253718,0.00915433,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item89 = objNull;
if (_layer9 && _layer229) then {
	_item89 = createVehicle ["Land_Shoot_House_Wall_F",[1949.89,7186.63,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [1949.89,7186.63,32.0378];
	_this setVectorDirAndUp [[-0.973872,0.226748,-0.0126253],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layer9 && _layer229) then {
	_item90 = createVehicle ["Land_Shoot_House_Wall_F",[1950.34,7188.57,0],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [1950.34,7188.57,31.9891];
	_this setVectorDirAndUp [[-0.973832,0.227186,0.00608583],[0.0117083,0.0234088,0.999657]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layer9 && _layer229) then {
	_item91 = createVehicle ["Land_Shoot_House_Wall_F",[1953.88,7194.94,0],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [1953.88,7194.94,32.1177];
	_this setVectorDirAndUp [[-0.226982,-0.973443,-0.0298013],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item92 = objNull;
if (_layer9 && _layer229) then {
	_item92 = createVehicle ["Land_Shoot_House_Wall_F",[1951.93,7195.39,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [1951.93,7195.39,32.1264];
	_this setVectorDirAndUp [[-0.226982,-0.973443,-0.0298013],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item93 = objNull;
if (_layer9 && _layer229) then {
	_item93 = createVehicle ["Land_Shoot_House_Wall_F",[1960.04,7203.77,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [1960.04,7203.77,32.1422];
	_this setVectorDirAndUp [[-0.226954,-0.973812,-0.013526],[0.0157572,-0.0175582,0.999722]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item94 = objNull;
if (_layer9 && _layer229) then {
	_item94 = createVehicle ["Land_Shoot_House_Wall_F",[1951.48,7193.44,0],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [1951.48,7193.44,32.0667];
	_this setVectorDirAndUp [[-0.226982,-0.973443,-0.0298013],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer9 && _layer229) then {
	_item95 = createVehicle ["Land_Shoot_House_Wall_F",[1955.69,7202.73,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [1955.69,7202.73,32.201];
	_this setVectorDirAndUp [[-0.226944,-0.973833,-0.012071],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer9 && _layer229) then {
	_item96 = createVehicle ["Land_Shoot_House_Wall_F",[1955.24,7200.78,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [1955.24,7200.78,32.1768];
	_this setVectorDirAndUp [[-0.226944,-0.973833,-0.012071],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layer9 && _layer229) then {
	_item97 = createVehicle ["Land_Shoot_House_Wall_F",[1953.74,7203.18,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [1953.74,7203.18,32.2442];
	_this setVectorDirAndUp [[-0.226944,-0.973833,-0.012071],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item98 = objNull;
if (_layer9 && _layer229) then {
	_item98 = createVehicle ["Land_Shoot_House_Wall_F",[1963.91,7189.52,0],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [1963.91,7189.52,31.9634];
	_this setVectorDirAndUp [[0.973872,-0.227069,-0.00369334],[0.00750088,0.0159076,0.999845]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item99 = objNull;
if (_layer9 && _layer229) then {
	_item99 = createVehicle ["Land_Shoot_House_Wall_F",[1953.06,7200.26,0],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [1953.06,7200.26,32.2081];
	_this setVectorDirAndUp [[-0.973736,0.226653,0.0216127],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item100 = objNull;
if (_layer9 && _layer229) then {
	_item100 = createVehicle ["Land_Shoot_House_Wall_F",[1950.83,7194.65,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [1950.83,7194.65,32.1013];
	_this setVectorDirAndUp [[-0.973896,0.226953,0.00434162],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item101 = objNull;
if (_layer9 && _layer229) then {
	_item101 = createVehicle ["Land_Shoot_House_Wall_F",[1953.29,7201.23,0],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [1953.29,7201.23,32.2201];
	_this setVectorDirAndUp [[-0.226944,-0.973833,-0.012071],[0.0183113,-0.0166589,0.999694]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layer9 && _layer229) then {
	_item102 = createVehicle ["Land_Shoot_House_Wall_F",[1960.76,7189.23,0],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [1960.76,7189.23,31.9917];
	_this setVectorDirAndUp [[-0.226982,-0.973857,0.0090721],[0.000690285,0.00915436,0.999958]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layer9 && _layer229) then {
	_item103 = createVehicle ["Land_Shoot_House_Wall_F",[1959.04,7190.65,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [1959.04,7190.65,32.0023];
	_this setVectorDirAndUp [[0.973896,-0.226954,-0.00434162],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layer9 && _layer229) then {
	_item104 = createVehicle ["Land_Shoot_House_Wall_F",[1959.49,7192.6,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [1959.49,7192.6,32.0182];
	_this setVectorDirAndUp [[0.973736,-0.226809,-0.0199104],[0.0183113,-0.00915248,0.99979]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item105 = objNull;
if (_layer9 && _layer229) then {
	_item105 = createVehicle ["Land_Shoot_House_Wall_F",[1959.95,7194.55,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [1959.95,7194.55,32.0278];
	_this setVectorDirAndUp [[0.973736,-0.226809,-0.0199104],[0.0183113,-0.00915248,0.99979]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item106 = objNull;
if (_layer9 && _layer229) then {
	_item106 = createVehicle ["Land_Shoot_House_Wall_F",[1961.15,7195.29,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [1961.15,7195.29,32.025];
	_this setVectorDirAndUp [[-0.226976,-0.973874,-0.00721259],[0.00750088,-0.00915376,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layer9 && _layer229) then {
	_item107 = createVehicle ["Land_Shoot_House_Wall_F",[1960.2,7200.63,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [1960.2,7200.63,32.0846];
	_this setVectorDirAndUp [[-0.973778,0.226677,0.0193294],[0.0157572,-0.0175582,0.999722]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item108 = objNull;
if (_layer9 && _layer229) then {
	_item108 = createVehicle ["Land_Shoot_House_Wall_F",[1960.95,7199.43,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [1960.95,7199.43,32.0613];
	_this setVectorDirAndUp [[0.226953,0.973902,-0.00268785],[0.015761,-0.000913332,0.999875]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item109 = objNull;
if (_layer9 && _layer229) then {
	_item109 = createVehicle ["Land_Shoot_House_Wall_F",[1962.9,7198.98,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [1962.9,7198.98,32.0301];
	_this setVectorDirAndUp [[0.226953,0.973902,-0.00268785],[0.015761,-0.000913332,0.999875]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer9 && _layer229) then {
	_item110 = createVehicle ["Land_Shoot_House_Wall_F",[1963.64,7197.78,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [1963.64,7197.78,32.0173];
	_this setVectorDirAndUp [[-0.973778,0.226967,0.015557],[0.015761,-0.000913332,0.999875]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer9 && _layer229) then {
	_item111 = createVehicle ["Land_Shoot_House_Wall_F",[1964.39,7196.58,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [1964.39,7196.58,32.0044];
	_this setVectorDirAndUp [[0.226953,0.973902,-0.00268785],[0.015761,-0.000913332,0.999875]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item112 = objNull;
if (_layer9 && _layer229) then {
	_item112 = createVehicle ["Land_Shoot_House_Wall_F",[1953.42,7192.99,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [1953.42,7192.99,32.0581];
	_this setVectorDirAndUp [[-0.226982,-0.973443,-0.0298013],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item113 = objNull;
if (_layer9 && _layer229) then {
	_item113 = createVehicle ["Land_Shoot_House_Wall_F",[1941.16,7171.2,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [1941.16,7171.2,31.9804];
	_this setVectorDirAndUp [[-0.226901,-0.973872,0.00943387],[-0.0267129,0.0159061,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item114 = objNull;
if (_layer9 && _layer229) then {
	_item114 = createVehicle ["Land_Shoot_House_Wall_F",[1943.43,7180.94,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [1943.43,7180.94,31.9483];
	_this setVectorDirAndUp [[-0.226815,-0.973806,-0.0160213],[-0.0384014,-0.00749535,0.999234]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layer9 && _layer229) then {
	_item115 = createVehicle ["Land_Shoot_House_Wall_F",[1946.41,7176.14,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [1946.41,7176.14,32.0722];
	_this setVectorDirAndUp [[-0.226815,-0.973927,-0.00462566],[-0.0384014,0.00419725,0.999254]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layer9 && _layer229) then {
	_item116 = createVehicle ["Land_Shoot_House_Wall_F",[1946.74,7186.33,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [1946.74,7186.33,32.021];
	_this setVectorDirAndUp [[-0.226976,-0.973672,0.0210979],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layer9 && _layer229) then {
	_item117 = createVehicle ["Land_Shoot_House_Wall_F",[1943.1,7170.75,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [1943.1,7170.75,32.0397];
	_this setVectorDirAndUp [[-0.226901,-0.973872,0.00943387],[-0.0267129,0.0159061,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item118 = objNull;
if (_layer9 && _layer229) then {
	_item118 = createVehicle ["Land_Shoot_House_Wall_F",[1937,7188.6,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [1937,7188.6,31.8466];
	_this setVectorDirAndUp [[-0.226973,-0.973856,-0.00938292],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item119 = objNull;
if (_layer9 && _layer229) then {
	_item119 = createVehicle ["Land_Shoot_House_Wall_F",[1938.95,7188.15,0],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [1938.95,7188.15,31.861];
	_this setVectorDirAndUp [[-0.226973,-0.973856,-0.00938292],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer9 && _layer229) then {
	_item120 = createVehicle ["Land_Shoot_House_Wall_F",[1945.05,7170.3,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [1945.05,7170.3,32.0989];
	_this setVectorDirAndUp [[-0.226901,-0.973872,0.00943387],[-0.0267129,0.0159061,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer9 && _layer229) then {
	_item121 = createVehicle ["Land_Shoot_House_Wall_F",[1945.05,7170.3,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [1945.05,7170.3,32.0989];
	_this setVectorDirAndUp [[-0.226901,-0.973872,0.00943387],[-0.0267129,0.0159061,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer9 && _layer229) then {
	_item122 = createVehicle ["Land_Shoot_House_Wall_F",[1935.34,7185.91,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [1935.34,7185.91,31.8112];
	_this setVectorDirAndUp [[0.973858,-0.227042,0.00721261],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer9 && _layer229) then {
	_item123 = createVehicle ["Land_Shoot_House_Wall_F",[1945.38,7180.49,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [1945.38,7180.49,32.0198];
	_this setVectorDirAndUp [[-0.226815,-0.973806,-0.0160213],[-0.0384014,-0.00749535,0.999234]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer9 && _layer229) then {
	_item124 = createVehicle ["Land_Shoot_House_Wall_F",[1935.32,7172.56,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [1935.32,7172.56,31.869];
	_this setVectorDirAndUp [[-0.226951,-0.973896,0.00440645],[-0.0166619,0.00840656,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer9 && _layer229) then {
	_item125 = createVehicle ["Land_Shoot_House_Wall_F",[1934.89,7183.96,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [1934.89,7183.96,31.7924];
	_this setVectorDirAndUp [[0.973858,-0.227042,0.00721261],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer9 && _layer229) then {
	_item126 = createVehicle ["Land_Shoot_House_Wall_F",[1933.53,7178.11,0],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [1933.53,7178.11,31.7802];
	_this setVectorDirAndUp [[0.973858,-0.226811,0.0125251],[-0.00915436,0.0159074,0.999832]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer9 && _layer229) then {
	_item127 = createVehicle ["Land_Shoot_House_Wall_F",[1933.07,7176.17,0],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [1933.07,7176.17,31.8013];
	_this setVectorDirAndUp [[0.973764,-0.226837,0.0181348],[-0.0166619,0.00840656,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer9 && _layer229) then {
	_item128 = createVehicle ["Land_Shoot_House_Wall_F",[1944.79,7186.78,0],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [1944.79,7186.78,31.9958];
	_this setVectorDirAndUp [[-0.226976,-0.973672,0.0210979],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer9 && _layer229) then {
	_item129 = createVehicle ["Land_Shoot_House_Wall_F",[1943.81,7187.01,0],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [1943.81,7187.01,31.9832];
	_this setVectorDirAndUp [[-0.226976,-0.973672,0.0210979],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer9 && _layer229) then {
	_item130 = createVehicle ["Land_Shoot_House_Wall_F",[1935.8,7187.85,0],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [1935.8,7187.85,31.83];
	_this setVectorDirAndUp [[0.973858,-0.227042,0.00721261],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer9 && _layer229) then {
	_item131 = createVehicle ["Land_Shoot_House_Wall_F",[1942.52,7177.05,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [1942.52,7177.05,31.9239];
	_this setVectorDirAndUp [[-0.226901,-0.973872,0.00943387],[-0.0267129,0.0159061,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer9 && _layer229) then {
	_item132 = createVehicle ["Land_Shoot_House_Wall_F",[1943.1,7170.75,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [1943.1,7170.75,32.0397];
	_this setVectorDirAndUp [[-0.226901,-0.973872,0.00943387],[-0.0267129,0.0159061,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer9 && _layer229) then {
	_item133 = createVehicle ["Land_Shoot_House_Wall_F",[1933.37,7173.02,0],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [1933.37,7173.02,31.8327];
	_this setVectorDirAndUp [[-0.226951,-0.973896,0.00440645],[-0.0166619,0.00840656,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer9 && _layer229) then {
	_item134 = createVehicle ["Land_Shoot_House_Wall_F",[1941.48,7181.4,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [1941.48,7181.4,31.8769];
	_this setVectorDirAndUp [[-0.226815,-0.973806,-0.0160213],[-0.0384014,-0.00749535,0.999234]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer9 && _layer229) then {
	_item135 = createVehicle ["Land_Shoot_House_Wall_F",[1939.62,7173.39,0],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [1939.62,7173.39,31.9111];
	_this setVectorDirAndUp [[-0.226973,-0.973809,0.0134152],[-0.00915436,0.0159074,0.999832]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer9 && _layer229) then {
	_item136 = createVehicle ["Land_Shoot_House_Wall_F",[1940.57,7177.5,0],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [1940.57,7177.5,31.8645];
	_this setVectorDirAndUp [[-0.226901,-0.973872,0.00943387],[-0.0267129,0.0159061,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer9 && _layer229) then {
	_item137 = createVehicle ["Land_Shoot_House_Wall_F",[1936.68,7178.41,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [1936.68,7178.41,31.8044];
	_this setVectorDirAndUp [[-0.226973,-0.973809,0.0134152],[-0.00915436,0.0159074,0.999832]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer9 && _layer229) then {
	_item138 = createVehicle ["Land_Shoot_House_Wall_F",[1935.64,7182.76,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [1935.64,7182.76,31.7902];
	_this setVectorDirAndUp [[-0.226973,-0.973856,-0.00938292],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer9 && _layer229) then {
	_item139 = createVehicle ["Land_Shoot_House_Wall_F",[1934.73,7178.86,0],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [1934.73,7178.86,31.7793];
	_this setVectorDirAndUp [[-0.226973,-0.973809,0.0134152],[-0.00915436,0.0159074,0.999832]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer9 && _layer229) then {
	_item140 = createVehicle ["Land_Shoot_House_Wall_F",[1944.47,7176.59,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [1944.47,7176.59,31.9955];
	_this setVectorDirAndUp [[-0.226815,-0.973927,-0.00462566],[-0.0384014,0.00419725,0.999254]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer9 && _layer229) then {
	_item141 = createVehicle ["Land_Shoot_House_Wall_F",[1944.56,7185.81,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [1944.56,7185.81,32.0169];
	_this setVectorDirAndUp [[0.973872,-0.226748,0.0126253],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer9 && _layer229) then {
	_item142 = createVehicle ["Land_Shoot_House_Wall_F",[1944.11,7183.86,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [1944.11,7183.86,31.9963];
	_this setVectorDirAndUp [[0.973181,-0.227256,0.0356955],[-0.0384014,-0.00749535,0.999234]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer9 && _layer229) then {
	_item143 = createVehicle ["Land_Shoot_House_Wall_F",[1943.65,7181.91,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [1943.65,7181.91,31.9643];
	_this setVectorDirAndUp [[0.973181,-0.227256,0.0356955],[-0.0384014,-0.00749535,0.999234]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer9 && _layer229) then {
	_item144 = createVehicle ["Land_Shoot_House_Wall_F",[1945.21,7175.39,0],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [1945.21,7175.39,32.0292];
	_this setVectorDirAndUp [[0.973181,-0.226823,0.0383522],[-0.0384014,0.00419725,0.999254]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer9 && _layer229) then {
	_item145 = createVehicle ["Land_Shoot_House_Wall_F",[1949.15,7174.54,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [1949.15,7174.54,32.1839];
	_this setVectorDirAndUp [[0.973181,-0.226823,0.0383522],[-0.0384014,0.00419725,0.999254]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer9 && _layer229) then {
	_item146 = createVehicle ["Land_Shoot_House_Wall_F",[1944.3,7171.5,0],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [1944.3,7171.5,32.0598];
	_this setVectorDirAndUp [[0.973551,-0.226539,0.029624],[-0.0267129,0.0159061,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer9 && _layer229) then {
	_item147 = createVehicle ["Land_Shoot_House_Wall_F",[1932.62,7174.22,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [1932.62,7174.22,31.8101];
	_this setVectorDirAndUp [[0.973764,-0.226837,0.0181348],[-0.0166619,0.00840656,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer9 && _layer229) then {
	_item148 = createVehicle ["Land_Shoot_House_Wall_F",[1939.37,7176.75,0],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [1939.37,7176.75,31.8554];
	_this setVectorDirAndUp [[0.973858,-0.226811,0.0125251],[-0.00915436,0.0159074,0.999832]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer9 && _layer229) then {
	_item149 = createVehicle ["Land_Shoot_House_Wall_F",[1946.74,7186.33,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [1946.74,7186.33,32.021];
	_this setVectorDirAndUp [[-0.226976,-0.973672,0.0210979],[-0.00750901,0.0234123,0.999698]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer9 && _layer229) then {
	_item150 = createVehicle ["Land_Shoot_House_Wall_F",[1933.98,7180.06,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [1933.98,7180.06,31.7548];
	_this setVectorDirAndUp [[0.973858,-0.227042,0.00721261],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer9 && _layer229) then {
	_item151 = createVehicle ["Land_Shoot_House_Wall_F",[1937.58,7182.3,0],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [1937.58,7182.3,31.8047];
	_this setVectorDirAndUp [[-0.226973,-0.973856,-0.00938292],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer9 && _layer229) then {
	_item152 = createVehicle ["Land_Shoot_House_Wall_F",[1948.95,7169.39,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [1948.95,7169.39,32.2046];
	_this setVectorDirAndUp [[-0.226901,-0.973855,-0.0110274],[-0.0267107,-0.00509585,0.99963]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer9 && _layer229) then {
	_item153 = createVehicle ["Land_Shoot_House_Wall_F",[1960.58,7175.91,0],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [1960.58,7175.91,32.2219];
	_this setVectorDirAndUp [[0.973858,-0.226544,0.0166748],[-0.00915436,0.0342064,0.999373]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer9 && _layer229) then {
	_item154 = createVehicle ["Land_Shoot_House_Wall_F",[1950.63,7185.42,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [1950.63,7185.42,32.0594];
	_this setVectorDirAndUp [[-0.226967,-0.97357,0.0254563],[0.0117083,0.0234088,0.999657]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer9 && _layer229) then {
	_item155 = createVehicle ["Land_Shoot_House_Wall_F",[1952.81,7168.47,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [1952.81,7168.47,32.3064];
	_this setVectorDirAndUp [[-0.226944,-0.973875,0.0079769],[-0.0183114,0.012456,0.999755]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layer9 && _layer229) then {
	_item156 = createVehicle ["Land_Shoot_House_Wall_F",[1957.45,7183.83,0],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [1957.45,7183.83,32.0351];
	_this setVectorDirAndUp [[-0.226982,-0.973863,0.00833955],[-0.00253718,0.00915433,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer9 && _layer229) then {
	_item157 = createVehicle ["Land_Shoot_House_Wall_F",[1949.27,7179.58,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [1949.27,7179.58,32.1675];
	_this setVectorDirAndUp [[-0.226815,-0.973927,-0.00462566],[-0.0384014,0.00419725,0.999254]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer9 && _layer229) then {
	_item158 = createVehicle ["Land_Shoot_House_Wall_F",[1951.37,7170.79,0],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [1951.37,7170.79,32.2575];
	_this setVectorDirAndUp [[-0.226944,-0.973908,-6.56182e-005],[-0.0183114,0.00419964,0.999824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item159 = objNull;
if (_layer9 && _layer229) then {
	_item159 = createVehicle ["Land_Shoot_House_Wall_F",[1961.04,7177.86,0],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [1961.04,7177.86,32.1595];
	_this setVectorDirAndUp [[0.973858,-0.226544,0.0166748],[-0.00915436,0.0342064,0.999373]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item160 = objNull;
if (_layer9 && _layer229) then {
	_item160 = createVehicle ["Land_Shoot_House_Wall_F",[1957.57,7167.37,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [1957.57,7167.37,32.4071];
	_this setVectorDirAndUp [[-0.226944,-0.973875,0.0079769],[-0.0183114,0.012456,0.999755]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layer9 && _layer229) then {
	_item161 = createVehicle ["Land_Shoot_House_Wall_F",[1959.68,7172.02,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [1959.68,7172.02,32.3538];
	_this setVectorDirAndUp [[0.973832,-0.227239,-0.00363148],[0.0117083,0.0342055,0.999346]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item162 = objNull;
if (_layer9 && _layer229) then {
	_item162 = createVehicle ["Land_Shoot_House_Wall_F",[1959.22,7170.07,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [1959.22,7170.07,32.4044];
	_this setVectorDirAndUp [[0.973736,-0.226905,0.0187867],[-0.0183114,0.00419964,0.999824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer9 && _layer229) then {
	_item163 = createVehicle ["Land_Shoot_House_Wall_F",[1951.22,7179.13,0],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [1951.22,7179.13,32.2094];
	_this setVectorDirAndUp [[-0.226967,-0.973238,0.035971],[0.0117083,0.0342055,0.999346]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer9 && _layer229) then {
	_item164 = createVehicle ["Land_Shoot_House_Wall_F",[1950.31,7175.23,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [1950.31,7175.23,32.2196];
	_this setVectorDirAndUp [[-0.226944,-0.973908,-6.56182e-005],[-0.0183114,0.00419964,0.999824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer9 && _layer229) then {
	_item165 = createVehicle ["Land_Shoot_House_Wall_F",[1959.4,7183.38,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [1959.4,7183.38,32.0442];
	_this setVectorDirAndUp [[-0.226982,-0.973863,0.00833955],[-0.00253718,0.00915433,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer9 && _layer229) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[1955.17,7178.21,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [1955.17,7178.21,32.1945];
	_this setVectorDirAndUp [[-0.226967,-0.973238,0.035971],[0.0117083,0.0342055,0.999346]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer9 && _layer229) then {
	_item167 = createVehicle ["Land_Shoot_House_Wall_F",[1959.83,7177.11,0],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [1959.83,7177.11,32.1775];
	_this setVectorDirAndUp [[-0.226967,-0.973238,0.035971],[0.0117083,0.0342055,0.999346]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer9 && _layer229) then {
	_item168 = createVehicle ["Land_Shoot_House_Wall_F",[1961.2,7182.96,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [1961.2,7182.96,32.0487];
	_this setVectorDirAndUp [[-0.226982,-0.973857,0.0090721],[0.000690285,0.00915436,0.999958]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer9 && _layer229) then {
	_item169 = createVehicle ["Land_Shoot_House_Wall_F",[1958.93,7173.22,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [1958.93,7173.22,32.3214];
	_this setVectorDirAndUp [[-0.226967,-0.973238,0.035971],[0.0117083,0.0342055,0.999346]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer9 && _layer229) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[1952.26,7174.78,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [1952.26,7174.78,32.2572];
	_this setVectorDirAndUp [[-0.226944,-0.973908,-6.56182e-005],[-0.0183114,0.00419964,0.999824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer9 && _layer229) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[1961.94,7181.76,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [1961.94,7181.76,32.0592];
	_this setVectorDirAndUp [[0.973899,-0.226978,0.00140563],[0.000690285,0.00915436,0.999958]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer9 && _layer229) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[1951.38,7184.22,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [1951.38,7184.22,32.0788];
	_this setVectorDirAndUp [[0.973832,-0.227186,-0.00608583],[0.0117083,0.0234088,0.999657]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer9 && _layer229) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[1950.47,7180.33,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [1950.47,7180.33,32.1806];
	_this setVectorDirAndUp [[0.973832,-0.227186,-0.00608583],[0.0117083,0.0234088,0.999657]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer9 && _layer229) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[1951.06,7174.03,0],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [1951.06,7174.03,32.2382];
	_this setVectorDirAndUp [[0.973736,-0.226905,0.0187867],[-0.0183114,0.00419964,0.999824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer9 && _layer229) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[1950.6,7172.08,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [1950.6,7172.08,32.2382];
	_this setVectorDirAndUp [[0.973736,-0.226905,0.0187867],[-0.0183114,0.00419964,0.999824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer9 && _layer229) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[1952.17,7169.61,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [1952.17,7169.61,32.2805];
	_this setVectorDirAndUp [[0.973736,-0.226742,0.0206598],[-0.0183114,0.012456,0.999755]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer9 && _layer229) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[1958.77,7168.12,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [1958.77,7168.12,32.4198];
	_this setVectorDirAndUp [[0.973736,-0.226742,0.0206598],[-0.0183114,0.012456,0.999755]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer9 && _layer229) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[1950.63,7185.42,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [1950.63,7185.42,32.0594];
	_this setVectorDirAndUp [[-0.226967,-0.97357,0.0254563],[0.0117083,0.0234088,0.999657]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer9 && _layer229) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[1947.03,7169.85,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [1947.03,7169.85,32.1557];
	_this setVectorDirAndUp [[0.2269,0.973856,0.0110274],[-0.0267107,-0.00509585,0.99963]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer9 && _layer229) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[1956.94,7173.64,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [1956.94,7173.64,32.3302];
	_this setVectorDirAndUp [[-0.226967,-0.973238,0.035971],[0.0117083,0.0342055,0.999346]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer9 && _layer229) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[1954.8,7168.06,0],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [1954.8,7168.06,32.3479];
	_this setVectorDirAndUp [[0.226943,0.973875,-0.00797692],[-0.0183114,0.012456,0.999755]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer9 && _layer229) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[1953.17,7178.67,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [1953.17,7178.67,32.2021];
	_this setVectorDirAndUp [[-0.226967,-0.973238,0.035971],[0.0117083,0.0342055,0.999346]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer9 && _layer229) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[1950.92,7182.27,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [1950.92,7182.27,32.1297];
	_this setVectorDirAndUp [[0.973832,-0.227186,-0.00608583],[0.0117083,0.0234088,0.999657]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer9 && _layer229) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[1964.36,7191.47,0],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [1964.36,7191.47,31.9659];
	_this setVectorDirAndUp [[0.973872,-0.226905,-0.00938259],[0.00750088,-0.00915376,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer9 && _layer229) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[1939.9,7205.39,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [1939.9,7205.39,32.2803];
	_this setVectorDirAndUp [[0.973736,-0.226467,-0.0234823],[0.0183113,-0.0249078,0.999522]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer9 && _layer229) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[1955.54,7197.64,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [1955.54,7197.64,32.1367];
	_this setVectorDirAndUp [[0.973736,-0.226809,-0.0199104],[0.0183113,-0.00915248,0.99979]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer9 && _layer229) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[1951.25,7192.44,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [1951.25,7192.44,32.0359];
	_this setVectorDirAndUp [[-0.973896,0.226953,0.00434162],[-0.00253718,-0.0300088,0.999546]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer9 && _layer229) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[1947.95,7173.91,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [1947.95,7173.91,32.1406];
	_this setVectorDirAndUp [[-0.226815,-0.973927,-0.00462566],[-0.0384014,0.00419725,0.999254]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer9 && _layer229) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[1960.14,7173.96,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [1960.14,7173.96,32.2845];
	_this setVectorDirAndUp [[0.973858,-0.226544,0.0166748],[-0.00915436,0.0342064,0.999373]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer9 && _layer229) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[1961.47,7179.84,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [1961.47,7179.84,32.0828];
	_this setVectorDirAndUp [[0.973899,-0.226794,0.00925735],[0.000771824,0.044093,0.999027]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer9 && _layer229) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[1934.45,7182,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [1934.45,7182,31.7737];
	_this setVectorDirAndUp [[0.973858,-0.227042,0.00721261],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer9 && _layer229) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[1937.25,7172.12,0],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [1937.25,7172.12,31.905];
	_this setVectorDirAndUp [[-0.226951,-0.973896,0.00440645],[-0.0166619,0.00840656,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer9 && _layer229) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[1950.16,7170.14,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [1950.16,7170.14,32.2381];
	_this setVectorDirAndUp [[0.973736,-0.226905,0.0187867],[-0.0183114,0.00419964,0.999824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer9 && _layer229) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[1938.38,7172.79,0],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [1938.38,7172.79,31.9095];
	_this setVectorDirAndUp [[0.973858,-0.226811,0.0125251],[-0.00915436,0.0159074,0.999832]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer9 && _layer229) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[1940.45,7172.24,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [1940.45,7172.24,31.945];
	_this setVectorDirAndUp [[0.973551,-0.226539,0.029624],[-0.0267129,0.0159061,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer9 && _layer229) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[1937.2,7193.71,0],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [1937.2,7193.71,31.9339];
	_this setVectorDirAndUp [[0.973761,-0.22733,0.0104778],[-0.016815,-0.025958,0.999522]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer9 && _layer229) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[1936.29,7189.82,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [1936.29,7189.82,31.8492];
	_this setVectorDirAndUp [[0.973858,-0.227042,0.00721261],[-0.00915436,-0.00750057,0.99993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer9 && _layer229) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[1936.74,7191.77,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [1936.74,7191.77,31.8871];
	_this setVectorDirAndUp [[0.973858,-0.227107,0.00475761],[-0.00915436,-0.0183105,0.99979]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer9 && _layer229) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[1956.19,7167.72,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [1956.19,7167.72,32.3775];
	_this setVectorDirAndUp [[0.226943,0.973875,-0.00797692],[-0.0183114,0.012456,0.999755]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer9 && _layer229) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[1963.38,7187.57,0],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [1963.38,7187.57,31.9985];
	_this setVectorDirAndUp [[0.973872,-0.227069,-0.00369334],[0.00750088,0.0159076,0.999845]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer9 && _layer229) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[1962.93,7185.62,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [1962.93,7185.62,32.0231];
	_this setVectorDirAndUp [[0.973899,-0.226978,0.00140563],[0.000690285,0.00915436,0.999958]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer9 && _layer229) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[1962.47,7183.67,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [1962.47,7183.67,32.0412];
	_this setVectorDirAndUp [[0.973899,-0.226978,0.00140563],[0.000690285,0.00915436,0.999958]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer9 && _layer229) then {
	_item203 = createVehicle ["VR_Area_01_circle_4_yellow_F",[1967.66,7183.63,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [1967.66,7183.63,30.354];
	_this setVectorDirAndUp [[-0.973144,0.230198,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item207 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item207 = createVehicle ["Sign_Arrow_F",[1944.37,7188.22,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [1944.37,7188.22,30.6568];
	_this setVectorDirAndUp [[0.212176,0.977,-0.0212871],[-0.00750901,0.0234123,0.999698]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item208 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item208 = createVehicle ["Sign_Arrow_F",[1936.43,7181.22,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [1936.43,7181.22,30.4838];
	_this setVectorDirAndUp [[0.972751,-0.23174,0.00716724],[-0.00915436,-0.00750057,0.99993]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item209 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item209 = createVehicle ["Sign_Arrow_F",[1945.82,7171.16,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [1945.82,7171.16,30.8034];
	_this setVectorDirAndUp [[0.227115,0.973822,-0.00942736],[-0.0267129,0.0159061,0.999517]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item210 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item210 = createVehicle ["Sign_Arrow_F",[1958.15,7181.55,0],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [1958.15,7181.55,30.7598];
	_this setVectorDirAndUp [[-0.965241,0.261308,0.00518618],[0.0117083,0.0234088,0.999657]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item211 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item211 = createVehicle ["Sign_Arrow_F",[1956.84,7170.75,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [1956.84,7170.75,31.0557];
	_this setVectorDirAndUp [[-0.962395,0.271005,-0.0187642],[-0.0183114,0.00419964,0.999824]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item212 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item212 = createVehicle ["Sign_Arrow_F",[1954.57,7202.14,0],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [1954.57,7202.14,30.9096];
	_this setVectorDirAndUp [[0.98544,-0.168739,-0.020862],[0.0183113,-0.0166589,0.999694]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item213 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item213 = createVehicle ["Sign_Arrow_F",[1950.92,7200.84,0],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [1950.92,7200.84,30.9547];
	_this setVectorDirAndUp [[-0.977742,0.208717,0.0213872],[0.0183113,-0.0166589,0.999694]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item214 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item214 = createVehicle ["Sign_Arrow_F",[1948.52,7193.44,0],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [1948.52,7193.44,30.7435];
	_this setVectorDirAndUp [[-0.980082,0.198519,-0.00537503],[-0.0115598,-0.0300088,0.999483]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item215 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item215 = createVehicle ["Sign_Arrow_F",[1952.76,7194.35,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [1952.76,7194.35,30.7951];
	_this setVectorDirAndUp [[0.974602,-0.223902,-0.00424821],[-0.00253718,-0.0300088,0.999546]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item216 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item216 = createVehicle ["Sign_Arrow_F",[1949.05,7187.9,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [1949.05,7187.9,30.6995];
	_this setVectorDirAndUp [[-0.225882,-0.973926,0.0211121],[-0.00750901,0.0234123,0.999698]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item217 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item217 = createVehicle ["Sign_Arrow_F",[1940.14,7196.19,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [1940.14,7196.19,30.7441];
	_this setVectorDirAndUp [[0.224431,0.974116,0.0269841],[-0.00750901,-0.0259609,0.999635]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item218 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item218 = createVehicle ["Sign_Arrow_F",[1950.3,7174.39,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [1950.3,7174.39,30.9206];
	_this setVectorDirAndUp [[0.227158,0.973858,6.97467e-005],[-0.0183114,0.00419964,0.999824]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item219 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item219 = createVehicle ["Sign_Arrow_F",[1954.52,7198.12,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [1954.52,7198.12,30.8577];
	_this setVectorDirAndUp [[0.227158,0.973846,0.00475455],[0.0183113,-0.00915248,0.99979]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item220 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item220 = createVehicle ["Sign_Arrow_F",[1941.48,7201.17,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [1941.48,7201.17,30.8881];
	_this setVectorDirAndUp [[0.227181,0.973481,0.0268826],[-0.0115547,-0.0249079,0.999623]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item221 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item221 = createVehicle ["Sign_Arrow_F",[1936.92,7183.63,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [1936.92,7183.63,30.5063];
	_this setVectorDirAndUp [[-0.225879,-0.97411,-0.00937481],[-0.00915436,-0.00750057,0.99993]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item222 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item222 = createVehicle ["Sign_Arrow_F",[1942.95,7183.65,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [1942.95,7183.65,30.6481];
	_this setVectorDirAndUp [[-0.225721,-0.974061,-0.0159812],[-0.0384014,-0.00749535,0.999234]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item223 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item223 = createVehicle ["Sign_Arrow_F",[1963.39,7200.47,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [1963.39,7200.47,30.7293];
	_this setVectorDirAndUp [[-0.22586,-0.974066,-0.0135477],[0.0157572,-0.0175582,0.999722]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item224 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item224 = createVehicle ["Sign_Arrow_F",[1934.46,7175.48,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [1934.46,7175.48,30.528];
	_this setVectorDirAndUp [[0.212152,0.977225,-0.00468106],[-0.0166619,0.00840656,0.999826]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item225 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item225 = createVehicle ["Sign_Arrow_F",[1947.54,7203.52,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [1947.54,7203.52,31.0081];
	_this setVectorDirAndUp [[0.227195,0.973701,0.0169709],[-0.00329363,-0.0166582,0.999856]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item230 = objNull;
if (_layer229) then {
	_item230 = createVehicle ["Gunrack1",[2188.17,7102.56,0],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [2188.17,7102.56,33.977];
	_this setVectorDirAndUp [[-0.0734319,0.997209,-0.0134854],[-0.0267107,0.0115505,0.999576]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item231 = objNull;
if (_layer229) then {
	_item231 = createVehicle ["Gunrack1",[2190.61,7102.58,0],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [2190.61,7102.58,34.0151];
	_this setVectorDirAndUp [[-0.0645889,0.997858,-0.0104111],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item232 = objNull;
if (_layer229) then {
	_item232 = createVehicle ["Gunrack1",[2185.37,7102.33,0],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [2185.37,7102.33,33.9532];
	_this setVectorDirAndUp [[0.0154576,0.999353,-0.0324669],[-0.00570472,0.0325584,0.999454]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item233 = objNull;
if (_layer229) then {
	_item233 = createVehicle ["Gunrack1",[2185.34,7104.62,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [2185.34,7104.62,33.8784];
	_this setVectorDirAndUp [[-0.0252376,0.999147,-0.0326925],[-0.00570472,0.0325584,0.999454]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item237 = objNull;
if (_layerRoot) then {
	_item237 = _item248 createUnit ["B_soldier_AR_F",[2166.69,7091.65,0],[],0,"CAN_COLLIDE"];
	_item248 selectLeader _item237;
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [2166.69,7091.7,34.0026];
	_this setVectorDirAndUp [[-0.999406,0.0344633,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ashton Robertson";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.01;;
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

private _item239 = objNull;
if (_layerRoot) then {
	_item239 = _item248 createUnit ["B_soldier_AR_F",[2328.93,7085.35,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [2328.93,7085.4,35.817];
	_this setVectorDirAndUp [[0.993786,-0.111312,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Benjamin Clarke";;
	_this setface "WhiteHead_14";;
	_this setspeaker "Male02ENG";;
	_this setpitch 1.01;;
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

private _item241 = objNull;
if (_layerRoot) then {
	_item241 = _item248 createUnit ["B_soldier_AR_F",[2215.99,7140.44,0],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [2215.99,7140.49,34.3581];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Harrison Miller";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male07ENG";;
	_this setpitch 1.04;;
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

private _item243 = objNull;
if (_layerRoot) then {
	_item243 = _item248 createUnit ["B_soldier_AR_F",[2178.07,7052.04,4.15211],[],0,"CAN_COLLIDE"];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [2178.07,7052.09,38.2634];
	_this setVectorDirAndUp [[0.0233118,-0.999728,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ethan Robinson";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1;;
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

private _item245 = objNull;
if (_layerRoot) then {
	_item245 = _item248 createUnit ["B_soldier_AR_F",[2326.17,7076.14,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [2326.17,7076.19,35.6283];
	_this setVectorDirAndUp [[0.998702,0.0509318,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ben Johnson";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male03ENG";;
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

private _item247 = objNull;
if (_layerRoot) then {
	_item247 = _item248 createUnit ["B_soldier_AR_F",[2216.43,7141.71,0],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [2216.43,7141.76,34.3455];
	_this setVectorDirAndUp [[0.211325,-0.977416,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Alfie Taylor";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male07ENG";;
	_this setpitch 1.05;;
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

private _item466 = objNull;
if (_layerRoot) then {
	_item466 = _item248 createUnit ["B_soldier_AR_F",[2067.49,6990.82,6.90584],[],0,"CAN_COLLIDE"];
	_this = _item466;
	_objects pushback _this;
	_objectIDs pushback 466;
	_this setPosWorld [2067.49,6990.87,40.9084];
	_this setVectorDirAndUp [[-0.292808,-0.956171,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Spencer Davis";;
	_this setface "AfricanHead_03";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1;;
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

private _item468 = objNull;
if (_layerRoot) then {
	_item468 = _item248 createUnit ["B_soldier_AR_F",[2122.22,6981.18,6.906],[],0,"CAN_COLLIDE"];
	_this = _item468;
	_objects pushback _this;
	_objectIDs pushback 468;
	_this setPosWorld [2122.22,6981.23,40.9086];
	_this setVectorDirAndUp [[0.0597071,-0.998216,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Thomas Moore";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1;;
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

private _item408 = objNull;
if (_layerRoot) then {
	_item408 = _item248 createUnit ["B_soldier_AR_F",[2062.55,7194.34,6.90584],[],0,"CAN_COLLIDE"];
	_this = _item408;
	_objects pushback _this;
	_objectIDs pushback 408;
	_this setPosWorld [2062.55,7194.39,40.9084];
	_this setVectorDirAndUp [[-0.848756,0.528784,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Harrison Robinson";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1;;
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

private _item382 = objNull;
if (_layerRoot) then {
	_item382 = _item248 createUnit ["B_soldier_AR_F",[2210.11,7248.8,6.90561],[],0,"CAN_COLLIDE"];
	_this = _item382;
	_objects pushback _this;
	_objectIDs pushback 382;
	_this setPosWorld [2210.11,7248.85,41.7701];
	_this setVectorDirAndUp [[0.61635,0.787472,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Thomas Baker";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1;;
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

private _item651 = objNull;
if (_layerRoot) then {
	_item651 = _item248 createUnit ["B_soldier_AR_F",[2204.98,7084.77,0],[],0,"CAN_COLLIDE"];
	_this = _item651;
	_objects pushback _this;
	_objectIDs pushback 651;
	_this setPosWorld [2204.98,7084.82,33.2306];
	_this setVectorDirAndUp [[0.998759,-0.0498037,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ethan Acker";;
	_this setface "AfricanHead_02";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.01;;
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

private _item649 = objNull;
if (_layerRoot) then {
	_item649 = _item248 createUnit ["B_soldier_AR_F",[2204.95,7092.18,0],[],0,"CAN_COLLIDE"];
	_this = _item649;
	_objects pushback _this;
	_objectIDs pushback 649;
	_this setPosWorld [2204.95,7092.23,33.3174];
	_this setVectorDirAndUp [[0.992743,-0.120253,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ryan Johnson";;
	_this setface "WhiteHead_17";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.01;;
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

private _item647 = objNull;
if (_layerRoot) then {
	_item647 = _item248 createUnit ["B_soldier_AR_F",[2190.59,7091.09,0],[],0,"CAN_COLLIDE"];
	_this = _item647;
	_objects pushback _this;
	_objectIDs pushback 647;
	_this setPosWorld [2190.59,7091.14,33.6173];
	_this setVectorDirAndUp [[-0.0488945,-0.998804,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dixon Moore";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.01;;
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

private _item645 = objNull;
if (_layerRoot) then {
	_item645 = _item248 createUnit ["B_soldier_AR_F",[2193.36,7091.06,0],[],0,"CAN_COLLIDE"];
	_this = _item645;
	_objects pushback _this;
	_objectIDs pushback 645;
	_this setPosWorld [2193.36,7091.11,33.5713];
	_this setVectorDirAndUp [[-0.140119,-0.990135,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Callum Wood";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.01;;
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

private _item643 = objNull;
if (_layerRoot) then {
	_item643 = _item248 createUnit ["B_soldier_AR_F",[2192.07,7094.26,0],[],0,"CAN_COLLIDE"];
	_this = _item643;
	_objects pushback _this;
	_objectIDs pushback 643;
	_this setPosWorld [2192.07,7094.31,33.5659];
	_this setVectorDirAndUp [[0.0581216,0.998309,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Jammie Wright";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["LEAN_ON_TABLE",["inbasemoves_table1"],false,false] # 0 isEqualTo '') then      {        ["LEAN_ON_TABLE",["inbasemoves_table1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item641 = objNull;
if (_layerRoot) then {
	_item641 = _item248 createUnit ["B_soldier_AR_F",[2177.99,7099.93,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item641;
	_objects pushback _this;
	_objectIDs pushback 641;
	_this setPosWorld [2177.99,7099.98,33.5985];
	_this setVectorDirAndUp [[-0.183222,0.983072,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Donald Smith";;
	_this setface "WhiteHead_21";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.01;;
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

private _item639 = objNull;
if (_layerRoot) then {
	_item639 = _item248 createUnit ["B_soldier_AR_F",[2169.64,7103.58,0],[],0,"CAN_COLLIDE"];
	_this = _item639;
	_objects pushback _this;
	_objectIDs pushback 639;
	_this setPosWorld [2169.64,7103.63,34.0026];
	_this setVectorDirAndUp [[-0.999406,0.0344633,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Oscar Robinson";;
	_this setface "WhiteHead_09";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.01;;
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

private _item470 = objNull;
if (_layerRoot) then {
	_item470 = _item248 createUnit ["B_soldier_AAA_F",[2141.01,7084.11,0],[],0,"CAN_COLLIDE"];
	_this = _item470;
	_objects pushback _this;
	_objectIDs pushback 470;
	_this setPosWorld [2141.01,7084.16,34.0026];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Daniel Robinson";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.01;;
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

private _item250 = objNull;
if (_layerRoot) then {
	_item250 = createVehicle ["jbad_Wall_IndCnc_4",[2325.7,7072.71,0],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [2325.7,7072.71,36.3096];
	_this setVectorDirAndUp [[0.927552,-0.373693,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item251 = objNull;
if (_layerRoot) then {
	_item251 = createVehicle ["jbad_Wall_IndCnc_4",[2331.54,7087.95,0],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [2331.54,7087.95,36.6148];
	_this setVectorDirAndUp [[0.937642,-0.347602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item252 = objNull;
if (_layerRoot) then {
	_item252 = createVehicle ["Land_CncBarrier_stripes_F",[2365.21,7078.19,0],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [2365.21,7078.19,37.9727];
	_this setVectorDirAndUp [[0,0.999949,-0.0100601],[-0.0639712,0.0100395,0.997901]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item253 = objNull;
if (_layerRoot) then {
	_item253 = createVehicle ["Land_CncBarrierMedium4_F",[2370.95,7075.92,0],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [2370.95,7075.92,38.7932];
	_this setVectorDirAndUp [[-0.52624,-0.850336,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item254 = objNull;
if (_layerRoot) then {
	_item254 = createVehicle ["Land_CncBarrierMedium4_F",[2377.37,7072.18,0],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [2377.37,7072.18,39.034];
	_this setVectorDirAndUp [[-0.52624,-0.850336,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item255 = objNull;
if (_layerRoot) then {
	_item255 = createVehicle ["Land_CncBarrierMedium4_F",[2383.89,7068.41,0],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [2383.89,7068.41,39.2394];
	_this setVectorDirAndUp [[-0.52624,-0.850336,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item256 = objNull;
if (_layerRoot) then {
	_item256 = createVehicle ["Land_CncBarrierMedium4_F",[2390.26,7064.58,0],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [2390.26,7064.58,39.3699];
	_this setVectorDirAndUp [[-0.52624,-0.850336,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item257 = objNull;
if (_layerRoot) then {
	_item257 = createVehicle ["Land_CncBarrierMedium4_F",[2370.2,7079.57,0],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [2370.2,7079.57,38.7327];
	_this setVectorDirAndUp [[0.313067,-0.949731,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item258 = objNull;
if (_layerRoot) then {
	_item258 = createVehicle ["Land_CncBarrierMedium4_F",[2377.25,7081.92,0],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [2377.25,7081.92,38.9735];
	_this setVectorDirAndUp [[0.313067,-0.949731,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item259 = objNull;
if (_layerRoot) then {
	_item259 = createVehicle ["Land_CncBarrierMedium4_F",[2384.38,7084.27,0],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [2384.38,7084.27,39.2844];
	_this setVectorDirAndUp [[0.313067,-0.949731,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item260 = objNull;
if (_layerRoot) then {
	_item260 = createVehicle ["Land_CncBarrierMedium4_F",[2391.42,7086.61,0],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [2391.42,7086.61,39.7227];
	_this setVectorDirAndUp [[0.313067,-0.949731,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item261 = objNull;
if (_layerRoot) then {
	_item261 = createVehicle ["Land_CncBarrierMedium4_F",[2364.48,7083.69,0],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [2364.48,7083.69,38.3742];
	_this setVectorDirAndUp [[0.313067,-0.949731,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item262 = objNull;
if (_layerRoot) then {
	_item262 = createVehicle ["Land_CncBarrierMedium4_F",[2371.52,7086.23,0],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [2371.52,7086.23,38.8046];
	_this setVectorDirAndUp [[0.313067,-0.949731,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item263 = objNull;
if (_layerRoot) then {
	_item263 = createVehicle ["Land_CncBarrierMedium4_F",[2378.59,7088.58,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [2378.59,7088.58,39.1177];
	_this setVectorDirAndUp [[0.313067,-0.949731,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item264 = objNull;
if (_layerRoot) then {
	_item264 = createVehicle ["Land_CncBarrierMedium4_F",[2385.59,7091.15,0],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [2385.59,7091.15,39.5289];
	_this setVectorDirAndUp [[0.313067,-0.949731,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item265 = objNull;
if (_layerRoot) then {
	_item265 = createVehicle ["Land_CncBarrierMedium4_F",[2391.04,7093.92,0],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [2391.04,7093.92,39.8336];
	_this setVectorDirAndUp [[0.313067,-0.949731,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item266 = objNull;
if (_layerRoot) then {
	_item266 = createVehicle ["Land_CncBarrierMedium4_F",[2367.57,7071.82,0],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [2367.57,7071.82,38.6418];
	_this setVectorDirAndUp [[-0.52624,-0.850336,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item267 = objNull;
if (_layerRoot) then {
	_item267 = createVehicle ["Land_CncBarrierMedium4_F",[2373.86,7067.78,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [2373.86,7067.78,38.9449];
	_this setVectorDirAndUp [[-0.52624,-0.850336,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item268 = objNull;
if (_layerRoot) then {
	_item268 = createVehicle ["Land_CncBarrierMedium4_F",[2380.08,7063.76,0],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [2380.08,7063.76,39.1404];
	_this setVectorDirAndUp [[-0.52624,-0.850336,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item269 = objNull;
if (_layerRoot) then {
	_item269 = createVehicle ["Land_CncBarrierMedium4_F",[2386.44,7059.81,0],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [2386.44,7059.81,39.2218];
	_this setVectorDirAndUp [[-0.52624,-0.850336,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item270 = objNull;
if (_layerRoot) then {
	_item270 = createVehicle ["Land_CncBarrierMedium4_F",[2357.16,7082.87,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [2357.16,7082.87,37.9179];
	_this setVectorDirAndUp [[-0.140419,-0.990092,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item271 = objNull;
if (_layerRoot) then {
	_item271 = createVehicle ["Land_CncBarrierMedium4_F",[2349.7,7083.11,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [2349.7,7083.11,37.3661];
	_this setVectorDirAndUp [[-0.140419,-0.990092,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item272 = objNull;
if (_layerRoot) then {
	_item272 = createVehicle ["Land_CncBarrierMedium4_F",[2342.25,7083.98,0],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [2342.25,7083.98,37.0756];
	_this setVectorDirAndUp [[-0.140419,-0.990092,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item273 = objNull;
if (_layerRoot) then {
	_item273 = createVehicle ["Land_CncBarrierMedium4_F",[2334.81,7085.02,0],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [2334.81,7085.02,36.8055];
	_this setVectorDirAndUp [[-0.140419,-0.990092,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item274 = objNull;
if (_layerRoot) then {
	_item274 = createVehicle ["Land_CncBarrierMedium4_F",[2338.31,7073.17,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [2338.31,7073.17,36.9335];
	_this setVectorDirAndUp [[-0.140419,-0.990092,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item275 = objNull;
if (_layerRoot) then {
	_item275 = createVehicle ["Land_CncBarrierMedium4_F",[2345.61,7072.19,0],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [2345.61,7072.19,37.2281];
	_this setVectorDirAndUp [[-0.140419,-0.990092,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item276 = objNull;
if (_layerRoot) then {
	_item276 = createVehicle ["Land_CncBarrierMedium4_F",[2353.08,7071.96,0],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [2353.08,7071.96,37.6074];
	_this setVectorDirAndUp [[0.082471,-0.996593,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item277 = objNull;
if (_layerRoot) then {
	_item277 = createVehicle ["Land_CncBarrierMedium4_F",[2360.48,7072.91,0],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [2360.48,7072.91,38.1103];
	_this setVectorDirAndUp [[-0.198861,0.980028,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item278 = objNull;
if (_layerRoot) then {
	_item278 = createVehicle ["Land_CncBarrierMedium4_F",[2330.8,7074.2,0],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [2330.8,7074.2,36.6845];
	_this setVectorDirAndUp [[-0.140419,-0.990092,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item282 = objNull;
if (_layerRoot) then {
	_item282 = createVehicle ["jbad_Wall_IndCnc_4",[2333.42,7093.7,0],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [2333.42,7093.7,36.7878];
	_this setVectorDirAndUp [[0.937642,-0.347602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item283 = objNull;
if (_layerRoot) then {
	_item283 = createVehicle ["jbad_Wall_IndCnc_4",[2335.45,7099.47,0],[],0,"CAN_COLLIDE"];
	_this = _item283;
	_objects pushback _this;
	_objectIDs pushback 283;
	_this setPosWorld [2335.45,7099.47,37.0051];
	_this setVectorDirAndUp [[0.937642,-0.347602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item284 = objNull;
if (_layerRoot) then {
	_item284 = createVehicle ["jbad_Wall_IndCnc_4",[2107.12,7262.93,0],[],0,"CAN_COLLIDE"];
	_this = _item284;
	_objects pushback _this;
	_objectIDs pushback 284;
	_this setPosWorld [2107.12,7262.93,34.7503];
	_this setVectorDirAndUp [[0.0193906,0.999812,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item285 = objNull;
if (_layerRoot) then {
	_item285 = createVehicle ["jbad_Wall_IndCnc_4",[2113.06,7262.73,0],[],0,"CAN_COLLIDE"];
	_this = _item285;
	_objects pushback _this;
	_objectIDs pushback 285;
	_this setPosWorld [2113.06,7262.73,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item286 = objNull;
if (_layerRoot) then {
	_item286 = createVehicle ["jbad_Wall_IndCnc_4",[2119.12,7262.55,0],[],0,"CAN_COLLIDE"];
	_this = _item286;
	_objects pushback _this;
	_objectIDs pushback 286;
	_this setPosWorld [2119.12,7262.55,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item287 = objNull;
if (_layerRoot) then {
	_item287 = createVehicle ["jbad_Wall_IndCnc_4",[2125.11,7262.2,0],[],0,"CAN_COLLIDE"];
	_this = _item287;
	_objects pushback _this;
	_objectIDs pushback 287;
	_this setPosWorld [2125.11,7262.2,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item288 = objNull;
if (_layerRoot) then {
	_item288 = createVehicle ["jbad_Wall_IndCnc_4",[2131.1,7261.84,0],[],0,"CAN_COLLIDE"];
	_this = _item288;
	_objects pushback _this;
	_objectIDs pushback 288;
	_this setPosWorld [2131.1,7261.84,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item289 = objNull;
if (_layerRoot) then {
	_item289 = createVehicle ["jbad_Wall_IndCnc_4",[2137.09,7261.59,0],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [2137.09,7261.59,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item290 = objNull;
if (_layerRoot) then {
	_item290 = createVehicle ["jbad_Wall_IndCnc_4",[2143.12,7261.4,0],[],0,"CAN_COLLIDE"];
	_this = _item290;
	_objects pushback _this;
	_objectIDs pushback 290;
	_this setPosWorld [2143.12,7261.4,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item291 = objNull;
if (_layerRoot) then {
	_item291 = createVehicle ["jbad_Wall_IndCnc_4",[2149.09,7260.98,0],[],0,"CAN_COLLIDE"];
	_this = _item291;
	_objects pushback _this;
	_objectIDs pushback 291;
	_this setPosWorld [2149.09,7260.98,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item292 = objNull;
if (_layerRoot) then {
	_item292 = createVehicle ["jbad_Wall_IndCnc_4",[2154.91,7260.78,0],[],0,"CAN_COLLIDE"];
	_this = _item292;
	_objects pushback _this;
	_objectIDs pushback 292;
	_this setPosWorld [2154.91,7260.78,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item293 = objNull;
if (_layerRoot) then {
	_item293 = createVehicle ["jbad_Wall_IndCnc_4",[2160.86,7260.49,0],[],0,"CAN_COLLIDE"];
	_this = _item293;
	_objects pushback _this;
	_objectIDs pushback 293;
	_this setPosWorld [2160.86,7260.49,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item294 = objNull;
if (_layerRoot) then {
	_item294 = createVehicle ["jbad_Wall_IndCnc_4",[2166.84,7260.28,0],[],0,"CAN_COLLIDE"];
	_this = _item294;
	_objects pushback _this;
	_objectIDs pushback 294;
	_this setPosWorld [2166.84,7260.28,34.7503];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item295 = objNull;
if (_layerRoot) then {
	_item295 = createVehicle ["jbad_Wall_IndCnc_4",[2172.81,7259.9,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item295;
	_objects pushback _this;
	_objectIDs pushback 295;
	_this setPosWorld [2172.81,7259.9,34.949];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item296 = objNull;
if (_layerRoot) then {
	_item296 = createVehicle ["jbad_Wall_IndCnc_4",[2178.78,7259.76,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item296;
	_objects pushback _this;
	_objectIDs pushback 296;
	_this setPosWorld [2178.78,7259.76,35.3753];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item297 = objNull;
if (_layerRoot) then {
	_item297 = createVehicle ["jbad_Wall_IndCnc_4",[2184.71,7259.54,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item297;
	_objects pushback _this;
	_objectIDs pushback 297;
	_this setPosWorld [2184.71,7259.54,35.5855];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item298 = objNull;
if (_layerRoot) then {
	_item298 = createVehicle ["jbad_Wall_IndCnc_4",[2190.59,7259.28,0],[],0,"CAN_COLLIDE"];
	_this = _item298;
	_objects pushback _this;
	_objectIDs pushback 298;
	_this setPosWorld [2190.59,7259.28,35.7274];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item299 = objNull;
if (_layerRoot) then {
	_item299 = createVehicle ["jbad_Wall_IndCnc_4",[2196.53,7259.15,0],[],0,"CAN_COLLIDE"];
	_this = _item299;
	_objects pushback _this;
	_objectIDs pushback 299;
	_this setPosWorld [2196.53,7259.15,35.7542];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item300 = objNull;
if (_layerRoot) then {
	_item300 = createVehicle ["jbad_Wall_IndCnc_4",[2202.65,7259.1,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item300;
	_objects pushback _this;
	_objectIDs pushback 300;
	_this setPosWorld [2202.65,7259.1,35.7993];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item301 = objNull;
if (_layerRoot) then {
	_item301 = createVehicle ["jbad_Wall_IndCnc_4",[2208.65,7258.9,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item301;
	_objects pushback _this;
	_objectIDs pushback 301;
	_this setPosWorld [2208.65,7258.9,35.8395];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item302 = objNull;
if (_layerRoot) then {
	_item302 = createVehicle ["jbad_Wall_IndCnc_4",[2214.39,7258.63,0],[],0,"CAN_COLLIDE"];
	_this = _item302;
	_objects pushback _this;
	_objectIDs pushback 302;
	_this setPosWorld [2214.39,7258.63,36.0499];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item303 = objNull;
if (_layerRoot) then {
	_item303 = createVehicle ["jbad_Wall_IndCnc_4",[2333.3,7102.61,0],[],0,"CAN_COLLIDE"];
	_this = _item303;
	_objects pushback _this;
	_objectIDs pushback 303;
	_this setPosWorld [2333.3,7102.61,36.9635];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item304 = objNull;
if (_layerRoot) then {
	_item304 = createVehicle ["jbad_Wall_IndCnc_4",[2327.29,7102.92,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item304;
	_objects pushback _this;
	_objectIDs pushback 304;
	_this setPosWorld [2327.29,7102.92,36.7476];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item305 = objNull;
if (_layerRoot) then {
	_item305 = createVehicle ["jbad_Wall_IndCnc_4",[2321.32,7103.22,0],[],0,"CAN_COLLIDE"];
	_this = _item305;
	_objects pushback _this;
	_objectIDs pushback 305;
	_this setPosWorld [2321.32,7103.22,36.5286];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item306 = objNull;
if (_layerRoot) then {
	_item306 = createVehicle ["jbad_Wall_IndCnc_4",[2315.37,7103.24,0],[],0,"CAN_COLLIDE"];
	_this = _item306;
	_objects pushback _this;
	_objectIDs pushback 306;
	_this setPosWorld [2315.37,7103.24,36.4237];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item307 = objNull;
if (_layerRoot) then {
	_item307 = createVehicle ["jbad_Wall_IndCnc_4",[2309.36,7103.53,0],[],0,"CAN_COLLIDE"];
	_this = _item307;
	_objects pushback _this;
	_objectIDs pushback 307;
	_this setPosWorld [2309.36,7103.53,36.3492];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item308 = objNull;
if (_layerRoot) then {
	_item308 = createVehicle ["jbad_Wall_IndCnc_4",[2264.09,7108.36,0],[],0,"CAN_COLLIDE"];
	_this = _item308;
	_objects pushback _this;
	_objectIDs pushback 308;
	_this setPosWorld [2264.09,7108.36,35.4967];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item309 = objNull;
if (_layerRoot) then {
	_item309 = createVehicle ["jbad_Wall_IndCnc_4",[2303.26,7103.71,0],[],0,"CAN_COLLIDE"];
	_this = _item309;
	_objects pushback _this;
	_objectIDs pushback 309;
	_this setPosWorld [2303.26,7103.71,36.3071];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item310 = objNull;
if (_layerRoot) then {
	_item310 = createVehicle ["jbad_Wall_IndCnc_4",[2297.26,7103.91,0],[],0,"CAN_COLLIDE"];
	_this = _item310;
	_objects pushback _this;
	_objectIDs pushback 310;
	_this setPosWorld [2297.26,7103.91,36.2714];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item311 = objNull;
if (_layerRoot) then {
	_item311 = createVehicle ["jbad_Wall_IndCnc_4",[2291.16,7104.07,0],[],0,"CAN_COLLIDE"];
	_this = _item311;
	_objects pushback _this;
	_objectIDs pushback 311;
	_this setPosWorld [2291.16,7104.07,36.28];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item312 = objNull;
if (_layerRoot) then {
	_item312 = createVehicle ["jbad_Wall_IndCnc_4",[2285.11,7104.32,0],[],0,"CAN_COLLIDE"];
	_this = _item312;
	_objects pushback _this;
	_objectIDs pushback 312;
	_this setPosWorld [2285.11,7104.32,36.1486];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item313 = objNull;
if (_layerRoot) then {
	_item313 = createVehicle ["jbad_Wall_IndCnc_4",[2279.14,7104.61,0],[],0,"CAN_COLLIDE"];
	_this = _item313;
	_objects pushback _this;
	_objectIDs pushback 313;
	_this setPosWorld [2279.14,7104.61,36.0566];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item314 = objNull;
if (_layerRoot) then {
	_item314 = createVehicle ["jbad_Wall_IndCnc_4",[2273.2,7104.86,0],[],0,"CAN_COLLIDE"];
	_this = _item314;
	_objects pushback _this;
	_objectIDs pushback 314;
	_this setPosWorld [2273.2,7104.86,35.8222];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item315 = objNull;
if (_layerRoot) then {
	_item315 = createVehicle ["jbad_Wall_IndCnc_4",[2267.23,7105.17,0],[],0,"CAN_COLLIDE"];
	_this = _item315;
	_objects pushback _this;
	_objectIDs pushback 315;
	_this setPosWorld [2267.23,7105.17,35.5632];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item316 = objNull;
if (_layerRoot) then {
	_item316 = createVehicle ["jbad_Wall_IndCnc_4",[2263.84,7114.4,0],[],0,"CAN_COLLIDE"];
	_this = _item316;
	_objects pushback _this;
	_objectIDs pushback 316;
	_this setPosWorld [2263.84,7114.4,35.557];
	_this setVectorDirAndUp [[0.999143,0.0413874,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item317 = objNull;
if (_layerRoot) then {
	_item317 = createVehicle ["jbad_Wall_IndCnc_4",[2263.57,7120.38,0],[],0,"CAN_COLLIDE"];
	_this = _item317;
	_objects pushback _this;
	_objectIDs pushback 317;
	_this setPosWorld [2263.57,7120.38,35.6228];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item318 = objNull;
if (_layerRoot) then {
	_item318 = createVehicle ["jbad_Wall_IndCnc_4",[2263.29,7126.4,0],[],0,"CAN_COLLIDE"];
	_this = _item318;
	_objects pushback _this;
	_objectIDs pushback 318;
	_this setPosWorld [2263.29,7126.4,35.5722];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item319 = objNull;
if (_layerRoot) then {
	_item319 = createVehicle ["jbad_Wall_IndCnc_4",[2262.96,7132.39,0],[],0,"CAN_COLLIDE"];
	_this = _item319;
	_objects pushback _this;
	_objectIDs pushback 319;
	_this setPosWorld [2262.96,7132.39,35.5417];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item320 = objNull;
if (_layerRoot) then {
	_item320 = createVehicle ["jbad_Wall_IndCnc_4",[2262.72,7138.32,0],[],0,"CAN_COLLIDE"];
	_this = _item320;
	_objects pushback _this;
	_objectIDs pushback 320;
	_this setPosWorld [2262.72,7138.32,35.639];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item321 = objNull;
if (_layerRoot) then {
	_item321 = createVehicle ["jbad_Wall_IndCnc_4",[2262.47,7144.29,0],[],0,"CAN_COLLIDE"];
	_this = _item321;
	_objects pushback _this;
	_objectIDs pushback 321;
	_this setPosWorld [2262.47,7144.29,35.6764];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item322 = objNull;
if (_layerRoot) then {
	_item322 = createVehicle ["jbad_Wall_IndCnc_4",[2262.27,7150.18,0],[],0,"CAN_COLLIDE"];
	_this = _item322;
	_objects pushback _this;
	_objectIDs pushback 322;
	_this setPosWorld [2262.27,7150.18,35.7348];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item323 = objNull;
if (_layerRoot) then {
	_item323 = createVehicle ["jbad_Wall_IndCnc_4",[2261.99,7156.16,0],[],0,"CAN_COLLIDE"];
	_this = _item323;
	_objects pushback _this;
	_objectIDs pushback 323;
	_this setPosWorld [2261.99,7156.16,35.8763];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item324 = objNull;
if (_layerRoot) then {
	_item324 = createVehicle ["jbad_Wall_IndCnc_4",[2261.88,7162.17,0],[],0,"CAN_COLLIDE"];
	_this = _item324;
	_objects pushback _this;
	_objectIDs pushback 324;
	_this setPosWorld [2261.88,7162.17,35.9358];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item325 = objNull;
if (_layerRoot) then {
	_item325 = createVehicle ["jbad_Wall_IndCnc_4",[2261.79,7168.1,0],[],0,"CAN_COLLIDE"];
	_this = _item325;
	_objects pushback _this;
	_objectIDs pushback 325;
	_this setPosWorld [2261.79,7168.1,36.0335];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item326 = objNull;
if (_layerRoot) then {
	_item326 = createVehicle ["jbad_Wall_IndCnc_4",[2261.78,7173.84,0],[],0,"CAN_COLLIDE"];
	_this = _item326;
	_objects pushback _this;
	_objectIDs pushback 326;
	_this setPosWorld [2261.78,7173.84,36.1362];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item327 = objNull;
if (_layerRoot) then {
	_item327 = createVehicle ["jbad_Wall_IndCnc_4",[2219.05,7256.02,0],[],0,"CAN_COLLIDE"];
	_this = _item327;
	_objects pushback _this;
	_objectIDs pushback 327;
	_this setPosWorld [2219.05,7256.02,36.2056];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item328 = objNull;
if (_layerRoot) then {
	_item328 = createVehicle ["jbad_Wall_IndCnc_4",[2222.28,7250.97,0],[],0,"CAN_COLLIDE"];
	_this = _item328;
	_objects pushback _this;
	_objectIDs pushback 328;
	_this setPosWorld [2222.28,7250.97,36.246];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item329 = objNull;
if (_layerRoot) then {
	_item329 = createVehicle ["jbad_Wall_IndCnc_4",[2225.49,7245.96,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item329;
	_objects pushback _this;
	_objectIDs pushback 329;
	_this setPosWorld [2225.49,7245.96,36.275];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item330 = objNull;
if (_layerRoot) then {
	_item330 = createVehicle ["jbad_Wall_IndCnc_4",[2228.65,7240.93,0],[],0,"CAN_COLLIDE"];
	_this = _item330;
	_objects pushback _this;
	_objectIDs pushback 330;
	_this setPosWorld [2228.65,7240.93,36.2938];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item331 = objNull;
if (_layerRoot) then {
	_item331 = createVehicle ["jbad_Wall_IndCnc_4",[2231.8,7236.01,0],[],0,"CAN_COLLIDE"];
	_this = _item331;
	_objects pushback _this;
	_objectIDs pushback 331;
	_this setPosWorld [2231.8,7236.01,36.1383];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item332 = objNull;
if (_layerRoot) then {
	_item332 = createVehicle ["jbad_Wall_IndCnc_4",[2235,7231.08,0],[],0,"CAN_COLLIDE"];
	_this = _item332;
	_objects pushback _this;
	_objectIDs pushback 332;
	_this setPosWorld [2235,7231.08,35.9081];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item333 = objNull;
if (_layerRoot) then {
	_item333 = createVehicle ["jbad_Wall_IndCnc_4",[2238.08,7226.1,0],[],0,"CAN_COLLIDE"];
	_this = _item333;
	_objects pushback _this;
	_objectIDs pushback 333;
	_this setPosWorld [2238.08,7226.1,35.7925];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item334 = objNull;
if (_layerRoot) then {
	_item334 = createVehicle ["jbad_Wall_IndCnc_4",[2241.28,7221.17,0],[],0,"CAN_COLLIDE"];
	_this = _item334;
	_objects pushback _this;
	_objectIDs pushback 334;
	_this setPosWorld [2241.28,7221.17,35.7354];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item335 = objNull;
if (_layerRoot) then {
	_item335 = createVehicle ["jbad_Wall_IndCnc_4",[2244.38,7216.11,0],[],0,"CAN_COLLIDE"];
	_this = _item335;
	_objects pushback _this;
	_objectIDs pushback 335;
	_this setPosWorld [2244.38,7216.11,35.7145];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item336 = objNull;
if (_layerRoot) then {
	_item336 = createVehicle ["jbad_Wall_IndCnc_4",[2247.39,7211.02,0],[],0,"CAN_COLLIDE"];
	_this = _item336;
	_objects pushback _this;
	_objectIDs pushback 336;
	_this setPosWorld [2247.39,7211.02,35.6941];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item337 = objNull;
if (_layerRoot) then {
	_item337 = createVehicle ["jbad_Wall_IndCnc_4",[2250.42,7205.92,0],[],0,"CAN_COLLIDE"];
	_this = _item337;
	_objects pushback _this;
	_objectIDs pushback 337;
	_this setPosWorld [2250.42,7205.92,35.8269];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item338 = objNull;
if (_layerRoot) then {
	_item338 = createVehicle ["jbad_Wall_IndCnc_4",[2253.63,7200.87,0],[],0,"CAN_COLLIDE"];
	_this = _item338;
	_objects pushback _this;
	_objectIDs pushback 338;
	_this setPosWorld [2253.63,7200.87,36.0471];
	_this setVectorDirAndUp [[0.845113,0.534588,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item339 = objNull;
if (_layerRoot) then {
	_item339 = createVehicle ["jbad_Wall_IndCnc_4",[2256.74,7195.84,0],[],0,"CAN_COLLIDE"];
	_this = _item339;
	_objects pushback _this;
	_objectIDs pushback 339;
	_this setPosWorld [2256.74,7195.84,36.1299];
	_this setVectorDirAndUp [[0.845113,0.534588,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item340 = objNull;
if (_layerRoot) then {
	_item340 = createVehicle ["jbad_Wall_IndCnc_4",[2259.96,7190.86,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item340;
	_objects pushback _this;
	_objectIDs pushback 340;
	_this setPosWorld [2259.96,7190.86,36.1919];
	_this setVectorDirAndUp [[0.845111,0.534591,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item341 = objNull;
if (_layerRoot) then {
	_item341 = createVehicle ["jbad_Wall_IndCnc_4",[2261.7,7179.66,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item341;
	_objects pushback _this;
	_objectIDs pushback 341;
	_this setPosWorld [2261.7,7179.66,36.2215];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item342 = objNull;
if (_layerRoot) then {
	_item342 = createVehicle ["jbad_Wall_IndCnc_4",[2261.6,7185.5,0],[],0,"CAN_COLLIDE"];
	_this = _item342;
	_objects pushback _this;
	_objectIDs pushback 342;
	_this setPosWorld [2261.6,7185.5,36.2356];
	_this setVectorDirAndUp [[0.999143,0.0413839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item343 = objNull;
if (_layerRoot) then {
	_item343 = createVehicle ["jbad_Wall_IndCnc_4",[2321.61,7061.73,0],[],0,"CAN_COLLIDE"];
	_this = _item343;
	_objects pushback _this;
	_objectIDs pushback 343;
	_this setPosWorld [2321.61,7061.73,35.852];
	_this setVectorDirAndUp [[0.937642,-0.347602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item344 = objNull;
if (_layerRoot) then {
	_item344 = createVehicle ["jbad_Wall_IndCnc_4",[2323.57,7067.38,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item344;
	_objects pushback _this;
	_objectIDs pushback 344;
	_this setPosWorld [2323.57,7067.38,36.1022];
	_this setVectorDirAndUp [[0.937642,-0.347602,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item345 = objNull;
if (_layerRoot) then {
	_item345 = createVehicle ["jbad_Wall_IndCnc_4",[2317.71,7059.04,0],[],0,"CAN_COLLIDE"];
	_this = _item345;
	_objects pushback _this;
	_objectIDs pushback 345;
	_this setPosWorld [2317.71,7059.04,35.5218];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item346 = objNull;
if (_layerRoot) then {
	_item346 = createVehicle ["jbad_Wall_IndCnc_4",[2311.83,7059.26,0],[],0,"CAN_COLLIDE"];
	_this = _item346;
	_objects pushback _this;
	_objectIDs pushback 346;
	_this setPosWorld [2311.83,7059.26,35.1711];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item347 = objNull;
if (_layerRoot) then {
	_item347 = createVehicle ["jbad_Wall_IndCnc_4",[2305.81,7059.71,0],[],0,"CAN_COLLIDE"];
	_this = _item347;
	_objects pushback _this;
	_objectIDs pushback 347;
	_this setPosWorld [2305.81,7059.71,34.9328];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item348 = objNull;
if (_layerRoot) then {
	_item348 = createVehicle ["jbad_Wall_IndCnc_4",[2299.84,7059.99,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item348;
	_objects pushback _this;
	_objectIDs pushback 348;
	_this setPosWorld [2299.84,7059.99,34.7183];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item349 = objNull;
if (_layerRoot) then {
	_item349 = createVehicle ["jbad_Wall_IndCnc_4",[2293.81,7060.44,0],[],0,"CAN_COLLIDE"];
	_this = _item349;
	_objects pushback _this;
	_objectIDs pushback 349;
	_this setPosWorld [2293.81,7060.44,34.7821];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item350 = objNull;
if (_layerRoot) then {
	_item350 = createVehicle ["jbad_Wall_IndCnc_4",[2246.46,7060.62,0],[],0,"CAN_COLLIDE"];
	_this = _item350;
	_objects pushback _this;
	_objectIDs pushback 350;
	_this setPosWorld [2246.46,7060.62,34.1044];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item351 = objNull;
if (_layerRoot) then {
	_item351 = createVehicle ["jbad_Wall_IndCnc_4",[2287.77,7060.84,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item351;
	_objects pushback _this;
	_objectIDs pushback 351;
	_this setPosWorld [2287.77,7060.84,34.7592];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item352 = objNull;
if (_layerRoot) then {
	_item352 = createVehicle ["jbad_Wall_IndCnc_4",[2281.76,7061.04,0],[],0,"CAN_COLLIDE"];
	_this = _item352;
	_objects pushback _this;
	_objectIDs pushback 352;
	_this setPosWorld [2281.76,7061.04,34.5902];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item353 = objNull;
if (_layerRoot) then {
	_item353 = createVehicle ["jbad_Wall_IndCnc_4",[2275.66,7061.2,0],[],0,"CAN_COLLIDE"];
	_this = _item353;
	_objects pushback _this;
	_objectIDs pushback 353;
	_this setPosWorld [2275.66,7061.2,34.4828];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item354 = objNull;
if (_layerRoot) then {
	_item354 = createVehicle ["jbad_Wall_IndCnc_4",[2269.62,7061.44,0],[],0,"CAN_COLLIDE"];
	_this = _item354;
	_objects pushback _this;
	_objectIDs pushback 354;
	_this setPosWorld [2269.62,7061.44,34.4137];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item355 = objNull;
if (_layerRoot) then {
	_item355 = createVehicle ["jbad_Wall_IndCnc_4",[2263.65,7061.74,0],[],0,"CAN_COLLIDE"];
	_this = _item355;
	_objects pushback _this;
	_objectIDs pushback 355;
	_this setPosWorld [2263.65,7061.74,34.3728];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item356 = objNull;
if (_layerRoot) then {
	_item356 = createVehicle ["jbad_Wall_IndCnc_4",[2257.71,7061.99,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item356;
	_objects pushback _this;
	_objectIDs pushback 356;
	_this setPosWorld [2257.71,7061.99,34.2533];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item357 = objNull;
if (_layerRoot) then {
	_item357 = createVehicle ["jbad_Wall_IndCnc_4",[2251.73,7062.3,0],[],0,"CAN_COLLIDE"];
	_this = _item357;
	_objects pushback _this;
	_objectIDs pushback 357;
	_this setPosWorld [2251.73,7062.3,34.1209];
	_this setVectorDirAndUp [[0.0437439,0.999043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item358 = objNull;
if (_layerRoot) then {
	_item358 = createVehicle ["jbad_Wall_IndCnc_4",[2241.54,7057.09,0],[],0,"CAN_COLLIDE"];
	_this = _item358;
	_objects pushback _this;
	_objectIDs pushback 358;
	_this setPosWorld [2241.54,7057.09,34.133];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item359 = objNull;
if (_layerRoot) then {
	_item359 = createVehicle ["jbad_Wall_IndCnc_4",[2236.7,7053.58,0],[],0,"CAN_COLLIDE"];
	_this = _item359;
	_objects pushback _this;
	_objectIDs pushback 359;
	_this setPosWorld [2236.7,7053.58,34.1547];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item360 = objNull;
if (_layerRoot) then {
	_item360 = createVehicle ["jbad_Wall_IndCnc_4",[2231.82,7050.04,0],[],0,"CAN_COLLIDE"];
	_this = _item360;
	_objects pushback _this;
	_objectIDs pushback 360;
	_this setPosWorld [2231.82,7050.04,34.0509];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item361 = objNull;
if (_layerRoot) then {
	_item361 = createVehicle ["jbad_Wall_IndCnc_4",[2227.02,7046.54,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item361;
	_objects pushback _this;
	_objectIDs pushback 361;
	_this setPosWorld [2227.02,7046.54,33.9179];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item362 = objNull;
if (_layerRoot) then {
	_item362 = createVehicle ["jbad_Wall_IndCnc_4",[2222.1,7043.02,0],[],0,"CAN_COLLIDE"];
	_this = _item362;
	_objects pushback _this;
	_objectIDs pushback 362;
	_this setPosWorld [2222.1,7043.02,33.8136];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item363 = objNull;
if (_layerRoot) then {
	_item363 = createVehicle ["jbad_Wall_IndCnc_4",[2217.26,7039.5,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item363;
	_objects pushback _this;
	_objectIDs pushback 363;
	_this setPosWorld [2217.26,7039.5,33.7702];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item364 = objNull;
if (_layerRoot) then {
	_item364 = createVehicle ["jbad_Wall_IndCnc_4",[2212.38,7035.97,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item364;
	_objects pushback _this;
	_objectIDs pushback 364;
	_this setPosWorld [2212.38,7035.97,33.7375];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item365 = objNull;
if (_layerRoot) then {
	_item365 = createVehicle ["jbad_Wall_IndCnc_4",[2207.53,7032.39,0],[],0,"CAN_COLLIDE"];
	_this = _item365;
	_objects pushback _this;
	_objectIDs pushback 365;
	_this setPosWorld [2207.53,7032.39,33.6055];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item366 = objNull;
if (_layerRoot) then {
	_item366 = createVehicle ["jbad_Wall_IndCnc_4",[2202.62,7028.87,0],[],0,"CAN_COLLIDE"];
	_this = _item366;
	_objects pushback _this;
	_objectIDs pushback 366;
	_this setPosWorld [2202.62,7028.87,33.6137];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item367 = objNull;
if (_layerRoot) then {
	_item367 = createVehicle ["jbad_Wall_IndCnc_4",[2197.78,7025.35,0],[],0,"CAN_COLLIDE"];
	_this = _item367;
	_objects pushback _this;
	_objectIDs pushback 367;
	_this setPosWorld [2197.78,7025.35,33.0713];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item368 = objNull;
if (_layerRoot) then {
	_item368 = createVehicle ["jbad_Wall_IndCnc_4",[2192.9,7021.82,0],[],0,"CAN_COLLIDE"];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [2192.9,7021.82,32.8636];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item369 = objNull;
if (_layerRoot) then {
	_item369 = createVehicle ["jbad_Wall_IndCnc_4",[2188.09,7018.31,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item369;
	_objects pushback _this;
	_objectIDs pushback 369;
	_this setPosWorld [2188.09,7018.31,32.9827];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item370 = objNull;
if (_layerRoot) then {
	_item370 = createVehicle ["jbad_Wall_IndCnc_4",[2183.18,7014.79,0],[],0,"CAN_COLLIDE"];
	_this = _item370;
	_objects pushback _this;
	_objectIDs pushback 370;
	_this setPosWorld [2183.18,7014.79,33.3021];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item371 = objNull;
if (_layerRoot) then {
	_item371 = createVehicle ["jbad_Wall_IndCnc_4",[2178.34,7011.28,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item371;
	_objects pushback _this;
	_objectIDs pushback 371;
	_this setPosWorld [2178.34,7011.28,33.617];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item372 = objNull;
if (_layerRoot) then {
	_item372 = createVehicle ["jbad_Wall_IndCnc_4",[2173.46,7007.74,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item372;
	_objects pushback _this;
	_objectIDs pushback 372;
	_this setPosWorld [2173.46,7007.74,33.934];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item374 = objNull;
if (_layerRoot) then {
	_item374 = createVehicle ["jbad_Wall_IndCnc_4",[2091.13,7261.34,0],[],0,"CAN_COLLIDE"];
	_this = _item374;
	_objects pushback _this;
	_objectIDs pushback 374;
	_this setPosWorld [2091.13,7261.34,34.7503];
	_this setVectorDirAndUp [[0.814436,-0.580253,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item375 = objNull;
if (_layerRoot) then {
	_item375 = createVehicle ["jbad_Wall_IndCnc_4",[2155.58,6996.34,0],[],0,"CAN_COLLIDE"];
	_this = _item375;
	_objects pushback _this;
	_objectIDs pushback 375;
	_this setPosWorld [2155.58,6996.34,34.7503];
	_this setVectorDirAndUp [[0.888092,-0.459666,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item376 = objNull;
if (_layerRoot) then {
	_item376 = createVehicle ["jbad_Wall_IndCnc_4",[2154.16,6993.74,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item376;
	_objects pushback _this;
	_objectIDs pushback 376;
	_this setPosWorld [2154.16,6993.74,34.7503];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item377 = objNull;
if (_layerRoot) then {
	_item377 = createVehicle ["jbad_Wall_IndCnc_4",[2149.35,6990.23,1.14441e-005],[],0,"CAN_COLLIDE"];
	_this = _item377;
	_objects pushback _this;
	_objectIDs pushback 377;
	_this setPosWorld [2149.35,6990.23,34.7503];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item378 = objNull;
if (_layerRoot) then {
	_item378 = createVehicle ["jbad_Wall_IndCnc_4",[2144.44,6986.71,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item378;
	_objects pushback _this;
	_objectIDs pushback 378;
	_this setPosWorld [2144.44,6986.71,34.7503];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item379 = objNull;
if (_layerRoot) then {
	_item379 = createVehicle ["jbad_Wall_IndCnc_4",[2139.59,6983.19,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item379;
	_objects pushback _this;
	_objectIDs pushback 379;
	_this setPosWorld [2139.59,6983.19,34.7503];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item380 = objNull;
if (_layerRoot) then {
	_item380 = createVehicle ["jbad_Wall_IndCnc_4",[2134.71,6979.66,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item380;
	_objects pushback _this;
	_objectIDs pushback 380;
	_this setPosWorld [2134.71,6979.66,34.7503];
	_this setVectorDirAndUp [[-0.583182,0.812342,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item383 = objNull;
if (_layerRoot) then {
	_item383 = createVehicle ["jbad_Wall_IndCnc_4",[2063.69,6987.86,0],[],0,"CAN_COLLIDE"];
	_this = _item383;
	_objects pushback _this;
	_objectIDs pushback 383;
	_this setPosWorld [2063.69,6987.86,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item384 = objNull;
if (_layerRoot) then {
	_item384 = createVehicle ["jbad_Wall_IndCnc_4",[2063.65,6993.91,0],[],0,"CAN_COLLIDE"];
	_this = _item384;
	_objects pushback _this;
	_objectIDs pushback 384;
	_this setPosWorld [2063.65,6993.91,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item385 = objNull;
if (_layerRoot) then {
	_item385 = createVehicle ["jbad_Wall_IndCnc_4",[2063.59,6999.89,0],[],0,"CAN_COLLIDE"];
	_this = _item385;
	_objects pushback _this;
	_objectIDs pushback 385;
	_this setPosWorld [2063.59,6999.89,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item386 = objNull;
if (_layerRoot) then {
	_item386 = createVehicle ["jbad_Wall_IndCnc_4",[2063.53,7005.91,0],[],0,"CAN_COLLIDE"];
	_this = _item386;
	_objects pushback _this;
	_objectIDs pushback 386;
	_this setPosWorld [2063.53,7005.91,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item387 = objNull;
if (_layerRoot) then {
	_item387 = createVehicle ["jbad_Wall_IndCnc_4",[2063.44,7011.86,0],[],0,"CAN_COLLIDE"];
	_this = _item387;
	_objects pushback _this;
	_objectIDs pushback 387;
	_this setPosWorld [2063.44,7011.86,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item388 = objNull;
if (_layerRoot) then {
	_item388 = createVehicle ["jbad_Wall_IndCnc_4",[2063.41,7017.91,0],[],0,"CAN_COLLIDE"];
	_this = _item388;
	_objects pushback _this;
	_objectIDs pushback 388;
	_this setPosWorld [2063.41,7017.91,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item389 = objNull;
if (_layerRoot) then {
	_item389 = createVehicle ["jbad_Wall_IndCnc_4",[2063.35,7023.89,0],[],0,"CAN_COLLIDE"];
	_this = _item389;
	_objects pushback _this;
	_objectIDs pushback 389;
	_this setPosWorld [2063.35,7023.89,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item390 = objNull;
if (_layerRoot) then {
	_item390 = createVehicle ["jbad_Wall_IndCnc_4",[2063.28,7029.91,0],[],0,"CAN_COLLIDE"];
	_this = _item390;
	_objects pushback _this;
	_objectIDs pushback 390;
	_this setPosWorld [2063.28,7029.91,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item391 = objNull;
if (_layerRoot) then {
	_item391 = createVehicle ["jbad_Wall_IndCnc_4",[2063.17,7035.94,0],[],0,"CAN_COLLIDE"];
	_this = _item391;
	_objects pushback _this;
	_objectIDs pushback 391;
	_this setPosWorld [2063.17,7035.94,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item392 = objNull;
if (_layerRoot) then {
	_item392 = createVehicle ["jbad_Wall_IndCnc_4",[2063.13,7041.98,0],[],0,"CAN_COLLIDE"];
	_this = _item392;
	_objects pushback _this;
	_objectIDs pushback 392;
	_this setPosWorld [2063.13,7041.98,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item393 = objNull;
if (_layerRoot) then {
	_item393 = createVehicle ["jbad_Wall_IndCnc_4",[2063.07,7047.97,0],[],0,"CAN_COLLIDE"];
	_this = _item393;
	_objects pushback _this;
	_objectIDs pushback 393;
	_this setPosWorld [2063.07,7047.97,34.7503];
	_this setVectorDirAndUp [[0.999982,0.00603334,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item409 = objNull;
if (_layerRoot) then {
	_item409 = createVehicle ["jbad_Wall_IndCnc_4",[2062.5,7054.28,0],[],0,"CAN_COLLIDE"];
	_this = _item409;
	_objects pushback _this;
	_objectIDs pushback 409;
	_this setPosWorld [2062.5,7054.28,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item410 = objNull;
if (_layerRoot) then {
	_item410 = createVehicle ["jbad_Wall_IndCnc_4",[2062.24,7060.33,0],[],0,"CAN_COLLIDE"];
	_this = _item410;
	_objects pushback _this;
	_objectIDs pushback 410;
	_this setPosWorld [2062.24,7060.33,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item411 = objNull;
if (_layerRoot) then {
	_item411 = createVehicle ["jbad_Wall_IndCnc_4",[2061.96,7066.3,0],[],0,"CAN_COLLIDE"];
	_this = _item411;
	_objects pushback _this;
	_objectIDs pushback 411;
	_this setPosWorld [2061.96,7066.3,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item412 = objNull;
if (_layerRoot) then {
	_item412 = createVehicle ["jbad_Wall_IndCnc_4",[2061.68,7072.32,0],[],0,"CAN_COLLIDE"];
	_this = _item412;
	_objects pushback _this;
	_objectIDs pushback 412;
	_this setPosWorld [2061.68,7072.32,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item413 = objNull;
if (_layerRoot) then {
	_item413 = createVehicle ["jbad_Wall_IndCnc_4",[2061.39,7078.26,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item413;
	_objects pushback _this;
	_objectIDs pushback 413;
	_this setPosWorld [2061.39,7078.26,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item414 = objNull;
if (_layerRoot) then {
	_item414 = createVehicle ["jbad_Wall_IndCnc_4",[2061.14,7084.3,0],[],0,"CAN_COLLIDE"];
	_this = _item414;
	_objects pushback _this;
	_objectIDs pushback 414;
	_this setPosWorld [2061.14,7084.3,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item415 = objNull;
if (_layerRoot) then {
	_item415 = createVehicle ["jbad_Wall_IndCnc_4",[2060.85,7090.28,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item415;
	_objects pushback _this;
	_objectIDs pushback 415;
	_this setPosWorld [2060.85,7090.28,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item416 = objNull;
if (_layerRoot) then {
	_item416 = createVehicle ["jbad_Wall_IndCnc_4",[2060.57,7096.3,0],[],0,"CAN_COLLIDE"];
	_this = _item416;
	_objects pushback _this;
	_objectIDs pushback 416;
	_this setPosWorld [2060.57,7096.3,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item417 = objNull;
if (_layerRoot) then {
	_item417 = createVehicle ["jbad_Wall_IndCnc_4",[2060.24,7102.31,0],[],0,"CAN_COLLIDE"];
	_this = _item417;
	_objects pushback _this;
	_objectIDs pushback 417;
	_this setPosWorld [2060.24,7102.31,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item418 = objNull;
if (_layerRoot) then {
	_item418 = createVehicle ["jbad_Wall_IndCnc_4",[2059.99,7108.35,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item418;
	_objects pushback _this;
	_objectIDs pushback 418;
	_this setPosWorld [2059.99,7108.35,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item419 = objNull;
if (_layerRoot) then {
	_item419 = createVehicle ["jbad_Wall_IndCnc_4",[2059.71,7114.33,0],[],0,"CAN_COLLIDE"];
	_this = _item419;
	_objects pushback _this;
	_objectIDs pushback 419;
	_this setPosWorld [2059.71,7114.33,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item420 = objNull;
if (_layerRoot) then {
	_item420 = createVehicle ["jbad_Wall_IndCnc_4",[2059.43,7120.35,0],[],0,"CAN_COLLIDE"];
	_this = _item420;
	_objects pushback _this;
	_objectIDs pushback 420;
	_this setPosWorld [2059.43,7120.35,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item421 = objNull;
if (_layerRoot) then {
	_item421 = createVehicle ["jbad_Wall_IndCnc_4",[2059.13,7126.29,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item421;
	_objects pushback _this;
	_objectIDs pushback 421;
	_this setPosWorld [2059.13,7126.29,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item422 = objNull;
if (_layerRoot) then {
	_item422 = createVehicle ["jbad_Wall_IndCnc_4",[2058.88,7132.33,0],[],0,"CAN_COLLIDE"];
	_this = _item422;
	_objects pushback _this;
	_objectIDs pushback 422;
	_this setPosWorld [2058.88,7132.33,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item423 = objNull;
if (_layerRoot) then {
	_item423 = createVehicle ["jbad_Wall_IndCnc_4",[2058.6,7138.31,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item423;
	_objects pushback _this;
	_objectIDs pushback 423;
	_this setPosWorld [2058.6,7138.31,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item424 = objNull;
if (_layerRoot) then {
	_item424 = createVehicle ["jbad_Wall_IndCnc_4",[2058.32,7144.32,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item424;
	_objects pushback _this;
	_objectIDs pushback 424;
	_this setPosWorld [2058.32,7144.32,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item425 = objNull;
if (_layerRoot) then {
	_item425 = createVehicle ["jbad_Wall_IndCnc_4",[2058.01,7150.11,0],[],0,"CAN_COLLIDE"];
	_this = _item425;
	_objects pushback _this;
	_objectIDs pushback 425;
	_this setPosWorld [2058.01,7150.11,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item426 = objNull;
if (_layerRoot) then {
	_item426 = createVehicle ["jbad_Wall_IndCnc_4",[2057.75,7156.15,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item426;
	_objects pushback _this;
	_objectIDs pushback 426;
	_this setPosWorld [2057.75,7156.15,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item427 = objNull;
if (_layerRoot) then {
	_item427 = createVehicle ["jbad_Wall_IndCnc_4",[2057.47,7162.13,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item427;
	_objects pushback _this;
	_objectIDs pushback 427;
	_this setPosWorld [2057.47,7162.13,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item428 = objNull;
if (_layerRoot) then {
	_item428 = createVehicle ["jbad_Wall_IndCnc_4",[2057.19,7168.15,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item428;
	_objects pushback _this;
	_objectIDs pushback 428;
	_this setPosWorld [2057.19,7168.15,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item429 = objNull;
if (_layerRoot) then {
	_item429 = createVehicle ["jbad_Wall_IndCnc_4",[2056.9,7174.09,1.14441e-005],[],0,"CAN_COLLIDE"];
	_this = _item429;
	_objects pushback _this;
	_objectIDs pushback 429;
	_this setPosWorld [2056.9,7174.09,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item430 = objNull;
if (_layerRoot) then {
	_item430 = createVehicle ["jbad_Wall_IndCnc_4",[2056.64,7180.13,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item430;
	_objects pushback _this;
	_objectIDs pushback 430;
	_this setPosWorld [2056.64,7180.13,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item431 = objNull;
if (_layerRoot) then {
	_item431 = createVehicle ["jbad_Wall_IndCnc_4",[2056.36,7186.11,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item431;
	_objects pushback _this;
	_objectIDs pushback 431;
	_this setPosWorld [2056.36,7186.11,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item432 = objNull;
if (_layerRoot) then {
	_item432 = createVehicle ["jbad_Wall_IndCnc_4",[2056.08,7192.12,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item432;
	_objects pushback _this;
	_objectIDs pushback 432;
	_this setPosWorld [2056.08,7192.12,34.7503];
	_this setVectorDirAndUp [[0.999111,0.0421463,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item433 = objNull;
if (_layerRoot) then {
	_item433 = createVehicle ["jbad_Wall_IndCnc_4",[2066.76,6985.3,0],[],0,"CAN_COLLIDE"];
	_this = _item433;
	_objects pushback _this;
	_objectIDs pushback 433;
	_this setPosWorld [2066.76,6985.3,34.7503];
	_this setVectorDirAndUp [[0.00276652,-0.999996,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item434 = objNull;
if (_layerRoot) then {
	_item434 = createVehicle ["jbad_Wall_IndCnc_4",[2129.37,6977.96,0],[],0,"CAN_COLLIDE"];
	_this = _item434;
	_objects pushback _this;
	_objectIDs pushback 434;
	_this setPosWorld [2129.37,6977.96,34.7503];
	_this setVectorDirAndUp [[-0.0223707,0.99975,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item435 = objNull;
if (_layerRoot) then {
	_item435 = createVehicle ["jbad_Wall_IndCnc_4",[2123.42,6977.78,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item435;
	_objects pushback _this;
	_objectIDs pushback 435;
	_this setPosWorld [2123.42,6977.78,34.7503];
	_this setVectorDirAndUp [[-0.0223707,0.99975,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item436 = objNull;
if (_layerRoot) then {
	_item436 = createVehicle ["jbad_Wall_IndCnc_4",[2117.38,6977.65,0],[],0,"CAN_COLLIDE"];
	_this = _item436;
	_objects pushback _this;
	_objectIDs pushback 436;
	_this setPosWorld [2117.38,6977.65,34.7503];
	_this setVectorDirAndUp [[-0.0223707,0.99975,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item437 = objNull;
if (_layerRoot) then {
	_item437 = createVehicle ["jbad_Wall_IndCnc_4",[2101.14,7262.89,0],[],0,"CAN_COLLIDE"];
	_this = _item437;
	_objects pushback _this;
	_objectIDs pushback 437;
	_this setPosWorld [2101.14,7262.89,34.7503];
	_this setVectorDirAndUp [[-0.0223707,0.99975,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item438 = objNull;
if (_layerRoot) then {
	_item438 = createVehicle ["jbad_Wall_IndCnc_4",[2095.12,7262.73,0],[],0,"CAN_COLLIDE"];
	_this = _item438;
	_objects pushback _this;
	_objectIDs pushback 438;
	_this setPosWorld [2095.12,7262.73,34.7503];
	_this setVectorDirAndUp [[-0.0223707,0.99975,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item439 = objNull;
if (_layerRoot) then {
	_item439 = createVehicle ["jbad_Wall_IndCnc_4",[2057.24,7197.83,0],[],0,"CAN_COLLIDE"];
	_this = _item439;
	_objects pushback _this;
	_objectIDs pushback 439;
	_this setPosWorld [2057.24,7197.83,34.7503];
	_this setVectorDirAndUp [[0.912714,-0.408599,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item440 = objNull;
if (_layerRoot) then {
	_item440 = createVehicle ["jbad_Wall_IndCnc_4",[2059.67,7203.34,0],[],0,"CAN_COLLIDE"];
	_this = _item440;
	_objects pushback _this;
	_objectIDs pushback 440;
	_this setPosWorld [2059.67,7203.34,34.7503];
	_this setVectorDirAndUp [[0.912714,-0.408599,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item441 = objNull;
if (_layerRoot) then {
	_item441 = createVehicle ["jbad_Wall_IndCnc_4",[2062.06,7208.78,0],[],0,"CAN_COLLIDE"];
	_this = _item441;
	_objects pushback _this;
	_objectIDs pushback 441;
	_this setPosWorld [2062.06,7208.78,34.7503];
	_this setVectorDirAndUp [[0.912714,-0.408599,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item442 = objNull;
if (_layerRoot) then {
	_item442 = createVehicle ["jbad_Wall_IndCnc_4",[2064.54,7214.3,0],[],0,"CAN_COLLIDE"];
	_this = _item442;
	_objects pushback _this;
	_objectIDs pushback 442;
	_this setPosWorld [2064.54,7214.3,34.7503];
	_this setVectorDirAndUp [[0.912714,-0.408599,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item443 = objNull;
if (_layerRoot) then {
	_item443 = createVehicle ["jbad_Wall_IndCnc_4",[2066.96,7219.77,0],[],0,"CAN_COLLIDE"];
	_this = _item443;
	_objects pushback _this;
	_objectIDs pushback 443;
	_this setPosWorld [2066.96,7219.77,34.7503];
	_this setVectorDirAndUp [[0.912714,-0.408599,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item444 = objNull;
if (_layerRoot) then {
	_item444 = createVehicle ["jbad_Wall_IndCnc_4",[2069.39,7225.28,0],[],0,"CAN_COLLIDE"];
	_this = _item444;
	_objects pushback _this;
	_objectIDs pushback 444;
	_this setPosWorld [2069.39,7225.28,34.7503];
	_this setVectorDirAndUp [[0.912714,-0.408599,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item445 = objNull;
if (_layerRoot) then {
	_item445 = createVehicle ["jbad_Wall_IndCnc_4",[2072.33,7230.67,0],[],0,"CAN_COLLIDE"];
	_this = _item445;
	_objects pushback _this;
	_objectIDs pushback 445;
	_this setPosWorld [2072.33,7230.67,34.7503];
	_this setVectorDirAndUp [[0.853407,-0.521246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item446 = objNull;
if (_layerRoot) then {
	_item446 = createVehicle ["jbad_Wall_IndCnc_4",[2075.44,7235.82,0],[],0,"CAN_COLLIDE"];
	_this = _item446;
	_objects pushback _this;
	_objectIDs pushback 446;
	_this setPosWorld [2075.44,7235.82,34.7503];
	_this setVectorDirAndUp [[0.853407,-0.521246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item447 = objNull;
if (_layerRoot) then {
	_item447 = createVehicle ["jbad_Wall_IndCnc_4",[2078.51,7240.92,0],[],0,"CAN_COLLIDE"];
	_this = _item447;
	_objects pushback _this;
	_objectIDs pushback 447;
	_this setPosWorld [2078.51,7240.92,34.7503];
	_this setVectorDirAndUp [[0.853407,-0.521246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item448 = objNull;
if (_layerRoot) then {
	_item448 = createVehicle ["jbad_Wall_IndCnc_4",[2081.66,7246.08,0],[],0,"CAN_COLLIDE"];
	_this = _item448;
	_objects pushback _this;
	_objectIDs pushback 448;
	_this setPosWorld [2081.66,7246.08,34.7503];
	_this setVectorDirAndUp [[0.853407,-0.521246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item449 = objNull;
if (_layerRoot) then {
	_item449 = createVehicle ["jbad_Wall_IndCnc_4",[2084.76,7251.2,0],[],0,"CAN_COLLIDE"];
	_this = _item449;
	_objects pushback _this;
	_objectIDs pushback 449;
	_this setPosWorld [2084.76,7251.2,34.7503];
	_this setVectorDirAndUp [[0.853407,-0.521246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item450 = objNull;
if (_layerRoot) then {
	_item450 = createVehicle ["jbad_Wall_IndCnc_4",[2087.87,7256.36,0],[],0,"CAN_COLLIDE"];
	_this = _item450;
	_objects pushback _this;
	_objectIDs pushback 450;
	_this setPosWorld [2087.87,7256.36,34.7503];
	_this setVectorDirAndUp [[0.853407,-0.521246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item451 = objNull;
if (_layerRoot) then {
	_item451 = createVehicle ["Land_CncBarrierMedium4_F",[2170.17,6996.21,0],[],0,"CAN_COLLIDE"];
	_this = _item451;
	_objects pushback _this;
	_objectIDs pushback 451;
	_this setPosWorld [2170.17,6996.21,34.1633];
	_this setVectorDirAndUp [[-0.988204,-0.153141,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item452 = objNull;
if (_layerRoot) then {
	_item452 = createVehicle ["Land_CncBarrierMedium4_F",[2171.49,6988.9,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item452;
	_objects pushback _this;
	_objectIDs pushback 452;
	_this setPosWorld [2171.49,6988.9,33.9254];
	_this setVectorDirAndUp [[-0.988204,-0.153141,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item453 = objNull;
if (_layerRoot) then {
	_item453 = createVehicle ["Land_CncBarrierMedium4_F",[2172.87,6981.5,0],[],0,"CAN_COLLIDE"];
	_this = _item453;
	_objects pushback _this;
	_objectIDs pushback 453;
	_this setPosWorld [2172.87,6981.5,33.8127];
	_this setVectorDirAndUp [[-0.988204,-0.153141,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item454 = objNull;
if (_layerRoot) then {
	_item454 = createVehicle ["Land_CncBarrierMedium4_F",[2174.11,6974.17,0],[],0,"CAN_COLLIDE"];
	_this = _item454;
	_objects pushback _this;
	_objectIDs pushback 454;
	_this setPosWorld [2174.11,6974.17,33.691];
	_this setVectorDirAndUp [[-0.988204,-0.153141,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item455 = objNull;
if (_layerRoot) then {
	_item455 = createVehicle ["Land_CncBarrierMedium4_F",[2169.97,7003.45,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item455;
	_objects pushback _this;
	_objectIDs pushback 455;
	_this setPosWorld [2169.97,7003.45,34.2575];
	_this setVectorDirAndUp [[0.987194,-0.159525,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item456 = objNull;
if (_layerRoot) then {
	_item456 = createVehicle ["Land_CncBarrierMedium4_F",[2164.85,6996.11,0],[],0,"CAN_COLLIDE"];
	_this = _item456;
	_objects pushback _this;
	_objectIDs pushback 456;
	_this setPosWorld [2164.85,6996.11,34.4795];
	_this setVectorDirAndUp [[-0.988204,-0.153141,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item457 = objNull;
if (_layerRoot) then {
	_item457 = createVehicle ["Land_CncBarrierMedium4_F",[2165.87,6988.71,0],[],0,"CAN_COLLIDE"];
	_this = _item457;
	_objects pushback _this;
	_objectIDs pushback 457;
	_this setPosWorld [2165.87,6988.71,34.3774];
	_this setVectorDirAndUp [[-0.988204,-0.153141,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item458 = objNull;
if (_layerRoot) then {
	_item458 = createVehicle ["Land_CncBarrierMedium4_F",[2166.86,6981.37,0],[],0,"CAN_COLLIDE"];
	_this = _item458;
	_objects pushback _this;
	_objectIDs pushback 458;
	_this setPosWorld [2166.86,6981.37,34.2984];
	_this setVectorDirAndUp [[-0.988204,-0.153141,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item459 = objNull;
if (_layerRoot) then {
	_item459 = createVehicle ["Land_CncBarrierMedium4_F",[2168,6973.97,0],[],0,"CAN_COLLIDE"];
	_this = _item459;
	_objects pushback _this;
	_objectIDs pushback 459;
	_this setPosWorld [2168,6973.97,34.2427];
	_this setVectorDirAndUp [[-0.988204,-0.153141,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item460 = objNull;
if (_layerRoot) then {
	_item460 = createVehicle ["Land_CncBarrierMedium4_F",[2160.82,6999.51,0],[],0,"CAN_COLLIDE"];
	_this = _item460;
	_objects pushback _this;
	_objectIDs pushback 460;
	_this setPosWorld [2160.82,6999.51,34.7883];
	_this setVectorDirAndUp [[-0.221241,0.975219,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item461 = objNull;
if (_layerRoot) then {
	_item461 = createVehicle ["Land_Hlaska",[2122.19,6982.02,0],[],0,"CAN_COLLIDE"];
	_this = _item461;
	_objects pushback _this;
	_objectIDs pushback 461;
	_this setPosWorld [2122.19,6982.02,37.1375];
	_this setVectorDirAndUp [[0.00814063,-0.999967,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item462 = objNull;
if (_layerRoot) then {
	_item462 = createVehicle ["Land_Hlaska",[2067.53,6991.68,0],[],0,"CAN_COLLIDE"];
	_this = _item462;
	_objects pushback _this;
	_objectIDs pushback 462;
	_this setPosWorld [2067.53,6991.68,37.1375];
	_this setVectorDirAndUp [[-0.0290764,-0.999577,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item463 = objNull;
if (_layerRoot) then {
	_item463 = createVehicle ["Land_Hlaska",[2209.64,7248.28,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item463;
	_objects pushback _this;
	_objectIDs pushback 463;
	_this setPosWorld [2209.64,7248.28,37.9782];
	_this setVectorDirAndUp [[0,0.999763,0.0217638],[-0.0175639,-0.0217605,0.999609]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item464 = objNull;
if (_layerRoot) then {
	_item464 = createVehicle ["Land_Hlaska",[2063.15,7193.45,0],[],0,"CAN_COLLIDE"];
	_this = _item464;
	_objects pushback _this;
	_objectIDs pushback 464;
	_this setPosWorld [2063.15,7193.45,37.1375];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item544 = objNull;
if (_layerRoot) then {
	_item544 = createVehicle ["HeliHCivil",[2147.55,7195.49,0],[],0,"CAN_COLLIDE"];
	_this = _item544;
	_objects pushback _this;
	_objectIDs pushback 544;
	_this setPosWorld [2147.55,7195.49,34.0012];
	_this setVectorDirAndUp [[0.997008,-0.0772962,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item545 = objNull;
if (_layerRoot) then {
	_item545 = createVehicle ["HeliHCivil",[2150,7227.04,0],[],0,"CAN_COLLIDE"];
	_this = _item545;
	_objects pushback _this;
	_objectIDs pushback 545;
	_this setPosWorld [2150,7227.04,34.0012];
	_this setVectorDirAndUp [[0.997008,-0.0772962,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item546 = objNull;
if (_layerRoot) then {
	_item546 = createVehicle ["Land_Garaz_long_open",[2152.16,7112.46,0],[],0,"CAN_COLLIDE"];
	_this = _item546;
	_objects pushback _this;
	_objectIDs pushback 546;
	_this setPosWorld [2152.16,7112.46,35.2327];
	_this setVectorDirAndUp [[-0.0368258,-0.999322,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item548 = objNull;
if (_layerRoot) then {
	_item548 = createVehicle ["Land_MapBoard_F",[2200.68,7107.15,0],[],0,"CAN_COLLIDE"];
	_this = _item548;
	_objects pushback _this;
	_objectIDs pushback 548;
	_this setPosWorld [2200.69,7107.14,34.4278];
	_this setVectorDirAndUp [[0.86953,0.493777,-0.0101119],[0.0192104,-0.013356,0.999726]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
};

private _item550 = objNull;
if (_layerRoot) then {
	_item550 = createVehicle ["MapBoard_seismic_F",[2199.88,7096.23,-3.43323e-005],[],0,"CAN_COLLIDE"];
	_this = _item550;
	_objects pushback _this;
	_objectIDs pushback 550;
	_this setPosWorld [2199.9,7096.24,34.3819];
	_this setVectorDirAndUp [[0.895148,-0.445621,-0.0115082],[0.0174102,0.00915298,0.999807]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f_epc\civ\infoboards\data\mapboard_seismic_co.paa"];
};

private _item551 = objNull;
if (_layerRoot) then {
	_item551 = createVehicle ["Land_CampingChair_V2_white_F",[2199.02,7105.2,0],[],0,"CAN_COLLIDE"];
	_this = _item551;
	_objects pushback _this;
	_objectIDs pushback 551;
	_this setPosWorld [2199.01,7105.19,33.9452];
	_this setVectorDirAndUp [[-0.994141,0.107927,-0.00601611],[-0.00750107,-0.0133581,0.999883]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item552 = objNull;
if (_layerRoot) then {
	_item552 = createVehicle ["Land_CampingChair_V2_white_F",[2198.94,7104.37,0],[],0,"CAN_COLLIDE"];
	_this = _item552;
	_objects pushback _this;
	_objectIDs pushback 552;
	_this setPosWorld [2198.93,7104.37,33.9335];
	_this setVectorDirAndUp [[-0.994141,0.107927,-0.00601611],[-0.00750107,-0.0133581,0.999883]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item553 = objNull;
if (_layerRoot) then {
	_item553 = createVehicle ["Land_CampingChair_V2_white_F",[2198.85,7103.63,0],[],0,"CAN_COLLIDE"];
	_this = _item553;
	_objects pushback _this;
	_objectIDs pushback 553;
	_this setPosWorld [2198.85,7103.62,33.923];
	_this setVectorDirAndUp [[-0.994141,0.107927,-0.00601611],[-0.00750107,-0.0133581,0.999883]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item554 = objNull;
if (_layerRoot) then {
	_item554 = createVehicle ["Land_CampingChair_V2_white_F",[2198.78,7102.87,0],[],0,"CAN_COLLIDE"];
	_this = _item554;
	_objects pushback _this;
	_objectIDs pushback 554;
	_this setPosWorld [2198.77,7102.87,33.9123];
	_this setVectorDirAndUp [[-0.994141,0.107927,-0.00601611],[-0.00750107,-0.0133581,0.999883]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item555 = objNull;
if (_layerRoot) then {
	_item555 = createVehicle ["Land_CampingChair_V2_white_F",[2198.24,7100.77,0],[],0,"CAN_COLLIDE"];
	_this = _item555;
	_objects pushback _this;
	_objectIDs pushback 555;
	_this setPosWorld [2198.25,7100.78,33.9047];
	_this setVectorDirAndUp [[-0.994018,0.10803,0.0160609],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item556 = objNull;
if (_layerRoot) then {
	_item556 = createVehicle ["Land_CampingChair_V2_white_F",[2198.23,7099.96,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item556;
	_objects pushback _this;
	_objectIDs pushback 556;
	_this setPosWorld [2198.24,7099.97,33.9141];
	_this setVectorDirAndUp [[-0.994018,0.107991,0.0163207],[0.0174102,0.00915298,0.999807]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item557 = objNull;
if (_layerRoot) then {
	_item557 = createVehicle ["Land_CampingChair_V2_white_F",[2198.15,7099.22,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item557;
	_objects pushback _this;
	_objectIDs pushback 557;
	_this setPosWorld [2198.16,7099.23,33.9224];
	_this setVectorDirAndUp [[-0.994018,0.107991,0.0163207],[0.0174102,0.00915298,0.999807]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item558 = objNull;
if (_layerRoot) then {
	_item558 = createVehicle ["Land_CampingChair_V2_white_F",[2198.12,7098.3,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item558;
	_objects pushback _this;
	_objectIDs pushback 558;
	_this setPosWorld [2198.13,7098.3,33.9314];
	_this setVectorDirAndUp [[-0.994018,0.107991,0.0163207],[0.0174102,0.00915298,0.999807]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item559 = objNull;
if (_layerRoot) then {
	_item559 = createVehicle ["Land_CampingChair_V2_white_F",[2196.88,7105.5,0],[],0,"CAN_COLLIDE"];
	_this = _item559;
	_objects pushback _this;
	_objectIDs pushback 559;
	_this setPosWorld [2196.88,7105.5,33.9332];
	_this setVectorDirAndUp [[-0.994141,0.107927,-0.00601611],[-0.00750107,-0.0133581,0.999883]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item560 = objNull;
if (_layerRoot) then {
	_item560 = createVehicle ["Land_CampingChair_V2_white_F",[2196.8,7104.68,0],[],0,"CAN_COLLIDE"];
	_this = _item560;
	_objects pushback _this;
	_objectIDs pushback 560;
	_this setPosWorld [2196.8,7104.67,33.9216];
	_this setVectorDirAndUp [[-0.994141,0.107927,-0.00601611],[-0.00750107,-0.0133581,0.999883]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item561 = objNull;
if (_layerRoot) then {
	_item561 = createVehicle ["Land_CampingChair_V2_white_F",[2196.72,7103.94,0],[],0,"CAN_COLLIDE"];
	_this = _item561;
	_objects pushback _this;
	_objectIDs pushback 561;
	_this setPosWorld [2196.72,7103.93,33.911];
	_this setVectorDirAndUp [[-0.994141,0.107927,-0.00601611],[-0.00750107,-0.0133581,0.999883]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item562 = objNull;
if (_layerRoot) then {
	_item562 = createVehicle ["Land_CampingChair_V2_white_F",[2196.63,7103.17,0],[],0,"CAN_COLLIDE"];
	_this = _item562;
	_objects pushback _this;
	_objectIDs pushback 562;
	_this setPosWorld [2196.64,7103.17,33.9051];
	_this setVectorDirAndUp [[-0.994018,0.10803,0.0160609],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item563 = objNull;
if (_layerRoot) then {
	_item563 = createVehicle ["Land_CampingChair_V2_white_F",[2196.11,7101.08,0],[],0,"CAN_COLLIDE"];
	_this = _item563;
	_objects pushback _this;
	_objectIDs pushback 563;
	_this setPosWorld [2196.12,7101.08,33.9384];
	_this setVectorDirAndUp [[-0.994018,0.10803,0.0160609],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item564 = objNull;
if (_layerRoot) then {
	_item564 = createVehicle ["Land_CampingChair_V2_white_F",[2196.1,7100.27,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item564;
	_objects pushback _this;
	_objectIDs pushback 564;
	_this setPosWorld [2196.11,7100.27,33.9479];
	_this setVectorDirAndUp [[-0.994018,0.10803,0.0160609],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item565 = objNull;
if (_layerRoot) then {
	_item565 = createVehicle ["Land_CampingChair_V2_white_F",[2196.01,7099.53,0],[],0,"CAN_COLLIDE"];
	_this = _item565;
	_objects pushback _this;
	_objectIDs pushback 565;
	_this setPosWorld [2196.02,7099.53,33.9568];
	_this setVectorDirAndUp [[-0.994018,0.107991,0.0163207],[0.0174102,0.00915298,0.999807]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item566 = objNull;
if (_layerRoot) then {
	_item566 = createVehicle ["Land_CampingChair_V2_white_F",[2195.98,7098.6,0],[],0,"CAN_COLLIDE"];
	_this = _item566;
	_objects pushback _this;
	_objectIDs pushback 566;
	_this setPosWorld [2195.99,7098.61,33.9658];
	_this setVectorDirAndUp [[-0.994018,0.107991,0.0163207],[0.0174102,0.00915298,0.999807]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item567 = objNull;
if (_layerRoot) then {
	_item567 = createVehicle ["Land_CampingChair_V2_white_F",[2193.93,7098.87,0],[],0,"CAN_COLLIDE"];
	_this = _item567;
	_objects pushback _this;
	_objectIDs pushback 567;
	_this setPosWorld [2193.94,7098.87,33.9991];
	_this setVectorDirAndUp [[-0.994018,0.107991,0.0163207],[0.0174102,0.00915298,0.999807]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item568 = objNull;
if (_layerRoot) then {
	_item568 = createVehicle ["Land_CampingChair_V2_white_F",[2194.83,7105.77,0],[],0,"CAN_COLLIDE"];
	_this = _item568;
	_objects pushback _this;
	_objectIDs pushback 568;
	_this setPosWorld [2194.83,7105.76,33.9214];
	_this setVectorDirAndUp [[-0.994141,0.107927,-0.00601611],[-0.00750107,-0.0133581,0.999883]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item569 = objNull;
if (_layerRoot) then {
	_item569 = createVehicle ["Land_CampingChair_V2_white_F",[2194.74,7104.93,0],[],0,"CAN_COLLIDE"];
	_this = _item569;
	_objects pushback _this;
	_objectIDs pushback 569;
	_this setPosWorld [2194.75,7104.94,33.9176];
	_this setVectorDirAndUp [[-0.994018,0.10803,0.0160609],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item570 = objNull;
if (_layerRoot) then {
	_item570 = createVehicle ["Land_CampingChair_V2_white_F",[2194.66,7104.19,0],[],0,"CAN_COLLIDE"];
	_this = _item570;
	_objects pushback _this;
	_objectIDs pushback 570;
	_this setPosWorld [2194.67,7104.19,33.9277];
	_this setVectorDirAndUp [[-0.994018,0.10803,0.0160609],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item571 = objNull;
if (_layerRoot) then {
	_item571 = createVehicle ["Land_CampingChair_V2_white_F",[2194.58,7103.43,0],[],0,"CAN_COLLIDE"];
	_this = _item571;
	_objects pushback _this;
	_objectIDs pushback 571;
	_this setPosWorld [2194.59,7103.44,33.9378];
	_this setVectorDirAndUp [[-0.994018,0.10803,0.0160609],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item572 = objNull;
if (_layerRoot) then {
	_item572 = createVehicle ["Land_CampingChair_V2_white_F",[2194.06,7101.34,0],[],0,"CAN_COLLIDE"];
	_this = _item572;
	_objects pushback _this;
	_objectIDs pushback 572;
	_this setPosWorld [2194.07,7101.35,33.971];
	_this setVectorDirAndUp [[-0.994018,0.10803,0.0160609],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item573 = objNull;
if (_layerRoot) then {
	_item573 = createVehicle ["Land_CampingChair_V2_white_F",[2194.05,7100.53,0],[],0,"CAN_COLLIDE"];
	_this = _item573;
	_objects pushback _this;
	_objectIDs pushback 573;
	_this setPosWorld [2194.06,7100.54,33.9805];
	_this setVectorDirAndUp [[-0.994018,0.10803,0.0160609],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item574 = objNull;
if (_layerRoot) then {
	_item574 = createVehicle ["Land_CampingChair_V2_white_F",[2193.97,7099.79,0],[],0,"CAN_COLLIDE"];
	_this = _item574;
	_objects pushback _this;
	_objectIDs pushback 574;
	_this setPosWorld [2193.97,7099.8,33.99];
	_this setVectorDirAndUp [[-0.994018,0.107991,0.0163207],[0.0174102,0.00915298,0.999807]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item582 = objNull;
if (_layerRoot) then {
	_item582 = createVehicle ["Land_TripodScreen_01_large_black_F",[2203.1,7105.4,0],[],0,"CAN_COLLIDE"];
	_this = _item582;
	_objects pushback _this;
	_objectIDs pushback 582;
	_this setPosWorld [2203.12,7105.39,34.4321];
	_this setVectorDirAndUp [[-0.871081,-0.491034,0.0101783],[0.0192104,-0.013356,0.999726]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item583 = objNull;
if (_layerRoot) then {
	_item583 = createVehicle ["Land_TripodScreen_01_large_black_F",[2203.59,7101.39,0],[],0,"CAN_COLLIDE"];
	_this = _item583;
	_objects pushback _this;
	_objectIDs pushback 583;
	_this setPosWorld [2203.61,7101.38,34.3691];
	_this setVectorDirAndUp [[-0.999645,0.0182058,0.0194521],[0.0192104,-0.013356,0.999726]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item584 = objNull;
if (_layerRoot) then {
	_item584 = createVehicle ["Land_TripodScreen_01_large_black_F",[2202.62,7097.05,-5.34058e-005],[],0,"CAN_COLLIDE"];
	_this = _item584;
	_objects pushback _this;
	_objectIDs pushback 584;
	_this setPosWorld [2202.65,7097.06,34.3763];
	_this setVectorDirAndUp [[-0.829963,0.557557,0.0170733],[0.0267105,0.0091511,0.999601]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item586 = objNull;
if (_layerRoot) then {
	_item586 = createVehicle ["Land_CampingTable_F",[2200.69,7101.52,-0.000110626],[],0,"CAN_COLLIDE"];
	_this = _item586;
	_objects pushback _this;
	_objectIDs pushback 586;
	_this setPosWorld [2200.7,7101.51,33.7951];
	_this setVectorDirAndUp [[0.998859,-0.0434656,-0.0197744],[0.0192104,-0.013356,0.999726]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item587 = objNull;
if (_layerRoot) then {
	_item587 = createVehicle ["Land_CampingTable_F",[2200.65,7103.76,0],[],0,"CAN_COLLIDE"];
	_this = _item587;
	_objects pushback _this;
	_objectIDs pushback 587;
	_this setPosWorld [2200.66,7103.76,33.8258];
	_this setVectorDirAndUp [[0.99926,0.0335683,-0.018753],[0.0192104,-0.013356,0.999726]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item588 = objNull;
if (_layerRoot) then {
	_item588 = createVehicle ["Land_CampingTable_F",[2200.36,7099.25,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item588;
	_objects pushback _this;
	_objectIDs pushback 588;
	_this setPosWorld [2200.37,7099.26,33.7853];
	_this setVectorDirAndUp [[-0.977903,0.207648,0.0242297],[0.0267105,0.0091511,0.999601]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item589 = objNull;
if (_layerRoot) then {
	_item589 = createVehicle ["Land_GymRack_02_F",[2168.88,7085.58,0],[],0,"CAN_COLLIDE"];
	_this = _item589;
	_objects pushback _this;
	_objectIDs pushback 589;
	_this setPosWorld [2168.88,7085.58,34.6344];
	_this setVectorDirAndUp [[0.0194181,-0.999811,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item590 = objNull;
if (_layerRoot) then {
	_item590 = createVehicle ["Land_GymRack_01_F",[2173.6,7086.04,0],[],0,"CAN_COLLIDE"];
	_this = _item590;
	_objects pushback _this;
	_objectIDs pushback 590;
	_this setPosWorld [2173.6,7086.04,35.1105];
	_this setVectorDirAndUp [[-0.00731438,0.999973,-3.07232e-005],[-0.00420034,0,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item591 = objNull;
if (_layerRoot) then {
	_item591 = createVehicle ["Land_GymRack_03_F",[2175.06,7086.18,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item591;
	_objects pushback _this;
	_objectIDs pushback 591;
	_this setPosWorld [2175.06,7086.18,34.5596];
	_this setVectorDirAndUp [[0,0.99933,-0.0366068],[0.03241,0.0365876,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item592 = objNull;
if (_layerRoot) then {
	_item592 = createVehicle ["Land_GymRack_03_F",[2178.36,7086.1,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item592;
	_objects pushback _this;
	_objectIDs pushback 592;
	_this setPosWorld [2178.36,7086.1,34.4557];
	_this setVectorDirAndUp [[0,0.99933,-0.0366068],[0.03241,0.0365876,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item593 = objNull;
if (_layerRoot) then {
	_item593 = createVehicle ["Land_GymRack_01_F",[2177.06,7085.79,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item593;
	_objects pushback _this;
	_objectIDs pushback 593;
	_this setPosWorld [2177.06,7085.79,35.0205];
	_this setVectorDirAndUp [[-0.00138812,0.99933,-0.0365618],[0.03241,0.0365876,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item595 = objNull;
if (_layerRoot) then {
	_item595 = createVehicle ["Land_GymRack_02_F",[2171.44,7085.76,0],[],0,"CAN_COLLIDE"];
	_this = _item595;
	_objects pushback _this;
	_objectIDs pushback 595;
	_this setPosWorld [2171.44,7085.76,34.6404];
	_this setVectorDirAndUp [[0.0335748,-0.999436,0.000141027],[-0.00420034,0,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item597 = objNull;
if (_layerRoot) then {
	_item597 = createVehicle ["Land_Ground_sheet_F",[2174.1,7087.71,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item597;
	_objects pushback _this;
	_objectIDs pushback 597;
	_this setPosWorld [2174.1,7087.71,33.9706];
	_this setVectorDirAndUp [[0,0.99933,-0.0366068],[0.03241,0.0365876,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item598 = objNull;
if (_layerRoot) then {
	_item598 = createVehicle ["Land_Ground_sheet_F",[2173.6,7087.71,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item598;
	_objects pushback _this;
	_objectIDs pushback 598;
	_this setPosWorld [2173.6,7087.71,33.9868];
	_this setVectorDirAndUp [[0,0.99933,-0.0366068],[0.03241,0.0365876,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item599 = objNull;
if (_layerRoot) then {
	_item599 = createVehicle ["Land_Ground_sheet_F",[2173.11,7087.72,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item599;
	_objects pushback _this;
	_objectIDs pushback 599;
	_this setPosWorld [2173.11,7087.72,34.0025];
	_this setVectorDirAndUp [[0,0.99933,-0.0366068],[0.03241,0.0365876,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item600 = objNull;
if (_layerRoot) then {
	_item600 = createVehicle ["Land_Ground_sheet_F",[2177.57,7087.45,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item600;
	_objects pushback _this;
	_objectIDs pushback 600;
	_this setPosWorld [2177.57,7087.45,33.868];
	_this setVectorDirAndUp [[0,0.99933,-0.0366068],[0.03241,0.0365876,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item601 = objNull;
if (_layerRoot) then {
	_item601 = createVehicle ["Land_Ground_sheet_F",[2177.07,7087.45,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item601;
	_objects pushback _this;
	_objectIDs pushback 601;
	_this setPosWorld [2177.07,7087.45,33.8838];
	_this setVectorDirAndUp [[0,0.99933,-0.0366068],[0.03241,0.0365876,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item602 = objNull;
if (_layerRoot) then {
	_item602 = createVehicle ["Land_Ground_sheet_F",[2176.57,7087.45,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item602;
	_objects pushback _this;
	_objectIDs pushback 602;
	_this setPosWorld [2176.57,7087.45,33.9002];
	_this setVectorDirAndUp [[0,0.99933,-0.0366068],[0.03241,0.0365876,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item603 = objNull;
if (_layerRoot) then {
	_item603 = createVehicle ["Land_Metal_rack_Tall_F",[2170.55,7105.84,0.000324249],[],0,"CAN_COLLIDE"];
	_this = _item603;
	_objects pushback _this;
	_objectIDs pushback 603;
	_this setPosWorld [2170.55,7105.83,33.9733];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item604 = objNull;
if (_layerRoot) then {
	_item604 = createVehicle ["Land_Metal_rack_F",[2175.69,7108.09,0],[],0,"CAN_COLLIDE"];
	_this = _item604;
	_objects pushback _this;
	_objectIDs pushback 604;
	_this setPosWorld [2175.76,7108.12,34.4858];
	_this setVectorDirAndUp [[0,0.99947,-0.0325621],[0.0830345,0.0324496,0.996018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item605 = objNull;
if (_layerRoot) then {
	_item605 = createVehicle ["Land_Metal_wooden_rack_F",[2175.8,7106.01,0],[],0,"CAN_COLLIDE"];
	_this = _item605;
	_objects pushback _this;
	_objectIDs pushback 605;
	_this setPosWorld [2175.88,7106.05,34.6489];
	_this setVectorDirAndUp [[0,0.99947,-0.0325621],[0.0830345,0.0324496,0.996018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item606 = objNull;
if (_layerRoot) then {
	_item606 = createVehicle ["Land_Rack_F",[2171.66,7107.87,-0.000854492],[],0,"CAN_COLLIDE"];
	_this = _item606;
	_objects pushback _this;
	_objectIDs pushback 606;
	_this setPosWorld [2171.71,7107.87,34.7307];
	_this setVectorDirAndUp [[0.996055,0.0729444,-0.0505404],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item607 = objNull;
if (_layerRoot) then {
	_item607 = createVehicle ["Land_Rack_F",[2173.19,7108.07,0],[],0,"CAN_COLLIDE"];
	_this = _item607;
	_objects pushback _this;
	_objectIDs pushback 607;
	_this setPosWorld [2173.25,7108.1,34.6113];
	_this setVectorDirAndUp [[0.993892,0.0702095,-0.0851406],[0.0830307,0.0324465,0.996019]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item608 = objNull;
if (_layerRoot) then {
	_item608 = createVehicle ["Land_Rack_F",[2170.18,7107.85,0],[],0,"CAN_COLLIDE"];
	_this = _item608;
	_objects pushback _this;
	_objectIDs pushback 608;
	_this setPosWorld [2170.22,7107.85,34.8068];
	_this setVectorDirAndUp [[0.996055,0.0729444,-0.0505404],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item609 = objNull;
if (_layerRoot) then {
	_item609 = createVehicle ["Land_Metal_rack_Tall_F",[2171.41,7105.85,0],[],0,"CAN_COLLIDE"];
	_this = _item609;
	_objects pushback _this;
	_objectIDs pushback 609;
	_this setPosWorld [2171.42,7105.84,33.9293];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item610 = objNull;
if (_layerRoot) then {
	_item610 = createVehicle ["Land_Metal_rack_Tall_F",[2172.28,7105.87,0],[],0,"CAN_COLLIDE"];
	_this = _item610;
	_objects pushback _this;
	_objectIDs pushback 610;
	_this setPosWorld [2172.29,7105.85,33.8851];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item611 = objNull;
if (_layerRoot) then {
	_item611 = createVehicle ["Land_Metal_rack_Tall_F",[2173.16,7105.91,0],[],0,"CAN_COLLIDE"];
	_this = _item611;
	_objects pushback _this;
	_objectIDs pushback 611;
	_this setPosWorld [2173.17,7105.9,33.8405];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item612 = objNull;
if (_layerRoot) then {
	_item612 = createVehicle ["Land_Metal_rack_F",[2176.9,7108.1,0],[],0,"CAN_COLLIDE"];
	_this = _item612;
	_objects pushback _this;
	_objectIDs pushback 612;
	_this setPosWorld [2176.97,7108.13,34.3851];
	_this setVectorDirAndUp [[0,0.99947,-0.0325621],[0.0830345,0.0324496,0.996018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item613 = objNull;
if (_layerRoot) then {
	_item613 = createVehicle ["Land_Metal_rack_F",[2178.14,7108.13,0],[],0,"CAN_COLLIDE"];
	_this = _item613;
	_objects pushback _this;
	_objectIDs pushback 613;
	_this setPosWorld [2178.22,7108.16,34.28];
	_this setVectorDirAndUp [[0,0.99947,-0.0325621],[0.0830345,0.0324496,0.996018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item614 = objNull;
if (_layerRoot) then {
	_item614 = createVehicle ["Land_Metal_wooden_rack_F",[2177.14,7105.9,0],[],0,"CAN_COLLIDE"];
	_this = _item614;
	_objects pushback _this;
	_objectIDs pushback 614;
	_this setPosWorld [2177.22,7105.94,34.5411];
	_this setVectorDirAndUp [[0,0.99947,-0.0325621],[0.0830345,0.0324496,0.996018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item615 = objNull;
if (_layerRoot) then {
	_item615 = createVehicle ["Land_Metal_wooden_rack_F",[2178.34,7105.86,0],[],0,"CAN_COLLIDE"];
	_this = _item615;
	_objects pushback _this;
	_objectIDs pushback 615;
	_this setPosWorld [2178.43,7105.9,34.4419];
	_this setVectorDirAndUp [[0,0.99947,-0.0325621],[0.0830345,0.0324496,0.996018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item617 = objNull;
if (_layerRoot) then {
	_item617 = createVehicle ["Land_Metal_wooden_rack_F",[2175.72,7103.83,0],[],0,"CAN_COLLIDE"];
	_this = _item617;
	_objects pushback _this;
	_objectIDs pushback 617;
	_this setPosWorld [2175.77,7103.83,34.7147];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item618 = objNull;
if (_layerRoot) then {
	_item618 = createVehicle ["Land_Metal_wooden_rack_F",[2177.02,7103.69,0],[],0,"CAN_COLLIDE"];
	_this = _item618;
	_objects pushback _this;
	_objectIDs pushback 618;
	_this setPosWorld [2177.11,7103.72,34.6227];
	_this setVectorDirAndUp [[0,0.99947,-0.032559],[0.0830307,0.0324465,0.996019]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item619 = objNull;
if (_layerRoot) then {
	_item619 = createVehicle ["Land_Metal_wooden_rack_F",[2178.23,7103.65,0],[],0,"CAN_COLLIDE"];
	_this = _item619;
	_objects pushback _this;
	_objectIDs pushback 619;
	_this setPosWorld [2178.31,7103.68,34.5234];
	_this setVectorDirAndUp [[0,0.99947,-0.032559],[0.0830307,0.0324465,0.996019]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item620 = objNull;
if (_layerRoot) then {
	_item620 = createVehicle ["Land_Metal_wooden_rack_F",[2175.61,7101.61,0],[],0,"CAN_COLLIDE"];
	_this = _item620;
	_objects pushback _this;
	_objectIDs pushback 620;
	_this setPosWorld [2175.67,7101.61,34.7199];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item621 = objNull;
if (_layerRoot) then {
	_item621 = createVehicle ["Land_Metal_wooden_rack_F",[2176.95,7101.5,0],[],0,"CAN_COLLIDE"];
	_this = _item621;
	_objects pushback _this;
	_objectIDs pushback 621;
	_this setPosWorld [2177,7101.5,34.6521];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item622 = objNull;
if (_layerRoot) then {
	_item622 = createVehicle ["Land_Metal_wooden_rack_F",[2178.16,7101.46,0],[],0,"CAN_COLLIDE"];
	_this = _item622;
	_objects pushback _this;
	_objectIDs pushback 622;
	_this setPosWorld [2178.21,7101.46,34.5908];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item623 = objNull;
if (_layerRoot) then {
	_item623 = createVehicle ["Land_Metal_rack_Tall_F",[2170.57,7103.55,0],[],0,"CAN_COLLIDE"];
	_this = _item623;
	_objects pushback _this;
	_objectIDs pushback 623;
	_this setPosWorld [2170.58,7103.54,33.9718];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item624 = objNull;
if (_layerRoot) then {
	_item624 = createVehicle ["Land_Metal_rack_Tall_F",[2171.43,7103.57,0],[],0,"CAN_COLLIDE"];
	_this = _item624;
	_objects pushback _this;
	_objectIDs pushback 624;
	_this setPosWorld [2171.44,7103.55,33.9282];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item625 = objNull;
if (_layerRoot) then {
	_item625 = createVehicle ["Land_Metal_rack_Tall_F",[2172.31,7103.58,0],[],0,"CAN_COLLIDE"];
	_this = _item625;
	_objects pushback _this;
	_objectIDs pushback 625;
	_this setPosWorld [2172.31,7103.57,33.884];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item626 = objNull;
if (_layerRoot) then {
	_item626 = createVehicle ["Land_Metal_rack_Tall_F",[2173.19,7103.62,0],[],0,"CAN_COLLIDE"];
	_this = _item626;
	_objects pushback _this;
	_objectIDs pushback 626;
	_this setPosWorld [2173.19,7103.61,33.8393];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item627 = objNull;
if (_layerRoot) then {
	_item627 = createVehicle ["Land_Metal_rack_Tall_F",[2170.7,7101.37,0],[],0,"CAN_COLLIDE"];
	_this = _item627;
	_objects pushback _this;
	_objectIDs pushback 627;
	_this setPosWorld [2170.71,7101.36,33.9653];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item628 = objNull;
if (_layerRoot) then {
	_item628 = createVehicle ["Land_Metal_rack_Tall_F",[2171.56,7101.39,0],[],0,"CAN_COLLIDE"];
	_this = _item628;
	_objects pushback _this;
	_objectIDs pushback 628;
	_this setPosWorld [2171.57,7101.37,33.9216];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item629 = objNull;
if (_layerRoot) then {
	_item629 = createVehicle ["Land_Metal_rack_Tall_F",[2172.44,7101.4,0],[],0,"CAN_COLLIDE"];
	_this = _item629;
	_objects pushback _this;
	_objectIDs pushback 629;
	_this setPosWorld [2172.44,7101.39,33.8774];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item630 = objNull;
if (_layerRoot) then {
	_item630 = createVehicle ["Land_Metal_rack_Tall_F",[2173.31,7101.44,0],[],0,"CAN_COLLIDE"];
	_this = _item630;
	_objects pushback _this;
	_objectIDs pushback 630;
	_this setPosWorld [2173.32,7101.43,33.8328];
	_this setVectorDirAndUp [[0,1,0],[0.0506754,0,0.998715]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item631 = objNull;
if (_layerRoot) then {
	_item631 = createVehicle ["ACE_Box_Ammo",[2184.02,7107.51,0],[],0,"CAN_COLLIDE"];
	_this = _item631;
	_objects pushback _this;
	_objectIDs pushback 631;
	_this setPosWorld [2184.01,7107.51,33.5882];
	_this setVectorDirAndUp [[0,0.999933,-0.0115547],[-0.0267107,0.0115505,0.999576]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[""ACE_20Rnd_762x51_Mag_SD"",""ACE_10Rnd_762x51_M993_AP_Mag"",""ACE_20Rnd_762x51_M993_AP_Mag"",""ACE_10Rnd_762x51_M118LR_Mag"",""ACE_20Rnd_762x51_M118LR_Mag"",""ACE_10Rnd_762x51_Mk316_Mod_0_Mag"",""ACE_20Rnd_762x51_Mk316_Mod_0_Mag"",""ACE_10Rnd_762x51_Mk319_Mod_0_Mag"",""ACE_20Rnd_762x51_Mk319_Mod_0_Mag"",""ACE_20Rnd_762x51_Mag_Tracer"",""ACE_20Rnd_762x51_Mag_Tracer_Dim"",""ACE_20Rnd_762x67_Mk248_Mod_0_Mag"",""ACE_20Rnd_762x67_Mk248_Mod_1_Mag"",""ACE_20Rnd_762x67_Berger_Hybrid_OTM_Mag"",""ACE_10Rnd_762x54_Tracer_mag"",""ACE_10Rnd_580x42_DBP88_Mag"",""ACE_30Rnd_556x45_Stanag_M995_AP_mag"",""ACE_30Rnd_556x45_Stanag_Mk262_mag"",""ACE_30Rnd_556x45_Stanag_Mk318_mag"",""ACE_30Rnd_556x45_Stanag_Tracer_Dim"",""ACE_30Rnd_65x39_caseless_mag_Tracer_Dim"",""ACE_30Rnd_65x39_caseless_green_mag_Tracer_Dim"",""ACE_100Rnd_65x39_caseless_mag_Tracer_Dim"",""ACE_200Rnd_65x39_cased_Box_Tracer_Dim"",""ACE_20Rnd_65x47_Scenar_mag"",""ACE_30Rnd_65x47_Scenar_mag"",""ACE_20Rnd_65_Creedmor_mag"",""ACE_30Rnd_65_Creedmor_mag"",""ACE_10Rnd_338_300gr_HPBT_Mag"",""ACE_10Rnd_338_API526_Mag"",""ACE_7Rnd_408_305gr_Mag"",""ACE_5Rnd_127x99_Mag"",""ACE_5Rnd_127x99_API_Mag"",""ACE_5Rnd_127x99_AMAX_Mag""],[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item632 = objNull;
if (_layerRoot) then {
	_item632 = createVehicle ["ACE_fastropingSupplyCrate",[2185.65,7107.24,0],[],0,"CAN_COLLIDE"];
	_this = _item632;
	_objects pushback _this;
	_objectIDs pushback 632;
	_this setPosWorld [2185.63,7107.25,34.1403];
	_this setVectorDirAndUp [[0,0.999933,-0.0115547],[-0.0267107,0.0115505,0.999576]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[""ACE_rope12"",""ACE_rope15"",""ACE_rope18"",""ACE_rope27"",""ACE_rope36""],[15,15,15,15,15]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item633 = objNull;
if (_layerRoot) then {
	_item633 = createVehicle ["ACRE_RadioSupplyCrate",[2184.14,7106.38,-0.000102997],[],0,"CAN_COLLIDE"];
	_this = _item633;
	_objects pushback _this;
	_objectIDs pushback 633;
	_this setPosWorld [2184.13,7106.39,33.5698];
	_this setVectorDirAndUp [[0,0.999933,-0.0115547],[-0.0267107,0.0115505,0.999576]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[""ACRE_PRC77"",""ACRE_PRC117F"",""ACRE_PRC148"",""ACRE_PRC152"",""ACRE_PRC343"",""ACRE_SEM52SL"",""ACRE_SEM70""],[5,5,10,10,10,10,5]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item634 = objNull;
if (_layerRoot) then {
	_item634 = createVehicle ["I_supplyCrate_F",[2188.15,7107.01,0],[],0,"CAN_COLLIDE"];
	_this = _item634;
	_objects pushback _this;
	_objectIDs pushback 634;
	_this setPosWorld [2188.13,7107.02,34.3123];
	_this setVectorDirAndUp [[0,0.999933,-0.0115547],[-0.0267107,0.0115505,0.999576]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[""launch_NLAW_F"",""arifle_Mk20_F"",""LMG_Mk200_F"",""Laserdesignator_03""],[1,2,1,1]],[[""9Rnd_45ACP_Mag"",""30Rnd_9x21_Mag"",""20Rnd_762x51_Mag"",""30Rnd_556x45_Stanag"",""200Rnd_65x39_cased_Box"",""1Rnd_HE_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""Chemlight_green"",""NLAW_F"",""Laserbatteries"",""HandGrenade"",""MiniGrenade"",""SmokeShell"",""SmokeShellGreen"",""UGL_FlareYellow_F"",""UGL_FlareGreen_F"",""ACE_SpareBarrel"",""ACE_30Rnd_556x45_Stanag_M995_AP_mag"",""ACE_30Rnd_556x45_Stanag_Mk262_mag"",""ACE_30Rnd_556x45_Stanag_Mk318_mag""],[6,6,6,24,3,6,2,2,6,3,2,6,6,2,2,2,2,2,4,4,4]],[[""FirstAidKit"",""acc_flashlight"",""bipod_03_F_blk"",""ACE_Chemlight_Shield"",""ACE_EarPlugs""],[10,2,1,12,12]],[[""B_FieldPack_oli""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item635 = objNull;
if (_layerRoot) then {
	_item635 = createVehicle ["C_IDAP_supplyCrate_F",[2188.33,7104.31,-0.000869751],[],0,"CAN_COLLIDE"];
	_this = _item635;
	_objects pushback _this;
	_objectIDs pushback 635;
	_this setPosWorld [2188.31,7104.32,34.3476];
	_this setVectorDirAndUp [[0,0.999933,-0.0115547],[-0.0267107,0.0115505,0.999576]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[""Binocular""],[1]],[[],[]],[[""FirstAidKit"",""Medikit"",""MineDetector"",""ToolKit"",""H_PASGT_basic_blue_F"",""H_PASGT_basic_white_F"",""H_Cap_Black_IDAP_F"",""H_Cap_Orange_IDAP_F"",""H_Cap_White_IDAP_F"",""H_HeadBandage_clean_F"",""G_Respirator_white_F"",""G_EyeProtectors_F"",""V_EOD_blue_F"",""V_Plain_medical_F""],[20,2,1,1,1,1,2,2,2,2,2,2,1,4]],[[""B_Messenger_IDAP_F""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item636 = objNull;
if (_layerRoot) then {
	_item636 = createVehicle ["B_supplyCrate_F",[2190.73,7104.29,0],[],0,"CAN_COLLIDE"];
	_this = _item636;
	_objects pushback _this;
	_objectIDs pushback 636;
	_this setPosWorld [2190.74,7104.3,34.3808];
	_this setVectorDirAndUp [[0,0.999933,-0.0115598],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[""launch_NLAW_F"",""arifle_MX_F"",""arifle_MX_SW_F"",""Laserdesignator""],[1,2,1,1]],[[""30Rnd_65x39_caseless_mag"",""16Rnd_9x21_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""20Rnd_762x51_Mag"",""100Rnd_65x39_caseless_mag"",""1Rnd_HE_Grenade_shell"",""3Rnd_HE_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""Chemlight_green"",""NLAW_F"",""Laserbatteries"",""HandGrenade"",""MiniGrenade"",""SmokeShell"",""SmokeShellGreen"",""UGL_FlareWhite_F"",""UGL_FlareGreen_F"",""ACE_SpareBarrel"",""ACE_20Rnd_65x47_Scenar_mag"",""ACE_30Rnd_65x47_Scenar_mag"",""ACE_20Rnd_65_Creedmor_mag"",""ACE_30Rnd_65_Creedmor_mag"",""ACE_10Rnd_762x51_M118LR_Mag"",""ACE_20Rnd_762x51_M118LR_Mag"",""ACE_10Rnd_762x51_Mk316_Mod_0_Mag"",""ACE_20Rnd_762x51_Mk316_Mod_0_Mag"",""ACE_10Rnd_762x51_Mk319_Mod_0_Mag"",""ACE_20Rnd_762x51_Mk319_Mod_0_Mag"",""ACE_20Rnd_762x51_Mag_Tracer"",""ACE_20Rnd_762x51_Mag_Tracer_Dim""],[24,6,6,6,6,3,1,2,2,6,3,2,6,6,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4]],[[""FirstAidKit"",""acc_flashlight"",""bipod_01_F_blk"",""ACE_Chemlight_Shield"",""ACE_EarPlugs""],[10,2,1,12,12]],[[""B_Kitbag_mcamo""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item637 = objNull;
if (_layerRoot) then {
	_item637 = createVehicle ["C_IDAP_supplyCrate_F",[2190.58,7106.85,-0.000545502],[],0,"CAN_COLLIDE"];
	_this = _item637;
	_objects pushback _this;
	_objectIDs pushback 637;
	_this setPosWorld [2190.59,7106.87,34.3532];
	_this setVectorDirAndUp [[0,0.999933,-0.0115598],[0.0174102,0.0115581,0.999782]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[""Binocular""],[1]],[[],[]],[[""FirstAidKit"",""Medikit"",""MineDetector"",""ToolKit"",""H_PASGT_basic_blue_F"",""H_PASGT_basic_white_F"",""H_Cap_Black_IDAP_F"",""H_Cap_Orange_IDAP_F"",""H_Cap_White_IDAP_F"",""H_HeadBandage_clean_F"",""G_Respirator_white_F"",""G_EyeProtectors_F"",""V_EOD_blue_F"",""V_Plain_medical_F""],[20,2,1,1,1,1,2,2,2,2,2,2,1,4]],[[""B_Messenger_IDAP_F""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item652 = objNull;
if (_layerRoot) then {
	_item652 = createVehicle ["Land_CampingTable_F",[2192.07,7095.01,0],[],0,"CAN_COLLIDE"];
	_this = _item652;
	_objects pushback _this;
	_objectIDs pushback 652;
	_this setPosWorld [2192.08,7095.01,33.9696];
	_this setVectorDirAndUp [[-0.0486285,-0.998775,0.00920809],[0.0166617,0.00840656,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item653 = objNull;
if (_layerRoot) then {
	_item653 = createVehicle ["Land_CampingTable_F",[2193.22,7090.06,0],[],0,"CAN_COLLIDE"];
	_this = _item653;
	_objects pushback _this;
	_objectIDs pushback 653;
	_this setPosWorld [2193.23,7090.07,33.9921];
	_this setVectorDirAndUp [[0.0457836,0.998909,-0.00916182],[0.0166617,0.00840656,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item654 = objNull;
if (_layerRoot) then {
	_item654 = createVehicle ["Land_CampingTable_F",[2190.54,7090.06,0],[],0,"CAN_COLLIDE"];
	_this = _item654;
	_objects pushback _this;
	_objectIDs pushback 654;
	_this setPosWorld [2190.54,7090.06,34.0369];
	_this setVectorDirAndUp [[-0.000442269,0.999965,-0.00840036],[0.0166617,0.00840656,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item656 = objNull;
if (_layerRoot) then {
	_item656 = createVehicle ["Land_TablePlastic_01_F",[2199.54,7087.68,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item656;
	_objects pushback _this;
	_objectIDs pushback 656;
	_this setPosWorld [2199.54,7087.68,33.8999];
	_this setVectorDirAndUp [[-0.994136,-0.106998,0.0156672],[0.0166617,-0.00840615,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item660 = objNull;
if (_layerRoot) then {
	_item660 = createVehicle ["Land_CampingChair_V2_white_F",[2198.46,7087.58,0],[],0,"CAN_COLLIDE"];
	_this = _item660;
	_objects pushback _this;
	_objectIDs pushback 660;
	_this setPosWorld [2198.47,7087.57,33.98];
	_this setVectorDirAndUp [[-0.991287,-0.130814,0.0154195],[0.0166617,-0.00840615,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item661 = objNull;
if (_layerRoot) then {
	_item661 = createVehicle ["Land_CampingChair_V2_white_F",[2200.59,7087.78,-0.000118256],[],0,"CAN_COLLIDE"];
	_this = _item661;
	_objects pushback _this;
	_objectIDs pushback 661;
	_this setPosWorld [2200.61,7087.77,33.9325];
	_this setVectorDirAndUp [[0.995079,0.0914143,-0.0382211],[0.039151,-0.00840087,0.999198]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item662 = objNull;
if (_layerRoot) then {
	_item662 = createVehicle ["Land_CampingChair_V2_white_F",[2199.4,7089.27,-7.62939e-005],[],0,"CAN_COLLIDE"];
	_this = _item662;
	_objects pushback _this;
	_objectIDs pushback 662;
	_this setPosWorld [2199.41,7089.26,33.9783];
	_this setVectorDirAndUp [[0.0245609,0.999666,0.00799552],[0.0166617,-0.00840615,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item663 = objNull;
if (_layerRoot) then {
	_item663 = createVehicle ["Land_CampingChair_V2_white_F",[2199.75,7086.03,0],[],0,"CAN_COLLIDE"];
	_this = _item663;
	_objects pushback _this;
	_objectIDs pushback 663;
	_this setPosWorld [2199.76,7086.02,33.9454];
	_this setVectorDirAndUp [[0.140857,-0.989972,-0.0106706],[0.0166617,-0.00840615,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item666 = objNull;
if (_layerRoot) then {
	_item666 = createVehicle ["Land_TablePlastic_01_F",[2195.7,7086.06,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item666;
	_objects pushback _this;
	_objectIDs pushback 666;
	_this setPosWorld [2195.71,7086.05,33.9502];
	_this setVectorDirAndUp [[0,0.999965,0.00840732],[0.0166617,-0.00840615,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item667 = objNull;
if (_layerRoot) then {
	_item667 = createVehicle ["Land_CampingChair_V2_white_F",[2195.71,7087.14,0],[],0,"CAN_COLLIDE"];
	_this = _item667;
	_objects pushback _this;
	_objectIDs pushback 667;
	_this setPosWorld [2195.72,7087.14,34.0221];
	_this setVectorDirAndUp [[-0.023982,0.999674,0.00880452],[0.0166617,-0.00840615,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item668 = objNull;
if (_layerRoot) then {
	_item668 = createVehicle ["Land_CampingChair_V2_white_F",[2195.68,7084.99,0],[],0,"CAN_COLLIDE"];
	_this = _item668;
	_objects pushback _this;
	_objectIDs pushback 668;
	_this setPosWorld [2195.69,7084.99,34.0045];
	_this setVectorDirAndUp [[-0.0158478,-0.999841,-0.00814219],[0.0166617,-0.00840615,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item669 = objNull;
if (_layerRoot) then {
	_item669 = createVehicle ["Land_CampingChair_V2_white_F",[2197.28,7086.03,0],[],0,"CAN_COLLIDE"];
	_this = _item669;
	_objects pushback _this;
	_objectIDs pushback 669;
	_this setPosWorld [2197.29,7086.03,33.9866];
	_this setVectorDirAndUp [[0.991211,-0.13111,-0.0176204],[0.0166617,-0.00840615,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item670 = objNull;
if (_layerRoot) then {
	_item670 = createVehicle ["Land_CampingChair_V2_white_F",[2194.03,7086.02,0],[],0,"CAN_COLLIDE"];
	_this = _item670;
	_objects pushback _this;
	_objectIDs pushback 670;
	_this setPosWorld [2194.04,7086.02,34.0407];
	_this setVectorDirAndUp [[-0.999274,-0.0344124,0.0163631],[0.0166617,-0.00840615,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item671 = objNull;
if (_layerRoot) then {
	_item671 = createVehicle ["Land_TablePlastic_01_F",[2190.5,7086.01,0],[],0,"CAN_COLLIDE"];
	_this = _item671;
	_objects pushback _this;
	_objectIDs pushback 671;
	_this setPosWorld [2190.52,7086.02,34.1554];
	_this setVectorDirAndUp [[0,0.999667,-0.0258122],[0.0508254,0.0257788,0.998375]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item672 = objNull;
if (_layerRoot) then {
	_item672 = createVehicle ["Land_CampingChair_V2_white_F",[2190.51,7087.09,0],[],0,"CAN_COLLIDE"];
	_this = _item672;
	_objects pushback _this;
	_objectIDs pushback 672;
	_this setPosWorld [2190.53,7087.1,34.1898];
	_this setVectorDirAndUp [[-0.0239543,0.999411,-0.0245861],[0.0508254,0.0257788,0.998375]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item673 = objNull;
if (_layerRoot) then {
	_item673 = createVehicle ["Land_CampingChair_V2_white_F",[2190.48,7084.94,0],[],0,"CAN_COLLIDE"];
	_this = _item673;
	_objects pushback _this;
	_objectIDs pushback 673;
	_this setPosWorld [2190.5,7084.95,34.2469];
	_this setVectorDirAndUp [[-0.0158295,-0.99952,0.0266143],[0.0508254,0.0257788,0.998375]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item674 = objNull;
if (_layerRoot) then {
	_item674 = createVehicle ["Land_CampingChair_V2_white_F",[2192.08,7085.98,0],[],0,"CAN_COLLIDE"];
	_this = _item674;
	_objects pushback _this;
	_objectIDs pushback 674;
	_this setPosWorld [2192.1,7085.99,34.1387];
	_this setVectorDirAndUp [[0.990068,-0.132511,-0.046981],[0.0508254,0.0257788,0.998375]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item675 = objNull;
if (_layerRoot) then {
	_item675 = createVehicle ["Land_CampingChair_V2_white_F",[2188.85,7085.97,0],[],0,"CAN_COLLIDE"];
	_this = _item675;
	_objects pushback _this;
	_objectIDs pushback 675;
	_this setPosWorld [2188.85,7085.99,34.25];
	_this setVectorDirAndUp [[-0.999404,-0.0341538,0.00508108],[0.00420027,0.025812,0.999658]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item681 = objNull;
if (_layerRoot) then {
	_item681 = createVehicle ["Land_TablePlastic_01_F",[2186.73,7086.76,0],[],0,"CAN_COLLIDE"];
	_this = _item681;
	_objects pushback _this;
	_objectIDs pushback 681;
	_this setPosWorld [2186.73,7086.77,34.1758];
	_this setVectorDirAndUp [[0.99973,0.0227565,-0.00478816],[0.00420027,0.025812,0.999658]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item682 = objNull;
if (_layerRoot) then {
	_item682 = createVehicle ["Land_CampingChair_V2_white_F",[2187.81,7086.77,0],[],0,"CAN_COLLIDE"];
	_this = _item682;
	_objects pushback _this;
	_objectIDs pushback 682;
	_this setPosWorld [2187.81,7086.78,34.2339];
	_this setVectorDirAndUp [[0.998893,0.0467214,-0.00540344],[0.00420027,0.025812,0.999658]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item683 = objNull;
if (_layerRoot) then {
	_item683 = createVehicle ["Land_CampingChair_V2_white_F",[2185.66,7086.75,0],[],0,"CAN_COLLIDE"];
	_this = _item683;
	_objects pushback _this;
	_objectIDs pushback 683;
	_this setPosWorld [2185.66,7086.76,34.2434];
	_this setVectorDirAndUp [[-0.999967,-0.00691299,0.00438007],[0.00420027,0.025812,0.999658]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item684 = objNull;
if (_layerRoot) then {
	_item684 = createVehicle ["Land_CampingChair_V2_white_F",[2186.73,7085.17,0],[],0,"CAN_COLLIDE"];
	_this = _item684;
	_objects pushback _this;
	_objectIDs pushback 684;
	_this setPosWorld [2186.74,7085.19,34.2795];
	_this setVectorDirAndUp [[-0.108544,-0.993749,0.0261154],[0.00420027,0.025812,0.999658]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item685 = objNull;
if (_layerRoot) then {
	_item685 = createVehicle ["Land_CampingChair_V2_white_F",[2186.65,7088.42,0],[],0,"CAN_COLLIDE"];
	_this = _item685;
	_objects pushback _this;
	_objectIDs pushback 685;
	_this setPosWorld [2186.65,7088.44,34.1959];
	_this setVectorDirAndUp [[-0.0571233,0.998041,-0.0255302],[0.00420027,0.025812,0.999658]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item691 = objNull;
if (_layerRoot) then {
	_item691 = createVehicle ["Land_BagFence_01_long_green_F",[2394.65,7070.35,0],[],0,"CAN_COLLIDE"];
	_this = _item691;
	_objects pushback _this;
	_objectIDs pushback 691;
	_this setPosWorld [2394.65,7070.35,39.1715];
	_this setVectorDirAndUp [[-0.998343,-0.0515568,-0.0255617],[-0.0258122,0.00419895,0.999658]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item692 = objNull;
if (_layerRoot) then {
	_item692 = createVehicle ["Land_BagFence_01_long_green_F",[2394.65,7073.34,0],[],0,"CAN_COLLIDE"];
	_this = _item692;
	_objects pushback _this;
	_objectIDs pushback 692;
	_this setPosWorld [2394.65,7073.34,39.1589];
	_this setVectorDirAndUp [[-0.998343,-0.0515568,-0.0255617],[-0.0258122,0.00419895,0.999658]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item693 = objNull;
if (_layerRoot) then {
	_item693 = createVehicle ["Land_BagFence_01_long_green_F",[2394.73,7076.36,0],[],0,"CAN_COLLIDE"];
	_this = _item693;
	_objects pushback _this;
	_objectIDs pushback 693;
	_this setPosWorld [2394.73,7076.36,39.1728];
	_this setVectorDirAndUp [[-0.997511,-0.0505574,-0.0491539],[-0.0482838,-0.0182899,0.998666]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item694 = objNull;
if (_layerRoot) then {
	_item694 = createVehicle ["Land_BagFence_01_long_green_F",[2394.68,7079.42,0],[],0,"CAN_COLLIDE"];
	_this = _item694;
	_objects pushback _this;
	_objectIDs pushback 694;
	_this setPosWorld [2394.68,7079.42,39.2262];
	_this setVectorDirAndUp [[-0.997511,-0.0505574,-0.0491539],[-0.0482838,-0.0182899,0.998666]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item695 = objNull;
if (_layerRoot) then {
	_item695 = createVehicle ["Land_BagFence_01_long_green_F",[2394.71,7082.43,0],[],0,"CAN_COLLIDE"];
	_this = _item695;
	_objects pushback _this;
	_objectIDs pushback 695;
	_this setPosWorld [2394.71,7082.43,39.3169];
	_this setVectorDirAndUp [[-0.997511,-0.0498592,-0.0498619],[-0.0482838,-0.0323708,0.998309]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item696 = objNull;
if (_layerRoot) then {
	_item696 = createVehicle ["Land_BagFence_01_long_green_F",[2394.71,7085.36,0],[],0,"CAN_COLLIDE"];
	_this = _item696;
	_objects pushback _this;
	_objectIDs pushback 696;
	_this setPosWorld [2394.71,7085.36,39.4098];
	_this setVectorDirAndUp [[-0.998587,-0.0514827,-0.0132102],[-0.0133585,0.00253696,0.999908]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item697 = objNull;
if (_layerRoot) then {
	_item697 = createVehicle ["Land_BagFence_01_long_green_F",[2394.78,7067.49,0],[],0,"CAN_COLLIDE"];
	_this = _item697;
	_objects pushback _this;
	_objectIDs pushback 697;
	_this setPosWorld [2394.78,7067.49,39.0714];
	_this setVectorDirAndUp [[-0.998343,-0.0503293,-0.0279009],[-0.0258122,-0.0416842,0.998797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item699 = objNull;
if (_layerRoot) then {
	_item699 = createVehicle ["Land_BagFence_01_corner_green_F",[2393.99,7062.56,0],[],0,"CAN_COLLIDE"];
	_this = _item699;
	_objects pushback _this;
	_objectIDs pushback 699;
	_this setPosWorld [2393.99,7062.56,38.9211];
	_this setVectorDirAndUp [[0.842989,-0.537884,-0.00704479],[-0.0049555,-0.0208606,0.99977]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item700 = objNull;
if (_layerRoot) then {
	_item700 = createVehicle ["Land_BagFence_01_short_green_F",[2394.86,7063.58,0],[],0,"CAN_COLLIDE"];
	_this = _item700;
	_objects pushback _this;
	_objectIDs pushback 700;
	_this setPosWorld [2394.86,7063.58,38.9382];
	_this setVectorDirAndUp [[0.995762,-0.0919232,0.00301761],[-0.0049555,-0.0208606,0.99977]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item701 = objNull;
if (_layerRoot) then {
	_item701 = createVehicle ["Land_BagFence_01_short_green_F",[2394.95,7065.37,0],[],0,"CAN_COLLIDE"];
	_this = _item701;
	_objects pushback _this;
	_objectIDs pushback 701;
	_this setPosWorld [2394.95,7065.37,38.9827];
	_this setVectorDirAndUp [[0.999614,-0.0113283,0.0253605],[-0.0258122,-0.0416842,0.998797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item702 = objNull;
if (_layerRoot) then {
	_item702 = createVehicle ["Land_FoodSacks_01_large_brown_F",[2195.26,7090.4,0],[],0,"CAN_COLLIDE"];
	_this = _item702;
	_objects pushback _this;
	_objectIDs pushback 702;
	_this setPosWorld [2195.27,7090.41,34.0169];
	_this setVectorDirAndUp [[0,0.999965,-0.00841239],[0.0166669,0.00841122,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item703 = objNull;
if (_layerRoot) then {
	_item703 = createVehicle ["Land_FoodSacks_01_large_brown_F",[2195.26,7091.92,0],[],0,"CAN_COLLIDE"];
	_this = _item703;
	_objects pushback _this;
	_objectIDs pushback 703;
	_this setPosWorld [2195.27,7091.92,34.004];
	_this setVectorDirAndUp [[0,0.999965,-0.00840773],[0.0166617,0.00840656,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item704 = objNull;
if (_layerRoot) then {
	_item704 = createVehicle ["Land_FoodContainer_01_F",[2193.91,7090.02,0.815739],[],0,"CAN_COLLIDE"];
	_this = _item704;
	_objects pushback _this;
	_objectIDs pushback 704;
	_this setPosWorld [2193.92,7090.02,34.613];
	_this setVectorDirAndUp [[0,0.999965,-0.00841239],[0.0166669,0.00841122,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item705 = objNull;
if (_layerRoot) then {
	_item705 = createVehicle ["Land_FoodContainer_01_F",[2193.38,7089.99,0.815865],[],0,"CAN_COLLIDE"];
	_this = _item705;
	_objects pushback _this;
	_objectIDs pushback 705;
	_this setPosWorld [2193.39,7089.99,34.622];
	_this setVectorDirAndUp [[0,0.999965,-0.00841239],[0.0166669,0.00841122,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item706 = objNull;
if (_layerRoot) then {
	_item706 = createVehicle ["Land_FoodContainer_01_F",[2192.73,7089.99,0.815945],[],0,"CAN_COLLIDE"];
	_this = _item706;
	_objects pushback _this;
	_objectIDs pushback 706;
	_this setPosWorld [2192.74,7089.99,34.6329];
	_this setVectorDirAndUp [[0,0.999965,-0.00841239],[0.0166669,0.00841122,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item707 = objNull;
if (_layerRoot) then {
	_item707 = createVehicle ["Land_Misc_Cargo1Bo_EP1",[2145.97,7081.89,0],[],0,"CAN_COLLIDE"];
	_this = _item707;
	_objects pushback _this;
	_objectIDs pushback 707;
	_this setPosWorld [2145.97,7081.89,35.2104];
	_this setVectorDirAndUp [[0.999809,-0.019529,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item708 = objNull;
if (_layerRoot) then {
	_item708 = createVehicle ["Land_Misc_Cargo1Bo_EP1",[2135.9,7081.75,0],[],0,"CAN_COLLIDE"];
	_this = _item708;
	_objects pushback _this;
	_objectIDs pushback 708;
	_this setPosWorld [2135.9,7081.75,35.2104];
	_this setVectorDirAndUp [[-1,-0.000732887,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item709 = objNull;
if (_layerRoot) then {
	_item709 = createVehicle ["Land_Cargo10_sand_F",[2140.99,7081.87,0],[],0,"CAN_COLLIDE"];
	_this = _item709;
	_objects pushback _this;
	_objectIDs pushback 709;
	_this setPosWorld [2140.99,7081.87,35.354];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 15] call ace_cargo_fnc_setSize;;
};

private _item710 = objNull;
if (_layerRoot) then {
	_item710 = createVehicle ["Land_TinContainer_F",[2192.41,7089.99,0.816002],[],0,"CAN_COLLIDE"];
	_this = _item710;
	_objects pushback _this;
	_objectIDs pushback 710;
	_this setPosWorld [2192.41,7089.99,34.51];
	_this setVectorDirAndUp [[0,0.999965,-0.00841239],[0.0166669,0.00841122,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item711 = objNull;
if (_layerRoot) then {
	_item711 = createVehicle ["Land_FoodContainer_01_F",[2191.19,7090.06,0.815739],[],0,"CAN_COLLIDE"];
	_this = _item711;
	_objects pushback _this;
	_objectIDs pushback 711;
	_this setPosWorld [2191.2,7090.06,34.658];
	_this setVectorDirAndUp [[0,0.999965,-0.00841239],[0.0166669,0.00841122,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item712 = objNull;
if (_layerRoot) then {
	_item712 = createVehicle ["Land_FoodContainer_01_F",[2190.57,7090.05,0.81575],[],0,"CAN_COLLIDE"];
	_this = _item712;
	_objects pushback _this;
	_objectIDs pushback 712;
	_this setPosWorld [2190.58,7090.05,34.6684];
	_this setVectorDirAndUp [[0,0.999965,-0.00841239],[0.0166669,0.00841122,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item713 = objNull;
if (_layerRoot) then {
	_item713 = createVehicle ["Land_FoodContainer_01_F",[2189.92,7090.01,0.816818],[],0,"CAN_COLLIDE"];
	_this = _item713;
	_objects pushback _this;
	_objectIDs pushback 713;
	_this setPosWorld [2189.92,7090.01,34.6797];
	_this setVectorDirAndUp [[0,0.999965,-0.00841239],[0.0166669,0.00841122,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item714 = objNull;
if (_layerRoot) then {
	_item714 = createVehicle ["CUP_sign_food",[2204.81,7086.15,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item714;
	_objects pushback _this;
	_objectIDs pushback 714;
	_this setPosWorld [2204.82,7086.19,34.9175];
	_this setVectorDirAndUp [[-0.999643,-0.000190641,0.0267147],[0.0267129,-0.0208537,0.999426]];
	0 remoteExec ['setFeatureType', _this];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item2 = objNull;
if (_layer229) then {
	_item2 = createTrigger ["EmptyDetectorArea10x10",[2217.93,7141.95,0],false];
	_this = _item2;
	_triggers pushback _this;
	_triggerIDs pushback 2;
	_item2 setPosATL [2217.93,7141.95,0];
	_this setTriggerArea [6,6,195.06,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item5 = objNull;
if (_layer4 && _layer229) then {
	_item5 = createTrigger ["EmptyDetectorArea10x10",[2329.04,7080.2,3.8147e-006],true];
	_this = _item5;
	_triggers pushback _this;
	_triggerIDs pushback 5;
	_item5 setPosATL [2329.04,7080.2,3.8147e-006];
	_this setTriggerArea [5,20,101.8,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item204 = objNull;
if (_layer9 && _layer229) then {
	_item204 = createTrigger ["EmptyDetectorAreaR50",[1931.71,7189.28,0],false];
	_this = _item204;
	_triggers pushback _this;
	_triggerIDs pushback 204;
	_item204 setPosATL [1931.71,7189.28,0];
	_this setTriggerArea [50,50,295.491,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item205 = objNull;
if (_layer9 && _layer229) then {
	_item205 = createTrigger ["EmptyDetectorArea10x10",[1949.29,7188.17,0],true];
	_this = _item205;
	_triggers pushback _this;
	_triggerIDs pushback 205;
	_item205 setPosATL [1949.29,7188.17,0];
	_this setTriggerArea [18,13.5,102.784,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item248;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["HQ"];                            } else {                                [_this, "HQ"] call CBA_fnc_setCallsign;                            };                        ;
	_this setBehaviour "SAFE";
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

private _item3 = objNull;
if (_layer229) then {
	_item3 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[2147.15,7094.74,0],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_logics pushback _this;
	_logicIDs pushback 3;
	_this setPosWorld [2147.15,7094.74,34.0012];
	_this setVectorDirAndUp [[0.804026,0.594595,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item227 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item227 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[1961.81,7192.36,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_logics pushback _this;
	_logicIDs pushback 227;
	_this setPosWorld [1961.81,7192.36,30.3177];
	_this setVectorDirAndUp [[-0.902629,0.430285,0.01071],[0.00750088,-0.00915376,0.99993]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item228 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item228 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[1964.6,7177.92,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_logics pushback _this;
	_logicIDs pushback 228;
	_this setPosWorld [1964.6,7177.92,30.4895];
	_this setVectorDirAndUp [[-0.902653,0.429982,-0.0182803],[0.000771824,0.044093,0.999027]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer226) then {missionNamespace setVariable ["Beketov%20Military%20Base_Spawns",[[_item227,_item228],[]]];};
if (_layer206) then {missionNamespace setVariable ["Beketov%20Military%20Base_Shoothouse Targets",[[_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225],[]]];};
if (_layer9) then {missionNamespace setVariable ["Beketov%20Military%20Base_Shoothouse Pit",[[_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228],[]]];};
if (_layer7) then {missionNamespace setVariable ["Beketov%20Military%20Base_Repair Station",[[_item8],[]]];};
if (_layer4) then {missionNamespace setVariable ["Beketov%20Military%20Base_bargate",[[_item5,_item6],[]]];};
if (_layer229) then {missionNamespace setVariable ["Beketov%20Military%20Base_SIA ZGM Essentials",[[_item0,_item2,_item3,_item5,_item6,_item8,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228,_item230,_item231,_item232,_item233],[]]];};


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
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
