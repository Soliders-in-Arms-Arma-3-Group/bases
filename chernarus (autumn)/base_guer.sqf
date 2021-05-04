// Export of 'temp.chernarus' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer97 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer108 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer58 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer55 = (_allWhitelisted || {"ace heal trigger" in _layerWhiteList}) && {!("ace heal trigger" in _layerBlackList)};
private _layer11 = (_allWhitelisted || {"hq" in _layerWhiteList}) && {!("hq" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item87 = "";
if (_layerRoot) then {
	_item87 = createMarker ["m1",[8092.15,8081.74,0]];
	_this = _item87;
	_markers pushback _this;
	_markerIDs pushback 87;
	_this setMarkerType "hd_flag";
	_this setMarkerText "Camp Niko";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item12 = objNull;
if (_layer11) then {
	_item12 = createVehicle ["Land_fort_bagfence_corner",[8101.4,8090.89,0],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [8101.4,8090.89,406.837];
	_this setVectorDirAndUp [[0.88869,-0.458481,0.00492469],[0.00133688,0.0133316,0.99991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer11) then {
	_item13 = createVehicle ["Land_fort_bagfence_corner",[8106.51,8088.45,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [8106.51,8088.45,406.866];
	_this setVectorDirAndUp [[-0.458507,-0.888627,0.0106599],[0,0.011995,0.999928]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layer11) then {
	_item14 = createVehicle ["Land_fort_bagfence_long",[8104.57,8090.85,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [8104.57,8090.85,406.838];
	_this setVectorDirAndUp [[-0.458507,-0.888627,0.0106599],[0,0.011995,0.999928]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer11) then {
	_item15 = createVehicle ["AmmoCrates_NoInteractive_Large",[8105.55,8080.17,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [8105.55,8080.17,407.983];
	_this setVectorDirAndUp [[0.841423,0.54026,-0.0112113],[0.00133688,0.018666,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item16 = objNull;
if (_layer11) then {
	_item16 = createVehicle ["Land_PaperBox_open_full_F",[8104.05,8079.05,0],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [8104.05,8079.05,407.256];
	_this setVectorDirAndUp [[-0.0472666,0.998685,-0.019846],[0.0026744,0.0199946,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item17 = objNull;
if (_layer11) then {
	_item17 = createVehicle ["Land_fort_rampart",[8109.41,8081.79,0],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [8109.41,8081.79,406.73];
	_this setVectorDirAndUp [[-0.998882,-0.0472587,0.000882284],[0,0.018666,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item18 = objNull;
if (_layer11) then {
	_item18 = createVehicle ["Land_fort_bagfence_corner",[8105.01,8065.41,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [8105.01,8065.41,407.47];
	_this setVectorDirAndUp [[0.952609,0.303801,-0.0155112],[0.0026744,0.0426247,0.999088]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item19 = objNull;
if (_layer11) then {
	_item19 = createVehicle ["Land_BagBunker_Small_F",[8108.12,8067.08,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [8108.12,8067.08,407.981];
	_this setVectorDirAndUp [[-0.304186,0.95173,-0.0410114],[-0.00133721,0.0426248,0.99909]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item20 = objNull;
if (_layer11) then {
	_item20 = createVehicle ["Land_JunkPile_F",[8095.76,8066,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [8095.76,8066,407.371];
	_this setVectorDirAndUp [[-0.540373,0.840766,-0.033316],[0.00265199,0.0412963,0.999143]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer11) then {
	_item21 = createVehicle ["Land_JunkPile_F",[8095.4,8085.04,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [8095.4,8085.04,406.82];
	_this setVectorDirAndUp [[0.88869,-0.458458,0.00675561],[0.00133688,0.0173247,0.999849]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layer11) then {
	_item22 = createVehicle ["Land_fort_bagfence_long",[8082.9,8078.16,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [8082.9,8078.16,407.071];
	_this setVectorDirAndUp [[-0.458507,-0.888291,0.0266693],[0.00133688,0.0293201,0.999569]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer11) then {
	_item23 = createVehicle ["Land_fort_bagfence_long",[8084.25,8083.93,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [8084.25,8083.93,406.93];
	_this setVectorDirAndUp [[0.212872,0.976819,-0.0225908],[-0.00399675,0.023991,0.999704]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer11) then {
	_item24 = createVehicle ["Land_Wreck_T72_hull_F",[8085.39,8096.62,0],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [8085.39,8096.62,406.939];
	_this setVectorDirAndUp [[0.977066,-0.212751,0.00889234],[-0.0053265,0.0173279,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer11) then {
	_item25 = createVehicle ["CampEast_EP1",[8096.06,8075.47,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [8096.06,8075.47,408.112];
	_this setVectorDirAndUp [[0.957127,0.28946,-0.01103],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer11) then {
	_item26 = createSimpleObject ["Land_MetalBarrel_F",[8091.59,8084.19,406.565]];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [8091.59,8084.19,406.988];
	_this setVectorDirAndUp [[-0.305066,0.952097,-0.0211263],[-0.00267442,0.0213272,0.999769]];
	0 remoteExec ['setFeatureType', _this];
};

private _item27 = objNull;
if (_layer11) then {
	_item27 = createSimpleObject ["Land_MetalBarrel_F",[8091.86,8083.4,406.583]];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [8091.86,8083.4,407.005];
	_this setVectorDirAndUp [[0.0482553,-0.998605,0.0214314],[-0.00267442,0.0213272,0.999769]];
	0 remoteExec ['setFeatureType', _this];
};

private _item28 = objNull;
if (_layer11) then {
	_item28 = createSimpleObject ["Land_MetalBarrel_F",[8092.4,8084.01,406.571]];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [8092.4,8084.01,406.994];
	_this setVectorDirAndUp [[0.305067,-0.952097,0.0211263],[-0.00267442,0.0213272,0.999769]];
	0 remoteExec ['setFeatureType', _this];
};

private _item29 = objNull;
if (_layer11) then {
	_item29 = createVehicle ["Land_PaperBox_closed_F",[8093.38,8084.78,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [8093.38,8084.78,407.196];
	_this setVectorDirAndUp [[0.304186,-0.95243,0.0186406],[0.00133688,0.0199947,0.999799]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item30 = objNull;
if (_layer11) then {
	_item30 = createVehicle ["Land_PaperBox_open_full_F",[8089.29,8083.21,0],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [8089.29,8083.21,407.188];
	_this setVectorDirAndUp [[-0.952609,-0.304171,0.00394034],[-0.00267442,0.0213272,0.999769]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer11) then {
	_item31 = createSimpleObject ["Land_WaterBarrel_F",[8087.33,8082.14,406.599]];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [8087.33,8082.14,407.165];
	_this setVectorDirAndUp [[-0.047232,0.998596,-0.0239644],[0,0.0239912,0.999712]];
	0 remoteExec ['setFeatureType', _this];
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item32 = objNull;
if (_layer11) then {
	_item32 = createVehicle ["Land_fort_rampart",[8085.64,8065.71,0],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [8085.64,8065.71,407.276];
	_this setVectorDirAndUp [[0.952605,0.303725,-0.0171741],[0.00399666,0.0439547,0.999026]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer11) then {
	_item33 = createVehicle ["Land_fort_rampart",[8089.72,8087.03,0],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [8089.72,8087.03,406.642];
	_this setVectorDirAndUp [[0.304185,-0.952406,0.0198606],[-0.00267442,0.0199946,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item34 = objNull;
if (_layer11) then {
	_item34 = createVehicle ["Land_fort_bagfence_round",[8081.16,8081.8,0],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [8081.16,8081.8,406.885];
	_this setVectorDirAndUp [[-0.977072,0.212718,-0.00901111],[-0.00399675,0.023991,0.999704]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer11) then {
	_item35 = createVehicle ["Land_TTowerSmall_2_F",[8094.21,8063.55,0.00369263],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [8094.21,8063.55,415.684];
	_this setVectorDirAndUp [[0.304186,-0.952613,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer11) then {
	_item36 = createVehicle ["Land_fort_bagfence_corner",[8100.01,8063.42,0],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [8100.01,8063.42,407.568];
	_this setVectorDirAndUp [[-0.304185,0.951781,-0.0397962],[0.0026744,0.0426289,0.999087]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer11) then {
	_item37 = createVehicle ["Land_fort_bagfence_long",[8103.12,8063.1,0],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [8103.12,8063.1,407.574];
	_this setVectorDirAndUp [[-0.304185,0.951781,-0.0397962],[0.0026744,0.0426289,0.999087]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer11) then {
	_item38 = createSimpleObject ["Land_MetalBarrel_F",[8095.73,8064.43,407.162]];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [8095.73,8064.43,407.585];
	_this setVectorDirAndUp [[0.306013,-0.951248,0.0385045],[0.00265199,0.0412963,0.999143]];
	0 remoteExec ['setFeatureType', _this];
};

private _item39 = objNull;
if (_layer11) then {
	_item39 = createVehicle ["Land_Tyres_F",[8097.49,8065.11,0],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [8097.49,8065.11,407.401];
	_this setVectorDirAndUp [[-0.304184,0.951799,-0.039393],[0.00399666,0.0426273,0.999083]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer11) then {
	_item40 = createVehicle ["Land_fort_rampart",[8093.48,8060.42,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [8093.48,8060.42,407.509];
	_this setVectorDirAndUp [[-0.304185,0.951025,-0.0549791],[0.0026744,0.0585664,0.99828]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layer11) then {
	_item41 = createVehicle ["PowerGenerator",[8094.09,8064.55,-0.000396729],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [8094.1,8064.58,407.929];
	_this setVectorDirAndUp [[-0.304185,0.951833,-0.0385335],[0.00265199,0.0412963,0.999143]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer11) then {
	_item42 = createVehicle ["Land_ClutterCutter_medium_F",[8096.9,8075.5,0.0394592],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [8096.9,8075.5,406.796];
	_this setVectorDirAndUp [[0.954367,0.298424,-0.0112857],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item43 = objNull;
if (_layer11) then {
	_item43 = createVehicle ["Land_fort_rampart",[8083.49,8072.34,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [8083.49,8072.34,407.017];
	_this setVectorDirAndUp [[0.952612,0.30399,-0.0110022],[0.00133688,0.0319848,0.999487]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item44 = objNull;
if (_layer11) then {
	_item44 = createVehicle ["Land_ClutterCutter_medium_F",[8087.34,8073.62,3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [8087.34,8073.62,406.831];
	_this setVectorDirAndUp [[0,0.999488,-0.0319849],[0.00133688,0.0319848,0.999487]];
	0 remoteExec ['setFeatureType', _this];
};

private _item45 = objNull;
if (_layer11) then {
	_item45 = createVehicle ["Land_ClutterCutter_medium_F",[8084.1,8091.92,6.10352e-005],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [8084.1,8091.92,406.384];
	_this setVectorDirAndUp [[0,0.9998,-0.0199947],[-0.0080009,0.0199941,0.999768]];
	0 remoteExec ['setFeatureType', _this];
};

private _item46 = objNull;
if (_layer11) then {
	_item46 = createVehicle ["Land_CampingChair_V2_F",[8094.75,8076.89,0.0393982],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [8094.75,8076.91,407.267];
	_this setVectorDirAndUp [[-0.998715,-0.0505114,0.00413137],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item47 = objNull;
if (_layer11) then {
	_item47 = createVehicle ["Land_CampingChair_V2_F",[8094.88,8075.83,0.0393677],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [8094.89,8075.84,407.298];
	_this setVectorDirAndUp [[-0.988707,-0.149698,0.00701424],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item48 = objNull;
if (_layer11) then {
	_item48 = createVehicle ["Land_CampingChair_V2_F",[8093.03,8076.48,0.0386963],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [8093.03,8076.49,407.284];
	_this setVectorDirAndUp [[-0.998715,-0.0505114,0.00413137],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item49 = objNull;
if (_layer11) then {
	_item49 = createVehicle ["Land_CampingChair_V2_F",[8093.16,8075.41,0.0374451],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [8093.16,8075.43,407.315];
	_this setVectorDirAndUp [[-0.988707,-0.149698,0.00701424],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item50 = objNull;
if (_layer11) then {
	_item50 = createVehicle ["Land_CampingChair_V2_F",[8095.08,8074.12,0.0383301],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [8095.08,8074.14,407.348];
	_this setVectorDirAndUp [[-0.988707,-0.149698,0.00701424],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item51 = objNull;
if (_layer11) then {
	_item51 = createVehicle ["Land_CampingChair_V2_F",[8095.45,8073.09,0.0374451],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [8095.45,8073.1,407.377];
	_this setVectorDirAndUp [[-0.908761,-0.417061,0.0146446],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item52 = objNull;
if (_layer11) then {
	_item52 = createVehicle ["Land_CampingChair_V2_F",[8093.56,8073.78,0.0358276],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [8093.56,8073.8,407.362];
	_this setVectorDirAndUp [[-0.988707,-0.149698,0.00701424],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item53 = objNull;
if (_layer11) then {
	_item53 = createVehicle ["Land_CampingChair_V2_F",[8093.93,8072.75,0.0349731],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [8093.93,8072.77,407.391];
	_this setVectorDirAndUp [[-0.908761,-0.417061,0.0146446],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item54 = objNull;
if (_layer11) then {
	_item54 = createSimpleObject ["Land_WoodenTable_large_F",[8097.44,8076.04,406.779]];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [8097.44,8076.04,407.211];
	_this setVectorDirAndUp [[-0.309448,0.950531,-0.0270607],[0.00265199,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
};

private _item57 = objNull;
if (_layer55) then {
	_item57 = createVehicle ["MASH_EP1",[8104.1,8084.28,0],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [8104.1,8084.28,407.728];
	_this setVectorDirAndUp [[-0.0159517,0.999699,-0.0186501],[0.00134403,0.0186739,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item60 = objNull;
if (_layer58) then {
	_item60 = createVehicle ["CargoNet_01_barrels_F",[8083.36,8093.32,0],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [8083.35,8093.33,406.877];
	_this setVectorDirAndUp [[-0.209544,-0.977585,0.0204826],[-0.00799344,0.0226595,0.999711]];
	0 remoteExec ['setFeatureType', _this];
	if (1000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 1000] call ace_refuel_fnc_makeSource};
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item61 = objNull;
if (_layer58) then {
	_item61 = createVehicle ["Land_Workbench_01_F",[8083.45,8085.06,0],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [8083.45,8085.08,407.019];
	_this setVectorDirAndUp [[-0.152277,-0.988068,0.0231077],[-0.00399679,0.0239958,0.999704]];
	0 remoteExec ['setFeatureType', _this];
};

private _item65 = objNull;
if (_layerRoot) then {
	_item65 = createVehicle ["rhsgref_ins_uaz_open",[8108.08,8092.99,0],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [8108.07,8093,407.683];
	_this setVectorDirAndUp [[-0.863676,0.504027,-0.00451145],[-0.00133721,0.00665923,0.999977]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitspare"",""usespare"",""hitlightl"",""hitlightr"",""hitsearchlight"",""hithull"",""hitfuel"",""hitengine"",""hitbody"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitdoor_1_1"",""hitdoor_1_2"",""hitdoor_2_1"",""hitdoor_2_2"",""hithood"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
	_this setVariable ['rhs_decalNumber_type', 0];[_this,[['Number', cDecals4CarsNumberPlaces, 0]]] call rhs_fnc_decalsInit;
	if(-1 >= 0)then{[_this,[['Number', cDecals4CarsNumberPlaces, _this getVariable ['rhs_decalNumber_type','LicensePlate'], -1]]] call rhs_fnc_decalsInit};;
	_this setVariable ['rhs_decalArmy_type', 0];;
	if(parseNumber -1 >= 0)then{ [_this, [ [ 'Label', cDecalsCarsRightArmyPlaces,  _this getVariable ['rhs_decalArmy_type','Army'],call compile -1] ] ] call rhs_fnc_decalsInit};;
	_this setVariable ['rhs_decalPlatoon_type', 0];;
	if(parseNumber -1 >= 0)then{ [_this, [ [ 'Label', cDecalsCarsRightPlatoonPlaces,  _this getVariable ['rhs_decalPlatoon_type','Army'],call compile -1] ] ] call rhs_fnc_decalsInit};;
	_this animate ['light_hide',0,true];
	_this animate ['spare_hide',0,true];
	_this animateDoor ['Door_LF',0,true];
	_this animateDoor ['Door_RF',0,true];
	_this animateDoor ['Door_LB',0,true];
	_this animateDoor ['Door_RB',0,true];
};

private _item91 = objNull;
if (_layerRoot) then {
	_item91 = createVehicle ["Land_InfoStand_V1_F",[8091.5,8074.98,0],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [8091.5,8075,407.362];
	_this setVectorDirAndUp [[0.954162,0.29915,-0.00917644],[0,0.0306606,0.99953]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item96 = objNull;
if (_layerRoot) then {
	_item96 = createVehicle ["Box_NATO_AmmoVeh_F",[8085.8,8092.82,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [8085.8,8092.83,407.168];
	_this setVectorDirAndUp [[-0.212754,-0.976978,0.0158011],[-0.00532323,0.01733,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 8] call ace_cargo_fnc_setSize;;
};

private _item114 = objNull;
if (_layer97 && _layer108) then {
	_item114 = createVehicle ["Gunrack1",[8088.32,8071.59,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [8088.32,8071.59,407.399];
	_this setVectorDirAndUp [[0.249315,-0.967938,0.0306416],[0.00133721,0.0319848,0.999487]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (!is3DEN) then {[_this, +[["VSM_Shemagh_tan"],0]] call ace_arsenal_fnc_attributeInit};
};

private _item115 = objNull;
if (_layer97 && _layer108) then {
	_item115 = createVehicle ["Gunrack1",[8087.48,8075.07,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [8087.48,8075.07,407.289];
	_this setVectorDirAndUp [[0.224246,-0.974075,0.0298726],[0,0.0306533,0.99953]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item56 = objNull;
if (_layer55) then {
	_item56 = createTrigger ["EmptyDetectorArea10x10",[8104.5,8084.22,0],true];
	_this = _item56;
	_triggers pushback _this;
	_triggerIDs pushback 56;
	_item56 setPosATL [8104.5,8084.22,0];
	_this setTriggerArea [3,2,270.031,true,3];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerTimeout [3,3,3,true];
};

private _item59 = objNull;
if (_layer58) then {
	_item59 = createTrigger ["EmptyDetectorArea10x10",[8080.65,8093.8,0],true];
	_this = _item59;
	_triggers pushback _this;
	_triggerIDs pushback 59;
	_item59 setPosATL [8080.65,8093.8,0];
	_this setTriggerArea [10,10,14.9654,true,5];
	repStation = _this;
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

private _item99 = objNull;
if (_layer97 && _layer108) then {
	_item99 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8098.72,8069.12,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_logics pushback _this;
	_logicIDs pushback 99;
	_this setPosWorld [8098.72,8069.12,406.952];
	_this setVectorDirAndUp [[0,0.999091,-0.0426276],[0.00399666,0.0426273,0.999083]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer97) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item99,_item114,_item115],[]]];};
if (_layer108) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item99,_item114,_item115],[]]];};
if (_layer58) then {missionNamespace setVariable ["temp_Repair Station",[[_item59,_item60,_item61],[]]];};
if (_layer55) then {missionNamespace setVariable ["temp_Ace Heal Trigger",[[_item56,_item57],[]]];};
if (_layer11) then {missionNamespace setVariable ["temp_HQ",[[_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item61) then {
		this = _item61;
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
	if !(isnull _item114) then {
		this = _item114;
		call{arsenals pushBack this};
	};
	if !(isnull _item115) then {
		this = _item115;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
