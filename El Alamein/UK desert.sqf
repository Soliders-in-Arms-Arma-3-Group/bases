// Export of 'tempMissionSP.SWU_Egypt_El_Alamein' by Freedom on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer226 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer206 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer9 = (_allWhitelisted || {"shoothouse pit" in _layerWhiteList}) && {!("shoothouse pit" in _layerBlackList)};
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
	_item248 = createGroup resistance;
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
	_item0 = createVehicle ["Land_InfoStand_V1_F",[6568.29,3540.47,-0.000524521],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [6568.29,3540.46,14.416];
	_this setVectorDirAndUp [[-0.103989,0.994438,0.0167419],[0.00799344,-0.015997,0.99984]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item6 = objNull;
if (_layer4 && _layer229) then {
	_item6 = createVehicle ["Land_BarGate_F",[6512.79,3474.94,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [6512.79,3474.94,17.0035];
	_this setVectorDirAndUp [[0.752207,0.658911,-0.00452872],[-0.00799344,0.0159972,0.99984]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item10 = objNull;
if (_layer9 && _layer229) then {
	_item10 = createVehicle ["Land_InfoStand_V1_F",[7934.94,3331.94,-0.00170422],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [7934.93,3331.95,14.5012];
	_this setVectorDirAndUp [[-0.976045,0.216351,-0.0229837],[-0.0199947,0.0159945,0.999672]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item11 = objNull;
if (_layer9 && _layer229) then {
	_item11 = createVehicle ["Land_Scaffolding_New_F",[7909.81,3317.7,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [7909.81,3317.7,17.212];
	_this setVectorDirAndUp [[0.976213,-0.216815,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item12 = objNull;
if (_layer9 && _layer229) then {
	_item12 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7917.59,3349.23,0],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [7917.59,3349.23,15.957];
	_this setVectorDirAndUp [[0.973269,-0.226236,-0.039569],[0.0359766,-0.0199817,0.999153]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer9 && _layer229) then {
	_item13 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7915.77,3341.51,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [7915.77,3341.51,15.9517];
	_this setVectorDirAndUp [[0.973269,-0.22712,-0.0341301],[0.0359766,0.00399416,0.999345]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layer9 && _layer229) then {
	_item14 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7924.86,3349.59,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [7924.86,3349.59,15.8557];
	_this setVectorDirAndUp [[-0.973899,0.226916,0.00544552],[0,-0.023991,0.999712]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer9 && _layer229) then {
	_item15 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7923.05,3341.8,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [7923.05,3341.8,15.743];
	_this setVectorDirAndUp [[-0.973518,0.227089,0.0263514],[0.0279894,0.00399518,0.9996]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item16 = objNull;
if (_layer9 && _layer229) then {
	_item16 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7917.11,3333.95,0],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [7917.11,3333.95,15.9265];
	_this setVectorDirAndUp [[0.226916,0.973912,0.00234589],[0.0239934,-0.00799829,0.99968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item17 = objNull;
if (_layer9 && _layer229) then {
	_item17 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7916.96,3342.27,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [7916.96,3342.27,15.9196];
	_this setVectorDirAndUp [[-0.226893,-0.973916,0.0024607],[0.0279894,-0.0039951,0.9996]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item18 = objNull;
if (_layer9 && _layer229) then {
	_item18 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7918.01,3337.71,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [7918.01,3337.71,15.8842];
	_this setVectorDirAndUp [[-0.198362,-0.980057,0.0118513],[0.0399667,0.00399355,0.999193]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item19 = objNull;
if (_layer9 && _layer229) then {
	_item19 = createVehicle ["Land_Shoot_House_Wall_F",[7907.86,3351.5,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [7907.86,3351.5,16.1082];
	_this setVectorDirAndUp [[0.973401,-0.227664,-0.0256937],[0.031983,0.023979,0.999201]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item20 = objNull;
if (_layer9 && _layer229) then {
	_item20 = createVehicle ["Land_Shoot_House_Wall_F",[7908.74,3342.06,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [7908.74,3342.06,16.1675];
	_this setVectorDirAndUp [[-0.226835,-0.973933,0.000380985],[0.0359766,-0.00798826,0.999321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer9 && _layer229) then {
	_item21 = createVehicle ["Land_Shoot_House_Wall_F",[7912.62,3341.15,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [7912.62,3341.15,16.0615];
	_this setVectorDirAndUp [[-0.226866,-0.973899,0.00725957],[0.031983,0,0.999488]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layer9 && _layer229) then {
	_item22 = createVehicle ["Land_Shoot_House_Wall_F",[7906.04,3343.71,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [7906.04,3343.71,16.2282];
	_this setVectorDirAndUp [[0.973829,-0.227027,-0.0107745],[0.0119949,0.00399646,0.99992]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer9 && _layer229) then {
	_item23 = createVehicle ["Land_Shoot_House_Wall_F",[7909.97,3356.14,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [7909.97,3356.14,16.0296];
	_this setVectorDirAndUp [[-0.226937,-0.973256,0.0356843],[0.0199947,0.0319766,0.999289]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer9 && _layer229) then {
	_item24 = createVehicle ["Land_Shoot_House_Wall_F",[7915.81,3354.78,0],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [7915.81,3354.78,15.9823];
	_this setVectorDirAndUp [[-0.226981,-0.973899,0.000907172],[0.00399666,0,0.999992]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer9 && _layer229) then {
	_item25 = createVehicle ["Land_Shoot_House_Wall_F",[7913.85,3355.24,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [7913.85,3355.24,16.0082];
	_this setVectorDirAndUp [[-0.226917,-0.973595,0.0249178],[0.0239934,0.0199889,0.999512]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer9 && _layer229) then {
	_item26 = createVehicle ["Land_Shoot_House_Wall_F",[7907.4,3349.55,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [7907.4,3349.55,16.1631];
	_this setVectorDirAndUp [[0.973891,-0.227015,-0.000260667],[0.00399666,0.0159976,0.999864]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer9 && _layer229) then {
	_item27 = createVehicle ["Land_Shoot_House_Wall_F",[7906.49,3345.66,0],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [7906.49,3345.66,16.2011];
	_this setVectorDirAndUp [[0.973774,-0.227202,-0.0119468],[0.0159975,0.0159956,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item28 = objNull;
if (_layer9 && _layer229) then {
	_item28 = createVehicle ["Land_Shoot_House_Wall_F",[7916.22,3343.4,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [7916.22,3343.4,15.9591];
	_this setVectorDirAndUp [[0.973517,-0.226391,-0.0317918],[0.0279894,-0.0199868,0.999408]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item29 = objNull;
if (_layer9 && _layer229) then {
	_item29 = createVehicle ["Land_Shoot_House_Wall_F",[7906.79,3342.51,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [7906.79,3342.51,16.224];
	_this setVectorDirAndUp [[-0.226966,-0.97388,0.00661502],[0.0119949,0.00399646,0.99992]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer9 && _layer229) then {
	_item30 = createVehicle ["Land_Shoot_House_Wall_F",[7906.95,3347.6,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [7906.95,3347.6,16.1943];
	_this setVectorDirAndUp [[0.973899,-0.226965,0.00272378],[0,0.012,0.999928]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer9 && _layer229) then {
	_item31 = createVehicle ["Land_Shoot_House_Wall_F",[7908.76,3355.39,0],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [7908.76,3355.39,16.0675];
	_this setVectorDirAndUp [[0.973868,-0.227092,-0.00325178],[0.00800059,0.0199941,0.999768]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer9 && _layer229) then {
	_item32 = createVehicle ["Land_Shoot_House_Wall_F",[7918.49,3353.13,0],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [7918.49,3353.13,15.9596];
	_this setVectorDirAndUp [[0.973774,-0.226982,-0.0155762],[0.0159937,0,0.999872]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer9 && _layer229) then {
	_item33 = createVehicle ["Land_Shoot_House_Wall_F",[7911.92,3355.69,0],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [7911.92,3355.69,16.0293];
	_this setVectorDirAndUp [[-0.226981,-0.973722,0.0185658],[-0.00399675,0.0199945,0.999792]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item34 = objNull;
if (_layer9 && _layer229) then {
	_item34 = createVehicle ["Land_Shoot_House_Wall_F",[7909.48,3340.86,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [7909.48,3340.86,16.1312];
	_this setVectorDirAndUp [[0.973269,-0.226694,-0.0368508],[0.0359766,-0.00798826,0.999321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer9 && _layer229) then {
	_item35 = createVehicle ["Land_Shoot_House_Wall_F",[7911.94,3338.23,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [7911.94,3338.23,16.0673];
	_this setVectorDirAndUp [[0.973774,-0.226918,-0.016487],[0.0159975,-0.00399615,0.999864]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer9 && _layer229) then {
	_item36 = createVehicle ["Land_Shoot_House_Wall_F",[7912.4,3340.18,0],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [7912.4,3340.18,16.068];
	_this setVectorDirAndUp [[0.973619,-0.226982,-0.0233648],[0.023991,0,0.999712]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer9 && _layer229) then {
	_item37 = createVehicle ["Land_Shoot_House_Wall_F",[7911.49,3336.28,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [7911.49,3336.28,16.0335];
	_this setVectorDirAndUp [[0.973829,-0.226566,-0.0180344],[0.0119996,-0.027985,0.999536]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer9 && _layer229) then {
	_item38 = createVehicle ["Land_Shoot_House_Wall_F",[7908.57,3336.96,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [7908.57,3336.96,16.1047];
	_this setVectorDirAndUp [[0.973619,-0.226239,-0.0297111],[0.0239934,-0.0279813,0.99932]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layer9 && _layer229) then {
	_item39 = createVehicle ["Land_Shoot_House_Wall_F",[7917.75,3354.33,0],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [7917.75,3354.33,15.9714];
	_this setVectorDirAndUp [[-0.226953,-0.973899,0.00363029],[0.0159937,0,0.999872]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer9 && _layer229) then {
	_item40 = createVehicle ["Land_Shoot_House_Wall_F",[7918.04,3351.18,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [7918.04,3351.18,15.9603];
	_this setVectorDirAndUp [[0.973517,-0.226982,-0.0272588],[0.0279894,0,0.999608]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layer9 && _layer229) then {
	_item41 = createVehicle ["Land_Shoot_House_Wall_F",[7916.36,3335.14,0],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [7916.36,3335.14,15.9523];
	_this setVectorDirAndUp [[-0.973619,0.227073,0.0224575],[0.023991,0.0039956,0.999704]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer9 && _layer229) then {
	_item42 = createVehicle ["Land_Shoot_House_Wall_F",[7916.81,3337.09,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [7916.81,3337.09,15.928];
	_this setVectorDirAndUp [[-0.973518,0.227192,0.0254396],[0.027987,0.00799776,0.999576]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item43 = objNull;
if (_layer9 && _layer229) then {
	_item43 = createVehicle ["Land_Shoot_House_Wall_F",[7920.74,3349.53,0],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [7920.74,3349.53,15.8918];
	_this setVectorDirAndUp [[-0.226953,-0.973906,-0.000261224],[0.0159975,-0.00399615,0.999864]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item44 = objNull;
if (_layer9 && _layer229) then {
	_item44 = createVehicle ["Land_Shoot_House_Wall_F",[7920.96,3350.5,0],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [7920.96,3350.5,15.8961];
	_this setVectorDirAndUp [[0.973774,-0.226778,-0.0183025],[0.0159975,-0.0119981,0.9998]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item45 = objNull;
if (_layer9 && _layer229) then {
	_item45 = createVehicle ["Land_Shoot_House_Wall_F",[7918.33,3348.04,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [7918.33,3348.04,15.9062];
	_this setVectorDirAndUp [[0.226834,0.973868,0.0113084],[0.0359766,-0.0199817,0.999153]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item46 = objNull;
if (_layer9 && _layer229) then {
	_item46 = createVehicle ["Land_Shoot_House_Wall_F",[7918.79,3349.98,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [7918.79,3349.98,15.9388];
	_this setVectorDirAndUp [[0.226892,0.973695,0.0209082],[0.0279894,-0.0279784,0.999217]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layer9 && _layer229) then {
	_item47 = createVehicle ["Land_Shoot_House_Wall_F",[7920.28,3347.58,0],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [7920.28,3347.58,15.84];
	_this setVectorDirAndUp [[0.226974,0.973467,0.0290718],[-0.0080009,-0.0279861,0.999576]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item48 = objNull;
if (_layer9 && _layer229) then {
	_item48 = createVehicle ["Land_Shoot_House_Wall_F",[7916.68,3345.34,0],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [7916.68,3345.34,15.9367];
	_this setVectorDirAndUp [[0.972585,-0.227182,-0.0496668],[0.0519298,0.00399135,0.998643]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item49 = objNull;
if (_layer9 && _layer229) then {
	_item49 = createVehicle ["Land_Shoot_House_Wall_F",[7916.51,3340.27,0],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [7916.51,3340.27,15.93];
	_this setVectorDirAndUp [[0.226834,0.973859,-0.0120584],[0.0359766,0.00399416,0.999345]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item50 = objNull;
if (_layer9 && _layer229) then {
	_item50 = createVehicle ["Land_Shoot_House_Wall_F",[7918.46,3339.82,0],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [7918.46,3339.82,15.8672];
	_this setVectorDirAndUp [[0.226892,0.973919,0.00143945],[0.027987,-0.00799746,0.999576]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item51 = objNull;
if (_layer9 && _layer229) then {
	_item51 = createVehicle ["Land_Shoot_House_Wall_F",[7918.91,3341.76,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [7918.91,3341.76,15.8602];
	_this setVectorDirAndUp [[0.226865,0.973899,-0.00725954],[0.031983,0,0.999488]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item52 = objNull;
if (_layer9 && _layer229) then {
	_item52 = createVehicle ["Land_Shoot_House_Wall_F",[7909.02,3338.91,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [7909.02,3338.91,16.1398];
	_this setVectorDirAndUp [[0.972958,-0.226632,-0.0446267],[0.0439577,-0.00800048,0.999001]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layer9 && _layer229) then {
	_item53 = createVehicle ["Land_Shoot_House_Wall_F",[7914.6,3354.04,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [7914.6,3354.04,16.0066];
	_this setVectorDirAndUp [[0.973619,-0.227246,-0.0206405],[0.023991,0.0119916,0.99964]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item54 = objNull;
if (_layer9 && _layer229) then {
	_item54 = createVehicle ["Land_Shoot_House_Wall_F",[7913.69,3350.14,0],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [7913.69,3350.14,16.001];
	_this setVectorDirAndUp [[0.973704,-0.227058,-0.0185654],[0.0199947,0.00399595,0.999792]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item55 = objNull;
if (_layer9 && _layer229) then {
	_item55 = createVehicle ["Land_Shoot_House_Wall_F",[7915.93,3346.54,0],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [7915.93,3346.54,15.9708];
	_this setVectorDirAndUp [[0.226675,0.973844,-0.0156794],[0.0519298,0.00399135,0.998643]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item56 = objNull;
if (_layer9 && _layer229) then {
	_item56 = createVehicle ["Land_Shoot_House_Wall_F",[7913.99,3346.99,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [7913.99,3346.99,16.0378];
	_this setVectorDirAndUp [[0.226936,0.973873,-0.00843081],[0.0199947,0.00399595,0.999792]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item57 = objNull;
if (_layer9 && _layer229) then {
	_item57 = createVehicle ["Land_Shoot_House_Wall_F",[7913.24,3348.19,0],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [7913.24,3348.19,16.0396];
	_this setVectorDirAndUp [[0.973704,-0.227264,-0.0158391],[0.0199947,0.0159945,0.999672]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item58 = objNull;
if (_layer9 && _layer229) then {
	_item58 = createVehicle ["Land_Shoot_House_Wall_F",[7909.94,3342.81,0],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [7909.94,3342.81,16.1302];
	_this setVectorDirAndUp [[-0.973774,0.226778,0.0183025],[0.0159975,-0.0119981,0.9998]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item59 = objNull;
if (_layer9 && _layer229) then {
	_item59 = createVehicle ["Land_Shoot_House_Wall_F",[7910.39,3344.76,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [7910.39,3344.76,16.1414];
	_this setVectorDirAndUp [[-0.973269,0.226982,0.0350376],[0.0359766,0,0.999353]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item60 = objNull;
if (_layer9 && _layer229) then {
	_item60 = createVehicle ["Land_Shoot_House_Wall_F",[7909.64,3345.96,0],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [7909.64,3345.96,16.1492];
	_this setVectorDirAndUp [[-0.226835,-0.973541,0.0276372],[0.0359766,0.0199818,0.999153]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item61 = objNull;
if (_layer9 && _layer229) then {
	_item61 = createVehicle ["Land_Shoot_House_Wall_F",[7911.3,3348.65,0],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [7911.3,3348.65,16.071];
	_this setVectorDirAndUp [[-0.973774,0.227152,0.0128551],[0.0159975,0.0119984,0.9998]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item62 = objNull;
if (_layer9 && _layer229) then {
	_item62 = createVehicle ["Land_Shoot_House_Wall_F",[7910.55,3349.84,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [7910.55,3349.84,16.0669];
	_this setVectorDirAndUp [[-0.226937,-0.973702,0.020118],[0.0199947,0.0159945,0.999672]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item63 = objNull;
if (_layer9 && _layer229) then {
	_item63 = createVehicle ["Land_Shoot_House_Wall_F",[7908.6,3350.3,0],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [7908.6,3350.3,16.113];
	_this setVectorDirAndUp [[-0.226866,-0.973444,0.0306225],[0.031983,0.023979,0.999201]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item64 = objNull;
if (_layer9 && _layer229) then {
	_item64 = createVehicle ["Land_Shoot_House_Wall_F",[7910.1,3347.9,0],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [7910.1,3347.9,16.0992];
	_this setVectorDirAndUp [[-0.226953,-0.973785,0.0153177],[0.0159975,0.0119984,0.9998]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item65 = objNull;
if (_layer9 && _layer229) then {
	_item65 = createVehicle ["Land_Shoot_House_Wall_F",[7912.79,3346.25,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [7912.79,3346.25,16.0609];
	_this setVectorDirAndUp [[-0.973774,0.226982,0.0155762],[0.0159937,0,0.999872]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item66 = objNull;
if (_layer9 && _layer229) then {
	_item66 = createVehicle ["Land_Shoot_House_Wall_F",[7911.88,3342.35,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [7911.88,3342.35,16.0805];
	_this setVectorDirAndUp [[-0.973619,0.226982,0.0233648],[0.023991,0,0.999712]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item67 = objNull;
if (_layer9 && _layer229) then {
	_item67 = createVehicle ["Land_Shoot_House_Wall_F",[7923.34,3338.65,0],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [7923.34,3338.65,15.732];
	_this setVectorDirAndUp [[-0.226801,-0.973899,0.00907174],[0.0399667,0,0.999201]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer9 && _layer229) then {
	_item68 = createVehicle ["Land_Shoot_House_Wall_F",[7925.31,3351.54,0],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [7925.31,3351.54,15.8184];
	_this setVectorDirAndUp [[0.973401,-0.227664,-0.0256937],[0.031983,0.023979,0.999201]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer9 && _layer229) then {
	_item69 = createVehicle ["Land_Shoot_House_Wall_F",[7933.7,3343.43,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [7933.7,3343.43,15.4497];
	_this setVectorDirAndUp [[0.973829,-0.226703,-0.0162225],[0.0119996,-0.0199932,0.999728]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layer9 && _layer229) then {
	_item70 = createVehicle ["Land_Shoot_House_Wall_F",[7926.52,3352.29,0],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [7926.52,3352.29,15.809];
	_this setVectorDirAndUp [[-0.226981,-0.973818,-0.0125935],[-0.00399675,-0.0119995,0.99992]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item71 = objNull;
if (_layer9 && _layer229) then {
	_item71 = createVehicle ["Land_Shoot_House_Wall_F",[7927.23,3337.75,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [7927.23,3337.75,15.5523];
	_this setVectorDirAndUp [[-0.226676,-0.97397,9.98741e-005],[0.0519298,-0.0119834,0.998579]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer9 && _layer229) then {
	_item72 = createVehicle ["Land_Shoot_House_Wall_F",[7924.41,3347.64,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [7924.41,3347.64,15.818];
	_this setVectorDirAndUp [[0.973704,-0.226902,-0.0203798],[0.0199947,-0.00399586,0.999792]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer9 && _layer229) then {
	_item73 = createVehicle ["Land_Shoot_House_Wall_F",[7922.59,3339.85,0],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [7922.59,3339.85,15.7619];
	_this setVectorDirAndUp [[0.973121,-0.226982,-0.0389236],[0.0399667,0,0.999201]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer9 && _layer229) then {
	_item74 = createVehicle ["Land_Shoot_House_Wall_F",[7930.41,3351.38,0],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [7930.41,3351.38,15.7081];
	_this setVectorDirAndUp [[-0.226981,-0.97343,-0.0302415],[0.00399666,-0.0319827,0.99948]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer9 && _layer229) then {
	_item75 = createVehicle ["Land_Shoot_House_Wall_F",[7932.36,3350.93,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [7932.36,3350.93,15.6794];
	_this setVectorDirAndUp [[-0.226966,-0.973684,-0.020643],[0.0119949,-0.0239893,0.99964]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer9 && _layer229) then {
	_item76 = createVehicle ["Land_Shoot_House_Wall_F",[7934.31,3350.48,0],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [7934.31,3350.48,15.6235];
	_this setVectorDirAndUp [[-0.226917,-0.973749,-0.0179232],[0.023991,-0.0239865,0.999424]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer9 && _layer229) then {
	_item77 = createVehicle ["Land_Shoot_House_Wall_F",[7935.06,3349.27,0],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [7935.06,3349.27,15.5694];
	_this setVectorDirAndUp [[0.973899,-0.226835,-0.00816602],[0,-0.0359766,0.999353]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item78 = objNull;
if (_layer9 && _layer229) then {
	_item78 = createVehicle ["Land_Shoot_House_Wall_F",[7934.6,3347.33,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [7934.6,3347.33,15.5122];
	_this setVectorDirAndUp [[0.973619,-0.226579,-0.0269953],[0.0239934,-0.0159929,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layer9 && _layer229) then {
	_item79 = createVehicle ["Land_Shoot_House_Wall_F",[7934.15,3345.38,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [7934.15,3345.38,15.4863];
	_this setVectorDirAndUp [[0.973829,-0.226566,-0.0180344],[0.0119996,-0.027985,0.999536]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layer9 && _layer229) then {
	_item80 = createVehicle ["Land_Shoot_House_Wall_F",[7931.13,3336.84,0],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [7931.13,3336.84,15.4695];
	_this setVectorDirAndUp [[-0.226917,-0.973226,0.036591],[0.023991,0.0319738,0.999201]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item81 = objNull;
if (_layer9 && _layer229) then {
	_item81 = createVehicle ["Land_Shoot_House_Wall_F",[7933.24,3341.48,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [7933.24,3341.48,15.4407];
	_this setVectorDirAndUp [[0.973829,-0.227027,-0.0107745],[0.0119949,0.00399646,0.99992]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer9 && _layer229) then {
	_item82 = createVehicle ["Land_Shoot_House_Wall_F",[7923.5,3343.75,0],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [7923.5,3343.75,15.7525];
	_this setVectorDirAndUp [[0.973517,-0.226391,-0.0317918],[0.0279894,-0.0199868,0.999408]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer9 && _layer229) then {
	_item83 = createVehicle ["Land_Shoot_House_Wall_F",[7922.2,3333.78,0],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [7922.2,3333.78,15.7578];
	_this setVectorDirAndUp [[0.972958,-0.227944,-0.0373519],[0.0439577,0.0239705,0.998746]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer9 && _layer229) then {
	_item84 = createVehicle ["Land_Shoot_House_Wall_F",[7922.66,3335.73,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [7922.66,3335.73,15.7232];
	_this setVectorDirAndUp [[0.972958,-0.22608,-0.0473402],[0.0439577,-0.0199753,0.998834]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item85 = objNull;
if (_layer9 && _layer229) then {
	_item85 = createVehicle ["Land_Shoot_House_Wall_F",[7923.11,3337.68,0],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [7923.11,3337.68,15.741];
	_this setVectorDirAndUp [[0.973121,-0.226982,-0.0389236],[0.0399667,0,0.999201]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layer9 && _layer229) then {
	_item86 = createVehicle ["Land_Shoot_House_Wall_F",[7926.03,3337,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [7926.03,3337,15.6058];
	_this setVectorDirAndUp [[0.972585,-0.226358,-0.0532944],[0.0519298,-0.0119834,0.998579]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item87 = objNull;
if (_layer9 && _layer229) then {
	_item87 = createVehicle ["Land_Shoot_House_Wall_F",[7925.58,3335.05,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [7925.58,3335.05,15.5836];
	_this setVectorDirAndUp [[0.973121,-0.225982,-0.0443598],[0.0399682,-0.0239742,0.998913]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item88 = objNull;
if (_layer9 && _layer229) then {
	_item88 = createVehicle ["Land_Shoot_House_Wall_F",[7925.13,3333.1,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [7925.13,3333.1,15.6587];
	_this setVectorDirAndUp [[0.972151,-0.228731,-0.0510388],[0.0598914,0.0319256,0.997694]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item89 = objNull;
if (_layer9 && _layer229) then {
	_item89 = createVehicle ["Land_Shoot_House_Wall_F",[7918.31,3334.69,0],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [7918.31,3334.69,15.8895];
	_this setVectorDirAndUp [[-0.973121,0.226498,0.0416458],[0.0399682,-0.01199,0.999129]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layer9 && _layer229) then {
	_item90 = createVehicle ["Land_Shoot_House_Wall_F",[7918.76,3336.64,0],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [7918.76,3336.64,15.862];
	_this setVectorDirAndUp [[-0.973121,0.227286,0.0371063],[0.0399667,0.0079945,0.999169]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layer9 && _layer229) then {
	_item91 = createVehicle ["Land_Shoot_House_Wall_F",[7922.3,3343,0],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [7922.3,3343,15.7616];
	_this setVectorDirAndUp [[-0.226937,-0.973613,-0.0240138],[-0.0199977,-0.0199935,0.9996]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item92 = objNull;
if (_layer9 && _layer229) then {
	_item92 = createVehicle ["Land_Shoot_House_Wall_F",[7920.35,3343.46,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [7920.35,3343.46,15.7889];
	_this setVectorDirAndUp [[-0.226893,-0.97334,0.0336095],[0.0279894,0.0279785,0.999217]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item93 = objNull;
if (_layer9 && _layer229) then {
	_item93 = createVehicle ["Land_Shoot_House_Wall_F",[7928.46,3351.83,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [7928.46,3351.83,15.7672];
	_this setVectorDirAndUp [[-0.226893,-0.973604,-0.0247984],[0.0279894,-0.0319705,0.999097]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item94 = objNull;
if (_layer9 && _layer229) then {
	_item94 = createVehicle ["Land_Shoot_House_Wall_F",[7919.9,3341.51,0],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [7919.9,3341.51,15.8288];
	_this setVectorDirAndUp [[-0.226866,-0.973899,0.00725957],[0.031983,0,0.999488]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer9 && _layer229) then {
	_item95 = createVehicle ["Land_Shoot_House_Wall_F",[7924.11,3350.79,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [7924.11,3350.79,15.8719];
	_this setVectorDirAndUp [[-0.226982,-0.973868,-0.0077848],[0,-0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer9 && _layer229) then {
	_item96 = createVehicle ["Land_Shoot_House_Wall_F",[7923.66,3348.84,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [7923.66,3348.84,15.8378];
	_this setVectorDirAndUp [[-0.226982,-0.973619,-0.0233648],[0,-0.023991,0.999712]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layer9 && _layer229) then {
	_item97 = createVehicle ["Land_Shoot_House_Wall_F",[7922.17,3351.25,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [7922.17,3351.25,15.8821];
	_this setVectorDirAndUp [[-0.226937,-0.973904,-0.00325348],[0.0199947,-0.00799899,0.999768]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item98 = objNull;
if (_layer9 && _layer229) then {
	_item98 = createVehicle ["Land_Shoot_House_Wall_F",[7932.33,3337.59,0],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [7932.33,3337.59,15.4198];
	_this setVectorDirAndUp [[0.973619,-0.226886,-0.0242718],[0.023991,-0.00399551,0.999704]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item99 = objNull;
if (_layer9 && _layer229) then {
	_item99 = createVehicle ["Land_Shoot_House_Wall_F",[7921.49,3348.33,0],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [7921.49,3348.33,15.8705];
	_this setVectorDirAndUp [[-0.973868,0.227111,-0.00143648],[-0.0080009,-0.0279861,0.999576]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item100 = objNull;
if (_layer9 && _layer229) then {
	_item100 = createVehicle ["Land_Shoot_House_Wall_F",[7919.25,3342.72,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [7919.25,3342.72,15.8485];
	_this setVectorDirAndUp [[-0.973401,0.227104,0.0302408],[0.031983,0.0039947,0.99948]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item101 = objNull;
if (_layer9 && _layer229) then {
	_item101 = createVehicle ["Land_Shoot_House_Wall_F",[7921.71,3349.3,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [7921.71,3349.3,15.8753];
	_this setVectorDirAndUp [[-0.226953,-0.973906,-0.000261224],[0.0159975,-0.00399615,0.999864]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layer9 && _layer229) then {
	_item102 = createVehicle ["Land_Shoot_House_Wall_F",[7929.18,3337.29,0],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [7929.18,3337.29,15.4934];
	_this setVectorDirAndUp [[-0.226917,-0.973911,-0.0023464],[0.023991,-0.00799829,0.99968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layer9 && _layer229) then {
	_item103 = createVehicle ["Land_Shoot_House_Wall_F",[7927.46,3338.72,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [7927.46,3338.72,15.5522];
	_this setVectorDirAndUp [[0.972585,-0.226358,-0.0532944],[0.0519298,-0.0119834,0.998579]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layer9 && _layer229) then {
	_item104 = createVehicle ["Land_Shoot_House_Wall_F",[7927.92,3340.67,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [7927.92,3340.67,15.5575];
	_this setVectorDirAndUp [[0.973401,-0.226725,-0.0329632],[0.031983,-0.0079965,0.999456]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item105 = objNull;
if (_layer9 && _layer229) then {
	_item105 = createVehicle ["Land_Shoot_House_Wall_F",[7928.37,3342.62,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [7928.37,3342.62,15.5591];
	_this setVectorDirAndUp [[0.973401,-0.226592,-0.0338715],[0.0319849,-0.0119935,0.999416]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item106 = objNull;
if (_layer9 && _layer229) then {
	_item106 = createVehicle ["Land_Shoot_House_Wall_F",[7929.57,3343.36,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [7929.57,3343.36,15.5192];
	_this setVectorDirAndUp [[-0.226627,-0.973677,0.0243769],[0.0559122,0.0119812,0.998364]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layer9 && _layer229) then {
	_item107 = createVehicle ["Land_Shoot_House_Wall_F",[7928.62,3348.7,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [7928.62,3348.7,15.7005];
	_this setVectorDirAndUp [[-0.973704,0.225787,0.0303357],[0.0199975,-0.047935,0.99865]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item108 = objNull;
if (_layer9 && _layer229) then {
	_item108 = createVehicle ["Land_Shoot_House_Wall_F",[7929.37,3347.5,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [7929.37,3347.5,15.6281];
	_this setVectorDirAndUp [[0.226936,0.972997,0.0421593],[0.0199975,-0.047935,0.99865]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item109 = objNull;
if (_layer9 && _layer229) then {
	_item109 = createVehicle ["Land_Shoot_House_Wall_F",[7931.32,3347.04,0],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [7931.32,3347.04,15.5764];
	_this setVectorDirAndUp [[0.226936,0.973645,0.0227222],[0.0199947,-0.0279838,0.999408]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer9 && _layer229) then {
	_item110 = createVehicle ["Land_Shoot_House_Wall_F",[7932.07,3345.84,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [7932.07,3345.84,15.5278];
	_this setVectorDirAndUp [[-0.973704,0.226348,0.0258182],[0.0199947,-0.0279838,0.999408]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer9 && _layer229) then {
	_item111 = createVehicle ["Land_Shoot_House_Wall_F",[7932.81,3344.64,0],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [7932.81,3344.64,15.4846];
	_this setVectorDirAndUp [[0.226965,0.973759,0.0167496],[0.0119996,-0.0199932,0.999728]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item112 = objNull;
if (_layer9 && _layer229) then {
	_item112 = createVehicle ["Land_Shoot_House_Wall_F",[7921.84,3341.06,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [7921.84,3341.06,15.7796];
	_this setVectorDirAndUp [[-0.226893,-0.973866,0.0102455],[0.0279894,0.00399518,0.9996]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item113 = objNull;
if (_layer9 && _layer229) then {
	_item113 = createVehicle ["Land_Shoot_House_Wall_F",[7909.58,3319.27,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [7909.58,3319.27,16.1422];
	_this setVectorDirAndUp [[-0.226953,-0.973899,0.00363029],[0.0159937,0,0.999872]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item114 = objNull;
if (_layer9 && _layer229) then {
	_item114 = createVehicle ["Land_Shoot_House_Wall_F",[7911.85,3329.01,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [7911.85,3329.01,15.9769];
	_this setVectorDirAndUp [[-0.226981,-0.973895,0.00298524],[-0.00399675,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layer9 && _layer229) then {
	_item115 = createVehicle ["Land_Shoot_House_Wall_F",[7914.83,3324.21,0],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [7914.83,3324.21,15.9713];
	_this setVectorDirAndUp [[-0.226953,-0.973877,0.00752355],[0.0159975,0.00399623,0.999864]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layer9 && _layer229) then {
	_item116 = createVehicle ["Land_Shoot_House_Wall_F",[7915.16,3334.4,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [7915.16,3334.4,15.9822];
	_this setVectorDirAndUp [[-0.226835,-0.973858,0.0120584],[0.0359766,0.00399416,0.999345]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layer9 && _layer229) then {
	_item117 = createVehicle ["Land_Shoot_House_Wall_F",[7911.53,3318.81,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [7911.53,3318.81,16.1016];
	_this setVectorDirAndUp [[-0.226953,-0.973897,-0.00415377],[0.0159975,-0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item118 = objNull;
if (_layer9 && _layer229) then {
	_item118 = createVehicle ["Land_Shoot_House_Wall_F",[7905.42,3336.67,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [7905.42,3336.67,16.1738];
	_this setVectorDirAndUp [[-0.226966,-0.973759,-0.0167496],[0.0119996,-0.0199932,0.999728]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item119 = objNull;
if (_layer9 && _layer229) then {
	_item119 = createVehicle ["Land_Shoot_House_Wall_F",[7907.37,3336.21,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [7907.37,3336.21,16.1327];
	_this setVectorDirAndUp [[-0.226937,-0.973883,-0.00714831],[0.0199947,-0.0119972,0.999728]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer9 && _layer229) then {
	_item120 = createVehicle ["Land_Shoot_House_Wall_F",[7913.47,3318.36,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [7913.47,3318.36,16.0591];
	_this setVectorDirAndUp [[-0.226917,-0.973911,-0.0023464],[0.023991,-0.00799829,0.99968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer9 && _layer229) then {
	_item121 = createVehicle ["Land_Shoot_House_Wall_F",[7913.47,3318.36,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [7913.47,3318.36,16.0591];
	_this setVectorDirAndUp [[-0.226917,-0.973911,-0.0023464],[0.023991,-0.00799829,0.99968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer9 && _layer229) then {
	_item122 = createVehicle ["Land_Shoot_House_Wall_F",[7903.77,3333.97,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [7903.77,3333.97,16.1833];
	_this setVectorDirAndUp [[0.973619,-0.227161,-0.021548],[0.023991,0.00799859,0.99968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer9 && _layer229) then {
	_item123 = createVehicle ["Land_Shoot_House_Wall_F",[7913.8,3328.56,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [7913.8,3328.56,15.9605];
	_this setVectorDirAndUp [[-0.226953,-0.973877,0.00752355],[0.0159975,0.00399623,0.999864]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer9 && _layer229) then {
	_item124 = createVehicle ["Land_Shoot_House_Wall_F",[7903.74,3320.63,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [7903.74,3320.63,16.1608];
	_this setVectorDirAndUp [[-0.226917,-0.973824,0.013238],[0.0239934,0.00799859,0.99968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer9 && _layer229) then {
	_item125 = createVehicle ["Land_Shoot_House_Wall_F",[7903.31,3332.03,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [7903.31,3332.03,16.2263];
	_this setVectorDirAndUp [[0.973269,-0.226982,-0.0350376],[0.0359766,0,0.999353]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer9 && _layer229) then {
	_item126 = createVehicle ["Land_Shoot_House_Wall_F",[7901.95,3326.18,0],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [7901.95,3326.18,16.1994];
	_this setVectorDirAndUp [[0.973868,-0.226912,-0.00960751],[0.00800059,-0.00800033,0.999936]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer9 && _layer229) then {
	_item127 = createVehicle ["Land_Shoot_House_Wall_F",[7901.49,3324.23,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [7901.49,3324.23,16.2106];
	_this setVectorDirAndUp [[0.973517,-0.226871,-0.0281658],[0.0279894,-0.0039951,0.9996]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer9 && _layer229) then {
	_item128 = createVehicle ["Land_Shoot_House_Wall_F",[7913.21,3334.85,0],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [7913.21,3334.85,15.9861];
	_this setVectorDirAndUp [[-0.226982,-0.973891,0.00389243],[0,0.00399675,0.999992]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer9 && _layer229) then {
	_item129 = createVehicle ["Land_Shoot_House_Wall_F",[7912.24,3335.08,0],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [7912.24,3335.08,15.9909];
	_this setVectorDirAndUp [[-0.226966,-0.973594,-0.0245339],[0.0119996,-0.027985,0.999536]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer9 && _layer229) then {
	_item130 = createVehicle ["Land_Shoot_House_Wall_F",[7904.22,3335.92,0],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [7904.22,3335.92,16.1702];
	_this setVectorDirAndUp [[0.973868,-0.226781,-0.0123286],[0.00800059,-0.019994,0.999768]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer9 && _layer229) then {
	_item131 = createVehicle ["Land_Shoot_House_Wall_F",[7910.94,3325.11,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [7910.94,3325.11,16.0526];
	_this setVectorDirAndUp [[-0.226866,-0.973444,0.0306225],[0.031983,0.023979,0.999201]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer9 && _layer229) then {
	_item132 = createVehicle ["Land_Shoot_House_Wall_F",[7911.53,3318.81,0],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [7911.53,3318.81,16.1016];
	_this setVectorDirAndUp [[-0.226953,-0.973897,-0.00415377],[0.0159975,-0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer9 && _layer229) then {
	_item133 = createVehicle ["Land_Shoot_House_Wall_F",[7901.79,3321.09,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [7901.79,3321.09,16.201];
	_this setVectorDirAndUp [[-0.226937,-0.973831,0.0123304],[0.0199947,0.0079993,0.999768]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer9 && _layer229) then {
	_item134 = createVehicle ["Land_Shoot_House_Wall_F",[7909.9,3329.46,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [7909.9,3329.46,15.9827];
	_this setVectorDirAndUp [[-0.226763,-0.973379,0.0333422],[0.0439577,0.0239705,0.998746]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer9 && _layer229) then {
	_item135 = createVehicle ["Land_Shoot_House_Wall_F",[7908.04,3321.46,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [7908.04,3321.46,16.1435];
	_this setVectorDirAndUp [[-0.226953,-0.973716,0.0192108],[0.0159975,0.0159956,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer9 && _layer229) then {
	_item136 = createVehicle ["Land_Shoot_House_Wall_F",[7908.99,3325.57,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [7908.99,3325.57,16.0775];
	_this setVectorDirAndUp [[-0.226975,-0.973899,-0.00181437],[-0.00799344,0,0.999968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer9 && _layer229) then {
	_item137 = createVehicle ["Land_Shoot_House_Wall_F",[7905.1,3326.48,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [7905.1,3326.48,16.1312];
	_this setVectorDirAndUp [[-0.226937,-0.973883,-0.00714831],[0.0199947,-0.0119972,0.999728]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer9 && _layer229) then {
	_item138 = createVehicle ["Land_Shoot_House_Wall_F",[7904.06,3330.82,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [7904.06,3330.82,16.197];
	_this setVectorDirAndUp [[-0.226953,-0.973777,-0.0158424],[0.0159975,-0.0199921,0.999672]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer9 && _layer229) then {
	_item139 = createVehicle ["Land_Shoot_House_Wall_F",[7903.15,3326.93,0],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [7903.15,3326.93,16.183];
	_this setVectorDirAndUp [[-0.226917,-0.973894,-0.00623663],[0.023991,-0.0119914,0.99964]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer9 && _layer229) then {
	_item140 = createVehicle ["Land_Shoot_House_Wall_F",[7912.89,3324.66,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [7912.89,3324.66,16.0006];
	_this setVectorDirAndUp [[-0.226953,-0.973877,0.00752355],[0.0159975,0.00399623,0.999864]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer9 && _layer229) then {
	_item141 = createVehicle ["Land_Shoot_House_Wall_F",[7912.98,3333.88,0],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [7912.98,3333.88,15.9849];
	_this setVectorDirAndUp [[0.973868,-0.227011,0.00688483],[-0.0080009,-0.00399654,0.99996]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer9 && _layer229) then {
	_item142 = createVehicle ["Land_Shoot_House_Wall_F",[7912.53,3331.93,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [7912.53,3331.93,15.9756];
	_this setVectorDirAndUp [[0.973891,-0.226982,0.00389243],[-0.00399675,0,0.999992]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer9 && _layer229) then {
	_item143 = createVehicle ["Land_Shoot_House_Wall_F",[7912.08,3329.98,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [7912.08,3329.98,15.9739];
	_this setVectorDirAndUp [[0.973891,-0.226964,0.00479958],[-0.00399675,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer9 && _layer229) then {
	_item144 = createVehicle ["Land_Shoot_House_Wall_F",[7913.63,3323.46,0],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [7913.63,3323.46,15.9968];
	_this setVectorDirAndUp [[0.973619,-0.227246,-0.0206405],[0.023991,0.0119916,0.99964]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer9 && _layer229) then {
	_item145 = createVehicle ["Land_Shoot_House_Wall_F",[7917.57,3322.61,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [7917.57,3322.61,15.7846];
	_this setVectorDirAndUp [[0.972585,-0.225703,-0.0560049],[0.0519288,-0.023961,0.998363]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer9 && _layer229) then {
	_item146 = createVehicle ["Land_Shoot_House_Wall_F",[7912.73,3319.56,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [7912.73,3319.56,16.0866];
	_this setVectorDirAndUp [[0.973619,-0.226787,-0.0251801],[0.023991,-0.00799829,0.99968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer9 && _layer229) then {
	_item147 = createVehicle ["Land_Shoot_House_Wall_F",[7901.04,3322.29,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [7901.04,3322.29,16.2064];
	_this setVectorDirAndUp [[0.973704,-0.22713,-0.0176561],[0.0199947,0.0079993,0.999768]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer9 && _layer229) then {
	_item148 = createVehicle ["Land_Shoot_House_Wall_F",[7907.79,3324.82,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [7907.79,3324.82,16.0707];
	_this setVectorDirAndUp [[0.973868,-0.226828,0.011415],[-0.00799344,0.0159972,0.99984]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer9 && _layer229) then {
	_item149 = createVehicle ["Land_Shoot_House_Wall_F",[7915.16,3334.4,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [7915.16,3334.4,15.9822];
	_this setVectorDirAndUp [[-0.226835,-0.973858,0.0120584],[0.0359766,0.00399416,0.999345]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer9 && _layer229) then {
	_item150 = createVehicle ["Land_Shoot_House_Wall_F",[7902.4,3328.13,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [7902.4,3328.13,16.2055];
	_this setVectorDirAndUp [[0.973899,-0.226982,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer9 && _layer229) then {
	_item151 = createVehicle ["Land_Shoot_House_Wall_F",[7906.01,3330.37,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [7906.01,3330.37,16.1292];
	_this setVectorDirAndUp [[-0.226835,-0.973899,0.00816605],[0.0359766,0,0.999353]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer9 && _layer229) then {
	_item152 = createVehicle ["Land_Shoot_House_Wall_F",[7917.37,3317.45,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [7917.37,3317.45,15.8446];
	_this setVectorDirAndUp [[-0.226396,-0.973956,0.012408],[0.071814,-0.00398634,0.99741]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer9 && _layer229) then {
	_item153 = createVehicle ["Land_Shoot_House_Wall_F",[7929,3323.98,0],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [7929,3323.98,15.6335];
	_this setVectorDirAndUp [[0.973868,-0.227011,0.00688483],[-0.0080009,-0.00399654,0.99996]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer9 && _layer229) then {
	_item154 = createVehicle ["Land_Shoot_House_Wall_F",[7919.05,3333.49,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [7919.05,3333.49,15.8452];
	_this setVectorDirAndUp [[-0.226801,-0.973938,-0.002615],[0.0399682,-0.01199,0.999129]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer9 && _layer229) then {
	_item155 = createVehicle ["Land_Shoot_House_Wall_F",[7921.24,3316.54,0],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [7921.24,3316.54,15.7488];
	_this setVectorDirAndUp [[-0.226953,-0.973531,0.0269976],[0.0159975,0.0239906,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layer9 && _layer229) then {
	_item156 = createVehicle ["Land_Shoot_House_Wall_F",[7925.87,3331.9,0],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [7925.87,3331.9,15.6499];
	_this setVectorDirAndUp [[-0.226575,-0.973137,0.0408481],[0.0598924,0.0279392,0.997814]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer9 && _layer229) then {
	_item157 = createVehicle ["Land_Shoot_House_Wall_F",[7917.69,3327.65,0],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [7917.69,3327.65,15.8815];
	_this setVectorDirAndUp [[-0.226835,-0.973867,-0.0113084],[0.0359766,-0.0199817,0.999153]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer9 && _layer229) then {
	_item158 = createVehicle ["Land_Shoot_House_Wall_F",[7919.79,3318.85,0],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [7919.79,3318.85,15.7324];
	_this setVectorDirAndUp [[-0.226801,-0.973629,0.024651],[0.0399682,0.0159849,0.999073]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item159 = objNull;
if (_layer9 && _layer229) then {
	_item159 = createVehicle ["Land_Shoot_House_Wall_F",[7929.46,3325.93,0],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [7929.46,3325.93,15.6319];
	_this setVectorDirAndUp [[0.973774,-0.22729,-0.0101293],[0.0159975,0.0239906,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item160 = objNull;
if (_layer9 && _layer229) then {
	_item160 = createVehicle ["Land_Shoot_House_Wall_F",[7925.99,3315.44,0],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [7925.99,3315.44,15.7317];
	_this setVectorDirAndUp [[-0.226975,-0.973203,0.0368507],[0.00799344,0.0359754,0.999321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layer9 && _layer229) then {
	_item161 = createVehicle ["Land_Shoot_House_Wall_F",[7928.1,3320.08,0],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [7928.1,3320.08,15.6673];
	_this setVectorDirAndUp [[0.973269,-0.22712,0.0341301],[-0.0359766,-0.00399408,0.999345]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item162 = objNull;
if (_layer9 && _layer229) then {
	_item162 = createVehicle ["Land_Shoot_House_Wall_F",[7927.64,3318.14,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [7927.64,3318.14,15.6707];
	_this setVectorDirAndUp [[0.973704,-0.226732,0.0221952],[-0.0199947,0.0119976,0.999728]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer9 && _layer229) then {
	_item163 = createVehicle ["Land_Shoot_House_Wall_F",[7919.64,3327.19,0],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [7919.64,3327.19,15.7985];
	_this setVectorDirAndUp [[-0.226835,-0.973662,-0.0229863],[0.0359766,-0.0319623,0.998841]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer9 && _layer229) then {
	_item164 = createVehicle ["Land_Shoot_House_Wall_F",[7918.73,3323.3,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [7918.73,3323.3,15.7405];
	_this setVectorDirAndUp [[-0.226676,-0.973901,-0.0115836],[0.0519288,-0.023961,0.998363]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer9 && _layer229) then {
	_item165 = createVehicle ["Land_Shoot_House_Wall_F",[7927.82,3331.45,0],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [7927.82,3331.45,15.5547];
	_this setVectorDirAndUp [[-0.226866,-0.973314,0.0345156],[0.031983,0.0279751,0.999097]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer9 && _layer229) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[7923.59,3326.28,0],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [7923.59,3326.28,15.7028];
	_this setVectorDirAndUp [[-0.226975,-0.973334,-0.0332244],[0.00799344,-0.0359754,0.999321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer9 && _layer229) then {
	_item167 = createVehicle ["Land_Shoot_House_Wall_F",[7928.26,3325.18,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [7928.26,3325.18,15.6316];
	_this setVectorDirAndUp [[-0.226975,-0.973899,-0.00181437],[-0.00799344,0,0.999968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer9 && _layer229) then {
	_item168 = createVehicle ["Land_Shoot_House_Wall_F",[7929.62,3331.02,0],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [7929.62,3331.02,15.5167];
	_this setVectorDirAndUp [[-0.226937,-0.973702,0.020118],[0.0199947,0.0159945,0.999672]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer9 && _layer229) then {
	_item169 = createVehicle ["Land_Shoot_House_Wall_F",[7927.35,3321.29,0],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [7927.35,3321.29,15.6512];
	_this setVectorDirAndUp [[-0.226981,-0.973895,-0.00298518],[0.00399666,-0.00399663,0.999984]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer9 && _layer229) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[7920.68,3322.84,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [7920.68,3322.84,15.661];
	_this setVectorDirAndUp [[-0.226981,-0.97364,-0.0224579],[0.00399666,-0.0239908,0.999704]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer9 && _layer229) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[7930.37,3329.82,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [7930.37,3329.82,15.5392];
	_this setVectorDirAndUp [[0.973619,-0.226239,0.0297114],[-0.0239937,0.0279814,0.99932]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer9 && _layer229) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[7919.8,3332.29,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [7919.8,3332.29,15.8052];
	_this setVectorDirAndUp [[0.972958,-0.227151,-0.0419014],[0.0439562,0.00399288,0.999025]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer9 && _layer229) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[7918.89,3328.39,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [7918.89,3328.39,15.8533];
	_this setVectorDirAndUp [[0.973269,-0.226236,-0.039569],[0.0359766,-0.0199817,0.999153]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer9 && _layer229) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[7919.48,3322.1,0],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [7919.48,3322.1,15.6906];
	_this setVectorDirAndUp [[0.972585,-0.227948,-0.0460251],[0.0519298,0.0199707,0.998451]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer9 && _layer229) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[7919.03,3320.15,0],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [7919.03,3320.15,15.7432];
	_this setVectorDirAndUp [[0.973121,-0.227286,-0.0371063],[0.0399667,0.0079945,0.999169]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer9 && _layer229) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[7920.59,3317.68,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [7920.59,3317.68,15.7331];
	_this setVectorDirAndUp [[0.973774,-0.227202,-0.0119468],[0.0159975,0.0159956,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer9 && _layer229) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[7927.19,3316.19,0],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [7927.19,3316.19,15.7057];
	_this setVectorDirAndUp [[0.973891,-0.226823,0.00933688],[-0.00399675,0.023991,0.999704]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer9 && _layer229) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[7919.05,3333.49,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [7919.05,3333.49,15.8452];
	_this setVectorDirAndUp [[-0.226801,-0.973938,-0.002615],[0.0399682,-0.01199,0.999129]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer9 && _layer229) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[7915.45,3317.92,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [7915.45,3317.92,15.9747];
	_this setVectorDirAndUp [[0.226395,0.973378,-0.035773],[0.0718145,0.019946,0.997219]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer9 && _layer229) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[7925.37,3321.71,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [7925.37,3321.71,15.6592];
	_this setVectorDirAndUp [[-0.226982,-0.973868,-0.0077848],[0,-0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer9 && _layer229) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[7923.22,3316.13,0],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [7923.22,3316.13,15.7355];
	_this setVectorDirAndUp [[0.226979,0.973597,-0.0242719],[0.00399666,0.023991,0.999704]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer9 && _layer229) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[7921.59,3326.74,0],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [7921.59,3326.74,15.7428];
	_this setVectorDirAndUp [[-0.226953,-0.973399,-0.0314096],[0.0159937,-0.035972,0.999225]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer9 && _layer229) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[7919.35,3330.34,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [7919.35,3330.34,15.8354];
	_this setVectorDirAndUp [[0.972585,-0.227572,-0.0478469],[0.0519298,0.0119838,0.998579]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer9 && _layer229) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[7932.78,3339.54,0],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [7932.78,3339.54,15.4548];
	_this setVectorDirAndUp [[0.973619,-0.227326,0.0197333],[-0.0239937,-0.0159929,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer9 && _layer229) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[7908.32,3353.45,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [7908.32,3353.45,16.0917];
	_this setVectorDirAndUp [[0.973899,-0.22698,0.000907188],[0,0.00399675,0.999992]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer9 && _layer229) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[7923.97,3345.71,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [7923.97,3345.71,15.7962];
	_this setVectorDirAndUp [[0.973774,-0.226625,-0.0201153],[0.0159975,-0.0199921,0.999672]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer9 && _layer229) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[7919.67,3340.5,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [7919.67,3340.5,15.8361];
	_this setVectorDirAndUp [[-0.973401,0.226982,0.0311482],[0.031983,0,0.999488]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer9 && _layer229) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[7916.37,3321.97,0],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [7916.37,3321.97,15.8754];
	_this setVectorDirAndUp [[-0.22633,-0.97373,0.0249998],[0.0757814,0.00798532,0.997092]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer9 && _layer229) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[7928.56,3322.03,0],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [7928.56,3322.03,15.6658];
	_this setVectorDirAndUp [[0.973868,-0.227112,0.00128624],[0.00800059,0.0399657,0.999169]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer9 && _layer229) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[7929.89,3327.9,0],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [7929.89,3327.9,15.5792];
	_this setVectorDirAndUp [[0.973401,-0.227664,-0.0256937],[0.031983,0.023979,0.999201]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer9 && _layer229) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[7902.87,3330.06,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [7902.87,3330.06,16.2008];
	_this setVectorDirAndUp [[0.973774,-0.226625,-0.0201153],[0.0159975,-0.0199921,0.999672]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer9 && _layer229) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[7905.67,3320.19,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [7905.67,3320.19,16.144];
	_this setVectorDirAndUp [[-0.226953,-0.973872,0.00805584],[-0.0159977,0.0119984,0.9998]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer9 && _layer229) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[7918.58,3318.21,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [7918.58,3318.21,15.7883];
	_this setVectorDirAndUp [[0.973269,-0.227386,-0.0323113],[0.0359766,0.0119922,0.999281]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer9 && _layer229) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[7906.81,3320.85,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [7906.81,3320.85,16.1535];
	_this setVectorDirAndUp [[0.973829,-0.226766,0.0153165],[-0.012,0.0159965,0.9998]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer9 && _layer229) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[7908.87,3320.3,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [7908.87,3320.3,16.1487];
	_this setVectorDirAndUp [[0.973774,-0.227202,-0.0119468],[0.0159975,0.0159956,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer9 && _layer229) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[7905.62,3341.78,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [7905.62,3341.78,16.2385];
	_this setVectorDirAndUp [[0.973774,-0.227042,-0.0146726],[0.0159975,0.00399623,0.999864]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer9 && _layer229) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[7904.71,3337.88,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [7904.71,3337.88,16.2024];
	_this setVectorDirAndUp [[0.973868,-0.227103,0.0023443],[-0.0080009,-0.0239902,0.99968]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer9 && _layer229) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[7905.17,3339.83,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [7905.17,3339.83,16.2482];
	_this setVectorDirAndUp [[0.973704,-0.226449,-0.0249132],[0.0199947,-0.0239886,0.999512]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer9 && _layer229) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[7924.61,3315.79,0],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [7924.61,3315.79,15.7333];
	_this setVectorDirAndUp [[0.226952,0.973138,-0.0386655],[0.0159937,0.035972,0.999225]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer9 && _layer229) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[7931.8,3335.63,0],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [7931.8,3335.63,15.4894];
	_this setVectorDirAndUp [[0.973774,-0.227099,0.0137653],[-0.0159977,-0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer9 && _layer229) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[7931.35,3333.69,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [7931.35,3333.69,15.5033];
	_this setVectorDirAndUp [[0.973774,-0.226625,0.0201154],[-0.0159977,0.0199921,0.999672]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer9 && _layer229) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[7930.89,3331.74,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [7930.89,3331.74,15.5191];
	_this setVectorDirAndUp [[0.973619,-0.226579,0.0269956],[-0.0239937,0.0159931,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer9 && _layer229) then {
	_item203 = createVehicle ["VR_Area_01_circle_4_yellow_F",[7936.08,3331.7,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [7936.08,3331.7,13.9673];
	_this setVectorDirAndUp [[-0.973144,0.230198,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item207 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item207 = createVehicle ["Sign_Arrow_F",[7912.8,3336.29,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [7912.8,3336.29,14.7194];
	_this setVectorDirAndUp [[0.212182,0.976847,0.0273521],[0,-0.0279894,0.999608]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item208 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item208 = createVehicle ["Sign_Arrow_F",[7904.85,3329.29,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [7904.85,3329.29,14.8599];
	_this setVectorDirAndUp [[0.972668,-0.231548,-0.0174137],[0.0159975,-0.00799242,0.99984]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item209 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item209 = createVehicle ["Sign_Arrow_F",[7914.24,3319.23,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [7914.24,3319.23,14.718];
	_this setVectorDirAndUp [[0.22689,0.973418,-0.0312706],[0.0519298,0.0199707,0.998451]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item210 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item210 = createVehicle ["Sign_Arrow_F",[7926.57,3329.62,0],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [7926.57,3329.62,14.3656];
	_this setVectorDirAndUp [[-0.963337,0.2616,0.0595618],[0.0638687,0.00798456,0.997926]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item211 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item211 = createVehicle ["Sign_Arrow_F",[7925.26,3318.81,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [7925.26,3318.81,14.3538];
	_this setVectorDirAndUp [[-0.962549,0.271042,-0.00601586],[-0.00399675,0.00800083,0.99996]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item212 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item212 = createVehicle ["Sign_Arrow_F",[7922.99,3350.21,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [7922.99,3350.21,14.5649];
	_this setVectorDirAndUp [[0.985605,-0.169057,-0.00135139],[0,-0.00799344,0.999968]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item213 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item213 = createVehicle ["Sign_Arrow_F",[7919.34,3348.9,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [7919.34,3348.9,14.591];
	_this setVectorDirAndUp [[-0.977523,0.208197,0.0332113],[0.0279894,-0.0279784,0.999217]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item214 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item214 = createVehicle ["Sign_Arrow_F",[7916.94,3341.51,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [7916.94,3341.51,14.6149];
	_this setVectorDirAndUp [[-0.979764,0.198157,0.0282259],[0.0279894,-0.0039951,0.9996]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item215 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item215 = createVehicle ["Sign_Arrow_F",[7921.18,3342.42,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [7921.18,3342.42,14.4905];
	_this setVectorDirAndUp [[0.974224,-0.224036,-0.0263834],[0.0279894,0.00399518,0.9996]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item216 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item216 = createVehicle ["Sign_Arrow_F",[7917.47,3335.96,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [7917.47,3335.96,14.6163];
	_this setVectorDirAndUp [[-0.2258,-0.974072,0.0141158],[0.027987,0.00799776,0.999576]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item217 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item217 = createVehicle ["Sign_Arrow_F",[7908.56,3344.26,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [7908.56,3344.26,14.8674];
	_this setVectorDirAndUp [[0.224409,0.974461,0.00810331],[0.0159975,-0.0119981,0.9998]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item218 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item218 = createVehicle ["Sign_Arrow_F",[7918.72,3322.46,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [7918.72,3322.46,14.4207];
	_this setVectorDirAndUp [[0.22689,0.973418,-0.0312706],[0.0519298,0.0199707,0.998451]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item219 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item219 = createVehicle ["Sign_Arrow_F",[7922.94,3346.18,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [7922.94,3346.18,14.5199];
	_this setVectorDirAndUp [[0.227167,0.973727,0.0158379],[0.0159975,-0.0199921,0.999672]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item220 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item220 = createVehicle ["Sign_Arrow_F",[7909.9,3349.23,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [7909.9,3349.23,14.7857];
	_this setVectorDirAndUp [[0.22708,0.973692,-0.0189525],[0.0319849,0.0119938,0.999416]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item221 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item221 = createVehicle ["Sign_Arrow_F",[7905.35,3331.7,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [7905.35,3331.7,14.8508];
	_this setVectorDirAndUp [[-0.225742,-0.974153,0.00812668],[0.0359766,0,0.999353]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item222 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item222 = createVehicle ["Sign_Arrow_F",[7911.38,3331.72,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [7911.38,3331.72,14.6868];
	_this setVectorDirAndUp [[-0.225872,-0.974153,0.00271057],[0.0119996,0,0.999928]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item223 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item223 = createVehicle ["Sign_Arrow_F",[7931.81,3348.54,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [7931.81,3348.54,14.3034];
	_this setVectorDirAndUp [[-0.225886,-0.973555,-0.0341426],[0.00399666,-0.0359744,0.999345]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item224 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item224 = createVehicle ["Sign_Arrow_F",[7902.88,3323.55,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [7902.88,3323.55,14.8668];
	_this setVectorDirAndUp [[0.212098,0.977246,-0.00203312],[0.0279894,-0.0039951,0.9996]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item225 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item225 = createVehicle ["Sign_Arrow_F",[7915.96,3351.59,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [7915.96,3351.59,14.6979];
	_this setVectorDirAndUp [[0.227167,0.973849,-0.00363371],[0.0159937,0,0.999872]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item237 = objNull;
if (_layer229) then {
	_item237 = createVehicle ["LIB_BasicWeaponsBox_UK",[6562.85,3532.31,0],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [6562.84,3532.31,13.6577];
	_this setVectorDirAndUp [[-0.980607,0.19596,0.00313361],[-0.00399679,-0.0359811,0.999344]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item246 = objNull;
if (_layer229) then {
	_item246 = createVehicle ["LIB_BasicWeaponsBox_UK",[6567.84,3533.1,0],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [6567.83,3533.1,13.7468];
	_this setVectorDirAndUp [[0.962617,-0.270614,0.011686],[-0.0200001,-0.0279862,0.999408]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item230 = objNull;
if (_layerRoot) then {
	_item230 = createVehicle ["FlagCarrierRedCross_EP1",[6584.39,3585.15,0.00458717],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [6584.39,3585.15,18.8494];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item247 = objNull;
if (_layerRoot) then {
	_item247 = createVehicle ["LIB_FlagCarrier_UK",[6558.89,3535.87,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [6558.89,3535.87,17.5717];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item250 = objNull;
if (_layerRoot) then {
	_item250 = _item248 createUnit ["LIB_UK_DR_LanceCorporal",[6562.47,3583.17,0],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [6562.47,3583.22,14.2469];
	_this setVectorDirAndUp [[0.781793,0.623539,0],[0,0,1]];
	_this setUnitLoadout [["LIB_Bren_Mk2","","","",["LIB_30Rnd_770x56",30],[],""],[],[],["U_LIB_UK_KhakiDrills",[["FirstAidKit",1],["LIB_MillsBomb",1,1]]],["V_LIB_UK_P37_Heavy",[["LIB_MillsBomb",1,1],["LIB_30Rnd_770x56",5,30]]],["B_LIB_UK_HSack",[]],"H_LIB_WP_Helmet_Mk2_Desert_Bowed","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Roman NawrÃ³t";;
	_this setface "LIB_WhiteHead_07_Dirt";;
	_this setspeaker "Male01PL";;
	_this setpitch 1.04;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item251 = objNull;
if (_layerRoot) then {
	_item251 = _item248 createUnit ["LIB_UK_DR_Corporal",[6542.39,3594.17,0],[],0,"CAN_COLLIDE"];
	_item248 selectLeader _item251;
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [6542.39,3594.22,13.4299];
	_this setVectorDirAndUp [[-0.986083,0.166252,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Daniel Hanau";;
	_this setface "LIB_WhiteHead_09_Dirt";;
	_this setspeaker "Male02ENGB";;
	_this setpitch 0.98;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item252 = objNull;
if (_layerRoot) then {
	_item252 = _item248 createUnit ["LIB_UK_DR_Corporal",[6542.07,3591.51,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [6542.07,3591.56,13.4118];
	_this setVectorDirAndUp [[0.780572,0.625066,0],[0,0,1]];
	_this setUnitLoadout [["LIB_LeeEnfield_No1","","","",["LIB_10Rnd_770x56",10],[],""],[],[],["U_LIB_UK_KhakiDrills",[["FirstAidKit",1],["LIB_ACC_P1903_Bayo",1],["LIB_No77",1,1]]],["V_LIB_UK_P37_Rifleman",[["LIB_No77",1,1]]],["B_LIB_UK_HSack",[]],"H_LIB_UK_Helmet_Mk2_Cover","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Sean Miller";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male01ENGB";;
	_this setpitch 0.99;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["SIT3",["hubsittingchairc_idle1","hubsittingchairc_idle2","hubsittingchairc_idle3","hubsittingchairc_move1"],false,false] # 0 isEqualTo '') then      {        ["SIT3",["hubsittingchairc_idle1","hubsittingchairc_idle2","hubsittingchairc_idle3","hubsittingchairc_move1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item254 = objNull;
if (_layerRoot) then {
	_item254 = _item248 createUnit ["LIB_UK_DR_Rifleman",[6524.89,3526.31,1.08506],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [6524.89,3526.36,12.0041];
	_this setVectorDirAndUp [[-0.692043,-0.721857,0],[0,0,1]];
	_this setUnitLoadout [["LIB_LeeEnfield_No1","","","",["LIB_10Rnd_770x56",10],[],""],[],[],["U_LIB_UK_KhakiDrills",[["FirstAidKit",1],["LIB_ACC_P1903_Bayo",1],["LIB_MillsBomb",1,1]]],["V_LIB_UK_P37_Gasmask",[["LIB_MillsBomb",1,1],["LIB_10Rnd_770x56",9,10]]],["B_LIB_UK_HSack",[]],"H_LIB_UK_Helmet_Mk2_Desert_Bowed","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Andrew Sissman";;
	_this setface "LIB_Walter_IF";;
	_this setspeaker "Male05ENGB";;
	_this setpitch 1.04;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item255 = objNull;
if (_layerRoot) then {
	_item255 = _item248 createUnit ["LIB_UK_DR_Rifleman",[6563.67,3584.03,0],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [6563.67,3584.08,14.2852];
	_this setVectorDirAndUp [[-0.898304,-0.439375,0],[0,0,1]];
	_this setUnitLoadout [["LIB_LeeEnfield_No1","","","",["LIB_10Rnd_770x56",10],[],""],[],[],["U_LIB_UK_KhakiDrills",[["FirstAidKit",1],["LIB_ACC_P1903_Bayo",1],["LIB_MillsBomb",1,1]]],["V_LIB_UK_P37_Gasmask",[["LIB_MillsBomb",1,1],["LIB_10Rnd_770x56",9,10]]],["B_LIB_UK_HSack",[]],"H_LIB_WP_Helmet_Mk2_Desert","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Fabian Prusak";;
	_this setface "LIB_WhiteHead_09_Dirt";;
	_this setspeaker "Male02PL";;
	_this setpitch 0.96;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["LISTENING_2",["Acts_CivilListening_2"],false,false] # 0 isEqualTo '') then      {        ["LISTENING_2",["Acts_CivilListening_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item256 = objNull;
if (_layerRoot) then {
	_item256 = _item248 createUnit ["LIB_UK_DR_Rifleman",[6578.53,3586.74,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [6578.53,3586.79,14.6316];
	_this setVectorDirAndUp [[-0.625842,-0.77995,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Ethan Bircsak";;
	_this setface "LIB_WhiteHead_09_Dirt";;
	_this setspeaker "Male04ENGB";;
	_this setpitch 0.96;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["PRONE_INJURED_U2",["hubwoundedprone_idle1","hubwoundedprone_idle2"],false,false] # 0 isEqualTo '') then      {        ["PRONE_INJURED_U2",["hubwoundedprone_idle1","hubwoundedprone_idle2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item257 = objNull;
if (_layerRoot) then {
	_item257 = _item248 createUnit ["LIB_UK_DR_Rifleman",[6566.22,3547.99,0],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [6566.22,3548.04,14.0391];
	_this setVectorDirAndUp [[0.268466,0.963289,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Christopher Goben";;
	_this setface "LIB_WhiteHead_07_Dirt";;
	_this setspeaker "Male05ENGB";;
	_this setpitch 1.05;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item258 = objNull;
if (_layerRoot) then {
	_item258 = _item248 createUnit ["LIB_UK_DR_Medic",[6577.85,3587.17,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [6577.85,3587.22,14.6205];
	_this setVectorDirAndUp [[0.822561,-0.568677,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Miguel White";;
	_this setface "LIB_Walter_IF";;
	_this setspeaker "Male01ENGB";;
	_this setpitch 0.97;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["KNEEL_TREAT",["ainvpknlmstpsnonwnondnon_medic","ainvpknlmstpsnonwnondnon_medic0","ainvpknlmstpsnonwnondnon_medic1","ainvpknlmstpsnonwnondnon_medic2","ainvpknlmstpsnonwnondnon_medic3","ainvpknlmstpsnonwnondnon_medic4","ainvpknlmstpsnonwnondnon_medic5"],false,false] # 0 isEqualTo '') then      {        ["KNEEL_TREAT",["ainvpknlmstpsnonwnondnon_medic","ainvpknlmstpsnonwnondnon_medic0","ainvpknlmstpsnonwnondnon_medic1","ainvpknlmstpsnonwnondnon_medic2","ainvpknlmstpsnonwnondnon_medic3","ainvpknlmstpsnonwnondnon_medic4","ainvpknlmstpsnonwnondnon_medic5"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', true];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (1 != -1 && {1 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 1, true]};
};

private _item259 = objNull;
if (_layerRoot) then {
	_item259 = _item248 createUnit ["LIB_UK_DR_AT_Soldier",[6548.59,3571.42,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [6548.59,3571.47,13.9003];
	_this setVectorDirAndUp [[0.9509,-0.309498,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Christian Davis";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male04ENGB";;
	_this setpitch 1;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["SIT_LOW_U",["aidlpsitmstpsnonwnondnon_ground00","amovpsitmstpsnonwnondnon_ground"],false,false] # 0 isEqualTo '') then      {        ["SIT_LOW_U",["aidlpsitmstpsnonwnondnon_ground00","amovpsitmstpsnonwnondnon_ground"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item260 = objNull;
if (_layerRoot) then {
	_item260 = _item248 createUnit ["LIB_UK_DR_Medic",[6573.08,3579.64,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [6573.08,3579.69,14.5822];
	_this setVectorDirAndUp [[0.526442,0.850211,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Edgar Jones";;
	_this setface "LIB_Walter_IF";;
	_this setspeaker "Male05ENGB";;
	_this setpitch 0.95;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["SIT_LOW_U",["aidlpsitmstpsnonwnondnon_ground00","amovpsitmstpsnonwnondnon_ground"],false,false] # 0 isEqualTo '') then      {        ["SIT_LOW_U",["aidlpsitmstpsnonwnondnon_ground00","amovpsitmstpsnonwnondnon_ground"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', true];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (1 != -1 && {1 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 1, true]};
};

private _item261 = objNull;
if (_layerRoot) then {
	_item261 = _item248 createUnit ["LIB_UK_DR_Sniper",[6558.91,3538.27,3.84744],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [6558.91,3538.32,17.6611];
	_this setVectorDirAndUp [[-0.951948,-0.30626,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Justin Davis";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male04ENGB";;
	_this setpitch 0.95;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["KNEEL",["Acts_SupportTeam_Front_KneelLoop"],false,false] # 0 isEqualTo '') then      {        ["KNEEL",["Acts_SupportTeam_Front_KneelLoop"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item262 = objNull;
if (_layerRoot) then {
	_item262 = _item248 createUnit ["LIB_UK_DR_Tank_Crew",[6553.16,3559.27,0.544],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [6553.16,3559.32,14.4619];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Sean Eady";;
	_this setface "LIB_WhiteHead_14_Dirt";;
	_this setspeaker "Male05ENGB";;
	_this setpitch 0.99;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["LISTENING_1",["Acts_CivilListening_1"],false,false] # 0 isEqualTo '') then      {        ["LISTENING_1",["Acts_CivilListening_1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item263 = objNull;
if (_layerRoot) then {
	_item263 = _item248 createUnit ["LIB_UK_DR_Tank_Commander",[6554.01,3559.62,0.544],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [6554.01,3559.67,14.4826];
	_this setVectorDirAndUp [[-0.449085,0.893489,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Jonathan Garcia";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male02ENGB";;
	_this setpitch 1.02;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["LISTEN_BRIEFING",["unaercposlechvelitele1","unaercposlechvelitele2","unaercposlechvelitele3","unaercposlechvelitele4"],false,false] # 0 isEqualTo '') then      {        ["LISTEN_BRIEFING",["unaercposlechvelitele1","unaercposlechvelitele2","unaercposlechvelitele3","unaercposlechvelitele4"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item264 = objNull;
if (_layerRoot) then {
	_item264 = _item248 createUnit ["LIB_UK_DR_Officer",[6551.89,3563.43,0.528],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [6551.89,3563.48,14.4626];
	_this setVectorDirAndUp [[0.663626,-0.748065,0],[0,0,1]];
	_this setUnitLoadout [[],[],["LIB_Webley_mk6","","","",["LIB_6Rnd_455",6],[],""],["U_LIB_UK_KhakiDrills",[["FirstAidKit",1],["LIB_No77",1,1],["LIB_MillsBomb",1,1]]],["V_LIB_UK_P37_Officer",[["LIB_6Rnd_455",1,6]]],["B_LIB_UK_HSack",[]],"H_LIB_UK_Beret","",["LIB_Binocular_UK","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Andrew Robinson";;
	_this setface "WhiteHead_06";;
	_this setspeaker "Male05ENGB";;
	_this setpitch 0.96;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["BRIEFING",["hubbriefing_loop","hubbriefing_loop","hubbriefing_loop","hubbriefing_lookaround1","hubbriefing_lookaround2","hubbriefing_scratch","hubbriefing_stretch","hubbriefing_talkaround"],false,false] # 0 isEqualTo '') then      {        ["BRIEFING",["hubbriefing_loop","hubbriefing_loop","hubbriefing_loop","hubbriefing_lookaround1","hubbriefing_lookaround2","hubbriefing_scratch","hubbriefing_stretch","hubbriefing_talkaround"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item281 = objNull;
if (_layerRoot) then {
	_item281 = _item248 createUnit ["LIB_UK_DR_Tank_Crew",[6554.83,3560.1,0.502],[],0,"CAN_COLLIDE"];
	_this = _item281;
	_objects pushback _this;
	_objectIDs pushback 281;
	_this setPosWorld [6554.83,3560.15,14.4622];
	_this setVectorDirAndUp [[-0.829759,0.558122,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Samuel Miller";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male05ENGB";;
	_this setpitch 0.98;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["LISTENING_2",["Acts_CivilListening_2"],false,false] # 0 isEqualTo '') then      {        ["LISTENING_2",["Acts_CivilListening_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item287 = objNull;
if (_layerRoot) then {
	_item287 = _item248 createUnit ["LIB_UK_DR_Sergeant",[6555.84,3555.45,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item287;
	_objects pushback _this;
	_objectIDs pushback 287;
	_this setPosWorld [6555.84,3555.5,13.9654];
	_this setVectorDirAndUp [[-0.989321,-0.145756,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Richard Walker";;
	_this setface "LIB_WhiteHead_18_Dirt";;
	_this setspeaker "Male01ENGB";;
	_this setpitch 0.98;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,false] # 0 isEqualTo '') then      {        ["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item275 = objNull;
if (_layerRoot) then {
	_item275 = _item248 createUnit ["LIB_UK_DR_Engineer",[6550.88,3570.24,0],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [6550.88,3570.29,13.939];
	_this setVectorDirAndUp [[0.465027,0.885296,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Jacob Clark";;
	_this setface "LIB_boyartsev_IF";;
	_this setspeaker "Male01ENGB";;
	_this setpitch 0.97;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["REPAIR_VEH_PRONE",["hubfixingvehicleprone_idle1"],false,false] # 0 isEqualTo '') then      {        ["REPAIR_VEH_PRONE",["hubfixingvehicleprone_idle1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', true];
	_this setUnitTrait ['ExplosiveSpecialist', true];
	_this setUnitTrait ['UAVHacker', false];
	if !(1 == ([0, 1] select (_this getUnitTrait 'engineer')) || {1 == -1}) then {_this setVariable ['s', 1, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', true, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item265 = objNull;
if (_layerRoot) then {
	_item265 = createVehicle ["ACE_medicalSupplyCrate",[6582.25,3585.2,0],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [6582.25,3585.2,14.7726];
	_this setVectorDirAndUp [[-0.995226,-0.0885809,-0.0409707],[-0.0439507,0.0319555,0.998522]];
	0 remoteExec ['setFeatureType', 0, _this];
	[_this,"[[[[],[]],[[],[]],[[""ACE_fieldDressing"",""ACE_morphine"",""ACE_epinephrine"",""ACE_bloodIV"",""ACE_bloodIV_500"",""ACE_bloodIV_250"",""ACE_tourniquet"",""ACE_splint"",""ACE_bodyBag""],[50,25,25,15,15,15,10,10,10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item266 = objNull;
if (_layerRoot) then {
	_item266 = createVehicle ["ACE_medicalSupplyCrate_advanced",[6581.17,3584.25,0],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [6581.17,3584.25,14.7432];
	_this setVectorDirAndUp [[-0.178987,0.983568,-0.0236131],[-0.0439564,0.0159822,0.998906]];
	0 remoteExec ['setFeatureType', 0, _this];
	[_this,"[[[[],[]],[[],[]],[[""ACE_fieldDressing"",""ACE_packingBandage"",""ACE_elasticBandage"",""ACE_tourniquet"",""ACE_splint"",""ACE_morphine"",""ACE_adenosine"",""ACE_epinephrine"",""ACE_plasmaIV"",""ACE_plasmaIV_500"",""ACE_plasmaIV_250"",""ACE_salineIV"",""ACE_salineIV_500"",""ACE_salineIV_250"",""ACE_bloodIV"",""ACE_bloodIV_500"",""ACE_bloodIV_250"",""ACE_quikclot"",""ACE_personalAidKit"",""ACE_surgicalKit"",""ACE_bodyBag""],[25,25,25,15,15,15,15,15,7,7,7,7,7,7,7,7,7,20,3,2,5]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item272 = objNull;
if (_layerRoot) then {
	_item272 = createVehicle ["ACE_medicalSupplyCrate",[6581.83,3584.72,0.409844],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [6581.83,3584.72,15.1747];
	_this setVectorDirAndUp [[-0.818672,0.574262,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	[_this,"[[[[],[]],[[],[]],[[""ACE_fieldDressing"",""ACE_morphine"",""ACE_epinephrine"",""ACE_bloodIV"",""ACE_bloodIV_500"",""ACE_bloodIV_250"",""ACE_tourniquet"",""ACE_splint"",""ACE_bodyBag""],[50,25,25,15,15,15,10,10,10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item273 = objNull;
if (_layerRoot) then {
	_item273 = createVehicle ["LIB_UK_DR_Willys_MB_Hood",[6550.51,3568.79,-0.000406265],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [6550.44,3568.76,15.309];
	_this setVectorDirAndUp [[0.436949,0.898565,0.040703],[-0.0519351,-0.0199729,0.998451]];
	_this lock 2;
	0 remoteExec ['setFeatureType', 0, _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (local _this) then {parseSimpleArray "[[""hitlfwheel"",""hitlbwheel"",""hitrfwheel"",""hitrbwheel"",""hitlftire_0"",""hitlftire_1"",""hitlftire_2"",""hitlftire_3"",""hitlbtire_0"",""hitlbtire_1"",""hitlbtire_2"",""hitlbtire_3"",""hitrftire_0"",""hitrftire_1"",""hitrftire_2"",""hitrftire_3"",""hitrbtire_0"",""hitrbtire_1"",""hitrbtire_2"",""hitrbtire_3"",""hitengine"",""hitbody"",""hitfuel"",""left_wing"",""right_wing"",""shield"",""wheel"",""canister"",""hitrglass"",""hitlglass"",""hitlf2wheel"",""hitlmwheel"",""hitrf2wheel"",""hitrmwheel"",""left_door"",""right_door"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hithull"",""#l svetlo"",""#p svetlo""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item277 = objNull;
if (_layerRoot) then {
	_item277 = createVehicle ["Land_WoodenCrate_01_stack_x3_F",[6558.28,3556.55,0],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [6558.28,3556.55,14.8257];
	_this setVectorDirAndUp [[0,0.999872,0.0159975],[-0.0678434,-0.0159606,0.997568]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item278 = objNull;
if (_layerRoot) then {
	_item278 = createVehicle ["AmmoCrates_NoInteractive_Medium",[6550.75,3559.49,0.582072],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [6550.75,3559.49,15.7522];
	_this setVectorDirAndUp [[0.407887,0.913032,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item279 = objNull;
if (_layerRoot) then {
	_item279 = createVehicle ["AmmoCrates_NoInteractive_Large",[6551.45,3558.27,0.593534],[],0,"CAN_COLLIDE"];
	_this = _item279;
	_objects pushback _this;
	_objectIDs pushback 279;
	_this setPosWorld [6551.45,3558.27,15.8211];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item282 = objNull;
if (_layerRoot) then {
	_item282 = createVehicle ["CUP_ch_mod_e",[6542.09,3591.58,-2.67029e-005],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [6542.09,3591.58,13.4121];
	_this setVectorDirAndUp [[-0.730215,-0.682357,-0.0342868],[-0.031983,-0.0159893,0.999361]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item289 = objNull;
if (_layerRoot) then {
	_item289 = createVehicle ["CUP_ch_mod_e",[6555.86,3555.49,0],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [6555.86,3555.49,13.965];
	_this setVectorDirAndUp [[0.975636,0.213958,0.0485438],[-0.0479448,-0.00799139,0.998818]];
	0 remoteExec ['setFeatureType', 0, _this];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item2 = objNull;
if (_layer229) then {
	_item2 = createTrigger ["EmptyDetectorArea10x10",[6577.19,3584.68,9.53674e-007],false];
	_this = _item2;
	_triggers pushback _this;
	_triggerIDs pushback 2;
	_item2 setPosATL [6577.19,3584.68,9.53674e-007];
	_this setTriggerArea [6,6,48.8962,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item5 = objNull;
if (_layer4 && _layer229) then {
	_item5 = createTrigger ["EmptyDetectorArea10x10",[6512.7,3475.69,0],true];
	_this = _item5;
	_triggers pushback _this;
	_triggerIDs pushback 5;
	_item5 setPosATL [6512.7,3475.69,0];
	_this setTriggerArea [5,20,45.3564,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item204 = objNull;
if (_layer9 && _layer229) then {
	_item204 = createTrigger ["EmptyDetectorAreaR50",[7900.13,3337.34,0],false];
	_this = _item204;
	_triggers pushback _this;
	_triggerIDs pushback 204;
	_item204 setPosATL [7900.13,3337.34,0];
	_this setTriggerArea [50,50,295.491,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item205 = objNull;
if (_layer9 && _layer229) then {
	_item205 = createTrigger ["EmptyDetectorArea10x10",[7917.71,3336.24,0],true];
	_this = _item205;
	_triggers pushback _this;
	_triggerIDs pushback 205;
	_item205 setPosATL [7917.71,3336.24,0];
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
	      if (!is3DEN && (["","Default","HQ",true,true] # 0 != '')) then      {        [_this, ["","Default","HQ",true,true]] spawn {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '_parameters'];          _parameters params [['_type', ''], ['_color', 'Default'], ['_text', groupID _group], ['_showGroupSize', true], ['_showVehicle', true]];          private _leader = leader _group;          private _marker = createMarkerLocal [            'ENH_GroupMarker_' + str _group,            _leader          ];          _marker setMarkerTypeLocal _type;          _marker setMarkerColorLocal _color;          _marker setMarkerTextLocal (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then {              _marker setMarkerPos _leader;              private _groupString = (_text call BIS_fnc_localize);              private _sizeString = (' (' + str count units _group + ')');              if (vehicle _leader != _leader) then {                private _vehicleName = getText (configFile >> 'CfgVehicles' >> typeOf vehicle _leader >> 'displayName');                private _vehicleString = (' [' + _vehicleName + ']');                if (_showVehicle) then {                  if (_showGroupSize) then {                    _marker setMarkerTextLocal (_groupString + _vehicleString + _sizeString);                  } else {                    _marker setMarkerTextLocal (_groupString + _vehicleString);                  };                };              } else              {                if (_showGroupSize) then {                  _marker setMarkerTextLocal (_groupString + _sizeString);                };              };            };          };        };      };;
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
	_item3 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[6567.12,3526.02,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_logics pushback _this;
	_logicIDs pushback 3;
	_this setPosWorld [6567.12,3526.02,13.6787];
	_this setVectorDirAndUp [[0.803383,0.594462,0.0345106],[-0.039967,-0.00399347,0.999193]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item227 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item227 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[7930.23,3340.43,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_logics pushback _this;
	_logicIDs pushback 227;
	_this setPosWorld [7930.23,3340.43,13.8106];
	_this setVectorDirAndUp [[-0.90259,0.430265,0.0142713],[0.0119996,-0.00799286,0.999896]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item228 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item228 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[7933.02,3325.99,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_logics pushback _this;
	_logicIDs pushback 228;
	_this setPosWorld [7933.02,3325.99,14.0193];
	_this setVectorDirAndUp [[-0.901435,0.429981,-0.0503166],[-0.05193,0.0079901,0.998619]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer226) then {missionNamespace setVariable ["tempMissionSP_Spawns",[[_item227,_item228],[]]];};
if (_layer206) then {missionNamespace setVariable ["tempMissionSP_Shoothouse Targets",[[_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225],[]]];};
if (_layer9) then {missionNamespace setVariable ["tempMissionSP_Shoothouse Pit",[[_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228],[]]];};
if (_layer4) then {missionNamespace setVariable ["tempMissionSP_bargate",[[_item5,_item6],[]]];};
if (_layer229) then {missionNamespace setVariable ["tempMissionSP_SIA ZGM Essentials",[[_item0,_item2,_item3,_item5,_item6,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228,_item237,_item246],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item237) then {
		this = _item237;
		call{arsenals pushBack this};
	};
	if !(isnull _item246) then {
		this = _item246;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
