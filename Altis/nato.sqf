// Export of 'temp.Altis' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer549 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer560 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer498 = (_allWhitelisted || {"hospital" in _layerWhiteList}) && {!("hospital" in _layerBlackList)};
private _layer464 = (_allWhitelisted || {"canteen #1" in _layerWhiteList}) && {!("canteen #1" in _layerBlackList)};
private _layer452 = (_allWhitelisted || {"armory" in _layerWhiteList}) && {!("armory" in _layerBlackList)};
private _layer450 = (_allWhitelisted || {"base" in _layerWhiteList}) && {!("base" in _layerBlackList)};
private _layer448 = (_allWhitelisted || {"repair station_1" in _layerWhiteList}) && {!("repair station_1" in _layerBlackList)};
private _layer446 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer54 = (_allWhitelisted || {"checkpoint [blu]" in _layerWhiteList}) && {!("checkpoint [blu]" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item121 = "";
if (_layerRoot) then {
	_item121 = createMarker ["marker_2",[14581.9,16815.1,0]];
	_this = _item121;
	_markers pushback _this;
	_markerIDs pushback 121;
	_this setMarkerType "b_hq";
	_this setMarkerText "SHAFTER AB";
	_this setMarkerShape "ICON";
};

private _item179 = "";
if (_layerRoot) then {
	_item179 = createMarker ["marker_3",[15056.3,17306.4,0]];
	_this = _item179;
	_markers pushback _this;
	_markerIDs pushback 179;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Service";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item180 = "";
if (_layerRoot) then {
	_item180 = createMarker ["marker_4",[15301.5,17392.2,0]];
	_this = _item180;
	_markers pushback _this;
	_markerIDs pushback 180;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Medical";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item73 = grpNull;
if (_layerRoot) then {
	_item73 = createGroup west;
	_this = _item73;
	_groups pushback _this;
	_groupIDs pushback 73;
};

private _item83 = grpNull;
if (_layerRoot) then {
	_item83 = createGroup west;
	_this = _item83;
	_groups pushback _this;
	_groupIDs pushback 83;
};

private _item93 = grpNull;
if (_layerRoot) then {
	_item93 = createGroup west;
	_this = _item93;
	_groups pushback _this;
	_groupIDs pushback 93;
};

private _item149 = grpNull;
if (_layerRoot) then {
	_item149 = createGroup west;
	_this = _item149;
	_groups pushback _this;
	_groupIDs pushback 149;
};

private _item160 = grpNull;
if (_layerRoot) then {
	_item160 = createGroup west;
	_this = _item160;
	_groups pushback _this;
	_groupIDs pushback 160;
};

private _item439 = grpNull;
if (_layerRoot) then {
	_item439 = createGroup west;
	_this = _item439;
	_groups pushback _this;
	_groupIDs pushback 439;
};

private _item548 = grpNull;
if (_layerRoot) then {
	_item548 = createGroup west;
	_this = _item548;
	_groups pushback _this;
	_groupIDs pushback 548;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layerRoot) then {
	_item0 = createVehicle ["Land_HelipadSquare_F",[15136.2,17287.5,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [15136.2,17287.5,17.7729];
	_this setVectorDirAndUp [[-0.712611,0.7014,0.0149417],[-0.00265204,-0.0239909,0.999709]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1 = objNull;
if (_layerRoot) then {
	_item1 = createVehicle ["Land_HelipadSquare_F",[15158.7,17266.1,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [15158.7,17266.1,17.9085];
	_this setVectorDirAndUp [[-0.720575,0.693377,-0.000895754],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item2 = objNull;
if (_layerRoot) then {
	_item2 = createVehicle ["PortableHelipadLight_01_blue_F",[15136.1,17295.5,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [15136.1,17295.5,17.9634];
	_this setVectorDirAndUp [[0,0.999996,0.00265199],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item3 = objNull;
if (_layerRoot) then {
	_item3 = createVehicle ["PortableHelipadLight_01_blue_F",[15144.1,17287.6,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [15144.1,17287.6,17.9172];
	_this setVectorDirAndUp [[0,0.999956,0.00932853],[-0.0093285,-0.00932813,0.999913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item4 = objNull;
if (_layerRoot) then {
	_item4 = createVehicle ["PortableHelipadLight_01_blue_F",[15136.2,17279.6,4.19617e-005],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [15136.2,17279.6,17.9279];
	_this setVectorDirAndUp [[0,0.999304,-0.0373063],[0.0306514,0.0372888,0.998834]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item5 = objNull;
if (_layerRoot) then {
	_item5 = createVehicle ["PortableHelipadLight_01_blue_F",[15128.2,17287.4,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [15128.2,17287.4,17.9174];
	_this setVectorDirAndUp [[0,0.999956,-0.0093285],[0.00532655,0.00932837,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item6 = objNull;
if (_layerRoot) then {
	_item6 = createVehicle ["PortableHelipadLight_01_green_F",[15136.4,17287.3,-1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [15136.4,17287.3,17.8785];
	_this setVectorDirAndUp [[0,0.999712,0.023991],[-0.00265204,-0.0239909,0.999709]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item7 = objNull;
if (_layerRoot) then {
	_item7 = createVehicle ["PortableHelipadLight_01_yellow_F",[15166.6,17266.3,0],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [15166.6,17266.3,18.0207];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item8 = objNull;
if (_layerRoot) then {
	_item8 = createVehicle ["PortableHelipadLight_01_yellow_F",[15158.5,17274.1,0],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [15158.5,17274.1,18.0099];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item9 = objNull;
if (_layerRoot) then {
	_item9 = createVehicle ["PortableHelipadLight_01_yellow_F",[15150.6,17266,0],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [15150.6,17266,18.0181];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item10 = objNull;
if (_layerRoot) then {
	_item10 = createVehicle ["PortableHelipadLight_01_yellow_F",[15158.9,17258.2,0],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [15158.9,17258.2,18.0207];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item11 = objNull;
if (_layerRoot) then {
	_item11 = createVehicle ["PortableHelipadLight_01_green_F",[15159,17265.8,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [15159,17265.8,18.0196];
	_this setVectorDirAndUp [[0.819687,-0.572811,0.000739998],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item12 = objNull;
if (_layerRoot) then {
	_item12 = createSimpleObject ["Land_BarrelEmpty_F",[15186.6,17371.2,18.6467]];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [15186.6,17371.2,19.0515];
	_this setVectorDirAndUp [[0.672602,-0.740005,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item13 = objNull;
if (_layerRoot) then {
	_item13 = createSimpleObject ["Land_Photos_V3_F",[15195,17368,19.3431]];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [15195,17368,19.344];
	_this setVectorDirAndUp [[0.896733,0.442573,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\items\documents\data\photos_camo_co.paa"];
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createSimpleObject ["Land_Bandage_F",[15195.8,17367,19.365]];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [15195.8,17367,19.3683];
	_this setVectorDirAndUp [[-0.975412,0.220389,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item15 = objNull;
if (_layerRoot) then {
	_item15 = createSimpleObject ["Land_CampingChair_V2_F",[15193.1,17367.5,18.5263]];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [15193.1,17367.5,19.0328];
	_this setVectorDirAndUp [[0.740005,0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item16 = objNull;
if (_layerRoot) then {
	_item16 = createSimpleObject ["Land_CampingChair_V2_F",[15192.3,17368.2,18.5263]];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [15192.3,17368.2,19.0328];
	_this setVectorDirAndUp [[0.304562,0.952492,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item17 = objNull;
if (_layerRoot) then {
	_item17 = createSimpleObject ["Land_CampingTable_F",[15195.7,17367.5,18.5263]];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [15195.7,17367.5,18.9379];
	_this setVectorDirAndUp [[-0.740005,-0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item18 = objNull;
if (_layerRoot) then {
	_item18 = createVehicle ["Item_FirstAidKit",[15195.8,17367.7,1.4184],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [15195.8,17367.7,20.0019];
	_this setVectorDirAndUp [[0.0918177,-0.995776,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item19 = objNull;
if (_layerRoot) then {
	_item19 = createSimpleObject ["Land_GasCanister_F",[15195.5,17368.1,19.3431]];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [15195.5,17368.1,19.3984];
	_this setVectorDirAndUp [[0.386419,0.922323,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item20 = objNull;
if (_layerRoot) then {
	_item20 = createVehicle ["Item_Medikit",[15196.2,17367,1.43556],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [15196.2,17367,20.02];
	_this setVectorDirAndUp [[0.458156,-0.888872,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item21 = objNull;
if (_layerRoot) then {
	_item21 = createVehicle ["Land_PaperBox_01_small_open_brown_F",[15196.1,17367.2,1.41459],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [15196.1,17367.2,19.5504];
	_this setVectorDirAndUp [[0.888872,0.458155,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layerRoot) then {
	_item22 = createVehicle ["Land_PaperBox_closed_F",[15192.8,17364.6,0.604],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [15192.8,17364.6,19.17];
	_this setVectorDirAndUp [[0.672599,-0.740007,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item23 = objNull;
if (_layerRoot) then {
	_item23 = createSimpleObject ["Land_TripodScreen_01_large_F",[15190.8,17366.2,18.5263]];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [15190.8,17366.2,19.5695];
	_this setVectorDirAndUp [[0.740005,0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
};

private _item24 = objNull;
if (_layerRoot) then {
	_item24 = createSimpleObject ["Land_GasCooker_F",[15195.3,17368.2,19.3431]];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [15195.3,17368.2,19.4383];
	_this setVectorDirAndUp [[0.872341,0.488898,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item25 = objNull;
if (_layerRoot) then {
	_item25 = createSimpleObject ["Land_PencilBlue_F",[15195.2,17368,19.3431]];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [15195.2,17368,19.3473];
	_this setVectorDirAndUp [[-0.84121,0.540708,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item26 = objNull;
if (_layerRoot) then {
	_item26 = createSimpleObject ["Land_PenBlack_F",[15195.1,17367.8,19.3431]];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [15195.1,17367.8,19.351];
	_this setVectorDirAndUp [[-0.98561,0.169037,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item27 = objNull;
if (_layerRoot) then {
	_item27 = createVehicle ["Land_PaperBox_closed_F",[15186.6,17369,0.597],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [15186.6,17369,19.17];
	_this setVectorDirAndUp [[0.672599,-0.740007,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item28 = objNull;
if (_layerRoot) then {
	_item28 = createSimpleObject ["Land_WaterBottle_01_full_F",[15188.7,17364.8,19.343]];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [15188.7,17364.8,19.4712];
	_this setVectorDirAndUp [[-0.143806,0.989606,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item29 = objNull;
if (_layerRoot) then {
	_item29 = createSimpleObject ["Land_CampingChair_V2_F",[15186.4,17362.6,18.5263]];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [15186.4,17362.6,19.0328];
	_this setVectorDirAndUp [[0.740005,0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item30 = objNull;
if (_layerRoot) then {
	_item30 = createSimpleObject ["Land_CampingChair_V2_F",[15187.1,17362,18.5263]];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [15187.1,17362,19.0328];
	_this setVectorDirAndUp [[0.888872,0.458155,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item31 = objNull;
if (_layerRoot) then {
	_item31 = createSimpleObject ["Land_CampingChair_V2_F",[15188.4,17364.6,18.5263]];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [15188.4,17364.6,19.0328];
	_this setVectorDirAndUp [[-0.740005,-0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item32 = objNull;
if (_layerRoot) then {
	_item32 = createSimpleObject ["Land_CampingTable_F",[15186.4,17362,18.5263]];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [15186.4,17362,18.9379];
	_this setVectorDirAndUp [[0.740005,0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item33 = objNull;
if (_layerRoot) then {
	_item33 = createSimpleObject ["Land_CampingTable_F",[15189.1,17364.5,18.5263]];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [15189.1,17364.5,18.9379];
	_this setVectorDirAndUp [[-0.740005,-0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item34 = objNull;
if (_layerRoot) then {
	_item34 = createSimpleObject ["Land_Can_V1_F",[15187.1,17361.5,19.3431]];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [15187.1,17361.5,19.3831];
	_this setVectorDirAndUp [[0.998864,-0.0476615,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item35 = objNull;
if (_layerRoot) then {
	_item35 = createSimpleObject ["Land_TripodScreen_01_dual_v2_F",[15189.6,17364.9,18.5263]];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [15189.6,17364.9,19.3726];
	_this setVectorDirAndUp [[-0.740005,-0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
	_this setObjectTextureGlobal [1,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
};

private _item36 = objNull;
if (_layerRoot) then {
	_item36 = createSimpleObject ["Land_VitaminBottle_F",[15185.9,17362.5,19.3431]];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [15185.9,17362.5,19.4016];
	_this setVectorDirAndUp [[0.619343,-0.78512,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item37 = objNull;
if (_layerRoot) then {
	_item37 = createSimpleObject ["Land_FoodSack_01_full_brown_F",[15186.3,17362.1,19.3259]];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [15186.3,17362.1,19.4347];
	_this setVectorDirAndUp [[-0.212487,0.977164,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item38 = objNull;
if (_layerRoot) then {
	_item38 = createVehicle ["Land_PaperBox_open_full_F",[15191,17363,0.606001],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [15191,17363,19.1346];
	_this setVectorDirAndUp [[0.672599,-0.740007,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layerRoot) then {
	_item39 = createVehicle ["Land_WaterTank_03_F",[15152.5,17335.4,0],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [15152.5,17335.4,18.6474];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item40 = objNull;
if (_layerRoot) then {
	_item40 = createSimpleObject ["Land_Tableware_01_tray_F",[15149.2,17338.7,18.6507]];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [15149.2,17338.7,18.6574];
	_this setVectorDirAndUp [[-0.63987,0.768459,-0.00614729],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item41 = objNull;
if (_layerRoot) then {
	_item41 = createSimpleObject ["Land_Tableware_01_fork_F",[15149.3,17338.8,18.6519]];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [15149.3,17338.8,18.6567];
	_this setVectorDirAndUp [[0.813442,0.581618,0.00573073],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item42 = objNull;
if (_layerRoot) then {
	_item42 = createSimpleObject ["Land_CerealsBox_F",[15148.8,17338.7,18.6478]];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [15148.8,17338.7,18.8063];
	_this setVectorDirAndUp [[-0.973222,-0.229744,-0.00747969],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item43 = objNull;
if (_layerRoot) then {
	_item43 = createSimpleObject ["Land_Canteen_F",[15149.8,17336.7,18.6588]];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [15149.8,17336.7,18.7891];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item44 = objNull;
if (_layerRoot) then {
	_item44 = createSimpleObject ["Land_BottlePlastic_V2_F",[15150.2,17337.9,18.6589]];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [15150.2,17337.9,18.7897];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item45 = objNull;
if (_layerRoot) then {
	_item45 = createSimpleObject ["Land_FoodContainer_01_F",[15155,17332.8,18.6786]];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [15155,17332.8,18.9064];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item46 = objNull;
if (_layerRoot) then {
	_item46 = createSimpleObject ["Land_LiquidDispenser_01_F",[15157,17334.1,18.6822]];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [15157,17334.1,19.057];
	_this setVectorDirAndUp [[0.854321,0.519743,0.0015707],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item47 = objNull;
if (_layerRoot) then {
	_item47 = createSimpleObject ["Land_Tableware_01_cup_F",[15157.3,17333.9,18.6833]];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [15157.3,17333.9,18.7337];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item48 = objNull;
if (_layerRoot) then {
	_item48 = createSimpleObject ["Land_Tableware_01_napkin_F",[15150.2,17337.9,18.6589]];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [15150.2,17337.9,18.6615];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item49 = objNull;
if (_layerRoot) then {
	_item49 = createSimpleObject ["Land_Can_V1_F",[15149.3,17337,18.6537]];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [15149.3,17337,18.6937];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item50 = objNull;
if (_layerRoot) then {
	_item50 = createSimpleObject ["Land_Ketchup_01_F",[15155.2,17332.5,18.6795]];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [15155.2,17332.5,18.7826];
	_this setVectorDirAndUp [[0,1,0],[-0.00262947,0,0.999997]];
	0 remoteExec ['setFeatureType', _this];
};

private _item51 = objNull;
if (_layerRoot) then {
	_item51 = createSimpleObject ["Land_Mustard_01_F",[15155.3,17332.6,18.6797]];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [15155.3,17332.6,18.7829];
	_this setVectorDirAndUp [[0,1,0],[-0.00262947,0,0.999997]];
	0 remoteExec ['setFeatureType', _this];
};

private _item52 = objNull;
if (_layerRoot) then {
	_item52 = createVehicle ["WaterTrail_01_Old_F",[15157.7,17334.5,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [15157.7,17334.5,17.8724];
	_this setVectorDirAndUp [[-0.855882,-0.517171,0.000668118],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layerRoot) then {
	_item53 = createVehicle ["CamoNet_BLUFOR_open_F",[15152,17334.7,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [15152,17334.7,19.0203];
	_this setVectorDirAndUp [[0.691586,0.722293,0.000864022],[-0.0026529,0.0013439,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item55 = objNull;
if (_layer54) then {
	_item55 = createSimpleObject ["RoadCone_F",[15300.1,17533.2,16.6155]];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [15300.1,17533.2,16.8834];
	_this setVectorDirAndUp [[0.661324,0.749875,0.0183957],[-0.0293202,0.00133664,0.999569]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item56 = objNull;
if (_layer54) then {
	_item56 = createSimpleObject ["RoadCone_F",[15304.8,17539.6,16.5871]];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [15304.8,17539.6,16.8551];
	_this setVectorDirAndUp [[0.0624047,-0.998047,0.00289629],[-0.00399675,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item57 = objNull;
if (_layer54) then {
	_item57 = createSimpleObject ["RoadCone_F",[15297.3,17530.2,16.5946]];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [15297.3,17530.2,16.8626];
	_this setVectorDirAndUp [[-0.998019,-0.0624157,-0.00790185],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item58 = objNull;
if (_layer54) then {
	_item58 = createSimpleObject ["RoadCone_F",[15293.7,17527,16.6024]];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [15293.7,17527,16.8703];
	_this setVectorDirAndUp [[0.980169,-0.197839,0.0113012],[-0.00533768,0.0306509,0.999516]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item59 = objNull;
if (_layer54) then {
	_item59 = createSimpleObject ["RoadCone_F",[15302.9,17536.4,16.6004]];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [15302.9,17536.4,16.8684];
	_this setVectorDirAndUp [[0.749855,-0.661588,0.00440576],[0,0.00665923,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item60 = objNull;
if (_layer54) then {
	_item60 = createSimpleObject ["RoadCone_F",[15304,17541.4,16.5789]];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [15304,17541.4,16.8469];
	_this setVectorDirAndUp [[0.661603,0.749854,0.000655636],[-0.00399675,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item61 = objNull;
if (_layer54) then {
	_item61 = createSimpleObject ["RoadCone_F",[15311.9,17533.4,16.6923]];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [15311.9,17533.4,16.96];
	_this setVectorDirAndUp [[0.0624052,-0.996962,0.0466075],[-0.00133721,0.0466149,0.998912]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item62 = objNull;
if (_layer54) then {
	_item62 = createSimpleObject ["RoadCone_F",[15303.9,17524.6,16.7874]];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [15303.9,17524.6,17.0552];
	_this setVectorDirAndUp [[0.749532,-0.661077,0.0343294],[-0.0293202,0.0186548,0.999396]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item63 = objNull;
if (_layer54) then {
	_item63 = createSimpleObject ["RoadCone_F",[15300.2,17521.5,16.8083]];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [15300.2,17521.5,17.0761];
	_this setVectorDirAndUp [[-0.749743,0.660892,-0.0332665],[-0.0173282,0.0306468,0.99938]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item64 = objNull;
if (_layer54) then {
	_item64 = createSimpleObject ["RoadCone_F",[15308.9,17530.2,16.7809]];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [15308.9,17530.2,17.0487];
	_this setVectorDirAndUp [[0.0623958,-0.997549,0.0316725],[-0.0173282,0.0306468,0.99938]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item65 = objNull;
if (_layer54) then {
	_item65 = createSimpleObject ["RoadCone_F",[15314.2,17536.2,16.6152]];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [15314.2,17536.2,16.8832];
	_this setVectorDirAndUp [[-0.833125,-0.55308,0.00221054],[0,0.00399675,0.999992]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item66 = objNull;
if (_layer54) then {
	_item66 = createSimpleObject ["RoadCone_F",[15306.6,17527.6,16.8123]];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [15306.6,17527.6,17.0801];
	_this setVectorDirAndUp [[0.0623784,-0.998048,0.00316434],[-0.0293202,0.00133664,0.999569]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item67 = objNull;
if (_layer54) then {
	_item67 = createVehicle ["Land_CncBarrier_stripes_F",[15298.5,17541.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [15298.5,17541.9,16.9355];
	_this setVectorDirAndUp [[-0.0362552,0.999318,-0.00700201],[-0.0093285,0.00666789,0.999934]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer54) then {
	_item68 = createVehicle ["Land_CncBarrier_stripes_F",[15293.3,17541.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [15293.3,17541.8,16.8884];
	_this setVectorDirAndUp [[-0.076361,0.997053,-0.00736105],[-0.0093285,0.00666789,0.999934]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer54) then {
	_item69 = createVehicle ["Land_CncBarrier_stripes_F",[15302.2,17541.8,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [15302.2,17541.8,16.9564];
	_this setVectorDirAndUp [[-0.0362598,0.999339,-0.00279608],[-0.00399679,0.00265288,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layerRoot) then {
	_item70 = createVehicle ["Land_BarGate_F",[15301.3,17528.9,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [15301.3,17528.9,20.7069];
	_this setVectorDirAndUp [[-0.713408,-0.700464,-0.0199829],[-0.0293173,0.00134333,0.999569]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item72 = objNull;
if (_layerRoot) then {
	_item72 = createVehicle ["Land_Cargo_Patrol_V1_F",[15323.1,17535.6,6.86646e-005],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [15323.1,17535.6,21.4615];
	_this setVectorDirAndUp [[-0.126062,-0.992022,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item74 = objNull;
if (_layerRoot) then {
	_item74 = _item73 createUnit ["B_Soldier_F",[15324,17536.9,4.3462],[],0,"CAN_COLLIDE"];
	_item73 selectLeader _item74;
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [15324,17536.9,20.8613];
	_this setVectorDirAndUp [[0.156151,0.987733,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","rhs_googles_yellow",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ashton Acker";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.97;;
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

private _item75 = objNull;
if (_layerRoot) then {
	_item75 = _item73 createUnit ["B_Soldier_F",[15295.2,17532.3,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [15295.2,17532.4,16.5766];
	_this setVectorDirAndUp [[0.941339,0.337461,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_Safety_yellow_F",[]],[],"H_HelmetB","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Mike Kirby";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male08ENG";;
	_this setpitch 0.96;;
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

private _item76 = objNull;
if (_layerRoot) then {
	_item76 = _item73 createUnit ["B_Soldier_F",[15187.2,17525,4.35],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [15187.2,17525,19.7565];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Corey Hughes";;
	_this setface "WhiteHead_21";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.96;;
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

private _item77 = objNull;
if (_layerRoot) then {
	_item77 = createVehicle ["Land_New_WiredFence_5m_F",[15319,17535.9,0],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [15319,17535.9,17.6874];
	_this setVectorDirAndUp [[0.753463,-0.65749,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layerRoot) then {
	_item79 = createVehicle ["Land_GuardShed",[15295.4,17530.8,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [15295.4,17530.8,17.1861];
	_this setVectorDirAndUp [[-0.68727,-0.726402,-0.000757559],[-0.0053265,0.00399669,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layerRoot) then {
	_item80 = createVehicle ["Land_PortableLight_double_F",[15294.4,17534.6,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [15294.4,17534.6,17.6493];
	_this setVectorDirAndUp [[-0.873944,-0.486026,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item81 = objNull;
if (_layerRoot) then {
	_item81 = createVehicle ["Land_Sign_WarningMilitaryArea_F",[15305.9,17525.6,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [15305.9,17525.6,17.8666];
	_this setVectorDirAndUp [[-0.74395,-0.668235,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\signs_f\signm\data\signm_warningmilitaryarea_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item82 = objNull;
if (_layerRoot) then {
	_item82 = createVehicle ["CUP_sign_stop_new",[15296.7,17532.4,-2.16378],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [15296.7,17532.4,16.0448];
	_this setVectorDirAndUp [[-0.682527,-0.73086,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item84 = objNull;
if (_layerRoot) then {
	_item84 = _item83 createUnit ["B_Soldier_unarmed_F",[15219.4,17303.2,0],[],0,"CAN_COLLIDE"];
	_item83 selectLeader _item84;
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [15219.4,17303.2,17.9749];
	_this setVectorDirAndUp [[0.992134,0.125177,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Brian Cooper";;
	_this setface "WhiteHead_01";;
	_this setspeaker "Male12ENG";;
	_this setpitch 0.95;;
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

private _item85 = objNull;
if (_layerRoot) then {
	_item85 = _item83 createUnit ["B_Soldier_F",[15165.7,17369.2,4.145],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [15165.7,17369.2,22.0473];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Samuel Davies";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.99;;
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

private _item86 = objNull;
if (_layerRoot) then {
	_item86 = _item83 createUnit ["B_Soldier_F",[15221.1,17303.7,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [15221.1,17303.7,17.9778];
	_this setVectorDirAndUp [[-0.945589,-0.325363,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_Cap_oli","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Bradley Dorgan";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item87 = objNull;
if (_layerRoot) then {
	_item87 = _item83 createUnit ["B_Soldier_lite_F",[15150.3,17338.5,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [15150.3,17338.5,17.8443];
	_this setVectorDirAndUp [[-0.74672,-0.665139,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam_tshirt",[]],[],[],"H_Cap_usblack","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Harry Hill";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U1",["hubsittingchairua_idle1","hubsittingchairua_idle2","hubsittingchairua_idle3","hubsittingchairua_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U1",["hubsittingchairua_idle1","hubsittingchairua_idle2","hubsittingchairua_idle3","hubsittingchairua_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item89 = objNull;
if (_layerRoot) then {
	_item89 = createVehicle ["Land_LampHalogen_F",[15239.8,17323,-2.86102e-005],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [15239.8,17323,23.9894];
	_this setVectorDirAndUp [[0.181383,0.983413,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item90 = objNull;
if (_layerRoot) then {
	_item90 = createVehicle ["Land_LampHalogen_F",[15182.5,17387,0.000137329],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [15182.5,17387,23.899];
	_this setVectorDirAndUp [[-0.986538,-0.163534,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item91 = objNull;
if (_layerRoot) then {
	_item91 = createVehicle ["Land_LampHalogen_F",[15132.1,17339.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [15132.1,17339.7,23.5835];
	_this setVectorDirAndUp [[-0.142908,-0.989736,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item92 = objNull;
if (_layerRoot) then {
	_item92 = createVehicle ["Land_LampHalogen_F",[15116.7,17328.3,0.000335693],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [15116.7,17328.3,23.4271];
	_this setVectorDirAndUp [[-0.976489,-0.215566,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item94 = objNull;
if (_layerRoot) then {
	_item94 = _item93 createUnit ["B_Helipilot_F",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_item93 selectLeader _item94;
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [15164.1,17263.6,19.147];
	_this setVectorDirAndUp [[0.876987,-0.480514,0.000620605],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Nathan O'Sullivan";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male04eng";;
	_this setpitch 0.974876;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item95 = objNull;
if (_layerRoot) then {
	_item95 = _item93 createUnit ["B_Helipilot_F",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [15163.6,17262.6,19.1482];
	_this setVectorDirAndUp [[0.876987,-0.480514,0.000620605],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Tavish Green";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male10eng";;
	_this setpitch 1.04669;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item96 = objNull;
if (_layerRoot) then {
	_item96 = _item93 createUnit ["B_helicrew_F",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [15162.7,17264.3,19.2239];
	_this setVectorDirAndUp [[0.876987,-0.480514,0.000620605],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ryan Ward";;
	_this setface "WhiteHead_18";;
	_this setspeaker "male03eng";;
	_this setpitch 1.04725;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item97 = objNull;
if (_layerRoot) then {
	_item97 = _item93 createUnit ["B_helicrew_F",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [15162.2,17263.6,19.225];
	_this setVectorDirAndUp [[0.876987,-0.480514,0.000620605],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ian O'Connor";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "male03eng";;
	_this setpitch 1.04059;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item98 = objNull;
if (_layerRoot) then {
	_item98 = createVehicle ["B_MRAP_01_F",[15167.8,17307.3,-1.90735e-005],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [15167.8,17307.3,20.0619];
	_this setVectorDirAndUp [[0.721679,-0.692196,0.00664815],[-0.00666818,0.00265198,0.999974]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""arifle_MX_F""],[2]],[[""30Rnd_65x39_caseless_mag"",""100Rnd_65x39_caseless_mag"",""HandGrenade"",""1Rnd_HE_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""16Rnd_9x21_Mag"",""SmokeShell"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellBlue"",""NLAW_F""],[16,6,10,10,4,4,4,4,12,4,4,4,4,2]],[[""FirstAidKit""],[10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitbody"",""hithull"",""hitengine"",""hitfuel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""#light_l"",""#light_r"",""#light_l"",""#light_r"",""#light_l2"",""#light_r2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item99 = objNull;
if (_layerRoot) then {
	_item99 = createVehicle ["B_LSV_01_unarmed_F",[15172.2,17313.7,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [15172.2,17313.8,20.0368];
	_this setVectorDirAndUp [[0.690199,-0.723617,0.00202397],[0.00265199,0.00532648,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""arifle_MX_F""],[2]],[[""30Rnd_65x39_caseless_mag"",""100Rnd_65x39_caseless_mag"",""HandGrenade"",""1Rnd_HE_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""16Rnd_9x21_Mag"",""SmokeShell"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellBlue"",""NLAW_F""],[16,6,10,10,4,4,4,4,12,4,4,4,4,2]],[[""FirstAidKit""],[10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitfuel"",""hithull"",""hitengine"",""hitbody"",""hitglass1"",""hitrglass"",""hitlglass"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""#light_1_hitpoint"",""#light_2_hitpoint""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item100 = objNull;
if (_layerRoot) then {
	_item100 = createVehicle ["B_LSV_01_armed_F",[15178,17318.8,-3.24249e-005],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [15178,17318.7,20.0579];
	_this setVectorDirAndUp [[0.682279,-0.73109,0.00162775],[-0.00666818,-0.00399657,0.99997]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""arifle_MX_F""],[2]],[[""30Rnd_65x39_caseless_mag"",""100Rnd_65x39_caseless_mag"",""HandGrenade"",""1Rnd_HE_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""16Rnd_9x21_Mag"",""SmokeShell"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellBlue"",""NLAW_F""],[16,6,10,10,4,4,4,4,12,4,4,4,4,2]],[[""FirstAidKit""],[10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitfuel"",""hithull"",""hitengine"",""hitbody"",""hitglass1"",""hitrglass"",""hitlglass"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""hitturret"",""hitgun"",""#light_1_hitpoint"",""#light_2_hitpoint""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item101 = objNull;
if (_layerRoot) then {
	_item101 = createVehicle ["Land_New_WiredFence_5m_F",[15191.5,17538.2,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [15191.5,17538.2,16.7624];
	_this setVectorDirAndUp [[0.641608,0.767033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layerRoot) then {
	_item102 = createVehicle ["Land_New_WiredFence_5m_F",[15180.8,17539.9,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [15180.8,17539.9,16.7591];
	_this setVectorDirAndUp [[0.713736,-0.700415,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layerRoot) then {
	_item103 = createVehicle ["Land_New_WiredFence_5m_F",[15187.6,17541.5,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [15187.6,17541.5,16.8122];
	_this setVectorDirAndUp [[0.641608,0.767033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layerRoot) then {
	_item104 = createSimpleObject ["B_Truck_01_mover_F",[15222,17466.8,17.151]];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [15222,17466.8,19.0655];
	_this setVectorDirAndUp [[-0.718901,0.694948,-0.0151073],[-0.011995,0.00932783,0.999885]];
	0 remoteExec ['setFeatureType', _this];
};

private _item105 = objNull;
if (_layerRoot) then {
	_item105 = createSimpleObject ["B_Truck_01_box_F",[15214.2,17459.3,17.1446]];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [15214.2,17459.3,19.4579];
	_this setVectorDirAndUp [[-0.709456,0.704643,-0.0122566],[-0.0093285,0.00800055,0.999924]];
	0 remoteExec ['setFeatureType', _this];
};

private _item106 = objNull;
if (_layerRoot) then {
	_item106 = createVehicle ["Land_Scrap_MRAP_01_F",[15065.1,17312.2,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [15065.1,17312.2,18.4567];
	_this setVectorDirAndUp [[0.673398,0.73917,-0.0128104],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layerRoot) then {
	_item107 = createSimpleObject ["Land_Pallets_stack_F",[15053.6,17317.8,17.0326]];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [15053.6,17317.8,17.4616];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146643,0.0466113,0.998805]];
	0 remoteExec ['setFeatureType', _this];
};

private _item108 = objNull;
if (_layerRoot) then {
	_item108 = createSimpleObject ["Land_DrillAku_F",[15053.3,17317.4,17.9269]];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [15053.3,17317.4,18.0688];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
};

private _item109 = objNull;
if (_layerRoot) then {
	_item109 = createVehicle ["ACE_Wheel",[15053.9,17317.9,0.881086],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [15053.9,17317.9,18.0702];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item110 = objNull;
if (_layerRoot) then {
	_item110 = createVehicle ["ACE_Wheel",[15054.6,17318,0.260969],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [15054.6,17318,17.4548];
	_this setVectorDirAndUp [[-0.0797611,0.986334,0.144163],[0.974348,0.0466124,0.220165]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item111 = objNull;
if (_layerRoot) then {
	_item111 = createSimpleObject ["Land_Wrench_F",[15053.2,17317.3,17.9306]];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [15053.2,17317.3,17.9331];
	_this setVectorDirAndUp [[0.770311,-0.636347,0.0410186],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
};

private _item112 = objNull;
if (_layerRoot) then {
	_item112 = createSimpleObject ["Land_RefuelingHose_01_F",[15058.9,17296.5,17.3275]];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [15058.9,17296.5,17.4077];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0.00133688,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item113 = objNull;
if (_layerRoot) then {
	_item113 = createSimpleObject ["Land_CanisterFuel_F",[15058.7,17295.9,17.3288]];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [15058.7,17295.9,17.6023];
	_this setVectorDirAndUp [[0,0.999999,-0.00129187],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item114 = objNull;
if (_layerRoot) then {
	_item114 = createVehicle ["B_Slingload_01_Fuel_F",[15055.1,17297.1,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [15055.1,17297.1,18.6897];
	_this setVectorDirAndUp [[0.72122,-0.692706,0.000894887],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item115 = objNull;
if (_layerRoot) then {
	_item115 = createVehicle ["Oil_Spill_F",[15059,17297,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [15059,17297,17.3261];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0.00133688,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item116 = objNull;
if (_layerRoot) then {
	_item116 = createVehicle ["Box_NATO_AmmoVeh_F",[15047.4,17304.5,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [15047.4,17304.5,18.0467];
	_this setVectorDirAndUp [[0.671275,0.740732,-0.0265764],[0.00133688,0.0346455,0.999399]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item117 = objNull;
if (_layerRoot) then {
	_item117 = createVehicle ["B_Quadbike_01_F",[15043.3,17314.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [15043.2,17314.7,18.4627];
	_this setVectorDirAndUp [[0.743046,-0.667544,0.0476227],[-0.0293202,0.0386199,0.998824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitengine"",""hitfuel"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitrglass"",""hitlglass"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
};

private _item122 = objNull;
if (_layerRoot) then {
	_item122 = createVehicle ["Desk",[15214.8,17337.3,0.582422],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [15214.8,17337.3,18.9624];
	_this setVectorDirAndUp [[0.697416,-0.716666,-0.000481416],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layerRoot) then {
	_item123 = createSimpleObject ["Land_OfficeCabinet_01_F",[15220,17335.7,18.5513]];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [15220,17335.7,19.3318];
	_this setVectorDirAndUp [[0.750048,0.661383,-0.000517747],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item124 = objNull;
if (_layerRoot) then {
	_item124 = createSimpleObject ["Land_OfficeChair_01_F",[15215.8,17336.5,18.5544]];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [15215.8,17336.5,19.2289];
	_this setVectorDirAndUp [[0.900738,-0.434362,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item125 = objNull;
if (_layerRoot) then {
	_item125 = createVehicle ["Land_MapBoard_01_Wall_F",[15206.2,17325.7,2.15606],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [15206.2,17325.7,20.6632];
	_this setVectorDirAndUp [[-0.721387,-0.692532,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item126 = objNull;
if (_layerRoot) then {
	_item126 = createSimpleObject ["MapBoard_seismic_F",[15213.9,17341.3,18.5491]];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [15213.9,17341.3,19.518];
	_this setVectorDirAndUp [[0.464438,0.885605,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f_epc\civ\infoboards\data\mapboard_seismic_co.paa"];
};

private _item127 = objNull;
if (_layerRoot) then {
	_item127 = createVehicle ["Land_CampingChair_V2_white_F",[15220.4,17329.3,0.563],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [15220.4,17329.3,19.0572];
	_this setVectorDirAndUp [[-0.710934,-0.703258,0.000496511],[0.000698392,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layerRoot) then {
	_item128 = createVehicle ["Land_CampingChair_V2_white_F",[15219.1,17330.4,0.568001],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [15219.1,17330.4,19.0587];
	_this setVectorDirAndUp [[-0.838642,-0.544683,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layerRoot) then {
	_item129 = createVehicle ["Land_GymRack_03_F",[15224.5,17316.3,0.550093],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [15224.5,17316.3,19.1306];
	_this setVectorDirAndUp [[0.696921,-0.717148,-0.000481074],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layerRoot) then {
	_item130 = createVehicle ["Land_GymBench_01_F",[15222.8,17314.8,0.555876],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [15222.8,17314.8,19.1386];
	_this setVectorDirAndUp [[0.677791,-0.735255,-0.000467869],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layerRoot) then {
	_item131 = createSimpleObject ["Fridge_01_closed_F",[15216.2,17321.6,18.5543]];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [15216.2,17321.6,19.0728];
	_this setVectorDirAndUp [[0.675017,-0.737802,-0.000465955],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item132 = objNull;
if (_layerRoot) then {
	_item132 = createSimpleObject ["Land_WaterCooler_01_new_F",[15215.6,17320.9,18.5548]];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [15215.6,17320.9,19.2869];
	_this setVectorDirAndUp [[0.675013,-0.737805,-0.000465952],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item133 = objNull;
if (_layerRoot) then {
	_item133 = createSimpleObject ["Land_PCSet_01_screen_F",[15214.6,17337.2,19.3764]];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [15214.6,17337.2,19.6311];
	_this setVectorDirAndUp [[-0.908626,0.417584,0.00468656],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item134 = objNull;
if (_layerRoot) then {
	_item134 = createSimpleObject ["Land_PCSet_01_screen_F",[15215,17337.6,19.378]];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [15215,17337.6,19.6326];
	_this setVectorDirAndUp [[-0.461859,0.886953,0.000318814],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item135 = objNull;
if (_layerRoot) then {
	_item135 = createSimpleObject ["Land_PCSet_01_keyboard_F",[15215,17337.2,19.378]];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [15215,17337.2,19.3859];
	_this setVectorDirAndUp [[-0.690211,0.72357,0.00743816],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item136 = objNull;
if (_layerRoot) then {
	_item136 = createSimpleObject ["Land_PCSet_01_mouse_F",[15215.3,17337.5,19.3777]];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [15215.3,17337.5,19.403];
	_this setVectorDirAndUp [[-0.656072,0.754698,0.000452877],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item137 = objNull;
if (_layerRoot) then {
	_item137 = createVehicle ["Desk",[15214.2,17338.1,0.584808],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [15214.2,17338.1,18.9629];
	_this setVectorDirAndUp [[-0.665593,0.746315,0.000459449],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layerRoot) then {
	_item138 = createSimpleObject ["Land_OfficeChair_01_F",[15213.5,17338.7,18.5247]];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [15213.5,17338.7,19.1991];
	_this setVectorDirAndUp [[-0.646559,0.762864,0.00044631],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item139 = objNull;
if (_layerRoot) then {
	_item139 = createSimpleObject ["Land_PCSet_01_screen_F",[15214.4,17338.3,19.3783]];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [15214.4,17338.3,19.633];
	_this setVectorDirAndUp [[0.889608,-0.456712,0.00348723],[0.000976388,0.00953701,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item140 = objNull;
if (_layerRoot) then {
	_item140 = createSimpleObject ["Land_PCSet_01_screen_F",[15214,17337.9,19.3774]];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [15214,17337.9,19.6321];
	_this setVectorDirAndUp [[0.422854,-0.906198,-0.00029189],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item141 = objNull;
if (_layerRoot) then {
	_item141 = createSimpleObject ["Land_PCSet_01_keyboard_F",[15214,17338.3,19.3777]];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [15214,17338.3,19.3857];
	_this setVectorDirAndUp [[0.658093,-0.752908,0.00653824],[0.000976388,0.00953701,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item142 = objNull;
if (_layerRoot) then {
	_item142 = createSimpleObject ["Land_PCSet_01_mouse_F",[15213.6,17338,19.3756]];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [15213.6,17338,19.4008];
	_this setVectorDirAndUp [[0.622635,-0.782512,-0.000429796],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item143 = objNull;
if (_layerRoot) then {
	_item143 = createVehicle ["Desk",[15207.3,17328.9,0.59997],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [15207.3,17328.9,18.9682];
	_this setVectorDirAndUp [[0.697416,-0.716666,-0.000481416],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layerRoot) then {
	_item144 = createSimpleObject ["Land_OfficeChair_01_F",[15207.9,17328.3,18.5463]];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [15207.9,17328.3,19.2207];
	_this setVectorDirAndUp [[0.724052,-0.689745,-0.000499803],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item145 = objNull;
if (_layerRoot) then {
	_item145 = createVehicle ["Land_Laptop_unfolded_F",[15207.4,17328.8,1.4194],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [15207.4,17328.8,19.5369];
	_this setVectorDirAndUp [[0.703705,-0.710454,-0.00740374],[0.00556687,-0.00490686,0.999972]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"];
};

private _item146 = objNull;
if (_layerRoot) then {
	_item146 = createSimpleObject ["Land_Document_01_F",[15207.1,17328.6,19.3838]];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [15207.1,17328.6,19.3891];
	_this setVectorDirAndUp [[-0.784175,0.620506,0.00652709],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item147 = objNull;
if (_layerRoot) then {
	_item147 = createSimpleObject ["Land_File1_F",[15207.7,17329.3,19.3836]];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [15207.7,17329.3,19.3922];
	_this setVectorDirAndUp [[-0.552097,0.83378,0.000381105],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item148 = objNull;
if (_layerRoot) then {
	_item148 = createSimpleObject ["Land_PencilYellow_F",[15208,17329.2,19.3835]];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [15208,17329.2,19.3876];
	_this setVectorDirAndUp [[0,1,0],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item150 = objNull;
if (_layerRoot) then {
	_item150 = _item149 createUnit ["B_officer_F",[15207.9,17328.4,0.613001],[],0,"CAN_COLLIDE"];
	_item149 selectLeader _item150;
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [15207.9,17328.4,18.5772];
	_this setVectorDirAndUp [[-0.783867,0.620929,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Joseph O'Brien";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_AT_TABLE",["hubsittingattableu_idle1","hubsittingattableu_idle2","hubsittingattableu_idle3"],false,true] # 0 isEqualTo '') then      {        ["SIT_AT_TABLE",["hubsittingattableu_idle1","hubsittingattableu_idle2","hubsittingattableu_idle3"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item151 = objNull;
if (_layerRoot) then {
	_item151 = _item149 createUnit ["B_officer_F",[15213.5,17339.5,0.587999],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [15213.5,17339.5,18.5586];
	_this setVectorDirAndUp [[0.678942,-0.734192,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Conor Campbell";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male04ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] # 0 isEqualTo '') then      {        ["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item152 = objNull;
if (_layerRoot) then {
	_item152 = _item149 createUnit ["B_officer_F",[15213.5,17338.6,0.642],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [15213.5,17338.7,18.6129];
	_this setVectorDirAndUp [[0.774161,-0.632989,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Thomas Wilson";;
	_this setface "AfricanHead_02";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.99;;
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

private _item153 = objNull;
if (_layerRoot) then {
	_item153 = _item149 createUnit ["B_officer_F",[15218.8,17315.5,0.563248],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [15218.8,17315.6,18.5538];
	_this setVectorDirAndUp [[-0.854894,-0.518803,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_MilCap_mcamo","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Tyler White";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
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

private _item154 = objNull;
if (_layerRoot) then {
	_item154 = createVehicle ["Land_MapBoard_01_Wall_Altis_F",[15222.9,17333.1,1.762],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [15222.9,17333.1,20.3007];
	_this setVectorDirAndUp [[0.742642,0.669688,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_altis_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item155 = objNull;
if (_layerRoot) then {
	_item155 = createSimpleObject ["Land_PortableCabinet_01_bookcase_sand_F",[15220.6,17335.1,18.5509]];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [15220.6,17335.1,18.9689];
	_this setVectorDirAndUp [[0.758414,0.651773,-0.000523522],[0.000690285,0,1]];
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

private _item161 = objNull;
if (_layerRoot) then {
	_item161 = _item160 createUnit ["B_soldier_repair_F",[15210.9,17458.7,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_item160 selectLeader _item161;
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [15210.9,17458.7,17.1206];
	_this setVectorDirAndUp [[0.638114,-0.769942,0],[0,0,1]];
	_this setUnitLoadout [[],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[]],["V_Safety_orange_F",[]],["B_AssaultPack_rgr_Repair",[]],"H_Construction_basic_orange_F","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ashton Lee";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] # 0 isEqualTo '') then      {        ["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', true];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(1 == ([0, 1] select (_this getUnitTrait 'engineer')) || {1 == -1}) then {_this setVariable ['s', 1, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item162 = objNull;
if (_layerRoot) then {
	_item162 = _item160 createUnit ["B_Soldier_unarmed_F",[15212.1,17457.4,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [15212.1,17457.4,17.1417];
	_this setVectorDirAndUp [[-0.711769,0.702414,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[["FirstAidKit",1]]],["V_Safety_orange_F",[]],[],"H_HelmetB","rhs_googles_black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Sean O'Sullivan";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male04ENG";;
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

private _item163 = objNull;
if (_layerRoot) then {
	_item163 = createVehicle ["Flag_NATO_F",[15196.3,17345.4,-0.000936508],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [15196.3,17345.4,21.8881];
	_this setVectorDirAndUp [[-0.768494,-0.639857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item166 = objNull;
if (_layerRoot) then {
	_item166 = createVehicle ["CUP_vending_machine",[15217.1,17314.8,0.569],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [15217.1,17314.8,19.5953];
	_this setVectorDirAndUp [[-0.751713,-0.65949,0.00052499],[0.000698392,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layerRoot) then {
	_item178 = createVehicle ["B_Heli_Transport_01_F",[15159.2,17265.7,0.0779991],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [15159.2,17265.7,20.1263];
	_this setVectorDirAndUp [[0.876987,-0.480514,0.000620605],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit"",""Medikit""],[2,10,2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,4,2,2,4]],[[],[]],[[""B_Parachute""],[4]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVehicleReportOwnPosition true;
	parseSimpleArray "[[""hithull"",""hitfuel"",""hitavionics"",""hitmissiles"",""hitengine1"",""hitengine2"",""hitengine"",""hithrotor"",""hitvrotor"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitrglass"",""hitlglass"",""hitengine3"",""hitwinch"",""hittransmission"",""hitlight"",""hithydraulics"",""hitgear"",""hithstabilizerl1"",""hithstabilizerr1"",""hitvstabilizer1"",""hittail"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	if (true) then {[_this] call ace_fastroping_fnc_equipFRIES};
};

private _item447 = objNull;
if (_layer446) then {
	_item447 = createVehicle ["Land_RepairDepot_01_tan_F",[15062.9,17317.5,2.28882e-005],[],0,"CAN_COLLIDE"];
	_this = _item447;
	_objects pushback _this;
	_objectIDs pushback 447;
	_this setPosWorld [15062.9,17317.6,19.5716];
	_this setVectorDirAndUp [[-0.722971,0.690075,-0.0332975],[-0.0053265,0.042627,0.999077]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item451 = objNull;
if (_layer450) then {
	_item451 = createVehicle ["ProtectionZone_Invisible_F",[15193,17312.7,0],[],0,"CAN_COLLIDE"];
	_this = _item451;
	_objects pushback _this;
	_objectIDs pushback 451;
	_this setPosWorld [15193,17312.7,22.6638];
	_this setVectorDirAndUp [[-0.738337,0.674429,-0.00189862],[-0.0013439,0.0013439,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item453 = objNull;
if (_layer452 && _layer450) then {
	_item453 = createVehicle ["Land_LampHalogen_F",[15193.9,17276,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item453;
	_objects pushback _this;
	_objectIDs pushback 453;
	_this setPosWorld [15193.9,17276,23.9154];
	_this setVectorDirAndUp [[0.99211,0.125367,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item454 = objNull;
if (_layer452 && _layer450) then {
	_item454 = createVehicle ["Land_Cargo_HQ_V1_F",[15194.2,17290,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item454;
	_objects pushback _this;
	_objectIDs pushback 454;
	_this setPosWorld [15194.2,17290,21.8143];
	_this setVectorDirAndUp [[0.709527,0.704678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item455 = objNull;
if (_layer452 && _layer450) then {
	_item455 = createVehicle ["Land_Pallet_MilBoxes_F",[15197,17292,0.601],[],0,"CAN_COLLIDE"];
	_this = _item455;
	_objects pushback _this;
	_objectIDs pushback 455;
	_this setPosWorld [15197,17292,18.9911];
	_this setVectorDirAndUp [[0.710492,0.703705,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (!is3DEN) then {[_this, +[["arifle_MX_F","arifle_MX_GL_F","arifle_MX_SW_F","arifle_MXC_F","arifle_MXM_F","arifle_MX_Black_F","arifle_MX_GL_Black_F","arifle_MXC_Black_F","arifle_MXM_Black_F","arifle_MX_SW_Black_F","arifle_SPAR_03_snd_F","arifle_SPAR_03_blk_F","arifle_SPAR_02_snd_F","arifle_SPAR_02_blk_F","arifle_SPAR_01_GL_snd_F","arifle_SPAR_01_GL_blk_F","arifle_SPAR_01_snd_F","arifle_SPAR_01_blk_F","LMG_Mk200_F","LMG_Mk200_black_F","MMG_02_camo_F","MMG_02_sand_F","MMG_02_black_F","srifle_DMR_03_tan_F","srifle_DMR_03_F","srifle_EBR_F","launch_NLAW_F","launch_MRAWS_green_rail_F","launch_MRAWS_sand_rail_F","launch_MRAWS_green_F","launch_MRAWS_sand_F","hgun_Pistol_heavy_01_F","hgun_P07_F","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","optic_Hamr","ACE_optic_Hamr_2D","optic_Holosight_blk_F","optic_Holosight","optic_AMS_snd","optic_AMS","optic_ERCO_blk_F","optic_ERCO_snd_F","ACE_acc_pointer_green","acc_pointer_IR","acc_flashlight_smg_01","acc_flashlight","muzzle_snds_m_snd_F","muzzle_snds_338_sand","muzzle_snds_338_black","muzzle_snds_M","muzzle_snds_H","muzzle_snds_H_snd_F","muzzle_snds_B","muzzle_snds_B_snd_F","muzzle_snds_H_MG_blk_F","muzzle_snds_H_MG","muzzle_snds_93mmg","bipod_01_F_blk","bipod_01_F_mtp","bipod_01_F_snd","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_mag_Tracer","30Rnd_65x39_caseless_khaki_mag_Tracer","30Rnd_65x39_caseless_black_mag_Tracer","ACE_30Rnd_65x39_caseless_mag_Tracer_Dim","ACE_30Rnd_65x47_Scenar_mag","ACE_30Rnd_65_Creedmor_mag","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_black_mag","100Rnd_65x39_caseless_mag_Tracer","100Rnd_65x39_caseless_black_mag_tracer","ACE_100Rnd_65x39_caseless_mag_Tracer_Dim","1Rnd_HE_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","ACE_HuntIR_M203","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_M781_Practice","rhs_mag_M397_HET","rhs_mag_m4009","rhs_mag_m576","rhs_mag_M585_white","rhs_mag_m661_green","rhs_mag_m662_red","rhs_mag_m713_Red","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","ACE_40mm_Flare_white","ACE_40mm_Flare_red","ACE_40mm_Flare_green","ACE_40mm_Flare_ir","20Rnd_762x51_Mag","ACE_20Rnd_762x51_Mag_Tracer","ACE_20Rnd_762x51_Mag_Tracer_Dim","ACE_20Rnd_762x51_Mag_SD","ACE_10Rnd_762x51_M118LR_Mag","ACE_10Rnd_762x51_M993_AP_Mag","ACE_20Rnd_762x51_M118LR_Mag","ACE_20Rnd_762x51_Mk316_Mod_0_Mag","ACE_20Rnd_762x51_Mk319_Mod_0_Mag","ACE_20Rnd_762x51_M993_AP_Mag","150Rnd_556x45_Drum_Sand_Mag_F","150Rnd_556x45_Drum_Sand_Mag_Tracer_F","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Sand_red","30Rnd_556x45_Stanag_Sand_Tracer_Red","rhs_mag_20Rnd_556x45_M193_Stanag","rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red","rhs_mag_20Rnd_556x45_M200_Stanag","rhs_mag_20Rnd_556x45_M855_Stanag","rhs_mag_20Rnd_556x45_M855A1_Stanag","rhs_mag_20Rnd_556x45_Mk262_Stanag","rhs_mag_20Rnd_556x45_M193_2MAG_Stanag","rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red","150Rnd_556x45_Drum_Mag_F","150Rnd_556x45_Drum_Mag_Tracer_F","200Rnd_65x39_cased_Box","200Rnd_65x39_cased_Box_Red","200Rnd_65x39_cased_Box_Tracer_Red","ACE_200Rnd_65x39_cased_Box_Tracer_Dim","130Rnd_338_Mag","10Rnd_Mk14_762x51_Mag","MRAWS_HEAT_F","MRAWS_HE_F","MRAWS_HEAT55_F","rhs_mag_maaws_HEAT","rhs_mag_maaws_HEDP","rhs_mag_maaws_HE","11Rnd_45ACP_Mag","16Rnd_9x21_Mag","16Rnd_9x21_red_Mag","H_HelmetB","H_HelmetB_black","H_HelmetB_camo","H_HelmetB_desert","H_HelmetB_grass","H_HelmetB_sand","H_HelmetSpecB","H_HelmetSpecB_blk","H_HelmetSpecB_paint2","H_HelmetSpecB_paint1","H_HelmetSpecB_sand","H_HelmetSpecB_snakeskin","H_HelmetB_light","H_HelmetB_light_black","H_HelmetB_light_desert","H_HelmetB_light_grass","H_HelmetB_light_sand","H_HelmetB_light_snakeskin","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","V_PlateCarrierGL_rgr","V_PlateCarrierGL_mtp","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_rgr","V_PlateCarrier1_rgr","V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr","V_PlateCarrier2_rgr_noflag_F","B_AssaultPack_mcamo","B_Carryall_mcamo","B_Kitbag_mcamo","B_RadioBag_01_mtp_F","B_TacticalPack_mcamo","B_AssaultPack_rgr","B_Kitbag_rgr","B_TacticalPack_rgr","TFAR_rt1523g_big_rhs","G_Sport_BlackWhite","G_Sport_Checkered","G_Sport_Greenblack","G_Squares_Tinted","G_Squares","G_Tactical_Clear","G_Tactical_Black","G_Spectacles_Tinted","G_WirelessEarpiece_F","G_Sport_Blackyellow","G_Sport_Red","G_Spectacles","rhsusf_oakley_goggles_ylw","rhsusf_oakley_goggles_clr","rhsusf_oakley_goggles_blk","rhsusf_shemagh2_gogg_tan","rhsusf_shemagh_gogg_tan","rhsusf_shemagh2_tan","rhsusf_shemagh_tan","G_Shades_Red","G_Shades_Green","G_Shades_Blue","G_Shades_Black","G_Lowprofile","G_Combat","G_Bandanna_tan","G_Bandanna_sport","G_Bandanna_shades","G_Bandanna_oli","G_Bandanna_khk","G_Bandanna_blk","G_Bandanna_beast","G_Bandanna_aviator","rhs_ess_black","rhs_googles_orange","rhs_googles_yellow","rhs_googles_clear","rhs_googles_black","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","VSM_Shemagh_goggles_tan","VSM_Shemagh_glasses_tan","VSM_Shemagh_Facemask_tan_Peltor_Goggles","VSM_Shemagh_Facemask_tan_Peltor_Glasses","VSM_Shemagh_Facemask_tan_Peltor","VSM_Shemagh_Facemask_tan_Goggles","VSM_Shemagh_Facemask_tan_Glasses","VSM_Shemagh_Facemask_tan","VSM_Shemagh_Balaclava2_tan_Peltor_Goggles","VSM_Shemagh_Balaclava2_tan_Peltor_Glasses","VSM_Shemagh_Balaclava2_tan_Peltor","VSM_Shemagh_Balaclava2_tan_Goggles","VSM_Shemagh_Balaclava2_tan_Glasses","VSM_Shemagh_Balaclava2_tan","VSM_Shemagh_Balaclava_tan_Peltor_Goggles","VSM_Shemagh_Balaclava_tan_Peltor_Glasses","VSM_Shemagh_Balaclava_tan_Peltor","VSM_Shemagh_Balaclava_tan_Goggles","VSM_Shemagh_Balaclava_tan_Glasses","VSM_Shemagh_Balaclava_tan","VSM_Shemagh_tan","VSM_Peltor_coyote_glasses","VSM_Facemask_tan_Peltor_Goggles","VSM_Facemask_tan_Peltor_glasses","VSM_Facemask_tan_Peltor","VSM_Facemask_tan_Goggles","VSM_Facemask_tan_glasses","ACE_NVG_Wide","ACE_NVG_Gen4","NVGoggles","Binocular","ItemMap","ItemCompass","TFAR_anprc152","ItemWatch","TFAR_microdagr","ItemGPS","B_UavTerminal","Chemlight_blue","Chemlight_green","ACE_Chemlight_HiBlue","ACE_Chemlight_HiGreen","ACE_Chemlight_HiRed","ACE_Chemlight_HiWhite","ACE_Chemlight_HiYellow","ACE_Chemlight_IR","ACE_Chemlight_Orange","Chemlight_red","ACE_Chemlight_UltraHiOrange","ACE_Chemlight_White","Chemlight_yellow","B_IR_Grenade","SmokeShellBlue","SmokeShellGreen","SmokeShellPurple","SmokeShellRed","SmokeShellYellow","SmokeShellOrange","HandGrenade","SmokeShell","MiniGrenade","DemoCharge_Remote_Mag","SatchelCharge_Remote_Mag","ACE_adenosine","ACE_ATragMX","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_CableTie","ACE_EarPlugs","ACE_epinephrine","ACE_EntrenchingTool","ACE_Flashlight_MX991","ACE_Kestrel4500","ACE_IR_Strobe_Item","ACE_Clacker","ACE_Flashlight_XL50","ACE_MapTools","Medikit","ACE_microDAGR","MineDetector","ACE_morphine","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_RangeCard","ACE_rope12","ACE_rope15","ACE_rope18","ACE_rope27","ACE_rope36","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_splint","ACE_SpottingScope","ACE_surgicalKit","ACE_tourniquet","ACE_10Rnd_762x51_Mk316_Mod_0_Mag","ACE_10Rnd_762x51_Mk319_Mod_0_Mag","30Rnd_9x21_Mag","TFAR_rt1523g","ACE_30Rnd_556x45_Stanag_M995_AP_mag","ACE_30Rnd_556x45_Stanag_Mk262_mag","ACE_30Rnd_556x45_Stanag_Mk318_mag","ACE_30Rnd_556x45_Stanag_Tracer_Dim","ACE_HandFlare_Green","ACE_HandFlare_Red","ACE_HandFlare_White","ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag","ATMine_Range_Mag","APERSBoundingMine_Range_Mag","ACE_artilleryTable","ACE_bodyBag","ACE_Chemlight_Shield","ACE_DAGR","ACE_DefusalKit","ACE_Tripod","ACE_UAVBattery","ToolKit","ACE_wirecutter","ACE_HuntIR_monitor","B_AT_01_weapon_F","B_HMG_01_support_high_F","B_HMG_01_support_F","RHS_M2_Gun_B
};

private _item456 = objNull;
if (_layer452 && _layer450) then {
	_item456 = createVehicle ["Land_PaperBox_open_empty_F",[15201.5,17290.2,0.720978],[],0,"CAN_COLLIDE"];
	_this = _item456;
	_objects pushback _this;
	_objectIDs pushback 456;
	_this setPosWorld [15201.5,17290.2,19.268];
	_this setVectorDirAndUp [[-0.677835,-0.735214,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item457 = objNull;
if (_layer452 && _layer450) then {
	_item457 = createVehicle ["Land_PaperBox_closed_F",[15200.2,17291.5,0.720978],[],0,"CAN_COLLIDE"];
	_this = _item457;
	_objects pushback _this;
	_objectIDs pushback 457;
	_this setPosWorld [15200.2,17291.5,19.3042];
	_this setVectorDirAndUp [[-0.699658,-0.714478,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item458 = objNull;
if (_layer452 && _layer450) then {
	_item458 = createSimpleObject ["Land_CampingTable_F",[15194.7,17294.5,18.5406]];
	_this = _item458;
	_objects pushback _this;
	_objectIDs pushback 458;
	_this setPosWorld [15194.7,17294.5,18.9521];
	_this setVectorDirAndUp [[0.715137,0.698985,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item460 = objNull;
if (_layer452 && _layer450) then {
	_item460 = createVehicle ["Weapon_arifle_MX_F",[15194.3,17294.8,1.41705],[],0,"CAN_COLLIDE"];
	_this = _item460;
	_objects pushback _this;
	_objectIDs pushback 460;
	_this setPosWorld [15194.3,17294.8,19.3562];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item461 = objNull;
if (_layer452 && _layer450) then {
	_item461 = createVehicle ["Weapon_arifle_MX_F",[15194.7,17294.6,1.4166],[],0,"CAN_COLLIDE"];
	_this = _item461;
	_objects pushback _this;
	_objectIDs pushback 461;
	_this setPosWorld [15194.7,17294.6,19.3562];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item463 = objNull;
if (_layer452 && _layer450) then {
	_item463 = createVehicle ["Land_InfoStand_V1_F",[15190.3,17294.9,0],[],0,"CAN_COLLIDE"];
	_this = _item463;
	_objects pushback _this;
	_objectIDs pushback 463;
	_this setPosWorld [15190.3,17294.9,18.5091];
	_this setVectorDirAndUp [[0.707994,-0.706218,0.000914406],[-0.00129154,0,0.999999]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item465 = objNull;
if (_layer464 && _layer450) then {
	_item465 = createVehicle ["Land_Garbage_square5_F",[15148.6,17340.1,0],[],0,"CAN_COLLIDE"];
	_this = _item465;
	_objects pushback _this;
	_objectIDs pushback 465;
	_this setPosWorld [15148.6,17340.1,17.8678];
	_this setVectorDirAndUp [[0.893348,-0.449264,0.00954095],[-0.0080009,0.00532633,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item466 = objNull;
if (_layer464 && _layer450) then {
	_item466 = createSimpleObject ["Land_GarbageContainer_open_F",[15154.9,17338.9,17.8544]];
	_this = _item466;
	_objects pushback _this;
	_objectIDs pushback 466;
	_this setPosWorld [15154.9,17338.9,18.5929];
	_this setVectorDirAndUp [[0.835798,0.549035,0.0014824],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item467 = objNull;
if (_layer464 && _layer450) then {
	_item467 = createSimpleObject ["Land_Sink_F",[15151.2,17334.4,17.8507]];
	_this = _item467;
	_objects pushback _this;
	_objectIDs pushback 467;
	_this setPosWorld [15151.2,17334.4,18.4684];
	_this setVectorDirAndUp [[0.65373,-0.756723,0.00274563],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item468 = objNull;
if (_layer464 && _layer450) then {
	_item468 = createSimpleObject ["Land_CampingTable_F",[15149.5,17337.1,17.84]];
	_this = _item468;
	_objects pushback _this;
	_objectIDs pushback 468;
	_this setPosWorld [15149.5,17337.1,18.2515];
	_this setVectorDirAndUp [[-0.681751,-0.73157,-0.00447653],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item469 = objNull;
if (_layer464 && _layer450) then {
	_item469 = createSimpleObject ["Land_CampingTable_F",[15148.7,17339,17.831]];
	_this = _item469;
	_objects pushback _this;
	_objectIDs pushback 469;
	_this setPosWorld [15148.7,17339,18.2425];
	_this setVectorDirAndUp [[0.685203,0.728338,0.00450848],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item470 = objNull;
if (_layer464 && _layer450) then {
	_item470 = createSimpleObject ["Land_CampingTable_F",[15150.1,17337.7,17.8432]];
	_this = _item470;
	_objects pushback _this;
	_objectIDs pushback 470;
	_this setPosWorld [15150.1,17337.7,18.2548];
	_this setVectorDirAndUp [[0.672007,0.740544,0.000791933],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item471 = objNull;
if (_layer464 && _layer450) then {
	_item471 = createSimpleObject ["Land_CampingTable_F",[15148.1,17338.4,17.8273]];
	_this = _item471;
	_objects pushback _this;
	_objectIDs pushback 471;
	_this setPosWorld [15148.1,17338.4,18.2388];
	_this setVectorDirAndUp [[-0.672698,-0.739904,-0.00439296],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item472 = objNull;
if (_layer464 && _layer450) then {
	_item472 = createVehicle ["Land_CratesShabby_F",[15153.6,17338.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item472;
	_objects pushback _this;
	_objectIDs pushback 472;
	_this setPosWorld [15153.6,17338.7,18.6113];
	_this setVectorDirAndUp [[0.893373,-0.449305,0.00297009],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item473 = objNull;
if (_layer464 && _layer450) then {
	_item473 = createSimpleObject ["Land_WheelieBin_01_F",[15153.6,17339.5,17.8503]];
	_this = _item473;
	_objects pushback _this;
	_objectIDs pushback 473;
	_this setPosWorld [15153.6,17339.5,18.3673];
	_this setVectorDirAndUp [[-0.449346,-0.893358,2.91935e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item474 = objNull;
if (_layer464 && _layer450) then {
	_item474 = createSimpleObject ["Land_WaterCooler_01_old_F",[15152.8,17338.4,17.8496]];
	_this = _item474;
	_objects pushback _this;
	_objectIDs pushback 474;
	_this setPosWorld [15152.8,17338.4,18.5816];
	_this setVectorDirAndUp [[0.449401,0.89333,-2.73832e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item475 = objNull;
if (_layer464 && _layer450) then {
	_item475 = createVehicle ["Land_CratesPlastic_F",[15154.1,17337.9,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item475;
	_objects pushback _this;
	_objectIDs pushback 475;
	_this setPosWorld [15154.1,17337.9,18.0862];
	_this setVectorDirAndUp [[0.314002,-0.94942,0.00210233],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item476 = objNull;
if (_layer464 && _layer450) then {
	_item476 = createVehicle ["Land_Garbage_square5_F",[15152.4,17337.1,0],[],0,"CAN_COLLIDE"];
	_this = _item476;
	_objects pushback _this;
	_objectIDs pushback 476;
	_this setPosWorld [15152.4,17337.1,17.8898];
	_this setVectorDirAndUp [[0.893373,-0.449305,0.00297009],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item477 = objNull;
if (_layer464 && _layer450) then {
	_item477 = createSimpleObject ["Land_CampingTable_F",[15156.4,17333.8,17.8652]];
	_this = _item477;
	_objects pushback _this;
	_objectIDs pushback 477;
	_this setPosWorld [15156.4,17333.8,18.2768];
	_this setVectorDirAndUp [[-0.549031,0.835798,-0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item478 = objNull;
if (_layer464 && _layer450) then {
	_item478 = createSimpleObject ["Land_BarrelTrash_grey_F",[15145.9,17335.2,17.8172]];
	_this = _item478;
	_objects pushback _this;
	_objectIDs pushback 478;
	_this setPosWorld [15145.9,17335.2,18.222];
	_this setVectorDirAndUp [[0.893362,-0.44929,0.00655431],[-0.0053265,0.00399669,0.999978]];
	0 remoteExec ['setFeatureType', _this];
};

private _item479 = objNull;
if (_layer464 && _layer450) then {
	_item479 = createSimpleObject ["Land_CampingTable_F",[15156.8,17333.2,17.8671]];
	_this = _item479;
	_objects pushback _this;
	_objectIDs pushback 479;
	_this setPosWorld [15156.8,17333.2,18.2787];
	_this setVectorDirAndUp [[0.549032,-0.835797,0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item480 = objNull;
if (_layer464 && _layer450) then {
	_item480 = createSimpleObject ["Land_CampingTable_F",[15155.2,17332.2,17.8639]];
	_this = _item480;
	_objects pushback _this;
	_objectIDs pushback 480;
	_this setPosWorld [15155.2,17332.2,18.2754];
	_this setVectorDirAndUp [[0.549789,-0.835302,0.00145807],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item481 = objNull;
if (_layer464 && _layer450) then {
	_item481 = createSimpleObject ["Land_CampingTable_F",[15154.8,17332.8,17.8624]];
	_this = _item481;
	_objects pushback _this;
	_objectIDs pushback 481;
	_this setPosWorld [15154.8,17332.8,18.274];
	_this setVectorDirAndUp [[-0.549031,0.835798,-0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item482 = objNull;
if (_layer464 && _layer450) then {
	_item482 = createVehicle ["Land_Garbage_square5_F",[15156.1,17332.1,0],[],0,"CAN_COLLIDE"];
	_this = _item482;
	_objects pushback _this;
	_objectIDs pushback 482;
	_this setPosWorld [15156.1,17332.1,17.9056];
	_this setVectorDirAndUp [[0.893373,-0.449309,0.00236927],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item483 = objNull;
if (_layer464 && _layer450) then {
	_item483 = createSimpleObject ["Land_CampingChair_V2_F",[15148.6,17336.7,17.8333]];
	_this = _item483;
	_objects pushback _this;
	_objectIDs pushback 483;
	_this setPosWorld [15148.6,17336.7,18.3398];
	_this setVectorDirAndUp [[-0.448689,-0.893685,-0.00239499],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item484 = objNull;
if (_layer464 && _layer450) then {
	_item484 = createSimpleObject ["Land_CampingChair_V2_F",[15148,17337.6,17.8273]];
	_this = _item484;
	_objects pushback _this;
	_objectIDs pushback 484;
	_this setPosWorld [15148,17337.6,18.3338];
	_this setVectorDirAndUp [[-0.665214,-0.746641,-0.00432406],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item485 = objNull;
if (_layer464 && _layer450) then {
	_item485 = createSimpleObject ["Land_CampingChair_V2_F",[15147.1,17338.3,17.8189]];
	_this = _item485;
	_objects pushback _this;
	_objectIDs pushback 485;
	_this setPosWorld [15147.1,17338.3,18.3254];
	_this setVectorDirAndUp [[0.97919,-0.202782,0.00810582],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item486 = objNull;
if (_layer464 && _layer450) then {
	_item486 = createSimpleObject ["Land_CampingChair_V2_F",[15149,17340.2,17.831]];
	_this = _item486;
	_objects pushback _this;
	_objectIDs pushback 486;
	_this setPosWorld [15149,17340.2,18.3374];
	_this setVectorDirAndUp [[0.949397,0.314023,0.00592371],[-0.0080009,0.00532633,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item487 = objNull;
if (_layer464 && _layer450) then {
	_item487 = createSimpleObject ["Land_CampingChair_V2_F",[15150.8,17337.6,17.8453]];
	_this = _item487;
	_objects pushback _this;
	_objectIDs pushback 487;
	_this setPosWorld [15150.8,17337.6,18.3517];
	_this setVectorDirAndUp [[0.665219,0.746648,0.000765771],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item488 = objNull;
if (_layer464 && _layer450) then {
	_item488 = createSimpleObject ["Land_CampingChair_V2_F",[15149.6,17339.3,17.8378]];
	_this = _item488;
	_objects pushback _this;
	_objectIDs pushback 488;
	_this setPosWorld [15149.6,17339.3,18.3442];
	_this setVectorDirAndUp [[0.449372,0.893341,0.00240091],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item489 = objNull;
if (_layer464 && _layer450) then {
	_item489 = createSimpleObject ["Land_CampingChair_V2_F",[15150.5,17338.6,17.8431]];
	_this = _item489;
	_objects pushback _this;
	_objectIDs pushback 489;
	_this setPosWorld [15150.5,17338.6,18.3496];
	_this setVectorDirAndUp [[0.835856,0.548947,0.00148268],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item490 = objNull;
if (_layer464 && _layer450) then {
	_item490 = createSimpleObject ["Land_CampingChair_V2_F",[15156.6,17334.8,17.8644]];
	_this = _item490;
	_objects pushback _this;
	_objectIDs pushback 490;
	_this setPosWorld [15156.6,17334.8,18.3709];
	_this setVectorDirAndUp [[0.202724,0.979236,-0.000771813],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item491 = objNull;
if (_layer464 && _layer450) then {
	_item491 = createSimpleObject ["Land_CampingChair_V2_F",[15157.5,17333,17.8692]];
	_this = _item491;
	_objects pushback _this;
	_objectIDs pushback 491;
	_this setPosWorld [15157.5,17333,18.3757];
	_this setVectorDirAndUp [[0.746635,-0.665228,0.00286967],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item492 = objNull;
if (_layer464 && _layer450) then {
	_item492 = createSimpleObject ["Land_CampingChair_V2_F",[15149.3,17336,17.8401]];
	_this = _item492;
	_objects pushback _this;
	_objectIDs pushback 492;
	_this setPosWorld [15149.3,17336,18.3465];
	_this setVectorDirAndUp [[-0.949413,-0.313947,-0.00717659],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item493 = objNull;
if (_layer464 && _layer450) then {
	_item493 = createSimpleObject ["Land_CampingChair_V2_F",[15154.7,17333.6,17.8611]];
	_this = _item493;
	_objects pushback _this;
	_objectIDs pushback 493;
	_this setPosWorld [15154.7,17333.6,18.3676];
	_this setVectorDirAndUp [[0.44926,0.893401,-3.20573e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item494 = objNull;
if (_layer464 && _layer450) then {
	_item494 = createSimpleObject ["Land_CampingChair_V2_F",[15156.7,17332.3,17.8679]];
	_this = _item494;
	_objects pushback _this;
	_objectIDs pushback 494;
	_this setPosWorld [15156.7,17332.3,18.3744];
	_this setVectorDirAndUp [[0.549045,-0.835791,0.0014561],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item495 = objNull;
if (_layer464 && _layer450) then {
	_item495 = createSimpleObject ["Land_CampingChair_V2_F",[15153.8,17331.6,17.8602]];
	_this = _item495;
	_objects pushback _this;
	_objectIDs pushback 495;
	_this setPosWorld [15153.8,17331.6,18.3667];
	_this setVectorDirAndUp [[-0.893381,0.449293,-0.00236929],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item496 = objNull;
if (_layer464 && _layer450) then {
	_item496 = createSimpleObject ["Land_CampingChair_V2_F",[15155.1,17331.4,17.8636]];
	_this = _item496;
	_objects pushback _this;
	_objectIDs pushback 496;
	_this setPosWorld [15155.1,17331.4,18.3701];
	_this setVectorDirAndUp [[0.549116,-0.835745,0.00145629],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item497 = objNull;
if (_layer464 && _layer450) then {
	_item497 = createSimpleObject ["Land_CampingChair_V2_F",[15153.9,17333.1,17.8597]];
	_this = _item497;
	_objects pushback _this;
	_objectIDs pushback 497;
	_this setPosWorld [15153.9,17333.1,18.3662];
	_this setVectorDirAndUp [[-0.746689,0.665167,-0.00286973],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item499 = objNull;
if (_layer498) then {
	_item499 = createVehicle ["Land_HelipadRescue_F",[15282.9,17409.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item499;
	_objects pushback _this;
	_objectIDs pushback 499;
	_this setPosWorld [15282.9,17409.7,17.8317];
	_this setVectorDirAndUp [[-0.71644,0.697648,0.00108011],[0.00800059,0.00666796,0.999946]];
	0 remoteExec ['setFeatureType', _this];
};

private _item500 = objNull;
if (_layer498) then {
	_item500 = createVehicle ["Land_PaperBox_closed_F",[15303.1,17385.1,0],[],0,"CAN_COLLIDE"];
	_this = _item500;
	_objects pushback _this;
	_objectIDs pushback 500;
	_this setPosWorld [15303.1,17385.1,18.4704];
	_this setVectorDirAndUp [[0.765095,-0.643914,0.0020941],[0.00399666,0.00800083,0.99996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item501 = objNull;
if (_layer498) then {
	_item501 = createVehicle ["Land_Cargo20_white_F",[15288.2,17388.5,0.00304794],[],0,"CAN_COLLIDE"];
	_this = _item501;
	_objects pushback _this;
	_objectIDs pushback 501;
	_this setPosWorld [15288.2,17388.5,19.2094];
	_this setVectorDirAndUp [[-0.691094,-0.722755,0.00374957],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item502 = objNull;
if (_layer498) then {
	_item502 = createVehicle ["Land_Cargo20_white_F",[15285.7,17385.9,0.00304794],[],0,"CAN_COLLIDE"];
	_this = _item502;
	_objects pushback _this;
	_objectIDs pushback 502;
	_this setPosWorld [15285.7,17385.9,19.2231];
	_this setVectorDirAndUp [[-0.691094,-0.722755,0.00374957],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item503 = objNull;
if (_layer498) then {
	_item503 = createVehicle ["Land_HBarrier_5_F",[15282.2,17388.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item503;
	_objects pushback _this;
	_objectIDs pushback 503;
	_this setPosWorld [15282.2,17388.2,18.6394];
	_this setVectorDirAndUp [[-0.72276,0.691099,8.39335e-005],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item504 = objNull;
if (_layer498) then {
	_item504 = createVehicle ["Land_HBarrier_5_F",[15286,17392.2,0.00354576],[],0,"CAN_COLLIDE"];
	_this = _item504;
	_objects pushback _this;
	_objectIDs pushback 504;
	_this setPosWorld [15286,17392.2,18.6213];
	_this setVectorDirAndUp [[-0.722757,0.691103,0.000126477],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item505 = objNull;
if (_layer498) then {
	_item505 = createVehicle ["Land_HBarrier_5_F",[15322.3,17404.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item505;
	_objects pushback _this;
	_objectIDs pushback 505;
	_this setPosWorld [15322.3,17404.1,17.9601];
	_this setVectorDirAndUp [[-0.691008,-0.722651,0.0168328],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item506 = objNull;
if (_layer498) then {
	_item506 = createVehicle ["Land_HBarrier_5_F",[15316.3,17409.8,0],[],0,"CAN_COLLIDE"];
	_this = _item506;
	_objects pushback _this;
	_objectIDs pushback 506;
	_this setPosWorld [15316.3,17409.8,18.012];
	_this setVectorDirAndUp [[-0.691008,-0.722651,0.0168328],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item507 = objNull;
if (_layer498) then {
	_item507 = createVehicle ["Land_HBarrier_5_F",[15310.6,17415.4,0],[],0,"CAN_COLLIDE"];
	_this = _item507;
	_objects pushback _this;
	_objectIDs pushback 507;
	_this setPosWorld [15310.6,17415.4,18.0781];
	_this setVectorDirAndUp [[-0.690959,-0.722723,0.0157512],[0.0199947,0.00267389,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item508 = objNull;
if (_layer498) then {
	_item508 = createVehicle ["B_Truck_01_medical_F",[15310.9,17403.1,-0.0113106],[],0,"CAN_COLLIDE"];
	_this = _item508;
	_objects pushback _this;
	_objectIDs pushback 508;
	_this setPosWorld [15310.9,17403.1,19.6725];
	_this setVectorDirAndUp [[0.722658,-0.69118,-0.00603749],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitfuel"",""hitengine"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hithull"",""#light_l"",""#light_r"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	_this setVariable ["ace_medical_isMedicalVehicle", true, true];
};

private _item509 = objNull;
if (_layer498) then {
	_item509 = createVehicle ["Land_LampShabby_F",[15306.2,17389,0.00991631],[],0,"CAN_COLLIDE"];
	_this = _item509;
	_objects pushback _this;
	_objectIDs pushback 509;
	_this setPosWorld [15306.2,17389,21.5368];
	_this setVectorDirAndUp [[0.722762,-0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item510 = objNull;
if (_layer498) then {
	_item510 = createVehicle ["Land_Medevac_HQ_V1_F",[15301.7,17392.2,0],[],0,"CAN_COLLIDE"];
	_this = _item510;
	_objects pushback _this;
	_objectIDs pushback 510;
	_this setPosWorld [15301.7,17392.2,21.6293];
	_this setVectorDirAndUp [[-0.691097,-0.722762,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item511 = objNull;
if (_layer498) then {
	_item511 = createVehicle ["Land_TTowerSmall_1_F",[15297.7,17382.3,0.00361061],[],0,"CAN_COLLIDE"];
	_this = _item511;
	_objects pushback _this;
	_objectIDs pushback 511;
	_this setPosWorld [15297.7,17382.3,22.8508];
	_this setVectorDirAndUp [[-0.722762,0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item512 = objNull;
if (_layer498) then {
	_item512 = createSimpleObject ["Land_Bandage_F",[15306.2,17394.7,19.1911]];
	_this = _item512;
	_objects pushback _this;
	_objectIDs pushback 512;
	_this setPosWorld [15306.2,17394.7,19.1944];
	_this setVectorDirAndUp [[-0.721062,-0.69287,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item513 = objNull;
if (_layer498) then {
	_item513 = createSimpleObject ["Land_Bandage_F",[15306.1,17394.8,19.1896]];
	_this = _item513;
	_objects pushback _this;
	_objectIDs pushback 513;
	_this setPosWorld [15306.1,17394.8,19.1929];
	_this setVectorDirAndUp [[-0.393014,-0.919532,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item514 = objNull;
if (_layer498) then {
	_item514 = createVehicle ["BloodSplatter_01_Small_New_F",[15300.1,17394.5,0.549845],[],0,"CAN_COLLIDE"];
	_this = _item514;
	_objects pushback _this;
	_objectIDs pushback 514;
	_this setPosWorld [15300.1,17394.5,18.3056];
	_this setVectorDirAndUp [[-0.746441,0.665452,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\props_f_orange\humanitarian\garbage\data\bloodsplatter_small_fresh_ca.paa"];
};

private _item515 = objNull;
if (_layer498) then {
	_item515 = createSimpleObject ["Land_CampingChair_V2_white_F",[15305.6,17393.7,18.3723]];
	_this = _item515;
	_objects pushback _this;
	_objectIDs pushback 515;
	_this setPosWorld [15305.6,17393.7,18.8788];
	_this setVectorDirAndUp [[-0.393014,-0.919532,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item516 = objNull;
if (_layer498) then {
	_item516 = createSimpleObject ["Land_CampingTable_white_F",[15305.8,17394.8,18.3616]];
	_this = _item516;
	_objects pushback _this;
	_objectIDs pushback 516;
	_this setPosWorld [15305.8,17394.8,18.7731];
	_this setVectorDirAndUp [[-0.670973,-0.741482,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item517 = objNull;
if (_layer498) then {
	_item517 = createSimpleObject ["Land_Defibrillator_F",[15305.9,17394.4,19.2474]];
	_this = _item517;
	_objects pushback _this;
	_objectIDs pushback 517;
	_this setPosWorld [15305.9,17394.4,19.2475];
	_this setVectorDirAndUp [[-0.692871,0.721062,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item518 = objNull;
if (_layer498) then {
	_item518 = createSimpleObject ["Land_EmergencyBlanket_02_discarded_F",[15298.5,17393.2,18.8292]];
	_this = _item518;
	_objects pushback _this;
	_objectIDs pushback 518;
	_this setPosWorld [15298.5,17393.2,18.8888];
	_this setVectorDirAndUp [[0.698203,-0.7159,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item519 = objNull;
if (_layer498) then {
	_item519 = createSimpleObject ["Land_EmergencyBlanket_02_stack_F",[15299.3,17397,20.8658]];
	_this = _item519;
	_objects pushback _this;
	_objectIDs pushback 519;
	_this setPosWorld [15299.3,17397,20.9642];
	_this setVectorDirAndUp [[0.850655,-0.525724,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item520 = objNull;
if (_layer498) then {
	_item520 = createSimpleObject ["Land_FoodContainer_01_F",[15300.7,17398.9,18.3539]];
	_this = _item520;
	_objects pushback _this;
	_objectIDs pushback 520;
	_this setPosWorld [15300.7,17398.9,18.5817];
	_this setVectorDirAndUp [[-0.877004,0.480484,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item521 = objNull;
if (_layer498) then {
	_item521 = createSimpleObject ["Land_FoodContainer_01_White_F",[15300.8,17387.5,18.3532]];
	_this = _item521;
	_objects pushback _this;
	_objectIDs pushback 521;
	_this setPosWorld [15300.8,17387.5,18.581];
	_this setVectorDirAndUp [[-0.0398352,0.999206,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item522 = objNull;
if (_layer498) then {
	_item522 = createSimpleObject ["Land_FoodContainer_01_White_F",[15301.4,17398.5,18.3539]];
	_this = _item522;
	_objects pushback _this;
	_objectIDs pushback 522;
	_this setPosWorld [15301.4,17398.5,18.5817];
	_this setVectorDirAndUp [[-0.691097,-0.722762,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item523 = objNull;
if (_layer498) then {
	_item523 = createSimpleObject ["Land_IntravenStand_01_1bag_F",[15298.5,17392.2,18.3615]];
	_this = _item523;
	_objects pushback _this;
	_objectIDs pushback 523;
	_this setPosWorld [15298.5,17392.2,19.2929];
	_this setVectorDirAndUp [[0.652323,0.757941,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item524 = objNull;
if (_layer498) then {
	_item524 = createSimpleObject ["Land_IntravenStand_01_2bags_F",[15302.4,17387.4,18.3532]];
	_this = _item524;
	_objects pushback _this;
	_objectIDs pushback 524;
	_this setPosWorld [15302.4,17387.4,19.2846];
	_this setVectorDirAndUp [[0.757941,-0.652323,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item525 = objNull;
if (_layer498) then {
	_item525 = createSimpleObject ["Land_IntravenStand_01_empty_F",[15298.9,17389.7,18.3679]];
	_this = _item525;
	_objects pushback _this;
	_objectIDs pushback 525;
	_this setPosWorld [15298.9,17389.7,19.2993];
	_this setVectorDirAndUp [[0.757941,-0.652323,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item526 = objNull;
if (_layer498) then {
	_item526 = createSimpleObject ["Land_PainKillers_F",[15306.4,17394.4,19.1713]];
	_this = _item526;
	_objects pushback _this;
	_objectIDs pushback 526;
	_this setPosWorld [15306.4,17394.4,19.2138];
	_this setVectorDirAndUp [[-0.944708,0.327914,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item527 = objNull;
if (_layer498) then {
	_item527 = createSimpleObject ["Land_PlasticBucket_01_closed_F",[15299.5,17393.2,18.3615]];
	_this = _item527;
	_objects pushback _this;
	_objectIDs pushback 527;
	_this setPosWorld [15299.5,17393.2,18.5842];
	_this setVectorDirAndUp [[-0.999206,-0.0398354,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item528 = objNull;
if (_layer498) then {
	_item528 = createSimpleObject ["Land_PlasticBucket_01_closed_F",[15298.7,17398.7,20.8658]];
	_this = _item528;
	_objects pushback _this;
	_objectIDs pushback 528;
	_this setPosWorld [15298.7,17398.7,21.0885];
	_this setVectorDirAndUp [[0.993993,0.10944,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item529 = objNull;
if (_layer498) then {
	_item529 = createSimpleObject ["Land_PlasticBucket_01_open_F",[15294.6,17390.4,18.4869]];
	_this = _item529;
	_objects pushback _this;
	_objectIDs pushback 529;
	_this setPosWorld [15294.6,17390.4,18.7097];
	_this setVectorDirAndUp [[-0.489124,0.872214,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item530 = objNull;
if (_layer498) then {
	_item530 = createSimpleObject ["Land_PlasticCase_01_medium_idap_F",[15298.8,17397.8,20.8658]];
	_this = _item530;
	_objects pushback _this;
	_objectIDs pushback 530;
	_this setPosWorld [15298.8,17397.8,21.0599];
	_this setVectorDirAndUp [[-0.967192,0.254045,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item531 = objNull;
if (_layer498) then {
	_item531 = createSimpleObject ["Land_PlasticCase_01_small_gray_F",[15299.7,17397.5,20.8658]];
	_this = _item531;
	_objects pushback _this;
	_objectIDs pushback 531;
	_this setPosWorld [15299.7,17397.5,21.0225];
	_this setVectorDirAndUp [[-0.672793,0.739831,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item532 = objNull;
if (_layer498) then {
	_item532 = createVehicle ["PortableHelipadLight_01_red_F",[15282.8,17417.3,-5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item532;
	_objects pushback _this;
	_objectIDs pushback 532;
	_this setPosWorld [15282.8,17417.3,17.899];
	_this setVectorDirAndUp [[0,0.999986,-0.0053265],[0.00932853,0.00532627,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item533 = objNull;
if (_layer498) then {
	_item533 = createVehicle ["PortableHelipadLight_01_red_F",[15290.5,17409.9,1.90735e-005],[],0,"CAN_COLLIDE"];
	_this = _item533;
	_objects pushback _this;
	_objectIDs pushback 533;
	_this setPosWorld [15290.5,17409.9,17.8503];
	_this setVectorDirAndUp [[0,0.999968,-0.00799344],[0.0146639,0.00799259,0.999861]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item534 = objNull;
if (_layer498) then {
	_item534 = createVehicle ["PortableHelipadLight_01_red_F",[15282.8,17402,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item534;
	_objects pushback _this;
	_objectIDs pushback 534;
	_this setPosWorld [15282.8,17402,17.9739];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item535 = objNull;
if (_layer498) then {
	_item535 = createVehicle ["PortableHelipadLight_01_red_F",[15275,17409.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item535;
	_objects pushback _this;
	_objectIDs pushback 535;
	_this setPosWorld [15275,17409.7,17.9845];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item536 = objNull;
if (_layer498) then {
	_item536 = createVehicle ["PortableHelipadLight_01_yellow_F",[15282.9,17409.7,2.09808e-005],[],0,"CAN_COLLIDE"];
	_this = _item536;
	_objects pushback _this;
	_objectIDs pushback 536;
	_this setPosWorld [15282.9,17409.7,17.943];
	_this setVectorDirAndUp [[0,0.999978,-0.00666818],[0.00800059,0.00666796,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item537 = objNull;
if (_layer498) then {
	_item537 = createVehicle ["Land_PortableCabinet_01_medical_F",[15308.2,17394.1,0.848061],[],0,"CAN_COLLIDE"];
	_this = _item537;
	_objects pushback _this;
	_objectIDs pushback 537;
	_this setPosWorld [15308.2,17394.1,18.8998];
	_this setVectorDirAndUp [[0.625427,0.780283,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this animate ['Drawer_1_move_source',0,true];
	_this animate ['Drawer_2_move_source',0,true];
	_this animate ['Drawer_3_move_source',0,true];
	_this animate ['Drawer_4_move_source',0,true];
	_this animate ['Drawer_5_move_source',0,true];
	_this animate ['Drawer_6_move_source',0,true];
	_this animate ['Drawer_1_hide_source',0,true];
	_this animate ['Drawer_2_hide_source',0,true];
	_this animate ['Drawer_3_hide_source',0,true];
	_this animate ['Drawer_4_hide_source',0,true];
	_this animate ['Drawer_5_hide_source',0,true];
	_this animate ['Drawer_6_hide_source',0,true];
};

private _item538 = objNull;
if (_layer498) then {
	_item538 = createSimpleObject ["Land_Stethoscope_01_F",[15305.3,17395.1,19.1686]];
	_this = _item538;
	_objects pushback _this;
	_objectIDs pushback 538;
	_this setPosWorld [15305.3,17395.1,19.1843];
	_this setVectorDirAndUp [[0.998497,-0.0548137,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item539 = objNull;
if (_layer498) then {
	_item539 = createSimpleObject ["Land_Stretcher_01_F",[15302,17388,18.3532]];
	_this = _item539;
	_objects pushback _this;
	_objectIDs pushback 539;
	_this setPosWorld [15302,17388,18.5948];
	_this setVectorDirAndUp [[0.691097,0.722762,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item540 = objNull;
if (_layer498) then {
	_item540 = createSimpleObject ["Land_Stretcher_01_F",[15298.4,17393.2,18.3615]];
	_this = _item540;
	_objects pushback _this;
	_objectIDs pushback 540;
	_this setPosWorld [15298.4,17393.2,18.6031];
	_this setVectorDirAndUp [[-0.722762,0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item541 = objNull;
if (_layer498) then {
	_item541 = createSimpleObject ["Land_Stretcher_01_F",[15297.5,17392.2,18.3615]];
	_this = _item541;
	_objects pushback _this;
	_objectIDs pushback 541;
	_this setPosWorld [15297.5,17392.2,18.6031];
	_this setVectorDirAndUp [[-0.722762,0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item542 = objNull;
if (_layer498) then {
	_item542 = createSimpleObject ["Land_Stretcher_01_F",[15299,17390.9,18.3532]];
	_this = _item542;
	_objects pushback _this;
	_objectIDs pushback 542;
	_this setPosWorld [15299,17390.9,18.5948];
	_this setVectorDirAndUp [[-0.691097,-0.722762,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item543 = objNull;
if (_layer498) then {
	_item543 = createSimpleObject ["Land_Stretcher_01_folded_F",[15294.7,17391,18.4874]];
	_this = _item543;
	_objects pushback _this;
	_objectIDs pushback 543;
	_this setPosWorld [15294.7,17391,18.5553];
	_this setVectorDirAndUp [[-0.993136,0.116965,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item544 = objNull;
if (_layer498) then {
	_item544 = createSimpleObject ["Land_WaterBottle_01_pack_F",[15305.8,17395,19.1666]];
	_this = _item544;
	_objects pushback _this;
	_objectIDs pushback 544;
	_this setPosWorld [15305.8,17395,19.2974];
	_this setVectorDirAndUp [[-0.546719,-0.837316,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item545 = objNull;
if (_layer498) then {
	_item545 = createSimpleObject ["Land_WaterBottle_01_pack_F",[15305.5,17395.3,19.1646]];
	_this = _item545;
	_objects pushback _this;
	_objectIDs pushback 545;
	_this setPosWorld [15305.5,17395.3,19.2954];
	_this setVectorDirAndUp [[0.667284,-0.744803,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item547 = objNull;
if (_layer498) then {
	_item547 = createVehicle ["ACE_medicalSupplyCrate_advanced",[15307.3,17392.4,0.686132],[],0,"CAN_COLLIDE"];
	_this = _item547;
	_objects pushback _this;
	_objectIDs pushback 547;
	_this setPosWorld [15307.3,17392.4,18.3616];
	_this setVectorDirAndUp [[-0.730776,0.682617,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[""kat_Painkiller""],[10]],[[""ACE_fieldDressing"",""ACE_packingBandage"",""ACE_elasticBandage"",""ACE_tourniquet"",""ACE_splint"",""ACE_morphine"",""ACE_adenosine"",""ACE_epinephrine"",""ACE_plasmaIV"",""ACE_plasmaIV_500"",""ACE_plasmaIV_250"",""ACE_salineIV"",""ACE_salineIV_500"",""ACE_salineIV_250"",""ACE_bloodIV"",""ACE_bloodIV_500"",""ACE_bloodIV_250"",""ACE_quikclot"",""ACE_personalAidKit"",""ACE_surgicalKit"",""ACE_bodyBag"",""kat_larynx"",""kat_guedel"",""kat_accuvac"",""kat_X_AED"",""kat_AED"",""kat_Pulseoximeter"",""kat_chestSeal"",""kat_aatKit""],[25,25,25,15,15,15,15,15,7,7,7,7,7,7,7,7,7,20,3,2,5,15,15,1,1,1,3,25,10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item88 = objNull;
if (_layerRoot) then {
	_item88 = _item548 createUnit ["B_Soldier_lite_F",[15148.6,17336.8,0],[],0,"CAN_COLLIDE"];
	_item548 selectLeader _item88;
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [15148.6,17336.8,17.8348];
	_this setVectorDirAndUp [[0.472971,0.881078,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam_vest",[]],["V_TacVest_oli",[]],[],"","rhs_googles_black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Tyler Taylor";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male01ENG";;
	_this setpitch 1.03;;
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

private _item561 = objNull;
if (_layerRoot) then {
	_item561 = createVehicle ["Box_NATO_Ammo_F",[15195,17294.2,1.416],[],0,"CAN_COLLIDE"];
	_this = _item561;
	_objects pushback _this;
	_objectIDs pushback 561;
	_this setPosWorld [15195,17294.2,19.64];
	_this setVectorDirAndUp [[0.714155,-0.699987,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[""30Rnd_65x39_caseless_mag"",""16Rnd_9x21_Mag"",""11Rnd_45ACP_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""20Rnd_762x51_Mag"",""100Rnd_65x39_caseless_mag"",""1Rnd_HE_Grenade_shell"",""3Rnd_HE_Grenade_shell"",""NLAW_F"",""HandGrenade"",""MiniGrenade"",""ACE_20Rnd_65x47_Scenar_mag"",""ACE_30Rnd_65x47_Scenar_mag"",""ACE_20Rnd_65_Creedmor_mag"",""ACE_30Rnd_65_Creedmor_mag"",""ACE_10Rnd_762x51_M118LR_Mag"",""ACE_20Rnd_762x51_M118LR_Mag"",""ACE_10Rnd_762x51_Mk316_Mod_0_Mag"",""ACE_20Rnd_762x51_Mk316_Mod_0_Mag"",""ACE_10Rnd_762x51_Mk319_Mod_0_Mag"",""ACE_20Rnd_762x51_Mk319_Mod_0_Mag"",""ACE_20Rnd_762x51_Mag_Tracer"",""ACE_20Rnd_762x51_Mag_Tracer_Dim"",""ACE_10Rnd_338_300gr_HPBT_Mag"",""ACE_10Rnd_338_API526_Mag"",""ACE_7Rnd_408_305gr_Mag"",""ACE_5Rnd_127x99_Mag"",""ACE_5Rnd_127x99_API_Mag"",""ACE_5Rnd_127x99_AMAX_Mag""],[24,6,6,6,6,6,3,1,1,6,6,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item562 = objNull;
if (_layerRoot) then {
	_item562 = createVehicle ["Box_NATO_Equip_F",[15195.9,17290,0.600563],[],0,"CAN_COLLIDE"];
	_this = _item562;
	_objects pushback _this;
	_objectIDs pushback 562;
	_this setPosWorld [15195.9,17290,18.9221];
	_this setVectorDirAndUp [[-0.678298,-0.734787,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[""H_Cap_tan_specops_US"",""H_MilCap_mcamo"",""H_Booniehat_mcamo"",""H_Booniehat_tan"",""H_HelmetB_light"",""H_HelmetB_light_black"",""H_HelmetB_light_desert"",""H_HelmetB_light_grass"",""H_HelmetB_light_sand"",""H_HelmetB_light_snakeskin"",""H_HelmetB_black"",""H_HelmetB_camo"",""H_HelmetB_desert"",""H_HelmetB_grass"",""H_HelmetB_sand"",""H_HelmetB_snakeskin"",""H_HelmetSpecB"",""H_HelmetSpecB_blk"",""H_HelmetSpecB_paint2"",""H_HelmetSpecB_paint1"",""H_HelmetSpecB_sand"",""H_HelmetSpecB_snakeskin"",""H_HelmetCrew_B"",""H_PilotHelmetFighter_B"",""H_PilotHelmetHeli_B"",""H_CrewHelmetHeli_B"",""H_HelmetB_TI_tna_F"",""H_HelmetB_tna_F"",""H_HelmetB_Enh_tna_F"",""H_HelmetB_Light_tna_F"",""H_Booniehat_tna_F"",""V_Rangemaster_belt"",""V_BandollierB_blk"",""V_BandollierB_rgr"",""V_Chestrig_blk"",""V_Chestrig_rgr"",""V_TacVest_blk"",""V_PlateCarrier1_blk"",""V_PlateCarrier1_rgr"",""V_PlateCarrier2_rgr"",""V_PlateCarrier2_blk"",""V_PlateCarrierGL_blk"",""V_PlateCarrierGL_rgr"",""V_PlateCarrierGL_mtp"",""V_PlateCarrierSpec_blk"",""V_PlateCarrierSpec_rgr"",""V_PlateCarrierSpec_mtp"",""V_RebreatherB"",""V_TacChestrig_grn_F"",""V_PlateCarrier1_tna_F"",""V_PlateCarrier2_tna_F"",""V_PlateCarrierSpec_tna_F"",""V_PlateCarrierGL_tna_F"",""V_BandollierB_ghex_F"",""V_PlateCarrier1_rgr_noflag_F"",""V_PlateCarrier2_rgr_noflag_F""],[2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item71 = objNull;
if (_layerRoot) then {
	_item71 = createTrigger ["EmptyDetectorArea10x10",[15299.4,17526.9,0],true];
	_this = _item71;
	_triggers pushback _this;
	_triggerIDs pushback 71;
	_item71 setPosATL [15299.4,17526.9,0];
	_this setTriggerArea [5,23,44.51,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item449 = objNull;
if (_layer448 && _layer446) then {
	_item449 = createTrigger ["EmptyDetectorArea10x10",[15055.4,17308.1,0],true];
	_this = _item449;
	_triggers pushback _this;
	_triggerIDs pushback 449;
	_item449 setPosATL [15055.4,17308.1,0];
	_this setTriggerArea [10,10,-136.365,true,5];
	repStation = _this;
};

private _item546 = objNull;
if (_layer498) then {
	_item546 = createTrigger ["EmptyDetectorArea10x10",[15301.8,17393.5,0],true];
	_this = _item546;
	_triggers pushback _this;
	_triggerIDs pushback 546;
	_item546 setPosATL [15301.8,17393.5,0];
	_this setTriggerArea [5,5,134.759,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You heave been fully healed"";  
}",""];
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item73;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-1"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-1",true]'];          ["","ColorWEST","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item83;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Kilo 2"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-2",true]'];          ["","ColorWEST","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item93;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "November"] call CBA_fnc_setCallsign;
	_this setBehaviour "SAFE";
	      if (!is3DEN && !(["b_air","ColorWEST","November 1",false] isEqualTo ['', '', '', true])) then      {        [_this, ["b_air","ColorWEST","November 1",false]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["b_air","ColorWEST","November 1",false]'];          ["b_air","ColorWEST","November 1",false] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["b_air","ColorWEST","November 1",false]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["b_air","ColorWEST","November 1",false] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item149;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-4",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-4",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-4",true]'];          ["","ColorWEST","Alpha 1-4",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-4",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-4",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item160;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-5"] call CBA_fnc_setCallsign;
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 1-5",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-5",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-5",true]'];          ["","ColorWEST","Alpha 1-5",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-5",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-5",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item439;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 2-4"] call CBA_fnc_setCallsign;
	      if (!is3DEN && !(["","ColorWEST","Alpha 2-4",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 2-4",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 2-4",true]'];          ["","ColorWEST","Alpha 2-4",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 2-4",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 2-4",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item548;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 2-6"] call CBA_fnc_setCallsign;
	      if (!is3DEN && !(["","ColorWEST","Alpha 2-6",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 2-6",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 2-6",true]'];          ["","ColorWEST","Alpha 2-6",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 2-6",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 2-6",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item78 = objNull;
if (_layerRoot) then {
	_item78 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15295.5,17532.3,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_logics pushback _this;
	_logicIDs pushback 78;
	_this setPosWorld [15295.5,17532.3,16.5773];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item118 = objNull;
if (_layerRoot) then {
	_item118 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15280.9,17389.1,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_logics pushback _this;
	_logicIDs pushback 118;
	_this setPosWorld [15280.9,17389.1,17.9];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0.00265199,0.00265203,0.999993]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item119 = objNull;
if (_layerRoot) then {
	_item119 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15276.1,17420,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_logics pushback _this;
	_logicIDs pushback 119;
	_this setPosWorld [15276.1,17420,17.8292];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item120 = objNull;
if (_layerRoot) then {
	_item120 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15265,17413.7,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_logics pushback _this;
	_logicIDs pushback 120;
	_this setPosWorld [15265,17413.7,17.8884];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item551 = objNull;
if (_layer549 && _layer560) then {
	_item551 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[15188.7,17304.5,0],[],0,"CAN_COLLIDE"];
	_this = _item551;
	_logics pushback _this;
	_logicIDs pushback 551;
	_this setPosWorld [15188.7,17304.5,17.9189];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00133721,0.00133721,0.999998]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer549) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item551],[]]];};
if (_layer560) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item551],[]]];};
if (_layer498) then {missionNamespace setVariable ["temp_Hospital",[[_item499,_item500,_item501,_item502,_item503,_item504,_item505,_item506,_item507,_item508,_item509,_item510,_item511,_item512,_item513,_item514,_item515,_item516,_item517,_item518,_item519,_item520,_item521,_item522,_item523,_item524,_item525,_item526,_item527,_item528,_item529,_item530,_item531,_item532,_item533,_item534,_item535,_item536,_item537,_item538,_item539,_item540,_item541,_item542,_item543,_item544,_item545,_item546,_item547],[]]];};
if (_layer464) then {missionNamespace setVariable ["temp_Canteen #1",[[_item465,_item466,_item467,_item468,_item469,_item470,_item471,_item472,_item473,_item474,_item475,_item476,_item477,_item478,_item479,_item480,_item481,_item482,_item483,_item484,_item485,_item486,_item487,_item488,_item489,_item490,_item491,_item492,_item493,_item494,_item495,_item496,_item497],[]]];};
if (_layer452) then {missionNamespace setVariable ["temp_Armory",[[_item453,_item454,_item455,_item456,_item457,_item458,_item460,_item461,_item463],[]]];};
if (_layer450) then {missionNamespace setVariable ["temp_Base",[[_item451,_item453,_item454,_item455,_item456,_item457,_item458,_item460,_item461,_item463,_item465,_item466,_item467,_item468,_item469,_item470,_item471,_item472,_item473,_item474,_item475,_item476,_item477,_item478,_item479,_item480,_item481,_item482,_item483,_item484,_item485,_item486,_item487,_item488,_item489,_item490,_item491,_item492,_item493,_item494,_item495,_item496,_item497],[]]];};
if (_layer448) then {missionNamespace setVariable ["temp_Repair Station_1",[[_item449],[]]];};
if (_layer446) then {missionNamespace setVariable ["temp_Repair Station",[[_item447,_item449],[]]];};
if (_layer54) then {missionNamespace setVariable ["temp_Checkpoint [BLU]",[[_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item94 && !isNull _item178) then {_item94 moveInDriver _item178;};
if (!isNull _item95 && !isNull _item178) then {_item95 moveInTurret [_item178,[0]];};
if (!isNull _item96 && !isNull _item178) then {_item96 moveInTurret [_item178,[1]];};
if (!isNull _item97 && !isNull _item178) then {_item97 moveInTurret [_item178,[2]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item447) then {
		this = _item447;
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
	if !(isnull _item561) then {
		this = _item561;
		call{arsenals pushBack this};
	};
	if !(isnull _item562) then {
		this = _item562;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item78) then {_item78 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item118) then {_item118 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item119) then {_item119 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item120) then {_item120 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
