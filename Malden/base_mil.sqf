// Export of 'base_mil.Malden' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer1746 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer1500 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer1447 = (_allWhitelisted || {"at range" in _layerWhiteList}) && {!("at range" in _layerBlackList)};
private _layer1415 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer1395 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer1224 = (_allWhitelisted || {"shoothouse" in _layerWhiteList}) && {!("shoothouse" in _layerBlackList)};
private _layer1220 = (_allWhitelisted || {"protection zones" in _layerWhiteList}) && {!("protection zones" in _layerBlackList)};
private _layer1195 = (_allWhitelisted || {"hide terrains" in _layerWhiteList}) && {!("hide terrains" in _layerBlackList)};
private _layer872 = (_allWhitelisted || {"military office" in _layerWhiteList}) && {!("military office" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item1190 = "";
if (_layerRoot) then {
	_item1190 = createMarker ["marker_0",[8167.11,10117.1,0]];
	_this = _item1190;
	_markers pushback _this;
	_markerIDs pushback 1190;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Depot";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item1191 = "";
if (_layerRoot) then {
	_item1191 = createMarker ["marker_1",[8199.22,10173.7,0]];
	_this = _item1191;
	_markers pushback _this;
	_markerIDs pushback 1191;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Service";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item1192 = "";
if (_layerRoot) then {
	_item1192 = createMarker ["marker_2",[8113.37,10083.9,0]];
	_this = _item1192;
	_markers pushback _this;
	_markerIDs pushback 1192;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Medical";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item1193 = "";
if (_layerRoot) then {
	_item1193 = createMarker ["marker_3",[7284.37,10504.1,0]];
	_this = _item1193;
	_markers pushback _this;
	_markerIDs pushback 1193;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Weapon Range";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item1194 = "";
if (_layerRoot) then {
	_item1194 = createMarker ["marker_4",[7495.81,10565,0]];
	_this = _item1194;
	_markers pushback _this;
	_markerIDs pushback 1194;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Shoot House";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item1443 = "";
if (_layerRoot) then {
	_item1443 = createMarker ["fr_at_m1",[7688.93,10854.5,0]];
	_this = _item1443;
	_markers pushback _this;
	_markerIDs pushback 1443;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};

private _item1444 = "";
if (_layerRoot) then {
	_item1444 = createMarker ["fr_at_m2",[7769.46,10812,0]];
	_this = _item1444;
	_markers pushback _this;
	_markerIDs pushback 1444;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};

private _item1445 = "";
if (_layerRoot) then {
	_item1445 = createMarker ["fr_at_m3",[7770.89,10728.4,0]];
	_this = _item1445;
	_markers pushback _this;
	_markerIDs pushback 1445;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};

private _item1446 = "";
if (_layerRoot) then {
	_item1446 = createMarker ["marker_5",[7566.61,10643.6,0]];
	_this = _item1446;
	_markers pushback _this;
	_markerIDs pushback 1446;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "AT Range";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item1454 = "";
if (_layerRoot) then {
	_item1454 = createMarker ["marker_6",[8112.25,10153.2,0]];
	_this = _item1454;
	_markers pushback _this;
	_markerIDs pushback 1454;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Armory";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item1455 = "";
if (_layerRoot) then {
	_item1455 = createMarker ["marker_7",[8131.69,10123.7,0]];
	_this = _item1455;
	_markers pushback _this;
	_markerIDs pushback 1455;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "HQ";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item1516 = "";
if (_layerRoot) then {
	_item1516 = createMarker ["respawn_west",[8110.12,10138.6,0]];
	_this = _item1516;
	_markers pushback _this;
	_markerIDs pushback 1516;
	_this setMarkerType "Empty";
	_this setMarkerShape "ICON";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item1758 = grpNull;
if (_layerRoot) then {
	_item1758 = createGroup west;
	_this = _item1758;
	_groups pushback _this;
	_groupIDs pushback 1758;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item589 = objNull;
if (_layer872) then {
	_item589 = createSimpleObject ["EauDeCombat_01_box_F",[8126.97,10117.2,30.5146]];
	_this = _item589;
	_objects pushback _this;
	_objectIDs pushback 589;
	_this setPosWorld [8126.97,10117.2,30.6236];
	_this setVectorDirAndUp [[-0.670051,-0.742315,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\structures_f_epa\items\vessels\data\eaudecombat_01_box_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item590 = objNull;
if (_layer872) then {
	_item590 = createSimpleObject ["Land_AirConditioner_01_F",[8125.34,10123.6,29.6929]];
	_this = _item590;
	_objects pushback _this;
	_objectIDs pushback 590;
	_this setPosWorld [8125.34,10123.6,30.2235];
	_this setVectorDirAndUp [[-0.0219731,-0.999759,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item596 = objNull;
if (_layer872) then {
	_item596 = createSimpleObject ["Book_02_F",[8128.88,10126,30.5146]];
	_this = _item596;
	_objects pushback _this;
	_objectIDs pushback 596;
	_this setPosWorld [8128.88,10126,30.5202];
	_this setVectorDirAndUp [[-0.839781,0.542925,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item600 = objNull;
if (_layer872) then {
	_item600 = createVehicle ["Land_CampingChair_V2_F",[8138.13,10122.3,0.630207],[],0,"CAN_COLLIDE"];
	_this = _item600;
	_objects pushback _this;
	_objectIDs pushback 600;
	_this setPosWorld [8138.13,10122.3,30.2055];
	_this setVectorDirAndUp [[-0.999789,0.0205531,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item601 = objNull;
if (_layer872) then {
	_item601 = createSimpleObject ["Land_CampingChair_V2_F",[8138.09,10120.3,29.699]];
	_this = _item601;
	_objects pushback _this;
	_objectIDs pushback 601;
	_this setPosWorld [8138.09,10120.3,30.2055];
	_this setVectorDirAndUp [[-0.996336,-0.0855258,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item602 = objNull;
if (_layer872) then {
	_item602 = createVehicle ["Land_CampingChair_V2_F",[8139.52,10110.4,0.658436],[],0,"CAN_COLLIDE"];
	_this = _item602;
	_objects pushback _this;
	_objectIDs pushback 602;
	_this setPosWorld [8139.52,10110.4,30.2055];
	_this setVectorDirAndUp [[0.156326,0.987705,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item603 = objNull;
if (_layer872) then {
	_item603 = createVehicle ["Land_CampingChair_V2_F",[8138.19,10110.5,0.642963],[],0,"CAN_COLLIDE"];
	_this = _item603;
	_objects pushback _this;
	_objectIDs pushback 603;
	_this setPosWorld [8138.19,10110.5,30.2055];
	_this setVectorDirAndUp [[0.0587445,0.998273,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item604 = objNull;
if (_layer872) then {
	_item604 = createVehicle ["Land_CampingChair_V2_F",[8136.94,10110.5,0.621655],[],0,"CAN_COLLIDE"];
	_this = _item604;
	_objects pushback _this;
	_objectIDs pushback 604;
	_this setPosWorld [8136.94,10110.5,30.2055];
	_this setVectorDirAndUp [[-0.202416,0.9793,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item605 = objNull;
if (_layer872) then {
	_item605 = createVehicle ["Land_CampingChair_V2_F",[8139.07,10111.9,0.651623],[],0,"CAN_COLLIDE"];
	_this = _item605;
	_objects pushback _this;
	_objectIDs pushback 605;
	_this setPosWorld [8139.07,10111.9,30.2055];
	_this setVectorDirAndUp [[0.251313,0.967906,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item606 = objNull;
if (_layer872) then {
	_item606 = createVehicle ["Land_CampingChair_V2_F",[8137.45,10112,0.629255],[],0,"CAN_COLLIDE"];
	_this = _item606;
	_objects pushback _this;
	_objectIDs pushback 606;
	_this setPosWorld [8137.45,10112,30.2055];
	_this setVectorDirAndUp [[-0.0939226,0.995579,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item607 = objNull;
if (_layer872) then {
	_item607 = createVehicle ["Land_CampingChair_V2_F",[8136.05,10111.7,0.595562],[],0,"CAN_COLLIDE"];
	_this = _item607;
	_objects pushback _this;
	_objectIDs pushback 607;
	_this setPosWorld [8136.05,10111.7,30.2055];
	_this setVectorDirAndUp [[-0.195331,0.980737,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item608 = objNull;
if (_layer872) then {
	_item608 = createVehicle ["Land_CampingChair_V2_F",[8140.94,10110.1,0.678551],[],0,"CAN_COLLIDE"];
	_this = _item608;
	_objects pushback _this;
	_objectIDs pushback 608;
	_this setPosWorld [8140.94,10110.1,30.2055];
	_this setVectorDirAndUp [[0.326908,0.945056,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item609 = objNull;
if (_layer872) then {
	_item609 = createVehicle ["Land_CampingChair_V2_F",[8135.73,10110.4,0.591686],[],0,"CAN_COLLIDE"];
	_this = _item609;
	_objects pushback _this;
	_objectIDs pushback 609;
	_this setPosWorld [8135.73,10110.4,30.2055];
	_this setVectorDirAndUp [[-0.255805,0.966728,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item610 = objNull;
if (_layer872) then {
	_item610 = createVehicle ["Land_CampingChair_V2_F",[8140.54,10111.6,0.672815],[],0,"CAN_COLLIDE"];
	_this = _item610;
	_objects pushback _this;
	_objectIDs pushback 610;
	_this setPosWorld [8140.54,10111.6,30.2055];
	_this setVectorDirAndUp [[0.413522,0.910494,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item611 = objNull;
if (_layer872) then {
	_item611 = createSimpleObject ["Land_CampingChair_V2_F",[8134.07,10139.2,29.699]];
	_this = _item611;
	_objects pushback _this;
	_objectIDs pushback 611;
	_this setPosWorld [8134.07,10139.2,30.2055];
	_this setVectorDirAndUp [[-0.859608,0.510954,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item613 = objNull;
if (_layer872) then {
	_item613 = createSimpleObject ["Land_CampingChair_V2_F",[8125.57,10120.4,29.699]];
	_this = _item613;
	_objects pushback _this;
	_objectIDs pushback 613;
	_this setPosWorld [8125.57,10120.4,30.2055];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item614 = objNull;
if (_layer872) then {
	_item614 = createSimpleObject ["Land_CampingChair_V2_F",[8125.57,10121.2,29.699]];
	_this = _item614;
	_objects pushback _this;
	_objectIDs pushback 614;
	_this setPosWorld [8125.57,10121.2,30.2055];
	_this setVectorDirAndUp [[0.906991,0.421149,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item615 = objNull;
if (_layer872) then {
	_item615 = createSimpleObject ["Land_CampingChair_V2_F",[8126.36,10120.6,29.699]];
	_this = _item615;
	_objects pushback _this;
	_objectIDs pushback 615;
	_this setPosWorld [8126.36,10120.6,30.2055];
	_this setVectorDirAndUp [[0.945617,-0.325281,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item616 = objNull;
if (_layer872) then {
	_item616 = createSimpleObject ["Land_CampingChair_V2_F",[8126.35,10121.4,29.699]];
	_this = _item616;
	_objects pushback _this;
	_objectIDs pushback 616;
	_this setPosWorld [8126.35,10121.4,30.2055];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item617 = objNull;
if (_layer872) then {
	_item617 = createVehicle ["Land_CampingChair_V2_white_F",[8138.27,10123.5,0.631256],[],0,"CAN_COLLIDE"];
	_this = _item617;
	_objects pushback _this;
	_objectIDs pushback 617;
	_this setPosWorld [8138.27,10123.5,30.2055];
	_this setVectorDirAndUp [[-0.812868,0.582448,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item618 = objNull;
if (_layer872) then {
	_item618 = createVehicle ["Land_CampingChair_V2_white_F",[8140.95,10121.5,0.671412],[],0,"CAN_COLLIDE"];
	_this = _item618;
	_objects pushback _this;
	_objectIDs pushback 618;
	_this setPosWorld [8140.95,10121.5,30.2055];
	_this setVectorDirAndUp [[0.999713,0.0239643,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item619 = objNull;
if (_layer872) then {
	_item619 = createVehicle ["Land_CampingChair_V2_white_F",[8140.87,10123,0.670292],[],0,"CAN_COLLIDE"];
	_this = _item619;
	_objects pushback _this;
	_objectIDs pushback 619;
	_this setPosWorld [8140.87,10123,30.2055];
	_this setVectorDirAndUp [[0.96047,0.278385,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item622 = objNull;
if (_layer872) then {
	_item622 = createSimpleObject ["Land_CampingTable_F",[8141.28,10128.9,29.699]];
	_this = _item622;
	_objects pushback _this;
	_objectIDs pushback 622;
	_this setPosWorld [8141.28,10128.9,30.1106];
	_this setVectorDirAndUp [[0.0269557,0.999637,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item623 = objNull;
if (_layer872) then {
	_item623 = createSimpleObject ["Land_CampingTable_F",[8138.28,10125.6,29.699]];
	_this = _item623;
	_objects pushback _this;
	_objectIDs pushback 623;
	_this setPosWorld [8138.28,10125.6,30.1106];
	_this setVectorDirAndUp [[0.0269557,0.999637,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item624 = objNull;
if (_layer872) then {
	_item624 = createSimpleObject ["Land_CampingTable_F",[8129.42,10139.7,29.699]];
	_this = _item624;
	_objects pushback _this;
	_objectIDs pushback 624;
	_this setPosWorld [8129.42,10139.7,30.1106];
	_this setVectorDirAndUp [[-0.0187508,-0.999824,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item626 = objNull;
if (_layer872) then {
	_item626 = createSimpleObject ["Land_CampingTable_F",[8126.56,10131.3,29.699]];
	_this = _item626;
	_objects pushback _this;
	_objectIDs pushback 626;
	_this setPosWorld [8126.56,10131.3,30.1106];
	_this setVectorDirAndUp [[-0.999833,0.0182676,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item627 = objNull;
if (_layer872) then {
	_item627 = createSimpleObject ["Land_CampingTable_F",[8126.02,10132.7,29.699]];
	_this = _item627;
	_objects pushback _this;
	_objectIDs pushback 627;
	_this setPosWorld [8126.02,10132.7,30.1106];
	_this setVectorDirAndUp [[0.0253388,0.999679,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item628 = objNull;
if (_layer872) then {
	_item628 = createSimpleObject ["Land_CampingTable_F",[8140.21,10131.6,29.699]];
	_this = _item628;
	_objects pushback _this;
	_objectIDs pushback 628;
	_this setPosWorld [8140.21,10131.6,30.1106];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item629 = objNull;
if (_layer872) then {
	_item629 = createSimpleObject ["Land_CampingTable_F",[8139.39,10131.6,29.699]];
	_this = _item629;
	_objects pushback _this;
	_objectIDs pushback 629;
	_this setPosWorld [8139.39,10131.6,30.1106];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item630 = objNull;
if (_layer872) then {
	_item630 = createSimpleObject ["Land_CampingTable_F",[8128.69,10125.3,29.699]];
	_this = _item630;
	_objects pushback _this;
	_objectIDs pushback 630;
	_this setPosWorld [8128.69,10125.3,30.1106];
	_this setVectorDirAndUp [[0.999927,-0.0120743,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item631 = objNull;
if (_layer872) then {
	_item631 = createSimpleObject ["Land_CampingTable_F",[8126.29,10125.4,29.699]];
	_this = _item631;
	_objects pushback _this;
	_objectIDs pushback 631;
	_this setPosWorld [8126.29,10125.4,30.1106];
	_this setVectorDirAndUp [[-0.999832,0.0183162,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item633 = objNull;
if (_layer872) then {
	_item633 = createSimpleObject ["Land_CampingTable_small_white_F",[8138.24,10108.1,29.699]];
	_this = _item633;
	_objects pushback _this;
	_objectIDs pushback 633;
	_this setPosWorld [8138.24,10108.1,30.1042];
	_this setVectorDirAndUp [[0.0261239,0.999659,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item634 = objNull;
if (_layer872) then {
	_item634 = createSimpleObject ["Land_CampingTable_small_white_F",[8142.1,10136.8,29.699]];
	_this = _item634;
	_objects pushback _this;
	_objectIDs pushback 634;
	_this setPosWorld [8142.1,10136.8,30.1042];
	_this setVectorDirAndUp [[-0.999808,0.019592,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item635 = objNull;
if (_layer872) then {
	_item635 = createSimpleObject ["Land_CampingTable_white_F",[8139.88,10120.7,29.699]];
	_this = _item635;
	_objects pushback _this;
	_objectIDs pushback 635;
	_this setPosWorld [8139.88,10120.7,30.1106];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item636 = objNull;
if (_layer872) then {
	_item636 = createSimpleObject ["Land_CampingTable_white_F",[8139.92,10122.7,29.699]];
	_this = _item636;
	_objects pushback _this;
	_objectIDs pushback 636;
	_this setPosWorld [8139.92,10122.7,30.1106];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item637 = objNull;
if (_layer872) then {
	_item637 = createSimpleObject ["Land_CampingTable_white_F",[8139.08,10120.7,29.699]];
	_this = _item637;
	_objects pushback _this;
	_objectIDs pushback 637;
	_this setPosWorld [8139.08,10120.7,30.1106];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item638 = objNull;
if (_layer872) then {
	_item638 = createSimpleObject ["Land_CampingTable_white_F",[8139.11,10122.7,29.699]];
	_this = _item638;
	_objects pushback _this;
	_objectIDs pushback 638;
	_this setPosWorld [8139.11,10122.7,30.1106];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item639 = objNull;
if (_layer872) then {
	_item639 = createSimpleObject ["Land_CampingTable_white_F",[8127.16,10117,29.699]];
	_this = _item639;
	_objects pushback _this;
	_objectIDs pushback 639;
	_this setPosWorld [8127.16,10117,30.1106];
	_this setVectorDirAndUp [[-0.0490724,-0.998795,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item640 = objNull;
if (_layer872) then {
	_item640 = createSimpleObject ["Land_Can_V2_F",[8140.19,10123.2,30.5146]];
	_this = _item640;
	_objects pushback _this;
	_objectIDs pushback 640;
	_this setPosWorld [8140.19,10123.2,30.5556];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item641 = objNull;
if (_layer872) then {
	_item641 = createSimpleObject ["Land_Can_V2_F",[8140.18,10131.9,30.5146]];
	_this = _item641;
	_objects pushback _this;
	_objectIDs pushback 641;
	_this setPosWorld [8140.18,10131.9,30.5556];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item642 = objNull;
if (_layer872) then {
	_item642 = createSimpleObject ["Land_Can_V3_F",[8139.47,10120,30.5146]];
	_this = _item642;
	_objects pushback _this;
	_objectIDs pushback 642;
	_this setPosWorld [8139.47,10120,30.5556];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item643 = objNull;
if (_layer872) then {
	_item643 = createSimpleObject ["Land_Can_V3_F",[8126.43,10131,30.5146]];
	_this = _item643;
	_objects pushback _this;
	_objectIDs pushback 643;
	_this setPosWorld [8126.43,10131,30.5556];
	_this setVectorDirAndUp [[-0.514517,0.85748,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item644 = objNull;
if (_layer872) then {
	_item644 = createSimpleObject ["Land_Can_V3_F",[8126.4,10131.1,30.5146]];
	_this = _item644;
	_objects pushback _this;
	_objectIDs pushback 644;
	_this setPosWorld [8126.4,10131.1,30.5556];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item645 = objNull;
if (_layer872) then {
	_item645 = createSimpleObject ["Land_Can_Rusty_F",[8126.35,10125.6,30.5146]];
	_this = _item645;
	_objects pushback _this;
	_objectIDs pushback 645;
	_this setPosWorld [8126.35,10125.6,30.5546];
	_this setVectorDirAndUp [[0.652762,-0.757563,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item647 = objNull;
if (_layer872) then {
	_item647 = createSimpleObject ["Land_Canteen_F",[8128.48,10125.4,30.5146]];
	_this = _item647;
	_objects pushback _this;
	_objectIDs pushback 647;
	_this setPosWorld [8128.48,10125.4,30.6449];
	_this setVectorDirAndUp [[-0.742842,0.669467,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item649 = objNull;
if (_layer872) then {
	_item649 = createSimpleObject ["Land_PaperBox_01_small_closed_brown_food_F",[8125.4,10134.7,29.699]];
	_this = _item649;
	_objects pushback _this;
	_objectIDs pushback 649;
	_this setPosWorld [8125.4,10134.7,29.906];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item650 = objNull;
if (_layer872) then {
	_item650 = createSimpleObject ["Land_PaperBox_01_small_closed_brown_food_F",[8125.51,10135.5,29.699]];
	_this = _item650;
	_objects pushback _this;
	_objectIDs pushback 650;
	_this setPosWorld [8125.51,10135.5,29.906];
	_this setVectorDirAndUp [[0.93056,-0.366138,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item651 = objNull;
if (_layer872) then {
	_item651 = createSimpleObject ["Land_PaperBox_01_small_closed_brown_food_F",[8125.49,10135.1,30.112]];
	_this = _item651;
	_objects pushback _this;
	_objectIDs pushback 651;
	_this setPosWorld [8125.49,10135.1,30.319];
	_this setVectorDirAndUp [[0.982517,-0.186175,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item652 = objNull;
if (_layer872) then {
	_item652 = createSimpleObject ["Land_Compass_F",[8128.73,10124.6,30.5146]];
	_this = _item652;
	_objects pushback _this;
	_objectIDs pushback 652;
	_this setPosWorld [8128.73,10124.6,30.5199];
	_this setVectorDirAndUp [[0.997168,-0.0752097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item658 = objNull;
if (_layer872) then {
	_item658 = createSimpleObject ["Land_File1_F",[8139.64,10139.7,30.5184]];
	_this = _item658;
	_objects pushback _this;
	_objectIDs pushback 658;
	_this setPosWorld [8139.64,10139.7,30.5271];
	_this setVectorDirAndUp [[0.0318831,0.999492,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item659 = objNull;
if (_layer872) then {
	_item659 = createSimpleObject ["Land_FilePhotos_F",[8140.62,10139.7,30.8683]];
	_this = _item659;
	_objects pushback _this;
	_objectIDs pushback 659;
	_this setPosWorld [8140.62,10139.7,30.8763];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item661 = objNull;
if (_layer872) then {
	_item661 = createSimpleObject ["Land_FlowerPot_01_Flower_F",[8131.09,10139.6,29.699]];
	_this = _item661;
	_objects pushback _this;
	_objectIDs pushback 661;
	_this setPosWorld [8131.09,10139.6,30.5001];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item662 = objNull;
if (_layer872) then {
	_item662 = createSimpleObject ["Land_FlowerPot_01_Flower_F",[8141.98,10133.2,29.699]];
	_this = _item662;
	_objects pushback _this;
	_objectIDs pushback 662;
	_this setPosWorld [8141.98,10133.2,30.5001];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item663 = objNull;
if (_layer872) then {
	_item663 = createSimpleObject ["Land_FlowerPot_01_Flower_F",[8125.2,10116.9,29.699]];
	_this = _item663;
	_objects pushback _this;
	_objectIDs pushback 663;
	_this setPosWorld [8125.2,10116.9,30.5001];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item664 = objNull;
if (_layer872) then {
	_item664 = createSimpleObject ["Land_FMradio_F",[8127.25,10117.2,30.5146]];
	_this = _item664;
	_objects pushback _this;
	_objectIDs pushback 664;
	_this setPosWorld [8127.25,10117.2,30.5872];
	_this setVectorDirAndUp [[0.0469569,0.998897,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item674 = objNull;
if (_layer872) then {
	_item674 = createSimpleObject ["Land_FoodContainer_01_F",[8140.1,10136.6,29.699]];
	_this = _item674;
	_objects pushback _this;
	_objectIDs pushback 674;
	_this setPosWorld [8140.1,10136.6,29.9268];
	_this setVectorDirAndUp [[0.804535,-0.593905,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item675 = objNull;
if (_layer872) then {
	_item675 = createSimpleObject ["Land_FoodContainer_01_White_F",[8142.3,10139.6,29.699]];
	_this = _item675;
	_objects pushback _this;
	_objectIDs pushback 675;
	_this setPosWorld [8142.3,10139.6,29.9268];
	_this setVectorDirAndUp [[-0.999059,0.0433671,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item676 = objNull;
if (_layer872) then {
	_item676 = createSimpleObject ["Land_FoodContainer_01_White_F",[8142.09,10129.8,29.699]];
	_this = _item676;
	_objects pushback _this;
	_objectIDs pushback 676;
	_this setPosWorld [8142.09,10129.8,29.9268];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item677 = objNull;
if (_layer872) then {
	_item677 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8125.54,10133.8,29.699]];
	_this = _item677;
	_objects pushback _this;
	_objectIDs pushback 677;
	_this setPosWorld [8125.54,10133.8,29.9155];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item678 = objNull;
if (_layer872) then {
	_item678 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8125.49,10133.8,30.0922]];
	_this = _item678;
	_objects pushback _this;
	_objectIDs pushback 678;
	_this setPosWorld [8125.49,10133.8,30.3087];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item679 = objNull;
if (_layer872) then {
	_item679 = createSimpleObject ["Land_HDMICable_01_F",[8139.3,10120.5,30.5146]];
	_this = _item679;
	_objects pushback _this;
	_objectIDs pushback 679;
	_this setPosWorld [8139.3,10120.5,30.5197];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item680 = objNull;
if (_layer872) then {
	_item680 = createSimpleObject ["Land_HDMICable_01_F",[8139.98,10131.9,30.5146]];
	_this = _item680;
	_objects pushback _this;
	_objectIDs pushback 680;
	_this setPosWorld [8139.98,10131.9,30.5197];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item681 = objNull;
if (_layer872) then {
	_item681 = createSimpleObject ["Land_HDMICable_01_F",[8126.97,10116.8,30.5146]];
	_this = _item681;
	_objects pushback _this;
	_objectIDs pushback 681;
	_this setPosWorld [8126.97,10116.8,30.5197];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item684 = objNull;
if (_layer872) then {
	_item684 = createSimpleObject ["Land_Laptop_device_F",[8139.92,10120.1,30.5142]];
	_this = _item684;
	_objects pushback _this;
	_objectIDs pushback 684;
	_this setPosWorld [8139.92,10120.1,30.6703];
	_this setVectorDirAndUp [[0.35385,-0.935302,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item685 = objNull;
if (_layer872) then {
	_item685 = createVehicle ["Land_Leaflet_04_F",[8127.35,10112.4,1.73594],[],0,"CAN_COLLIDE"];
	_this = _item685;
	_objects pushback _this;
	_objectIDs pushback 685;
	_this setPosWorld [8127.35,10112.4,31.0626];
	_this setVectorDirAndUp [[0.0248621,0.999691,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item686 = objNull;
if (_layer872) then {
	_item686 = createSimpleObject ["Leaflet_05_Stack_F",[8127.48,10117.1,30.5146]];
	_this = _item686;
	_objects pushback _this;
	_objectIDs pushback 686;
	_this setPosWorld [8127.48,10117.1,30.5904];
	_this setVectorDirAndUp [[0.965151,-0.261692,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\weapons_f_orange\ammo\data\leaflet_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item687 = objNull;
if (_layer872) then {
	_item687 = createSimpleObject ["Leaflet_05_Stack_F",[8142.37,10136.5,30.512]];
	_this = _item687;
	_objects pushback _this;
	_objectIDs pushback 687;
	_this setPosWorld [8142.37,10136.5,30.5878];
	_this setVectorDirAndUp [[-0.999514,0.0311782,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\weapons_f_orange\ammo\data\leaflet_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item692 = objNull;
if (_layer872) then {
	_item692 = createSimpleObject ["Land_MobilePhone_smart_F",[8139.55,10131.4,30.5146]];
	_this = _item692;
	_objects pushback _this;
	_objectIDs pushback 692;
	_this setPosWorld [8139.55,10131.4,30.5191];
	_this setVectorDirAndUp [[0.925368,0.379069,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\structures_f\items\electronics\data\electronics_screens_mobilephone_smart_co.paa"];
};

private _item694 = objNull;
if (_layer872) then {
	_item694 = createSimpleObject ["Newspaper_01_F",[8139.51,10129.8,30.5197]];
	_this = _item694;
	_objects pushback _this;
	_objectIDs pushback 694;
	_this setPosWorld [8139.51,10129.8,30.5316];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item695 = objNull;
if (_layer872) then {
	_item695 = createSimpleObject ["Newspaper_01_F",[8127.85,10117,30.5146]];
	_this = _item695;
	_objects pushback _this;
	_objectIDs pushback 695;
	_this setPosWorld [8127.85,10117,30.5265];
	_this setVectorDirAndUp [[0.98742,0.158121,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item697 = objNull;
if (_layer872) then {
	_item697 = createSimpleObject ["Land_Notepad_F",[8125.89,10132.5,30.5146]];
	_this = _item697;
	_objects pushback _this;
	_objectIDs pushback 697;
	_this setPosWorld [8125.89,10132.5,30.5257];
	_this setVectorDirAndUp [[-0.985503,0.169656,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item699 = objNull;
if (_layer872) then {
	_item699 = createSimpleObject ["Land_Notepad_F",[8128.6,10125.5,30.5146]];
	_this = _item699;
	_objects pushback _this;
	_objectIDs pushback 699;
	_this setPosWorld [8128.6,10125.5,30.5257];
	_this setVectorDirAndUp [[-0.301001,-0.953624,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item701 = objNull;
if (_layer872) then {
	_item701 = createSimpleObject ["Land_OfficeCabinet_01_F",[8140.12,10125.4,29.699]];
	_this = _item701;
	_objects pushback _this;
	_objectIDs pushback 701;
	_this setPosWorld [8140.12,10125.4,30.4795];
	_this setVectorDirAndUp [[-0.0351055,-0.999384,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item702 = objNull;
if (_layer872) then {
	_item702 = createSimpleObject ["Land_OfficeCabinet_01_F",[8130.03,10130.7,29.699]];
	_this = _item702;
	_objects pushback _this;
	_objectIDs pushback 702;
	_this setPosWorld [8130.03,10130.7,30.4795];
	_this setVectorDirAndUp [[0.999672,-0.0255916,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item703 = objNull;
if (_layer872) then {
	_item703 = createSimpleObject ["Land_OfficeCabinet_01_F",[8140.29,10129.8,29.699]];
	_this = _item703;
	_objects pushback _this;
	_objectIDs pushback 703;
	_this setPosWorld [8140.29,10129.8,30.4795];
	_this setVectorDirAndUp [[-0.0132546,-0.999912,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item704 = objNull;
if (_layer872) then {
	_item704 = createSimpleObject ["Land_OfficeCabinet_01_F",[8127.47,10124.6,29.699]];
	_this = _item704;
	_objects pushback _this;
	_objectIDs pushback 704;
	_this setPosWorld [8127.47,10124.6,30.4795];
	_this setVectorDirAndUp [[-0.0237946,-0.999717,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item705 = objNull;
if (_layer872) then {
	_item705 = createSimpleObject ["Land_OfficeCabinet_02_F",[8130.05,10131.5,29.699]];
	_this = _item705;
	_objects pushback _this;
	_objectIDs pushback 705;
	_this setPosWorld [8130.05,10131.5,30.4795];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item706 = objNull;
if (_layer872) then {
	_item706 = createSimpleObject ["Land_OfficeCabinet_02_F",[8139.44,10139.7,29.699]];
	_this = _item706;
	_objects pushback _this;
	_objectIDs pushback 706;
	_this setPosWorld [8139.44,10139.7,30.4795];
	_this setVectorDirAndUp [[0.013588,0.999908,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item707 = objNull;
if (_layer872) then {
	_item707 = createSimpleObject ["Land_OfficeCabinet_02_F",[8140.86,10139.7,29.699]];
	_this = _item707;
	_objects pushback _this;
	_objectIDs pushback 707;
	_this setPosWorld [8140.86,10139.7,30.4795];
	_this setVectorDirAndUp [[0.0183973,0.999831,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item708 = objNull;
if (_layer872) then {
	_item708 = createSimpleObject ["Land_OfficeCabinet_02_F",[8139.32,10129.9,29.699]];
	_this = _item708;
	_objects pushback _this;
	_objectIDs pushback 708;
	_this setPosWorld [8139.32,10129.9,30.4795];
	_this setVectorDirAndUp [[-0.0259235,-0.999664,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item709 = objNull;
if (_layer872) then {
	_item709 = createVehicle ["Land_OfficeChair_01_F",[8140.37,10119.2,0.664963],[],0,"CAN_COLLIDE"];
	_this = _item709;
	_objects pushback _this;
	_objectIDs pushback 709;
	_this setPosWorld [8140.37,10119.2,30.3734];
	_this setVectorDirAndUp [[0.745711,-0.66627,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item710 = objNull;
if (_layer872) then {
	_item710 = createSimpleObject ["Land_OfficeChair_01_F",[8125.51,10131.6,29.699]];
	_this = _item710;
	_objects pushback _this;
	_objectIDs pushback 710;
	_this setPosWorld [8125.51,10131.6,30.3734];
	_this setVectorDirAndUp [[-0.996745,-0.0806133,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item711 = objNull;
if (_layer872) then {
	_item711 = createSimpleObject ["Land_OfficeChair_01_F",[8136.03,10138.3,29.699]];
	_this = _item711;
	_objects pushback _this;
	_objectIDs pushback 711;
	_this setPosWorld [8136.03,10138.3,30.3734];
	_this setVectorDirAndUp [[0.977726,0.209885,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item712 = objNull;
if (_layer872) then {
	_item712 = createSimpleObject ["Land_OfficeChair_01_F",[8125.33,10125.2,29.699]];
	_this = _item712;
	_objects pushback _this;
	_objectIDs pushback 712;
	_this setPosWorld [8125.33,10125.2,30.3734];
	_this setVectorDirAndUp [[-0.968914,-0.247398,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item873 = objNull;
if (_layer872) then {
	_item873 = createSimpleObject ["Land_OfficeChair_01_F",[8138.44,10131.9,29.6781]];
	_this = _item873;
	_objects pushback _this;
	_objectIDs pushback 873;
	_this setPosWorld [8138.44,10131.9,30.3525];
	_this setVectorDirAndUp [[-0.996745,-0.0806133,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item874 = objNull;
if (_layer872) then {
	_item874 = createSimpleObject ["Land_OfficeChair_01_F",[8141.42,10131.9,29.6752]];
	_this = _item874;
	_objects pushback _this;
	_objectIDs pushback 874;
	_this setPosWorld [8141.42,10131.9,30.3496];
	_this setVectorDirAndUp [[0.991702,-0.128554,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item875 = objNull;
if (_layer872) then {
	_item875 = createVehicle ["Land_OfficeChair_01_F",[8129.53,10125.2,0.395102],[],0,"CAN_COLLIDE"];
	_this = _item875;
	_objects pushback _this;
	_objectIDs pushback 875;
	_this setPosWorld [8129.53,10125.2,30.36];
	_this setVectorDirAndUp [[0.989427,-0.14503,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item876 = objNull;
if (_layer872) then {
	_item876 = createSimpleObject ["Land_OfficeChair_01_F",[8138.46,10126.7,29.6778]];
	_this = _item876;
	_objects pushback _this;
	_objectIDs pushback 876;
	_this setPosWorld [8138.46,10126.7,30.3522];
	_this setVectorDirAndUp [[0.596063,0.802938,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item877 = objNull;
if (_layer872) then {
	_item877 = createSimpleObject ["Land_OfficeChair_01_F",[8141.36,10127.8,29.5902]];
	_this = _item877;
	_objects pushback _this;
	_objectIDs pushback 877;
	_this setPosWorld [8141.36,10127.8,30.2646];
	_this setVectorDirAndUp [[0.0851193,-0.996371,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item713 = objNull;
if (_layer872) then {
	_item713 = createSimpleObject ["Land_Orange_01_F",[8139.58,10123.5,30.5146]];
	_this = _item713;
	_objects pushback _this;
	_objectIDs pushback 713;
	_this setPosWorld [8139.58,10123.5,30.5558];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item714 = objNull;
if (_layer872) then {
	_item714 = createSimpleObject ["Land_Orange_01_F",[8134.97,10138.9,30.5859]];
	_this = _item714;
	_objects pushback _this;
	_objectIDs pushback 714;
	_this setPosWorld [8134.97,10138.9,30.6271];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item715 = objNull;
if (_layer872) then {
	_item715 = createSimpleObject ["Land_PCSet_01_case_F",[8142.04,10128.8,29.699]];
	_this = _item715;
	_objects pushback _this;
	_objectIDs pushback 715;
	_this setPosWorld [8142.04,10128.8,29.9561];
	_this setVectorDirAndUp [[0.0239221,0.999714,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item716 = objNull;
if (_layer872) then {
	_item716 = createSimpleObject ["Land_PCSet_01_case_F",[8137.51,10125.5,29.699]];
	_this = _item716;
	_objects pushback _this;
	_objectIDs pushback 716;
	_this setPosWorld [8137.51,10125.5,29.9561];
	_this setVectorDirAndUp [[-0.182518,-0.983203,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item717 = objNull;
if (_layer872) then {
	_item717 = createSimpleObject ["Land_PCSet_01_case_F",[8126.49,10130.6,30.5146]];
	_this = _item717;
	_objects pushback _this;
	_objectIDs pushback 717;
	_this setPosWorld [8126.49,10130.6,30.7717];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item718 = objNull;
if (_layer872) then {
	_item718 = createSimpleObject ["Land_PCSet_01_case_F",[8139.44,10130.9,29.699]];
	_this = _item718;
	_objects pushback _this;
	_objectIDs pushback 718;
	_this setPosWorld [8139.44,10130.9,29.9561];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item719 = objNull;
if (_layer872) then {
	_item719 = createSimpleObject ["Land_PCSet_01_case_F",[8140.17,10132.3,29.699]];
	_this = _item719;
	_objects pushback _this;
	_objectIDs pushback 719;
	_this setPosWorld [8140.17,10132.3,29.9561];
	_this setVectorDirAndUp [[-0.999858,0.0168249,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item720 = objNull;
if (_layer872) then {
	_item720 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8141.25,10128.7,30.5146]];
	_this = _item720;
	_objects pushback _this;
	_objectIDs pushback 720;
	_this setPosWorld [8141.25,10128.7,30.5225];
	_this setVectorDirAndUp [[-0.040487,0.99918,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item721 = objNull;
if (_layer872) then {
	_item721 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8138.41,10125.8,30.5146]];
	_this = _item721;
	_objects pushback _this;
	_objectIDs pushback 721;
	_this setPosWorld [8138.41,10125.8,30.5225];
	_this setVectorDirAndUp [[-0.0372389,-0.999306,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item722 = objNull;
if (_layer872) then {
	_item722 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8126.34,10131.9,30.5146]];
	_this = _item722;
	_objects pushback _this;
	_objectIDs pushback 722;
	_this setPosWorld [8126.34,10131.9,30.5225];
	_this setVectorDirAndUp [[0.999908,-0.0135629,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item723 = objNull;
if (_layer872) then {
	_item723 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8135.14,10138.1,30.5952]];
	_this = _item723;
	_objects pushback _this;
	_objectIDs pushback 723;
	_this setPosWorld [8135.14,10138.1,30.6031];
	_this setVectorDirAndUp [[-0.99596,0.0897999,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item724 = objNull;
if (_layer872) then {
	_item724 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8140.41,10131.4,30.5146]];
	_this = _item724;
	_objects pushback _this;
	_objectIDs pushback 724;
	_this setPosWorld [8140.41,10131.4,30.5225];
	_this setVectorDirAndUp [[-0.999727,0.0233639,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item725 = objNull;
if (_layer872) then {
	_item725 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8139.3,10131.8,30.5146]];
	_this = _item725;
	_objects pushback _this;
	_objectIDs pushback 725;
	_this setPosWorld [8139.3,10131.8,30.5225];
	_this setVectorDirAndUp [[0.919427,-0.393261,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item726 = objNull;
if (_layer872) then {
	_item726 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8128.93,10125,30.5146]];
	_this = _item726;
	_objects pushback _this;
	_objectIDs pushback 726;
	_this setPosWorld [8128.93,10125,30.5225];
	_this setVectorDirAndUp [[-0.999985,0.00556181,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item727 = objNull;
if (_layer872) then {
	_item727 = createSimpleObject ["Land_PCSet_01_keyboard_F",[8126.15,10125.2,30.5128]];
	_this = _item727;
	_objects pushback _this;
	_objectIDs pushback 727;
	_this setPosWorld [8126.15,10125.2,30.5208];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item728 = objNull;
if (_layer872) then {
	_item728 = createSimpleObject ["Land_PCSet_01_mousepad_F",[8141.66,10128.7,30.5146]];
	_this = _item728;
	_objects pushback _this;
	_objectIDs pushback 728;
	_this setPosWorld [8141.66,10128.7,30.5182];
	_this setVectorDirAndUp [[-0.0387303,-0.99925,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item729 = objNull;
if (_layer872) then {
	_item729 = createSimpleObject ["Land_PCSet_01_mousepad_F",[8126.35,10131.5,30.5146]];
	_this = _item729;
	_objects pushback _this;
	_objectIDs pushback 729;
	_this setPosWorld [8126.35,10131.5,30.5182];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item730 = objNull;
if (_layer872) then {
	_item730 = createSimpleObject ["Land_PCSet_01_mousepad_F",[8140.41,10131.9,30.5146]];
	_this = _item730;
	_objects pushback _this;
	_objectIDs pushback 730;
	_this setPosWorld [8140.41,10131.9,30.5182];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item731 = objNull;
if (_layer872) then {
	_item731 = createSimpleObject ["Land_PCSet_01_mousepad_F",[8139.22,10131.3,30.5146]];
	_this = _item731;
	_objects pushback _this;
	_objectIDs pushback 731;
	_this setPosWorld [8139.22,10131.3,30.5182];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item732 = objNull;
if (_layer872) then {
	_item732 = createSimpleObject ["Land_PCSet_01_mousepad_F",[8126.14,10125.6,30.5146]];
	_this = _item732;
	_objects pushback _this;
	_objectIDs pushback 732;
	_this setPosWorld [8126.14,10125.6,30.5182];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item733 = objNull;
if (_layer872) then {
	_item733 = createSimpleObject ["Land_PCSet_01_mousepad_IDAP_F",[8137.93,10125.8,30.5146]];
	_this = _item733;
	_objects pushback _this;
	_objectIDs pushback 733;
	_this setPosWorld [8137.93,10125.8,30.5182];
	_this setVectorDirAndUp [[-0.00966519,-0.999953,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item734 = objNull;
if (_layer872) then {
	_item734 = createSimpleObject ["Land_PCSet_01_mousepad_IDAP_F",[8135.15,10138.5,30.5952]];
	_this = _item734;
	_objects pushback _this;
	_objectIDs pushback 734;
	_this setPosWorld [8135.15,10138.5,30.5988];
	_this setVectorDirAndUp [[-0.999432,0.033686,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item735 = objNull;
if (_layer872) then {
	_item735 = createSimpleObject ["Land_PCSet_01_mousepad_IDAP_F",[8128.89,10125.4,30.5146]];
	_this = _item735;
	_objects pushback _this;
	_objectIDs pushback 735;
	_this setPosWorld [8128.89,10125.4,30.5182];
	_this setVectorDirAndUp [[-0.999883,0.0152639,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item736 = objNull;
if (_layer872) then {
	_item736 = createSimpleObject ["Land_PCSet_01_mouse_F",[8141.64,10128.7,30.5216]];
	_this = _item736;
	_objects pushback _this;
	_objectIDs pushback 736;
	_this setPosWorld [8141.64,10128.7,30.5468];
	_this setVectorDirAndUp [[-0.510608,0.859814,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item737 = objNull;
if (_layer872) then {
	_item737 = createSimpleObject ["Land_PCSet_01_mouse_F",[8137.93,10125.8,30.5219]];
	_this = _item737;
	_objects pushback _this;
	_objectIDs pushback 737;
	_this setPosWorld [8137.93,10125.8,30.5471];
	_this setVectorDirAndUp [[-0.470691,-0.882298,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item738 = objNull;
if (_layer872) then {
	_item738 = createSimpleObject ["Land_PCSet_01_mouse_F",[8126.31,10131.5,30.5219]];
	_this = _item738;
	_objects pushback _this;
	_objectIDs pushback 738;
	_this setPosWorld [8126.31,10131.5,30.5471];
	_this setVectorDirAndUp [[0.936141,0.351623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item739 = objNull;
if (_layer872) then {
	_item739 = createSimpleObject ["Land_PCSet_01_mouse_F",[8135.13,10138.5,30.6025]];
	_this = _item739;
	_objects pushback _this;
	_objectIDs pushback 739;
	_this setPosWorld [8135.13,10138.5,30.6277];
	_this setVectorDirAndUp [[-0.933145,-0.359499,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item740 = objNull;
if (_layer872) then {
	_item740 = createSimpleObject ["Land_PCSet_01_mouse_F",[8140.44,10131.9,30.5219]];
	_this = _item740;
	_objects pushback _this;
	_objectIDs pushback 740;
	_this setPosWorld [8140.44,10131.9,30.5471];
	_this setVectorDirAndUp [[-0.929061,-0.369927,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item741 = objNull;
if (_layer872) then {
	_item741 = createSimpleObject ["Land_PCSet_01_mouse_F",[8139.19,10131.4,30.5219]];
	_this = _item741;
	_objects pushback _this;
	_objectIDs pushback 741;
	_this setPosWorld [8139.19,10131.4,30.5471];
	_this setVectorDirAndUp [[0.922123,-0.386896,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item742 = objNull;
if (_layer872) then {
	_item742 = createSimpleObject ["Land_PCSet_01_mouse_F",[8128.87,10125.4,30.5219]];
	_this = _item742;
	_objects pushback _this;
	_objectIDs pushback 742;
	_this setPosWorld [8128.87,10125.4,30.5471];
	_this setVectorDirAndUp [[-0.936046,-0.351878,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item743 = objNull;
if (_layer872) then {
	_item743 = createSimpleObject ["Land_PCSet_01_mouse_F",[8126.15,10125.6,30.5219]];
	_this = _item743;
	_objects pushback _this;
	_objectIDs pushback 743;
	_this setPosWorld [8126.15,10125.6,30.5471];
	_this setVectorDirAndUp [[0.83135,-0.555749,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item744 = objNull;
if (_layer872) then {
	_item744 = createSimpleObject ["Land_PCSet_01_screen_F",[8141.45,10129,30.515]];
	_this = _item744;
	_objects pushback _this;
	_objectIDs pushback 744;
	_this setPosWorld [8141.45,10129,30.7697];
	_this setVectorDirAndUp [[0.00809185,0.999967,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item745 = objNull;
if (_layer872) then {
	_item745 = createSimpleObject ["Land_PCSet_01_screen_F",[8140.9,10128.9,30.515]];
	_this = _item745;
	_objects pushback _this;
	_objectIDs pushback 745;
	_this setPosWorld [8140.9,10128.9,30.7697];
	_this setVectorDirAndUp [[-0.465574,0.885009,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item746 = objNull;
if (_layer872) then {
	_item746 = createSimpleObject ["Land_PCSet_01_screen_F",[8138.69,10125.5,30.5146]];
	_this = _item746;
	_objects pushback _this;
	_objectIDs pushback 746;
	_this setPosWorld [8138.69,10125.5,30.7693];
	_this setVectorDirAndUp [[0.311505,-0.950245,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item747 = objNull;
if (_layer872) then {
	_item747 = createSimpleObject ["Land_PCSet_01_screen_F",[8126.46,10132.3,30.5146]];
	_this = _item747;
	_objects pushback _this;
	_objectIDs pushback 747;
	_this setPosWorld [8126.46,10132.3,30.7693];
	_this setVectorDirAndUp [[0.672547,0.740054,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item748 = objNull;
if (_layer872) then {
	_item748 = createSimpleObject ["Land_PCSet_01_screen_F",[8126.58,10131.3,30.5146]];
	_this = _item748;
	_objects pushback _this;
	_objectIDs pushback 748;
	_this setPosWorld [8126.58,10131.3,30.7693];
	_this setVectorDirAndUp [[0.941165,-0.337947,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item749 = objNull;
if (_layer872) then {
	_item749 = createSimpleObject ["Land_PCSet_01_screen_F",[8135.04,10137.7,30.5859]];
	_this = _item749;
	_objects pushback _this;
	_objectIDs pushback 749;
	_this setPosWorld [8135.04,10137.7,30.8406];
	_this setVectorDirAndUp [[-0.845807,-0.533488,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item750 = objNull;
if (_layer872) then {
	_item750 = createSimpleObject ["Land_PCSet_01_screen_F",[8140.09,10131.6,30.5146]];
	_this = _item750;
	_objects pushback _this;
	_objectIDs pushback 750;
	_this setPosWorld [8140.09,10131.6,30.7693];
	_this setVectorDirAndUp [[-0.999675,0.0254947,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item751 = objNull;
if (_layer872) then {
	_item751 = createSimpleObject ["Land_PCSet_01_screen_F",[8140.26,10131.1,30.5146]];
	_this = _item751;
	_objects pushback _this;
	_objectIDs pushback 751;
	_this setPosWorld [8140.26,10131.1,30.7693];
	_this setVectorDirAndUp [[-0.806622,-0.591067,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item752 = objNull;
if (_layer872) then {
	_item752 = createSimpleObject ["Land_PCSet_01_screen_F",[8139.64,10131.7,30.5146]];
	_this = _item752;
	_objects pushback _this;
	_objectIDs pushback 752;
	_this setPosWorld [8139.64,10131.7,30.7693];
	_this setVectorDirAndUp [[0.999753,-0.0222032,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item753 = objNull;
if (_layer872) then {
	_item753 = createSimpleObject ["Land_PCSet_01_screen_F",[8139.44,10132.2,30.5146]];
	_this = _item753;
	_objects pushback _this;
	_objectIDs pushback 753;
	_this setPosWorld [8139.44,10132.2,30.7693];
	_this setVectorDirAndUp [[0.743274,0.668987,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item754 = objNull;
if (_layer872) then {
	_item754 = createSimpleObject ["Land_PCSet_01_screen_F",[8126.46,10125.2,30.5146]];
	_this = _item754;
	_objects pushback _this;
	_objectIDs pushback 754;
	_this setPosWorld [8126.46,10125.2,30.7693];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item755 = objNull;
if (_layer872) then {
	_item755 = createSimpleObject ["Land_PCSet_01_screen_F",[8126.22,10124.7,30.5146]];
	_this = _item755;
	_objects pushback _this;
	_objectIDs pushback 755;
	_this setPosWorld [8126.22,10124.7,30.7693];
	_this setVectorDirAndUp [[0.671044,-0.741418,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item756 = objNull;
if (_layer872) then {
	_item756 = createSimpleObject ["Land_PCSet_Intel_01_F",[8126.68,10131.8,30.5146]];
	_this = _item756;
	_objects pushback _this;
	_objectIDs pushback 756;
	_this setPosWorld [8126.68,10131.8,30.7693];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\missions_f_oldman\data\img\screens\csatntbdesktop_co.paa"];
};

private _item757 = objNull;
if (_layer872) then {
	_item757 = createSimpleObject ["Land_PCSet_Intel_02_F",[8138.13,10125.5,30.515]];
	_this = _item757;
	_objects pushback _this;
	_objectIDs pushback 757;
	_this setPosWorld [8138.13,10125.5,30.7697];
	_this setVectorDirAndUp [[-0.348588,-0.937276,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item758 = objNull;
if (_layer872) then {
	_item758 = createSimpleObject ["Land_PCSet_Intel_02_F",[8134.89,10138.2,30.5952]];
	_this = _item758;
	_objects pushback _this;
	_objectIDs pushback 758;
	_this setPosWorld [8134.89,10138.2,30.8499];
	_this setVectorDirAndUp [[-0.999564,0.029511,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\missions_f_oldman\data\img\screens\csatntbdesktop_co.paa"];
};

private _item759 = objNull;
if (_layer872) then {
	_item759 = createSimpleObject ["Land_PCSet_Intel_02_F",[8128.66,10124.9,30.5142]];
	_this = _item759;
	_objects pushback _this;
	_objectIDs pushback 759;
	_this setPosWorld [8128.66,10124.9,30.7689];
	_this setVectorDirAndUp [[-0.999504,-0.031498,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item762 = objNull;
if (_layer872) then {
	_item762 = createSimpleObject ["Land_Photoframe_01_F",[8135.24,10140.1,31.1481]];
	_this = _item762;
	_objects pushback _this;
	_objectIDs pushback 762;
	_this setPosWorld [8135.24,10140.1,31.3625];
	_this setVectorDirAndUp [[0.999583,-0.0288644,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\props_f_orange\items\decorative\data\photos_camo_co.paa"];
	_this setObjectTextureGlobal [1,"a3\props_f_orange\items\decorative\data\photoframe_01_f_co.paa"];
};

private _item765 = objNull;
if (_layer872) then {
	_item765 = createSimpleObject ["Land_BottlePlastic_V1_F",[8139.9,10122,30.5146]];
	_this = _item765;
	_objects pushback _this;
	_objectIDs pushback 765;
	_this setPosWorld [8139.9,10122,30.6146];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item767 = objNull;
if (_layer872) then {
	_item767 = createSimpleObject ["Land_Tableware_01_cup_F",[8140.04,10120.9,30.5146]];
	_this = _item767;
	_objects pushback _this;
	_objectIDs pushback 767;
	_this setPosWorld [8140.04,10120.9,30.5651];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item768 = objNull;
if (_layer872) then {
	_item768 = createSimpleObject ["Land_Tableware_01_cup_F",[8134.94,10138.6,30.5952]];
	_this = _item768;
	_objects pushback _this;
	_objectIDs pushback 768;
	_this setPosWorld [8134.94,10138.6,30.6456];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item769 = objNull;
if (_layer872) then {
	_item769 = createSimpleObject ["Land_PortableLongRangeRadio_F",[8126.04,10124.5,30.5146]];
	_this = _item769;
	_objects pushback _this;
	_objectIDs pushback 769;
	_this setPosWorld [8126.04,10124.5,30.5301];
	_this setVectorDirAndUp [[0.93205,-0.362329,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item770 = objNull;
if (_layer872) then {
	_item770 = createSimpleObject ["Land_PortableLongRangeRadio_F",[8128.66,10125.2,30.5146]];
	_this = _item770;
	_objects pushback _this;
	_objectIDs pushback 770;
	_this setPosWorld [8128.66,10125.2,30.5301];
	_this setVectorDirAndUp [[-0.958453,0.285251,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item771 = objNull;
if (_layer872) then {
	_item771 = createSimpleObject ["Land_PortableSpeakers_01_F",[8126.56,10132.1,30.5146]];
	_this = _item771;
	_objects pushback _this;
	_objectIDs pushback 771;
	_this setPosWorld [8126.56,10132.1,30.5466];
	_this setVectorDirAndUp [[-0.402726,0.915321,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item772 = objNull;
if (_layer872) then {
	_item772 = createSimpleObject ["Land_PortableSpeakers_01_F",[8126.55,10131.5,30.5146]];
	_this = _item772;
	_objects pushback _this;
	_objectIDs pushback 772;
	_this setPosWorld [8126.55,10131.5,30.5466];
	_this setVectorDirAndUp [[0.370456,0.92885,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item773 = objNull;
if (_layer872) then {
	_item773 = createSimpleObject ["Land_PortableSpeakers_01_F",[8140.18,10131.4,30.5146]];
	_this = _item773;
	_objects pushback _this;
	_objectIDs pushback 773;
	_this setPosWorld [8140.18,10131.4,30.5466];
	_this setVectorDirAndUp [[0.12201,-0.992529,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item774 = objNull;
if (_layer872) then {
	_item774 = createSimpleObject ["Land_Printer_01_F",[8142.12,10137,30.512]];
	_this = _item774;
	_objects pushback _this;
	_objectIDs pushback 774;
	_this setPosWorld [8142.12,10137,30.6972];
	_this setVectorDirAndUp [[0.99912,-0.0419371,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item775 = objNull;
if (_layer872) then {
	_item775 = createSimpleObject ["Land_Projector_01_F",[8138.96,10120.3,30.5146]];
	_this = _item775;
	_objects pushback _this;
	_objectIDs pushback 775;
	_this setPosWorld [8138.96,10120.3,30.6017];
	_this setVectorDirAndUp [[0.0495307,0.998773,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item776 = objNull;
if (_layer872) then {
	_item776 = createSimpleObject ["Land_BatteryPack_01_battery_black_F",[8127.25,10116.8,30.5146]];
	_this = _item776;
	_objects pushback _this;
	_objectIDs pushback 776;
	_this setPosWorld [8127.25,10116.8,30.5757];
	_this setVectorDirAndUp [[0.70471,-0.709495,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item778 = objNull;
if (_layer872) then {
	_item778 = createSimpleObject ["Fridge_01_closed_F",[8129.97,10116.6,29.699]];
	_this = _item778;
	_objects pushback _this;
	_objectIDs pushback 778;
	_this setPosWorld [8129.97,10116.6,30.2175];
	_this setVectorDirAndUp [[-0.0151584,-0.999885,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item783 = objNull;
if (_layer872) then {
	_item783 = createSimpleObject ["Land_TripodScreen_01_dual_v1_black_F",[8136.11,10106.7,29.699]];
	_this = _item783;
	_objects pushback _this;
	_objectIDs pushback 783;
	_this setPosWorld [8136.11,10106.7,30.5087];
	_this setVectorDirAndUp [[0.782727,0.622365,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,""];
	_this setObjectTextureGlobal [1,""];
};

private _item784 = objNull;
if (_layer872) then {
	_item784 = createSimpleObject ["Land_TripodScreen_01_dual_v2_black_F",[8140.39,10106.6,29.699]];
	_this = _item784;
	_objects pushback _this;
	_objectIDs pushback 784;
	_this setPosWorld [8140.39,10106.6,30.5453];
	_this setVectorDirAndUp [[-0.715821,0.698284,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,""];
	_this setObjectTextureGlobal [1,""];
};

private _item786 = objNull;
if (_layer872) then {
	_item786 = createSimpleObject ["Land_IPPhone_01_black_F",[8137.55,10125.6,30.5146]];
	_this = _item786;
	_objects pushback _this;
	_objectIDs pushback 786;
	_this setPosWorld [8137.55,10125.6,30.551];
	_this setVectorDirAndUp [[-0.0435128,-0.999053,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [1,""];
};

private _item787 = objNull;
if (_layer872) then {
	_item787 = createSimpleObject ["Land_IPPhone_01_black_F",[8125.58,10132.6,30.5146]];
	_this = _item787;
	_objects pushback _this;
	_objectIDs pushback 787;
	_this setPosWorld [8125.58,10132.6,30.551];
	_this setVectorDirAndUp [[0.018803,0.999823,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [1,""];
};

private _item788 = objNull;
if (_layer872) then {
	_item788 = createSimpleObject ["Land_IPPhone_01_black_F",[8135.01,10139.3,30.5859]];
	_this = _item788;
	_objects pushback _this;
	_objectIDs pushback 788;
	_this setPosWorld [8135.01,10139.3,30.6224];
	_this setVectorDirAndUp [[-0.997335,0.0729551,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [1,""];
};

private _item789 = objNull;
if (_layer872) then {
	_item789 = createSimpleObject ["Land_IPPhone_01_black_F",[8139.49,10130.9,30.5119]];
	_this = _item789;
	_objects pushback _this;
	_objectIDs pushback 789;
	_this setPosWorld [8139.49,10130.9,30.5484];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [1,""];
};

private _item790 = objNull;
if (_layer872) then {
	_item790 = createSimpleObject ["Land_IPPhone_01_olive_F",[8142.01,10128.8,30.5146]];
	_this = _item790;
	_objects pushback _this;
	_objectIDs pushback 790;
	_this setPosWorld [8142.01,10128.8,30.551];
	_this setVectorDirAndUp [[0.0484853,0.998824,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [1,""];
};

private _item791 = objNull;
if (_layer872) then {
	_item791 = createSimpleObject ["Land_IPPhone_01_olive_F",[8140.16,10132.3,30.5121]];
	_this = _item791;
	_objects pushback _this;
	_objectIDs pushback 791;
	_this setPosWorld [8140.16,10132.3,30.5485];
	_this setVectorDirAndUp [[-0.999976,0.00686069,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [1,""];
};

private _item793 = objNull;
if (_layer872) then {
	_item793 = createSimpleObject ["Land_Laptop_03_black_F",[8138.07,10108,30.5123]];
	_this = _item793;
	_objects pushback _this;
	_objectIDs pushback 793;
	_this setPosWorld [8138.07,10108,30.6797];
	_this setVectorDirAndUp [[-0.301938,0.953328,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [1,"images\xpscreen.paa"];
};

private _item794 = objNull;
if (_layer872) then {
	_item794 = createSimpleObject ["Land_TripodScreen_01_large_black_F",[8138.08,10106,29.699]];
	_this = _item794;
	_objects pushback _this;
	_objectIDs pushback 794;
	_this setPosWorld [8138.08,10106,30.7422];
	_this setVectorDirAndUp [[0.0236465,0.99972,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,""];
};

private _item796 = objNull;
if (_layer872) then {
	_item796 = createSimpleObject ["Land_PortableCabinet_01_4drawers_black_F",[8136.59,10136.4,29.699]];
	_this = _item796;
	_objects pushback _this;
	_objectIDs pushback 796;
	_this setPosWorld [8136.59,10136.4,30.117];
	_this setVectorDirAndUp [[-0.0307734,-0.999526,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this animate ['Drawer_1_move_source',0,true];
	_this animate ['Drawer_2_move_source',0,true];
	_this animate ['Drawer_3_move_source',0,true];
	_this animate ['Drawer_4_move_source',0,true];
	_this animate ['Drawer_1_hide_source',0,true];
	_this animate ['Drawer_2_hide_source',0,true];
	_this animate ['Drawer_3_hide_source',0,true];
	_this animate ['Drawer_4_hide_source',0,true];
};

private _item797 = objNull;
if (_layer872) then {
	_item797 = createSimpleObject ["Land_PortableCabinet_01_4drawers_black_F",[8138.06,10139.6,29.699]];
	_this = _item797;
	_objects pushback _this;
	_objectIDs pushback 797;
	_this setPosWorld [8138.06,10139.6,30.117];
	_this setVectorDirAndUp [[-0.00132209,0.999999,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this animate ['Drawer_1_move_source',0,true];
	_this animate ['Drawer_2_move_source',0,true];
	_this animate ['Drawer_3_move_source',0,true];
	_this animate ['Drawer_4_move_source',0,true];
	_this animate ['Drawer_1_hide_source',0,true];
	_this animate ['Drawer_2_hide_source',0,true];
	_this animate ['Drawer_3_hide_source',0,true];
	_this animate ['Drawer_4_hide_source',0,true];
};

private _item798 = objNull;
if (_layer872) then {
	_item798 = createSimpleObject ["Land_PortableCabinet_01_7drawers_black_F",[8140.22,10116.8,29.699]];
	_this = _item798;
	_objects pushback _this;
	_objectIDs pushback 798;
	_this setPosWorld [8140.22,10116.8,30.117];
	_this setVectorDirAndUp [[0.27315,0.961971,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this animate ['Drawer_2_move_source',0,true];
	_this animate ['Drawer_3_move_source',0,true];
	_this animate ['Drawer_4_move_source',0,true];
	_this animate ['Drawer_5_move_source',0,true];
	_this animate ['Drawer_6_move_source',0,true];
	_this animate ['Drawer_2_hide_source',0,true];
	_this animate ['Drawer_3_hide_source',0,true];
	_this animate ['Drawer_4_hide_source',0,true];
	_this animate ['Drawer_5_hide_source',0,true];
	_this animate ['Drawer_6_hide_source',0,true];
};

private _item799 = objNull;
if (_layer872) then {
	_item799 = createSimpleObject ["Land_PortableCabinet_01_7drawers_black_F",[8127.54,10129,29.699]];
	_this = _item799;
	_objects pushback _this;
	_objectIDs pushback 799;
	_this setPosWorld [8127.54,10129,30.117];
	_this setVectorDirAndUp [[-0.0179079,-0.99984,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this animate ['Drawer_2_move_source',0,true];
	_this animate ['Drawer_3_move_source',0,true];
	_this animate ['Drawer_4_move_source',0,true];
	_this animate ['Drawer_5_move_source',0,true];
	_this animate ['Drawer_6_move_source',0,true];
	_this animate ['Drawer_2_hide_source',0,true];
	_this animate ['Drawer_3_hide_source',0,true];
	_this animate ['Drawer_4_hide_source',0,true];
	_this animate ['Drawer_5_hide_source',0,true];
	_this animate ['Drawer_6_hide_source',0,true];
};

private _item800 = objNull;
if (_layer872) then {
	_item800 = createSimpleObject ["Land_PortableCabinet_01_7drawers_black_F",[8137.48,10139.6,30.5274]];
	_this = _item800;
	_objects pushback _this;
	_objectIDs pushback 800;
	_this setPosWorld [8137.48,10139.6,30.9453];
	_this setVectorDirAndUp [[0.0113184,0.999936,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this animate ['Drawer_2_move_source',0,true];
	_this animate ['Drawer_3_move_source',0,true];
	_this animate ['Drawer_4_move_source',0,true];
	_this animate ['Drawer_5_move_source',0,true];
	_this animate ['Drawer_6_move_source',0,true];
	_this animate ['Drawer_2_hide_source',0,true];
	_this animate ['Drawer_3_hide_source',0,true];
	_this animate ['Drawer_4_hide_source',0,true];
	_this animate ['Drawer_5_hide_source',0,true];
	_this animate ['Drawer_6_hide_source',0,true];
};

private _item801 = objNull;
if (_layer872) then {
	_item801 = createSimpleObject ["Land_PortableCabinet_01_7drawers_black_F",[8138.06,10139.6,30.5274]];
	_this = _item801;
	_objects pushback _this;
	_objectIDs pushback 801;
	_this setPosWorld [8138.06,10139.6,30.9453];
	_this setVectorDirAndUp [[-0.00393801,0.999992,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this animate ['Drawer_2_move_source',0,true];
	_this animate ['Drawer_3_move_source',0,true];
	_this animate ['Drawer_4_move_source',0,true];
	_this animate ['Drawer_5_move_source',0,true];
	_this animate ['Drawer_6_move_source',0,true];
	_this animate ['Drawer_2_hide_source',0,true];
	_this animate ['Drawer_3_hide_source',0,true];
	_this animate ['Drawer_4_hide_source',0,true];
	_this animate ['Drawer_5_hide_source',0,true];
	_this animate ['Drawer_6_hide_source',0,true];
};

private _item802 = objNull;
if (_layer872) then {
	_item802 = createSimpleObject ["Land_PortableCabinet_01_bookcase_black_F",[8136.03,10136.4,29.699]];
	_this = _item802;
	_objects pushback _this;
	_objectIDs pushback 802;
	_this setPosWorld [8136.03,10136.4,30.117];
	_this setVectorDirAndUp [[-0.0634466,-0.997985,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
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

private _item803 = objNull;
if (_layer872) then {
	_item803 = createSimpleObject ["Land_PortableCabinet_01_bookcase_black_F",[8137.48,10139.7,29.699]];
	_this = _item803;
	_objects pushback _this;
	_objectIDs pushback 803;
	_this setPosWorld [8137.48,10139.7,30.117];
	_this setVectorDirAndUp [[0.0111778,0.999938,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
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

private _item804 = objNull;
if (_layer872) then {
	_item804 = createSimpleObject ["Land_PortableCabinet_01_bookcase_olive_F",[8135.19,10116.9,29.699]];
	_this = _item804;
	_objects pushback _this;
	_objectIDs pushback 804;
	_this setPosWorld [8135.19,10116.9,30.117];
	_this setVectorDirAndUp [[-0.534533,0.845148,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
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

private _item805 = objNull;
if (_layer872) then {
	_item805 = createSimpleObject ["Land_PortableCabinet_01_lid_black_F",[8137.7,10116.7,30.5859]];
	_this = _item805;
	_objects pushback _this;
	_objectIDs pushback 805;
	_this setPosWorld [8137.7,10116.7,30.6275];
	_this setVectorDirAndUp [[0.0655229,0.997851,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item806 = objNull;
if (_layer872) then {
	_item806 = createSimpleObject ["Land_PortableDesk_01_black_F",[8138.41,10116.7,29.699]];
	_this = _item806;
	_objects pushback _this;
	_objectIDs pushback 806;
	_this setPosWorld [8138.41,10116.7,30.1429];
	_this setVectorDirAndUp [[-0.0157734,-0.999876,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_1_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_2_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_3_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_4_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_5_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_6_move_source',0,true]};
	_this animate ['Lid_1_hide_source',1,true];
	_this animate ['Lid_2_hide_source',1,true];
	_this animate ['Wing_L_hide_source',0,true];
	_this animate ['Wing_R_hide_source',0,true];
};

private _item807 = objNull;
if (_layer872) then {
	_item807 = createSimpleObject ["Land_PortableDesk_01_black_F",[8134.96,10138.3,29.699]];
	_this = _item807;
	_objects pushback _this;
	_objectIDs pushback 807;
	_this setPosWorld [8134.96,10138.3,30.1429];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_1_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_2_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_3_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_4_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_5_move_source',0,true]};
	if(_this animationSourcePhase 'Lid_2_hide_source' > 0)then{_this animate ['Drawer_6_move_source',0,true]};
	_this animate ['Lid_1_hide_source',1,true];
	_this animate ['Lid_2_hide_source',1,true];
	_this animate ['Wing_L_hide_source',0,true];
	_this animate ['Wing_R_hide_source',0,true];
};

private _item809 = objNull;
if (_layer872) then {
	_item809 = createSimpleObject ["Land_PortableGenerator_01_F",[8129.73,10139.2,29.7071]];
	_this = _item809;
	_objects pushback _this;
	_objectIDs pushback 809;
	_this setPosWorld [8129.73,10139.2,30.0827];
	_this setVectorDirAndUp [[0.999845,-0.0176179,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item815 = objNull;
if (_layer872) then {
	_item815 = createSimpleObject ["Land_PortableServer_01_olive_F",[8130.05,10139.6,30.5146]];
	_this = _item815;
	_objects pushback _this;
	_objectIDs pushback 815;
	_this setPosWorld [8130.05,10139.6,30.6877];
	_this setVectorDirAndUp [[0.0248621,0.999691,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this animateSource ['Lights_Off_Source',0,true];
	_this animateSource ['Server_Move_Source',0,true];
	_this animateSource ['Server_Hide_Source',0,true];
};

private _item816 = objNull;
if (_layer872) then {
	_item816 = createSimpleObject ["Land_PortableServer_01_olive_F",[8129.4,10139.7,30.5146]];
	_this = _item816;
	_objects pushback _this;
	_objectIDs pushback 816;
	_this setPosWorld [8129.4,10139.7,30.6877];
	_this setVectorDirAndUp [[0.0309609,0.999521,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this animateSource ['Lights_Off_Source',0,true];
	_this animateSource ['Server_Move_Source',0,true];
	_this animateSource ['Server_Hide_Source',0,true];
};

private _item817 = objNull;
if (_layer872) then {
	_item817 = createSimpleObject ["Land_PortableServer_01_olive_F",[8128.74,10139.7,30.5146]];
	_this = _item817;
	_objects pushback _this;
	_objectIDs pushback 817;
	_this setPosWorld [8128.74,10139.7,30.6877];
	_this setVectorDirAndUp [[0.0361893,0.999345,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this animateSource ['Lights_Off_Source',0,true];
	_this animateSource ['Server_Move_Source',0,true];
	_this animateSource ['Server_Hide_Source',0,true];
};

private _item818 = objNull;
if (_layer872) then {
	_item818 = createSimpleObject ["Land_PortableServer_01_cover_black_F",[8138.53,10116.6,30.5952]];
	_this = _item818;
	_objects pushback _this;
	_objectIDs pushback 818;
	_this setPosWorld [8138.53,10116.6,30.6372];
	_this setVectorDirAndUp [[0.0039083,-0.999992,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item821 = objNull;
if (_layer872) then {
	_item821 = createSimpleObject ["Land_Router_01_black_F",[8139.43,10116.6,30.5859]];
	_this = _item821;
	_objects pushback _this;
	_objectIDs pushback 821;
	_this setPosWorld [8139.43,10116.6,30.7017];
	_this setVectorDirAndUp [[0.0537837,0.998553,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item822 = objNull;
if (_layer872) then {
	_item822 = createSimpleObject ["Land_Tablet_02_black_F",[8139.07,10116.7,30.5859]];
	_this = _item822;
	_objects pushback _this;
	_objectIDs pushback 822;
	_this setPosWorld [8139.07,10116.7,30.6201];
	_this setVectorDirAndUp [[-0.187482,-0.982268,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\structures_f_heli\items\electronics\data\tablet_screen_co.paa"];
};

private _item823 = objNull;
if (_layer872) then {
	_item823 = createSimpleObject ["Land_Tablet_02_black_F",[8126.08,10132.8,30.5146]];
	_this = _item823;
	_objects pushback _this;
	_objectIDs pushback 823;
	_this setPosWorld [8126.08,10132.8,30.5488];
	_this setVectorDirAndUp [[-0.0744139,-0.997227,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\structures_f_heli\items\electronics\data\tablet_screen_co.paa"];
};

private _item827 = objNull;
if (_layer872) then {
	_item827 = createSimpleObject ["ShootingMat_01_folded_Olive_F",[8128.67,10125.8,29.699]];
	_this = _item827;
	_objects pushback _this;
	_objectIDs pushback 827;
	_this setPosWorld [8128.67,10125.8,29.7356];
	_this setVectorDirAndUp [[-0.0179022,0.99984,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item828 = objNull;
if (_layer872) then {
	_item828 = createSimpleObject ["Land_ShotTimer_01_F",[8139.54,10120.2,30.4981]];
	_this = _item828;
	_objects pushback _this;
	_objectIDs pushback 828;
	_this setPosWorld [8139.54,10120.2,30.5245];
	_this setVectorDirAndUp [[-0.977889,-0.209126,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item831 = objNull;
if (_layer872) then {
	_item831 = createSimpleObject ["Land_Sleeping_bag_folded_F",[8130.09,10125.3,29.699]];
	_this = _item831;
	_objects pushback _this;
	_objectIDs pushback 831;
	_this setPosWorld [8130.09,10125.3,29.8188];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item832 = objNull;
if (_layer872) then {
	_item832 = createSimpleObject ["Land_Ground_sheet_folded_khaki_F",[8130.08,10124.7,29.699]];
	_this = _item832;
	_objects pushback _this;
	_objectIDs pushback 832;
	_this setPosWorld [8130.08,10124.7,29.772];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item835 = objNull;
if (_layer872) then {
	_item835 = createSimpleObject ["Land_Tablet_01_F",[8135.14,10137.3,30.5859]];
	_this = _item835;
	_objects pushback _this;
	_objectIDs pushback 835;
	_this setPosWorld [8135.14,10137.3,30.5903];
	_this setVectorDirAndUp [[-0.999024,0.0441684,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\structures_f_heli\items\electronics\data\tablet_screen_co.paa"];
};

private _item839 = objNull;
if (_layer872) then {
	_item839 = createVehicle ["Land_TransferSwitch_01_F",[8124.91,10122.4,1.4157],[],0,"CAN_COLLIDE"];
	_this = _item839;
	_objects pushback _this;
	_objectIDs pushback 839;
	_this setPosWorld [8124.91,10122.4,30.8203];
	_this setVectorDirAndUp [[-0.999003,0.0446495,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['SwitchPosition',0,true];
	_this animateSource ['SwitchLight',0,true];
	_this animateSource ['Power_1',0,true];
	_this animateSource ['Power_2',0,true];
	_this setObjectTextureGlobal [1,"#(argb,8,8,3)color(1,0.501961,0,0.05,ca)"];
	_this setObjectMaterialGlobal [1,""];
};

private _item840 = objNull;
if (_layer872) then {
	_item840 = createSimpleObject ["TrashBagHolder_01_F",[8139.81,10129.1,29.699]];
	_this = _item840;
	_objects pushback _this;
	_objectIDs pushback 840;
	_this setPosWorld [8139.81,10129.1,30.1221];
	_this setVectorDirAndUp [[-0.00532705,-0.999986,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item841 = objNull;
if (_layer872) then {
	_item841 = createSimpleObject ["TrashBagHolder_01_F",[8129.96,10129,29.699]];
	_this = _item841;
	_objects pushback _this;
	_objectIDs pushback 841;
	_this setPosWorld [8129.96,10129,30.1221];
	_this setVectorDirAndUp [[-0.999463,0.0327605,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item842 = objNull;
if (_layer872) then {
	_item842 = createSimpleObject ["TrashBagHolder_01_F",[8132.51,10136.6,29.699]];
	_this = _item842;
	_objects pushback _this;
	_objectIDs pushback 842;
	_this setPosWorld [8132.51,10136.6,30.1221];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item843 = objNull;
if (_layer872) then {
	_item843 = createSimpleObject ["TrashBagHolder_01_F",[8139.02,10136.6,29.699]];
	_this = _item843;
	_objects pushback _this;
	_objectIDs pushback 843;
	_this setPosWorld [8139.02,10136.6,30.1221];
	_this setVectorDirAndUp [[-0.0218759,-0.999761,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item844 = objNull;
if (_layer872) then {
	_item844 = createSimpleObject ["TrashBagHolder_01_F",[8137.22,10130,29.699]];
	_this = _item844;
	_objects pushback _this;
	_objectIDs pushback 844;
	_this setPosWorld [8137.22,10130,30.1221];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item845 = objNull;
if (_layer872) then {
	_item845 = createSimpleObject ["TrashBagHolder_01_F",[8129.9,10128.3,29.699]];
	_this = _item845;
	_objects pushback _this;
	_objectIDs pushback 845;
	_this setPosWorld [8129.9,10128.3,30.1221];
	_this setVectorDirAndUp [[-0.999463,0.0327605,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item846 = objNull;
if (_layer872) then {
	_item846 = createSimpleObject ["Land_Wallet_01_F",[8135.07,10138.9,30.5859]];
	_this = _item846;
	_objects pushback _this;
	_objectIDs pushback 846;
	_this setPosWorld [8135.07,10138.9,30.5967];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\props_f_orange\items\documents\data\wallet_picture_co.paa"];
};

private _item847 = objNull;
if (_layer872) then {
	_item847 = createSimpleObject ["Land_BottlePlastic_V2_F",[8139.19,10122,30.5146]];
	_this = _item847;
	_objects pushback _this;
	_objectIDs pushback 847;
	_this setPosWorld [8139.19,10122,30.6455];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item848 = objNull;
if (_layer872) then {
	_item848 = createSimpleObject ["Land_WaterBottle_01_empty_F",[8134.79,10138.8,30.5859]];
	_this = _item848;
	_objects pushback _this;
	_objectIDs pushback 848;
	_this setPosWorld [8134.79,10138.8,30.7168];
	_this setVectorDirAndUp [[0.676226,0.736694,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item849 = objNull;
if (_layer872) then {
	_item849 = createSimpleObject ["Land_WaterBottle_01_compressed_F",[8140.53,10129,30.5146]];
	_this = _item849;
	_objects pushback _this;
	_objectIDs pushback 849;
	_this setPosWorld [8140.53,10129,30.5445];
	_this setVectorDirAndUp [[0.555343,-0.831621,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item850 = objNull;
if (_layer872) then {
	_item850 = createSimpleObject ["Land_WaterBottle_01_full_F",[8140.51,10128.6,30.5146]];
	_this = _item850;
	_objects pushback _this;
	_objectIDs pushback 850;
	_this setPosWorld [8140.51,10128.6,30.6429];
	_this setVectorDirAndUp [[0.487804,-0.872953,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item851 = objNull;
if (_layer872) then {
	_item851 = createSimpleObject ["Land_WaterBottle_01_full_F",[8139.61,10131.3,30.5146]];
	_this = _item851;
	_objects pushback _this;
	_objectIDs pushback 851;
	_this setPosWorld [8139.61,10131.3,30.6429];
	_this setVectorDirAndUp [[-0.928774,-0.370648,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item861 = objNull;
if (_layer872) then {
	_item861 = createSimpleObject ["Land_WaterBottle_01_pack_F",[8134.98,10139.3,29.699]];
	_this = _item861;
	_objects pushback _this;
	_objectIDs pushback 861;
	_this setPosWorld [8134.98,10139.3,29.8298];
	_this setVectorDirAndUp [[0.999691,-0.0248623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item862 = objNull;
if (_layer872) then {
	_item862 = createSimpleObject ["Land_WaterCooler_01_new_F",[8129.23,10116.5,29.699]];
	_this = _item862;
	_objects pushback _this;
	_objectIDs pushback 862;
	_this setPosWorld [8129.23,10116.5,30.4311];
	_this setVectorDirAndUp [[-0.0118952,-0.999929,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item864 = objNull;
if (_layer872) then {
	_item864 = createSimpleObject ["Land_WaterPurificationTablets_F",[8134.78,10139,30.5859]];
	_this = _item864;
	_objects pushback _this;
	_objectIDs pushback 864;
	_this setPosWorld [8134.78,10139,30.5995];
	_this setVectorDirAndUp [[-0.908083,0.418789,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item866 = objNull;
if (_layer872) then {
	_item866 = createSimpleObject ["Land_MapBoard_F",[8125.57,10128.3,29.699]];
	_this = _item866;
	_objects pushback _this;
	_objectIDs pushback 866;
	_this setPosWorld [8125.57,10128.3,30.6679];
	_this setVectorDirAndUp [[-0.755762,0.654846,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
};

private _item879 = objNull;
if (_layer872) then {
	_item879 = createSimpleObject ["Land_Map_Malden_F",[8139.52,10121,30.5157]];
	_this = _item879;
	_objects pushback _this;
	_objectIDs pushback 879;
	_this setPosWorld [8139.52,10121,30.5207];
	_this setVectorDirAndUp [[0.999691,-0.0248685,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item1118 = objNull;
if (_layerRoot) then {
	_item1118 = createSimpleObject ["Land_CampingTable_F",[8117.83,10154.1,29.5693]];
	_this = _item1118;
	_objects pushback _this;
	_objectIDs pushback 1118;
	_this setPosWorld [8117.83,10154.1,29.9808];
	_this setVectorDirAndUp [[0,0.999731,-0.0232136],[0.000771824,0.0232136,0.99973]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1119 = objNull;
if (_layerRoot) then {
	_item1119 = createSimpleObject ["Land_CampingTable_F",[8115.87,10154.1,29.5939]];
	_this = _item1119;
	_objects pushback _this;
	_objectIDs pushback 1119;
	_this setPosWorld [8115.87,10154.1,30.0053];
	_this setVectorDirAndUp [[0,0.999738,-0.0229009],[0.0164857,0.0228978,0.999602]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1120 = objNull;
if (_layerRoot) then {
	_item1120 = createSimpleObject ["Land_CampingTable_F",[8113.92,10154.1,29.6258]];
	_this = _item1120;
	_objects pushback _this;
	_objectIDs pushback 1120;
	_this setPosWorld [8113.92,10154.1,30.0371];
	_this setVectorDirAndUp [[0,0.999738,-0.0229009],[0.0164857,0.0228978,0.999602]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1121 = objNull;
if (_layerRoot) then {
	_item1121 = createSimpleObject ["Land_CampingTable_F",[8117.85,10157.1,29.5717]];
	_this = _item1121;
	_objects pushback _this;
	_objectIDs pushback 1121;
	_this setPosWorld [8117.85,10157.1,29.9831];
	_this setVectorDirAndUp [[0,0.99972,0.0236683],[0,-0.0236683,0.99972]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1122 = objNull;
if (_layerRoot) then {
	_item1122 = createSimpleObject ["Land_CampingTable_F",[8115.89,10157.1,29.5765]];
	_this = _item1122;
	_objects pushback _this;
	_objectIDs pushback 1122;
	_this setPosWorld [8115.89,10157.1,29.9879];
	_this setVectorDirAndUp [[0,0.999712,0.0239834],[0.0155441,-0.0239805,0.999592]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1123 = objNull;
if (_layerRoot) then {
	_item1123 = createSimpleObject ["Land_CampingTable_F",[8113.94,10157.1,29.607]];
	_this = _item1123;
	_objects pushback _this;
	_objectIDs pushback 1123;
	_this setPosWorld [8113.94,10157.1,30.0184];
	_this setVectorDirAndUp [[0,0.999712,0.0239834],[0.0155441,-0.0239805,0.999592]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1124 = objNull;
if (_layerRoot) then {
	_item1124 = createSimpleObject ["Land_Pallets_stack_F",[8127.12,10135.2,29.6835]];
	_this = _item1124;
	_objects pushback _this;
	_objectIDs pushback 1124;
	_this setPosWorld [8127.12,10135.2,30.1131];
	_this setVectorDirAndUp [[0,1,0],[0.000845734,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1125 = objNull;
if (_layerRoot) then {
	_item1125 = createVehicle ["Misc_palletsfoiled_heap",[8125.5,10158.2,0.316999],[],0,"CAN_COLLIDE"];
	_this = _item1125;
	_objects pushback _this;
	_objectIDs pushback 1125;
	_this setPosWorld [8125.5,10158.2,30.7582];
	_this setVectorDirAndUp [[-8.74064e-008,-0.999727,-0.0233508],[-0.0193545,-0.0233464,0.99954]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1126 = objNull;
if (_layerRoot) then {
	_item1126 = createVehicle ["Land_Pallet_MilBoxes_F",[8108.52,10151.4,0.108],[],0,"CAN_COLLIDE"];
	_this = _item1126;
	_objects pushback _this;
	_objectIDs pushback 1126;
	_this setPosWorld [8108.52,10151.4,30.0945];
	_this setVectorDirAndUp [[0,0.99996,-0.00891851],[0.0101057,0.00891806,0.999909]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1127 = objNull;
if (_layerRoot) then {
	_item1127 = createVehicle ["Land_PortableLight_02_single_folded_yellow_F",[8123.55,10160.1,0.29714],[],0,"CAN_COLLIDE"];
	_this = _item1127;
	_objects pushback _this;
	_objectIDs pushback 1127;
	_this setPosWorld [8123.55,10160.1,29.7699];
	_this setVectorDirAndUp [[0.707107,0.707107,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1128 = objNull;
if (_layerRoot) then {
	_item1128 = createVehicle ["Land_PortableLight_02_single_yellow_F",[8126.7,10150.6,0.303976],[],0,"CAN_COLLIDE"];
	_this = _item1128;
	_objects pushback _this;
	_objectIDs pushback 1128;
	_this setPosWorld [8126.7,10150.6,30.1832];
	_this setVectorDirAndUp [[0.965926,-0.258819,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item1129 = objNull;
if (_layerRoot) then {
	_item1129 = createVehicle ["Land_PortableLight_02_single_yellow_F",[8103.16,10160.5,0.115],[],0,"CAN_COLLIDE"];
	_this = _item1129;
	_objects pushback _this;
	_objectIDs pushback 1129;
	_this setPosWorld [8103.16,10160.5,30.1998];
	_this setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item1178 = objNull;
if (_layerRoot) then {
	_item1178 = createVehicle ["B_Slingload_01_Fuel_F",[8223.81,10166.2,0.927555],[],0,"CAN_COLLIDE"];
	_this = _item1178;
	_objects pushback _this;
	_objectIDs pushback 1178;
	_this setPosWorld [8223.81,10166.2,31.18];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item1179 = objNull;
if (_layerRoot) then {
	_item1179 = createVehicle ["B_Slingload_01_Ammo_F",[8215,10166.2,0.927547],[],0,"CAN_COLLIDE"];
	_this = _item1179;
	_objects pushback _this;
	_objectIDs pushback 1179;
	_this setPosWorld [8215,10166.2,31.1796];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 8] call ace_cargo_fnc_setSpace;;
};

private _item1180 = objNull;
if (_layerRoot) then {
	_item1180 = createVehicle ["Land_Scrap_MRAP_01_F",[8182.51,10190.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1180;
	_objects pushback _this;
	_objectIDs pushback 1180;
	_this setPosWorld [8182.51,10190.8,30.1144];
	_this setVectorDirAndUp [[0.866025,0.5,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1181 = objNull;
if (_layerRoot) then {
	_item1181 = createVehicle ["Land_HelipadSquare_F",[8214.09,10178.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1181;
	_objects pushback _this;
	_objectIDs pushback 1181;
	_this setPosWorld [8214.09,10178.8,28.89];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item1182 = objNull;
if (_layerRoot) then {
	_item1182 = createVehicle ["Land_Medevac_HQ_V1_F",[8113.81,10093.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1182;
	_objects pushback _this;
	_objectIDs pushback 1182;
	_this setPosWorld [8113.81,10093.6,33.3369];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item1183 = objNull;
if (_layerRoot) then {
	_item1183 = createVehicle ["Land_HelipadRescue_F",[8143.38,10086.1,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1183;
	_objects pushback _this;
	_objectIDs pushback 1183;
	_this setPosWorld [8143.38,10086.1,28.9323];
	_this setVectorDirAndUp [[0,1,0],[0.00639417,0,0.99998]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1184 = objNull;
if (_layerRoot) then {
	_item1184 = createSimpleObject ["Land_Stretcher_01_F",[8116.49,10093.7,30.0693]];
	_this = _item1184;
	_objects pushback _this;
	_objectIDs pushback 1184;
	_this setPosWorld [8116.49,10093.7,30.3109];
	_this setVectorDirAndUp [[-1,1.19249e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1185 = objNull;
if (_layerRoot) then {
	_item1185 = createSimpleObject ["Land_Stretcher_01_F",[8116.46,10096.6,30.0693]];
	_this = _item1185;
	_objects pushback _this;
	_objectIDs pushback 1185;
	_this setPosWorld [8116.46,10096.6,30.3109];
	_this setVectorDirAndUp [[-1,1.19249e-008,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1186 = objNull;
if (_layerRoot) then {
	_item1186 = createSimpleObject ["Land_IntravenStand_01_2bags_F",[8117.31,10095.1,30.0693]];
	_this = _item1186;
	_objects pushback _this;
	_objectIDs pushback 1186;
	_this setPosWorld [8117.31,10095.1,31.0007];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1188 = objNull;
if (_layerRoot) then {
	_item1188 = createVehicle ["Land_BarGate_F",[8160.45,9770.57,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1188;
	_objects pushback _this;
	_objectIDs pushback 1188;
	_this setPosWorld [8160.45,9770.57,33.4203];
	_this setVectorDirAndUp [[-0.00310689,0.999995,0],[0,0,1]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item1189 = objNull;
if (_layerRoot) then {
	_item1189 = createVehicle ["Land_GuardBox_01_brown_F",[8167.12,9771.18,0],[],0,"CAN_COLLIDE"];
	_this = _item1189;
	_objects pushback _this;
	_objectIDs pushback 1189;
	_this setPosWorld [8167.12,9771.18,30.2353];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1202 = objNull;
if (_layerRoot) then {
	_item1202 = createVehicle ["Land_SignM_WarningMilAreaSmall_english_F",[7511.4,10542.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1202;
	_objects pushback _this;
	_objectIDs pushback 1202;
	_this setPosWorld [7511.4,10542.6,29.9];
	_this setVectorDirAndUp [[0.999707,0.0242228,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1203 = objNull;
if (_layerRoot) then {
	_item1203 = createVehicle ["Land_Wall_IndCnc_4_F",[7510.88,10573.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1203;
	_objects pushback _this;
	_objectIDs pushback 1203;
	_this setPosWorld [7510.88,10573.9,29.585];
	_this setVectorDirAndUp [[0.999988,-0.00499251,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1204 = objNull;
if (_layerRoot) then {
	_item1204 = createVehicle ["Land_Wall_IndCnc_4_F",[7510.87,10568.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1204;
	_objects pushback _this;
	_objectIDs pushback 1204;
	_this setPosWorld [7510.87,10568.2,29.585];
	_this setVectorDirAndUp [[0.999988,-0.00499251,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1205 = objNull;
if (_layerRoot) then {
	_item1205 = createVehicle ["Land_Wall_IndCnc_4_F",[7510.9,10562.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1205;
	_objects pushback _this;
	_objectIDs pushback 1205;
	_this setPosWorld [7510.9,10562.3,29.585];
	_this setVectorDirAndUp [[0.999988,-0.00499251,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1206 = objNull;
if (_layerRoot) then {
	_item1206 = createVehicle ["Land_Wall_IndCnc_4_F",[7511.13,10556.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1206;
	_objects pushback _this;
	_objectIDs pushback 1206;
	_this setPosWorld [7511.13,10556.3,29.585];
	_this setVectorDirAndUp [[-0.997495,-0.0707326,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1207 = objNull;
if (_layerRoot) then {
	_item1207 = createVehicle ["Land_Wall_IndCnc_4_F",[7511.97,10550.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1207;
	_objects pushback _this;
	_objectIDs pushback 1207;
	_this setPosWorld [7511.97,10550.5,29.585];
	_this setVectorDirAndUp [[-0.967206,-0.253993,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1208 = objNull;
if (_layerRoot) then {
	_item1208 = createSimpleObject ["Land_CampingTable_F",[7511.56,10566.7,28.86]];
	_this = _item1208;
	_objects pushback _this;
	_objectIDs pushback 1208;
	_this setPosWorld [7511.56,10566.7,29.2716];
	_this setVectorDirAndUp [[-0.999925,-0.0122124,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1209 = objNull;
if (_layerRoot) then {
	_item1209 = createVehicle ["Land_LampHalogen_F",[7553.66,10618.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1209;
	_objects pushback _this;
	_objectIDs pushback 1209;
	_this setPosWorld [7553.66,10618.4,34.8305];
	_this setVectorDirAndUp [[-0.866025,0.5,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1210 = objNull;
if (_layerRoot) then {
	_item1210 = createSimpleObject ["Land_CampingTable_F",[7298.17,10496.7,38.19]];
	_this = _item1210;
	_objects pushback _this;
	_objectIDs pushback 1210;
	_this setPosWorld [7298.17,10496.7,38.6016];
	_this setVectorDirAndUp [[0.698418,0.71569,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1213 = objNull;
if (_layerRoot) then {
	_item1213 = createVehicle ["Land_Target_Swivel_01_F",[7249.97,10397,0],[],0,"CAN_COLLIDE"];
	_this = _item1213;
	_objects pushback _this;
	_objectIDs pushback 1213;
	_this setPosWorld [7249.97,10397,39.1698];
	_this setVectorDirAndUp [[-0.65202,-0.758202,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1214 = objNull;
if (_layerRoot) then {
	_item1214 = createVehicle ["Land_Target_Swivel_01_F",[7240.61,10405,0],[],0,"CAN_COLLIDE"];
	_this = _item1214;
	_objects pushback _this;
	_objectIDs pushback 1214;
	_this setPosWorld [7240.61,10405,39.1698];
	_this setVectorDirAndUp [[-0.65202,-0.758202,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1215 = objNull;
if (_layerRoot) then {
	_item1215 = createVehicle ["Land_Target_Swivel_01_F",[7232.77,10412.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1215;
	_objects pushback _this;
	_objectIDs pushback 1215;
	_this setPosWorld [7232.77,10412.3,39.1698];
	_this setVectorDirAndUp [[-0.65202,-0.758202,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1216 = objNull;
if (_layerRoot) then {
	_item1216 = createVehicle ["Land_Target_Swivel_01_F",[7223.19,10420.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1216;
	_objects pushback _this;
	_objectIDs pushback 1216;
	_this setPosWorld [7223.19,10420.7,39.1698];
	_this setVectorDirAndUp [[-0.65202,-0.758202,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1217 = objNull;
if (_layerRoot) then {
	_item1217 = createVehicle ["Land_Target_Swivel_01_F",[7212.17,10430.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1217;
	_objects pushback _this;
	_objectIDs pushback 1217;
	_this setPosWorld [7212.17,10430.3,39.1698];
	_this setVectorDirAndUp [[-0.65202,-0.758202,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1218 = objNull;
if (_layerRoot) then {
	_item1218 = createVehicle ["Land_Target_Swivel_01_F",[7200.4,10440.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1218;
	_objects pushback _this;
	_objectIDs pushback 1218;
	_this setPosWorld [7200.4,10440.6,39.1698];
	_this setVectorDirAndUp [[-0.65202,-0.758202,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1219 = objNull;
if (_layerRoot) then {
	_item1219 = createVehicle ["Land_Target_Swivel_01_F",[7191.96,10448.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1219;
	_objects pushback _this;
	_objectIDs pushback 1219;
	_this setPosWorld [7191.96,10448.2,39.1698];
	_this setVectorDirAndUp [[-0.65202,-0.758202,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1221 = objNull;
if (_layer1220) then {
	_item1221 = createVehicle ["ProtectionZone_Invisible_F",[8131.92,10120.8,7.865],[],0,"CAN_COLLIDE"];
	_this = _item1221;
	_objects pushback _this;
	_objectIDs pushback 1221;
	_this setPosWorld [8131.92,10120.8,41.8391];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item1222 = objNull;
if (_layer1220) then {
	_item1222 = createVehicle ["ProtectionZone_Invisible_F",[8110.19,10154.7,5.861],[],0,"CAN_COLLIDE"];
	_this = _item1222;
	_objects pushback _this;
	_objectIDs pushback 1222;
	_this setPosWorld [8110.19,10154.7,40.1428];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item1223 = objNull;
if (_layer1220) then {
	_item1223 = createVehicle ["ProtectionZone_Invisible_F",[8065.58,10197.5,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item1223;
	_objects pushback _this;
	_objectIDs pushback 1223;
	_this setPosWorld [8065.58,10197.5,34.3175];
	_this setVectorDirAndUp [[0,1,0],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item1225 = objNull;
if (_layer1224) then {
	_item1225 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7557.8,10579.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1225;
	_objects pushback _this;
	_objectIDs pushback 1225;
	_this setPosWorld [7557.8,10579.4,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1226 = objNull;
if (_layer1224) then {
	_item1226 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7550.04,10577.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1226;
	_objects pushback _this;
	_objectIDs pushback 1226;
	_this setPosWorld [7550.04,10577.8,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1227 = objNull;
if (_layer1224) then {
	_item1227 = createVehicle ["Land_Shoot_House_Wall_F",[7555.65,10589.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1227;
	_objects pushback _this;
	_objectIDs pushback 1227;
	_this setPosWorld [7555.65,10589.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1228 = objNull;
if (_layer1224) then {
	_item1228 = createVehicle ["Land_Shoot_House_Wall_F",[7547.51,10584.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1228;
	_objects pushback _this;
	_objectIDs pushback 1228;
	_this setPosWorld [7547.51,10584.3,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1229 = objNull;
if (_layer1224) then {
	_item1229 = createVehicle ["Land_Shoot_House_Wall_F",[7548.36,10580.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1229;
	_objects pushback _this;
	_objectIDs pushback 1229;
	_this setPosWorld [7548.36,10580.4,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1230 = objNull;
if (_layer1224) then {
	_item1230 = createVehicle ["Land_Shoot_House_Wall_F",[7547.84,10587.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1230;
	_objects pushback _this;
	_objectIDs pushback 1230;
	_this setPosWorld [7547.84,10587.5,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1231 = objNull;
if (_layer1224) then {
	_item1231 = createVehicle ["Land_Shoot_House_Wall_F",[7560.75,10589.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1231;
	_objects pushback _this;
	_objectIDs pushback 1231;
	_this setPosWorld [7560.75,10589.3,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1232 = objNull;
if (_layer1224) then {
	_item1232 = createVehicle ["Land_Shoot_House_Wall_F",[7562.04,10583.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1232;
	_objects pushback _this;
	_objectIDs pushback 1232;
	_this setPosWorld [7562.04,10583.4,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1233 = objNull;
if (_layer1224) then {
	_item1233 = createVehicle ["Land_Shoot_House_Wall_F",[7561.61,10585.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1233;
	_objects pushback _this;
	_objectIDs pushback 1233;
	_this setPosWorld [7561.61,10585.4,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1234 = objNull;
if (_layer1224) then {
	_item1234 = createVehicle ["Land_Shoot_House_Wall_F",[7553.7,10588.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1234;
	_objects pushback _this;
	_objectIDs pushback 1234;
	_this setPosWorld [7553.7,10588.8,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1235 = objNull;
if (_layer1224) then {
	_item1235 = createVehicle ["Land_Shoot_House_Wall_F",[7549.79,10587.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1235;
	_objects pushback _this;
	_objectIDs pushback 1235;
	_this setPosWorld [7549.79,10587.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1236 = objNull;
if (_layer1224) then {
	_item1236 = createVehicle ["Land_Shoot_House_Wall_F",[7551.94,10578.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1236;
	_objects pushback _this;
	_objectIDs pushback 1236;
	_this setPosWorld [7551.94,10578.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1237 = objNull;
if (_layer1224) then {
	_item1237 = createVehicle ["Land_Shoot_House_Wall_F",[7547.08,10586.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1237;
	_objects pushback _this;
	_objectIDs pushback 1237;
	_this setPosWorld [7547.08,10586.3,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1238 = objNull;
if (_layer1224) then {
	_item1238 = createVehicle ["Land_Shoot_House_Wall_F",[7551.74,10588.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1238;
	_objects pushback _this;
	_objectIDs pushback 1238;
	_this setPosWorld [7551.74,10588.3,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1239 = objNull;
if (_layer1224) then {
	_item1239 = createVehicle ["Land_Shoot_House_Wall_F",[7559.56,10590.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1239;
	_objects pushback _this;
	_objectIDs pushback 1239;
	_this setPosWorld [7559.56,10590.1,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1240 = objNull;
if (_layer1224) then {
	_item1240 = createVehicle ["Land_Shoot_House_Wall_F",[7561.7,10580.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1240;
	_objects pushback _this;
	_objectIDs pushback 1240;
	_this setPosWorld [7561.7,10580.3,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1241 = objNull;
if (_layer1224) then {
	_item1241 = createVehicle ["Land_Shoot_House_Wall_F",[7561.19,10587.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1241;
	_objects pushback _this;
	_objectIDs pushback 1241;
	_this setPosWorld [7561.19,10587.3,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1242 = objNull;
if (_layer1224) then {
	_item1242 = createVehicle ["Land_Shoot_House_Wall_F",[7546.74,10583.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1242;
	_objects pushback _this;
	_objectIDs pushback 1242;
	_this setPosWorld [7546.74,10583.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1243 = objNull;
if (_layer1224) then {
	_item1243 = createVehicle ["Land_Shoot_House_Wall_F",[7545.43,10579.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1243;
	_objects pushback _this;
	_objectIDs pushback 1243;
	_this setPosWorld [7545.43,10579.8,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1244 = objNull;
if (_layer1224) then {
	_item1244 = createVehicle ["Land_Shoot_House_Wall_F",[7547.39,10580.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1244;
	_objects pushback _this;
	_objectIDs pushback 1244;
	_this setPosWorld [7547.39,10580.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1245 = objNull;
if (_layer1224) then {
	_item1245 = createVehicle ["Land_Shoot_House_Wall_F",[7543.48,10579.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1245;
	_objects pushback _this;
	_objectIDs pushback 1245;
	_this setPosWorld [7543.48,10579.4,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1246 = objNull;
if (_layer1224) then {
	_item1246 = createVehicle ["Land_Shoot_House_Wall_F",[7542.84,10582.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1246;
	_objects pushback _this;
	_objectIDs pushback 1246;
	_this setPosWorld [7542.84,10582.3,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1247 = objNull;
if (_layer1224) then {
	_item1247 = createVehicle ["Land_Shoot_House_Wall_F",[7562.47,10581.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1247;
	_objects pushback _this;
	_objectIDs pushback 1247;
	_this setPosWorld [7562.47,10581.5,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1248 = objNull;
if (_layer1224) then {
	_item1248 = createVehicle ["Land_Shoot_House_Wall_F",[7559.75,10579.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1248;
	_objects pushback _this;
	_objectIDs pushback 1248;
	_this setPosWorld [7559.75,10579.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1249 = objNull;
if (_layer1224) then {
	_item1249 = createVehicle ["Land_Shoot_House_Wall_F",[7544.55,10574.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1249;
	_objects pushback _this;
	_objectIDs pushback 1249;
	_this setPosWorld [7544.55,10574.5,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1250 = objNull;
if (_layer1224) then {
	_item1250 = createVehicle ["Land_Shoot_House_Wall_F",[7546.5,10574.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1250;
	_objects pushback _this;
	_objectIDs pushback 1250;
	_this setPosWorld [7546.5,10574.9,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1251 = objNull;
if (_layer1224) then {
	_item1251 = createVehicle ["Land_Shoot_House_Wall_F",[7559.42,10576.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1251;
	_objects pushback _this;
	_objectIDs pushback 1251;
	_this setPosWorld [7559.42,10576.7,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1252 = objNull;
if (_layer1224) then {
	_item1252 = createVehicle ["Land_Shoot_House_Wall_F",[7560.39,10576.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1252;
	_objects pushback _this;
	_objectIDs pushback 1252;
	_this setPosWorld [7560.39,10576.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1253 = objNull;
if (_layer1224) then {
	_item1253 = createVehicle ["Land_Shoot_House_Wall_F",[7557.03,10578.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1253;
	_objects pushback _this;
	_objectIDs pushback 1253;
	_this setPosWorld [7557.03,10578.2,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1254 = objNull;
if (_layer1224) then {
	_item1254 = createVehicle ["Land_Shoot_House_Wall_F",[7558.99,10578.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1254;
	_objects pushback _this;
	_objectIDs pushback 1254;
	_this setPosWorld [7558.99,10578.7,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1255 = objNull;
if (_layer1224) then {
	_item1255 = createVehicle ["Land_Shoot_House_Wall_F",[7557.46,10576.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1255;
	_objects pushback _this;
	_objectIDs pushback 1255;
	_this setPosWorld [7557.46,10576.3,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1256 = objNull;
if (_layer1224) then {
	_item1256 = createVehicle ["Land_Shoot_House_Wall_F",[7553.89,10578.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1256;
	_objects pushback _this;
	_objectIDs pushback 1256;
	_this setPosWorld [7553.89,10578.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1257 = objNull;
if (_layer1224) then {
	_item1257 = createVehicle ["Land_Shoot_House_Wall_F",[7549.24,10576.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1257;
	_objects pushback _this;
	_objectIDs pushback 1257;
	_this setPosWorld [7549.24,10576.6,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1258 = objNull;
if (_layer1224) then {
	_item1258 = createVehicle ["Land_Shoot_House_Wall_F",[7549.67,10574.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1258;
	_objects pushback _this;
	_objectIDs pushback 1258;
	_this setPosWorld [7549.67,10574.6,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1259 = objNull;
if (_layer1224) then {
	_item1259 = createVehicle ["Land_Shoot_House_Wall_F",[7551.62,10575,0],[],0,"CAN_COLLIDE"];
	_this = _item1259;
	_objects pushback _this;
	_objectIDs pushback 1259;
	_this setPosWorld [7551.62,10575,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1260 = objNull;
if (_layer1224) then {
	_item1260 = createVehicle ["Land_Shoot_House_Wall_F",[7544.79,10582.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1260;
	_objects pushback _this;
	_objectIDs pushback 1260;
	_this setPosWorld [7544.79,10582.7,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1261 = objNull;
if (_layer1224) then {
	_item1261 = createVehicle ["Land_Shoot_House_Wall_F",[7560.85,10584.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1261;
	_objects pushback _this;
	_objectIDs pushback 1261;
	_this setPosWorld [7560.85,10584.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1262 = objNull;
if (_layer1224) then {
	_item1262 = createVehicle ["Land_Shoot_House_Wall_F",[7556.94,10583.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1262;
	_objects pushback _this;
	_objectIDs pushback 1262;
	_this setPosWorld [7556.94,10583.3,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1263 = objNull;
if (_layer1224) then {
	_item1263 = createVehicle ["Land_Shoot_House_Wall_F",[7554.65,10579.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1263;
	_objects pushback _this;
	_objectIDs pushback 1263;
	_this setPosWorld [7554.65,10579.8,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1264 = objNull;
if (_layer1224) then {
	_item1264 = createVehicle ["Land_Shoot_House_Wall_F",[7554.22,10581.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1264;
	_objects pushback _this;
	_objectIDs pushback 1264;
	_this setPosWorld [7554.22,10581.7,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1265 = objNull;
if (_layer1224) then {
	_item1265 = createVehicle ["Land_Shoot_House_Wall_F",[7554.98,10582.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1265;
	_objects pushback _this;
	_objectIDs pushback 1265;
	_this setPosWorld [7554.98,10582.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1266 = objNull;
if (_layer1224) then {
	_item1266 = createVehicle ["Land_Shoot_House_Wall_F",[7548.7,10583.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1266;
	_objects pushback _this;
	_objectIDs pushback 1266;
	_this setPosWorld [7548.7,10583.6,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1267 = objNull;
if (_layer1224) then {
	_item1267 = createVehicle ["Land_Shoot_House_Wall_F",[7550.65,10584,0],[],0,"CAN_COLLIDE"];
	_this = _item1267;
	_objects pushback _this;
	_objectIDs pushback 1267;
	_this setPosWorld [7550.65,10584,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1268 = objNull;
if (_layer1224) then {
	_item1268 = createVehicle ["Land_Shoot_House_Wall_F",[7551.42,10585.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1268;
	_objects pushback _this;
	_objectIDs pushback 1268;
	_this setPosWorld [7551.42,10585.2,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1269 = objNull;
if (_layer1224) then {
	_item1269 = createVehicle ["Land_Shoot_House_Wall_F",[7554.56,10584.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1269;
	_objects pushback _this;
	_objectIDs pushback 1269;
	_this setPosWorld [7554.56,10584.9,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1270 = objNull;
if (_layer1224) then {
	_item1270 = createVehicle ["Land_Shoot_House_Wall_F",[7555.32,10586.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1270;
	_objects pushback _this;
	_objectIDs pushback 1270;
	_this setPosWorld [7555.32,10586.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1271 = objNull;
if (_layer1224) then {
	_item1271 = createVehicle ["Land_Shoot_House_Wall_F",[7554.89,10588,0],[],0,"CAN_COLLIDE"];
	_this = _item1271;
	_objects pushback _this;
	_objectIDs pushback 1271;
	_this setPosWorld [7554.89,10588,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1272 = objNull;
if (_layer1224) then {
	_item1272 = createVehicle ["Land_Shoot_House_Wall_F",[7553.36,10585.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1272;
	_objects pushback _this;
	_objectIDs pushback 1272;
	_this setPosWorld [7553.36,10585.6,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1273 = objNull;
if (_layer1224) then {
	_item1273 = createVehicle ["Land_Shoot_House_Wall_F",[7553.03,10582.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1273;
	_objects pushback _this;
	_objectIDs pushback 1273;
	_this setPosWorld [7553.03,10582.5,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1274 = objNull;
if (_layer1224) then {
	_item1274 = createVehicle ["Land_Shoot_House_Wall_F",[7549.13,10581.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1274;
	_objects pushback _this;
	_objectIDs pushback 1274;
	_this setPosWorld [7549.13,10581.6,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1275 = objNull;
if (_layer1224) then {
	_item1275 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7561.25,10573,0],[],0,"CAN_COLLIDE"];
	_this = _item1275;
	_objects pushback _this;
	_objectIDs pushback 1275;
	_this setPosWorld [7561.25,10573,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1276 = objNull;
if (_layer1224) then {
	_item1276 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7553.44,10571.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1276;
	_objects pushback _this;
	_objectIDs pushback 1276;
	_this setPosWorld [7553.44,10571.3,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1277 = objNull;
if (_layer1224) then {
	_item1277 = createVehicle ["Land_Shoot_House_Wall_F",[7550.72,10569.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1277;
	_objects pushback _this;
	_objectIDs pushback 1277;
	_this setPosWorld [7550.72,10569.7,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1278 = objNull;
if (_layer1224) then {
	_item1278 = createVehicle ["Land_Shoot_House_Wall_F",[7563.2,10573.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1278;
	_objects pushback _this;
	_objectIDs pushback 1278;
	_this setPosWorld [7563.2,10573.5,30.5254];
	_this setVectorDirAndUp [[0.214224,-0.97678,-0.00308378],[0.0143936,0,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1279 = objNull;
if (_layer1224) then {
	_item1279 = createVehicle ["Land_Shoot_House_Wall_F",[7559.49,10562.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1279;
	_objects pushback _this;
	_objectIDs pushback 1279;
	_this setPosWorld [7559.49,10562.4,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1280 = objNull;
if (_layer1224) then {
	_item1280 = createVehicle ["Land_Shoot_House_Wall_F",[7564.39,10572.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1280;
	_objects pushback _this;
	_objectIDs pushback 1280;
	_this setPosWorld [7564.39,10572.7,30.5082];
	_this setVectorDirAndUp [[-0.976679,-0.214246,0.0140594],[0.0143936,0,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1281 = objNull;
if (_layer1224) then {
	_item1281 = createVehicle ["Land_Shoot_House_Wall_F",[7551.58,10565.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1281;
	_objects pushback _this;
	_objectIDs pushback 1281;
	_this setPosWorld [7551.58,10565.8,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1282 = objNull;
if (_layer1224) then {
	_item1282 = createVehicle ["Land_Shoot_House_Wall_F",[7559.3,10572.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1282;
	_objects pushback _this;
	_objectIDs pushback 1282;
	_this setPosWorld [7559.3,10572.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1283 = objNull;
if (_layer1224) then {
	_item1283 = createVehicle ["Land_Shoot_House_Wall_F",[7551.48,10570.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1283;
	_objects pushback _this;
	_objectIDs pushback 1283;
	_this setPosWorld [7551.48,10570.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1284 = objNull;
if (_layer1224) then {
	_item1284 = createVehicle ["Land_Shoot_House_Wall_F",[7565.25,10568.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1284;
	_objects pushback _this;
	_objectIDs pushback 1284;
	_this setPosWorld [7565.25,10568.8,30.4959];
	_this setVectorDirAndUp [[-0.976679,-0.214246,0.0140594],[0.0143936,0,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1285 = objNull;
if (_layer1224) then {
	_item1285 = createVehicle ["Land_Shoot_House_Wall_F",[7565.68,10566.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1285;
	_objects pushback _this;
	_objectIDs pushback 1285;
	_this setPosWorld [7565.68,10566.8,30.4897];
	_this setVectorDirAndUp [[-0.976679,-0.214246,0.0140594],[0.0143936,0,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1286 = objNull;
if (_layer1224) then {
	_item1286 = createVehicle ["Land_Shoot_House_Wall_F",[7566.11,10564.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1286;
	_objects pushback _this;
	_objectIDs pushback 1286;
	_this setPosWorld [7566.11,10564.9,30.4835];
	_this setVectorDirAndUp [[-0.976679,-0.214246,0.0140594],[0.0143936,0,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1287 = objNull;
if (_layer1224) then {
	_item1287 = createVehicle ["Land_Shoot_House_Wall_F",[7565.35,10563.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1287;
	_objects pushback _this;
	_objectIDs pushback 1287;
	_this setPosWorld [7565.35,10563.7,30.4945];
	_this setVectorDirAndUp [[0.214224,-0.97678,-0.00308378],[0.0143936,0,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1288 = objNull;
if (_layer1224) then {
	_item1288 = createVehicle ["Land_Shoot_House_Wall_F",[7563.4,10563.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1288;
	_objects pushback _this;
	_objectIDs pushback 1288;
	_this setPosWorld [7563.4,10563.3,30.5226];
	_this setVectorDirAndUp [[0.214224,-0.97678,-0.00308378],[0.0143936,0,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1289 = objNull;
if (_layer1224) then {
	_item1289 = createVehicle ["Land_Shoot_House_Wall_F",[7561.44,10562.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1289;
	_objects pushback _this;
	_objectIDs pushback 1289;
	_this setPosWorld [7561.44,10562.8,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1290 = objNull;
if (_layer1224) then {
	_item1290 = createVehicle ["Land_Shoot_House_Wall_F",[7552.44,10561.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1290;
	_objects pushback _this;
	_objectIDs pushback 1290;
	_this setPosWorld [7552.44,10561.9,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1291 = objNull;
if (_layer1224) then {
	_item1291 = createVehicle ["Land_Shoot_House_Wall_F",[7557.53,10562,0],[],0,"CAN_COLLIDE"];
	_this = _item1291;
	_objects pushback _this;
	_objectIDs pushback 1291;
	_this setPosWorld [7557.53,10562,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1292 = objNull;
if (_layer1224) then {
	_item1292 = createVehicle ["Land_Shoot_House_Wall_F",[7555.39,10571.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1292;
	_objects pushback _this;
	_objectIDs pushback 1292;
	_this setPosWorld [7555.39,10571.7,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1293 = objNull;
if (_layer1224) then {
	_item1293 = createVehicle ["Land_Shoot_House_Wall_F",[7545.84,10568.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1293;
	_objects pushback _this;
	_objectIDs pushback 1293;
	_this setPosWorld [7545.84,10568.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1294 = objNull;
if (_layer1224) then {
	_item1294 = createVehicle ["Land_Shoot_House_Wall_F",[7547.79,10569.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1294;
	_objects pushback _this;
	_objectIDs pushback 1294;
	_this setPosWorld [7547.79,10569.1,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1295 = objNull;
if (_layer1224) then {
	_item1295 = createVehicle ["Land_Shoot_House_Wall_F",[7549.74,10569.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1295;
	_objects pushback _this;
	_objectIDs pushback 1295;
	_this setPosWorld [7549.74,10569.5,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1296 = objNull;
if (_layer1224) then {
	_item1296 = createVehicle ["Land_Shoot_House_Wall_F",[7550.38,10566.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1296;
	_objects pushback _this;
	_objectIDs pushback 1296;
	_this setPosWorld [7550.38,10566.5,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1297 = objNull;
if (_layer1224) then {
	_item1297 = createVehicle ["Land_Shoot_House_Wall_F",[7548.43,10566.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1297;
	_objects pushback _this;
	_objectIDs pushback 1297;
	_this setPosWorld [7548.43,10566.1,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1298 = objNull;
if (_layer1224) then {
	_item1298 = createVehicle ["Land_Shoot_House_Wall_F",[7546.48,10565.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1298;
	_objects pushback _this;
	_objectIDs pushback 1298;
	_this setPosWorld [7546.48,10565.7,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1299 = objNull;
if (_layer1224) then {
	_item1299 = createVehicle ["Land_Shoot_House_Wall_F",[7544.98,10572.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1299;
	_objects pushback _this;
	_objectIDs pushback 1299;
	_this setPosWorld [7544.98,10572.5,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1300 = objNull;
if (_layer1224) then {
	_item1300 = createVehicle ["Land_Shoot_House_Wall_F",[7546.93,10573,0],[],0,"CAN_COLLIDE"];
	_this = _item1300;
	_objects pushback _this;
	_objectIDs pushback 1300;
	_this setPosWorld [7546.93,10573,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1301 = objNull;
if (_layer1224) then {
	_item1301 = createVehicle ["Land_Shoot_House_Wall_F",[7554.2,10572.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1301;
	_objects pushback _this;
	_objectIDs pushback 1301;
	_this setPosWorld [7554.2,10572.5,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1302 = objNull;
if (_layer1224) then {
	_item1302 = createVehicle ["Land_Shoot_House_Wall_F",[7553.77,10574.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1302;
	_objects pushback _this;
	_objectIDs pushback 1302;
	_this setPosWorld [7553.77,10574.5,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1303 = objNull;
if (_layer1224) then {
	_item1303 = createVehicle ["Land_Shoot_House_Wall_F",[7564.82,10570.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1303;
	_objects pushback _this;
	_objectIDs pushback 1303;
	_this setPosWorld [7564.82,10570.7,30.5021];
	_this setVectorDirAndUp [[-0.976679,-0.214246,0.0140594],[0.0143936,0,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1304 = objNull;
if (_layer1224) then {
	_item1304 = createVehicle ["Land_Shoot_House_Wall_F",[7551.82,10574,0],[],0,"CAN_COLLIDE"];
	_this = _item1304;
	_objects pushback _this;
	_objectIDs pushback 1304;
	_this setPosWorld [7551.82,10574,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1305 = objNull;
if (_layer1224) then {
	_item1305 = createVehicle ["Land_Shoot_House_Wall_F",[7562.01,10574.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1305;
	_objects pushback _this;
	_objectIDs pushback 1305;
	_this setPosWorld [7562.01,10574.2,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1306 = objNull;
if (_layer1224) then {
	_item1306 = createVehicle ["Land_Shoot_House_Wall_F",[7560.06,10573.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1306;
	_objects pushback _this;
	_objectIDs pushback 1306;
	_this setPosWorld [7560.06,10573.8,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1307 = objNull;
if (_layer1224) then {
	_item1307 = createVehicle ["Land_Shoot_House_Wall_F",[7561.58,10576.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1307;
	_objects pushback _this;
	_objectIDs pushback 1307;
	_this setPosWorld [7561.58,10576.2,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1308 = objNull;
if (_layer1224) then {
	_item1308 = createVehicle ["Land_Shoot_House_Wall_F",[7553.63,10561.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1308;
	_objects pushback _this;
	_objectIDs pushback 1308;
	_this setPosWorld [7553.63,10561.1,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1309 = objNull;
if (_layer1224) then {
	_item1309 = createVehicle ["Land_Shoot_House_Wall_F",[7558.65,10575.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1309;
	_objects pushback _this;
	_objectIDs pushback 1309;
	_this setPosWorld [7558.65,10575.5,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1310 = objNull;
if (_layer1224) then {
	_item1310 = createVehicle ["Land_Shoot_House_Wall_F",[7552.63,10575.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1310;
	_objects pushback _this;
	_objectIDs pushback 1310;
	_this setPosWorld [7552.63,10575.1,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1311 = objNull;
if (_layer1224) then {
	_item1311 = createVehicle ["Land_Shoot_House_Wall_F",[7559.63,10575.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1311;
	_objects pushback _this;
	_objectIDs pushback 1311;
	_this setPosWorld [7559.63,10575.7,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1312 = objNull;
if (_layer1224) then {
	_item1312 = createVehicle ["Land_Shoot_House_Wall_F",[7552.01,10563.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1312;
	_objects pushback _this;
	_objectIDs pushback 1312;
	_this setPosWorld [7552.01,10563.8,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1313 = objNull;
if (_layer1224) then {
	_item1313 = createVehicle ["Land_Shoot_House_Wall_F",[7552.55,10566,0],[],0,"CAN_COLLIDE"];
	_this = _item1313;
	_objects pushback _this;
	_objectIDs pushback 1313;
	_this setPosWorld [7552.55,10566,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1314 = objNull;
if (_layer1224) then {
	_item1314 = createVehicle ["Land_Shoot_House_Wall_F",[7554.51,10566.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1314;
	_objects pushback _this;
	_objectIDs pushback 1314;
	_this setPosWorld [7554.51,10566.4,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1315 = objNull;
if (_layer1224) then {
	_item1315 = createVehicle ["Land_Shoot_House_Wall_F",[7556.46,10566.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1315;
	_objects pushback _this;
	_objectIDs pushback 1315;
	_this setPosWorld [7556.46,10566.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1316 = objNull;
if (_layer1224) then {
	_item1316 = createVehicle ["Land_Shoot_House_Wall_F",[7557.65,10566.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1316;
	_objects pushback _this;
	_objectIDs pushback 1316;
	_this setPosWorld [7557.65,10566.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1317 = objNull;
if (_layer1224) then {
	_item1317 = createVehicle ["Land_Shoot_House_Wall_F",[7562.06,10569.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1317;
	_objects pushback _this;
	_objectIDs pushback 1317;
	_this setPosWorld [7562.06,10569.2,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1318 = objNull;
if (_layer1224) then {
	_item1318 = createVehicle ["Land_Shoot_House_Wall_F",[7561.3,10568.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1318;
	_objects pushback _this;
	_objectIDs pushback 1318;
	_this setPosWorld [7561.3,10568.1,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1319 = objNull;
if (_layer1224) then {
	_item1319 = createVehicle ["Land_Shoot_House_Wall_F",[7561.73,10566.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1319;
	_objects pushback _this;
	_objectIDs pushback 1319;
	_this setPosWorld [7561.73,10566.1,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1320 = objNull;
if (_layer1224) then {
	_item1320 = createVehicle ["Land_Shoot_House_Wall_F",[7560.97,10564.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1320;
	_objects pushback _this;
	_objectIDs pushback 1320;
	_this setPosWorld [7560.97,10564.9,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1321 = objNull;
if (_layer1224) then {
	_item1321 = createVehicle ["Land_Shoot_House_Wall_F",[7560.2,10563.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1321;
	_objects pushback _this;
	_objectIDs pushback 1321;
	_this setPosWorld [7560.2,10563.7,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1322 = objNull;
if (_layer1224) then {
	_item1322 = createVehicle ["Land_Shoot_House_Wall_F",[7552.24,10572.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1322;
	_objects pushback _this;
	_objectIDs pushback 1322;
	_this setPosWorld [7552.24,10572.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1323 = objNull;
if (_layer1224) then {
	_item1323 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7543.79,10573.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1323;
	_objects pushback _this;
	_objectIDs pushback 1323;
	_this setPosWorld [7543.79,10573.3,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1324 = objNull;
if (_layer1224) then {
	_item1324 = createVehicle ["Land_Shoot_House_Wall_F",[7527.3,10573.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1324;
	_objects pushback _this;
	_objectIDs pushback 1324;
	_this setPosWorld [7527.3,10573.8,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1325 = objNull;
if (_layer1224) then {
	_item1325 = createVehicle ["Land_Shoot_House_Wall_F",[7537.07,10575.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1325;
	_objects pushback _this;
	_objectIDs pushback 1325;
	_this setPosWorld [7537.07,10575.9,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1326 = objNull;
if (_layer1224) then {
	_item1326 = createVehicle ["Land_Shoot_House_Wall_F",[7534.02,10571.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1326;
	_objects pushback _this;
	_objectIDs pushback 1326;
	_this setPosWorld [7534.02,10571.2,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1327 = objNull;
if (_layer1224) then {
	_item1327 = createVehicle ["Land_Shoot_House_Wall_F",[7543.36,10575.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1327;
	_objects pushback _this;
	_objectIDs pushback 1327;
	_this setPosWorld [7543.36,10575.2,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1328 = objNull;
if (_layer1224) then {
	_item1328 = createVehicle ["Land_Shoot_House_Wall_F",[7527.73,10571.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1328;
	_objects pushback _this;
	_objectIDs pushback 1328;
	_this setPosWorld [7527.73,10571.8,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1329 = objNull;
if (_layer1224) then {
	_item1329 = createVehicle ["Land_Shoot_House_Wall_F",[7541.22,10585,0],[],0,"CAN_COLLIDE"];
	_this = _item1329;
	_objects pushback _this;
	_objectIDs pushback 1329;
	_this setPosWorld [7541.22,10585,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1330 = objNull;
if (_layer1224) then {
	_item1330 = createVehicle ["Land_Shoot_House_Wall_F",[7541.65,10583.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1330;
	_objects pushback _this;
	_objectIDs pushback 1330;
	_this setPosWorld [7541.65,10583.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1331 = objNull;
if (_layer1224) then {
	_item1331 = createVehicle ["Land_Shoot_House_Wall_F",[7528.16,10569.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1331;
	_objects pushback _this;
	_objectIDs pushback 1331;
	_this setPosWorld [7528.16,10569.9,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1332 = objNull;
if (_layer1224) then {
	_item1332 = createVehicle ["Land_Shoot_House_Wall_F",[7528.16,10569.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1332;
	_objects pushback _this;
	_objectIDs pushback 1332;
	_this setPosWorld [7528.16,10569.9,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1333 = objNull;
if (_layer1224) then {
	_item1333 = createVehicle ["Land_Shoot_House_Wall_F",[7538.07,10585.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1333;
	_objects pushback _this;
	_objectIDs pushback 1333;
	_this setPosWorld [7538.07,10585.3,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1334 = objNull;
if (_layer1224) then {
	_item1334 = createVehicle ["Land_Shoot_House_Wall_F",[7537.5,10574,0],[],0,"CAN_COLLIDE"];
	_this = _item1334;
	_objects pushback _this;
	_objectIDs pushback 1334;
	_this setPosWorld [7537.5,10574,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1335 = objNull;
if (_layer1224) then {
	_item1335 = createVehicle ["Land_Shoot_House_Wall_F",[7526.02,10579.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1335;
	_objects pushback _this;
	_objectIDs pushback 1335;
	_this setPosWorld [7526.02,10579.6,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1336 = objNull;
if (_layer1224) then {
	_item1336 = createVehicle ["Land_Shoot_House_Wall_F",[7536.12,10584.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1336;
	_objects pushback _this;
	_objectIDs pushback 1336;
	_this setPosWorld [7536.12,10584.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1337 = objNull;
if (_layer1224) then {
	_item1337 = createVehicle ["Land_Shoot_House_Wall_F",[7530.26,10583.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1337;
	_objects pushback _this;
	_objectIDs pushback 1337;
	_this setPosWorld [7530.26,10583.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1338 = objNull;
if (_layer1224) then {
	_item1338 = createVehicle ["Land_Shoot_House_Wall_F",[7528.3,10583.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1338;
	_objects pushback _this;
	_objectIDs pushback 1338;
	_this setPosWorld [7528.3,10583.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1339 = objNull;
if (_layer1224) then {
	_item1339 = createVehicle ["Land_Shoot_House_Wall_F",[7542.93,10577.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1339;
	_objects pushback _this;
	_objectIDs pushback 1339;
	_this setPosWorld [7542.93,10577.2,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1340 = objNull;
if (_layer1224) then {
	_item1340 = createVehicle ["Land_Shoot_House_Wall_F",[7542.72,10578.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1340;
	_objects pushback _this;
	_objectIDs pushback 1340;
	_this setPosWorld [7542.72,10578.2,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1341 = objNull;
if (_layer1224) then {
	_item1341 = createVehicle ["Land_Shoot_House_Wall_F",[7540.02,10585.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1341;
	_objects pushback _this;
	_objectIDs pushback 1341;
	_this setPosWorld [7540.02,10585.8,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1342 = objNull;
if (_layer1224) then {
	_item1342 = createVehicle ["Land_Shoot_House_Wall_F",[7533.16,10575.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1342;
	_objects pushback _this;
	_objectIDs pushback 1342;
	_this setPosWorld [7533.16,10575.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1343 = objNull;
if (_layer1224) then {
	_item1343 = createVehicle ["Land_Shoot_House_Wall_F",[7527.73,10571.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1343;
	_objects pushback _this;
	_objectIDs pushback 1343;
	_this setPosWorld [7527.73,10571.8,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1344 = objNull;
if (_layer1224) then {
	_item1344 = createVehicle ["Land_Shoot_House_Wall_F",[7525.59,10581.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1344;
	_objects pushback _this;
	_objectIDs pushback 1344;
	_this setPosWorld [7525.59,10581.6,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1345 = objNull;
if (_layer1224) then {
	_item1345 = createVehicle ["Land_Shoot_House_Wall_F",[7536.64,10577.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1345;
	_objects pushback _this;
	_objectIDs pushback 1345;
	_this setPosWorld [7536.64,10577.9,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1346 = objNull;
if (_layer1224) then {
	_item1346 = createVehicle ["Land_Shoot_House_Wall_F",[7528.62,10576.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1346;
	_objects pushback _this;
	_objectIDs pushback 1346;
	_this setPosWorld [7528.62,10576.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1347 = objNull;
if (_layer1224) then {
	_item1347 = createVehicle ["Land_Shoot_House_Wall_F",[7532.73,10577,0],[],0,"CAN_COLLIDE"];
	_this = _item1347;
	_objects pushback _this;
	_objectIDs pushback 1347;
	_this setPosWorld [7532.73,10577,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1348 = objNull;
if (_layer1224) then {
	_item1348 = createVehicle ["Land_Shoot_House_Wall_F",[7531.88,10580.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1348;
	_objects pushback _this;
	_objectIDs pushback 1348;
	_this setPosWorld [7531.88,10580.9,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1349 = objNull;
if (_layer1224) then {
	_item1349 = createVehicle ["Land_Shoot_House_Wall_F",[7535.35,10583.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1349;
	_objects pushback _this;
	_objectIDs pushback 1349;
	_this setPosWorld [7535.35,10583.7,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1350 = objNull;
if (_layer1224) then {
	_item1350 = createVehicle ["Land_Shoot_House_Wall_F",[7531.45,10582.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1350;
	_objects pushback _this;
	_objectIDs pushback 1350;
	_this setPosWorld [7531.45,10582.9,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1351 = objNull;
if (_layer1224) then {
	_item1351 = createVehicle ["Land_Shoot_House_Wall_F",[7533.59,10573.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1351;
	_objects pushback _this;
	_objectIDs pushback 1351;
	_this setPosWorld [7533.59,10573.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1352 = objNull;
if (_layer1224) then {
	_item1352 = createVehicle ["Land_Shoot_House_Wall_F",[7541.95,10577,0],[],0,"CAN_COLLIDE"];
	_this = _item1352;
	_objects pushback _this;
	_objectIDs pushback 1352;
	_this setPosWorld [7541.95,10577,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1353 = objNull;
if (_layer1224) then {
	_item1353 = createVehicle ["Land_Shoot_House_Wall_F",[7540,10576.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1353;
	_objects pushback _this;
	_objectIDs pushback 1353;
	_this setPosWorld [7540,10576.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1354 = objNull;
if (_layer1224) then {
	_item1354 = createVehicle ["Land_Shoot_House_Wall_F",[7538.05,10576.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1354;
	_objects pushback _this;
	_objectIDs pushback 1354;
	_this setPosWorld [7538.05,10576.1,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1355 = objNull;
if (_layer1224) then {
	_item1355 = createVehicle ["Land_Shoot_House_Wall_F",[7532.83,10571.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1355;
	_objects pushback _this;
	_objectIDs pushback 1355;
	_this setPosWorld [7532.83,10571.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1356 = objNull;
if (_layer1224) then {
	_item1356 = createVehicle ["Land_Shoot_House_Wall_F",[7533.75,10568,0],[],0,"CAN_COLLIDE"];
	_this = _item1356;
	_objects pushback _this;
	_objectIDs pushback 1356;
	_this setPosWorld [7533.75,10568,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1357 = objNull;
if (_layer1224) then {
	_item1357 = createVehicle ["Land_Shoot_House_Wall_F",[7528.92,10571.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1357;
	_objects pushback _this;
	_objectIDs pushback 1357;
	_this setPosWorld [7528.92,10571.1,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1358 = objNull;
if (_layer1224) then {
	_item1358 = createVehicle ["Land_Shoot_House_Wall_F",[7526.35,10582.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1358;
	_objects pushback _this;
	_objectIDs pushback 1358;
	_this setPosWorld [7526.35,10582.8,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1359 = objNull;
if (_layer1224) then {
	_item1359 = createVehicle ["Land_Shoot_House_Wall_F",[7531.54,10577.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1359;
	_objects pushback _this;
	_objectIDs pushback 1359;
	_this setPosWorld [7531.54,10577.8,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1360 = objNull;
if (_layer1224) then {
	_item1360 = createVehicle ["Land_Shoot_House_Wall_F",[7543.36,10575.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1360;
	_objects pushback _this;
	_objectIDs pushback 1360;
	_this setPosWorld [7543.36,10575.2,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1361 = objNull;
if (_layer1224) then {
	_item1361 = createVehicle ["Land_Shoot_House_Wall_F",[7532.21,10584.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1361;
	_objects pushback _this;
	_objectIDs pushback 1361;
	_this setPosWorld [7532.21,10584.1,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1362 = objNull;
if (_layer1224) then {
	_item1362 = createVehicle ["Land_Shoot_House_Wall_F",[7535.78,10581.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1362;
	_objects pushback _this;
	_objectIDs pushback 1362;
	_this setPosWorld [7535.78,10581.8,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1363 = objNull;
if (_layer1224) then {
	_item1363 = createVehicle ["Land_Shoot_House_Wall_F",[7529.02,10566,0],[],0,"CAN_COLLIDE"];
	_this = _item1363;
	_objects pushback _this;
	_objectIDs pushback 1363;
	_this setPosWorld [7529.02,10566,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1364 = objNull;
if (_layer1224) then {
	_item1364 = createVehicle ["Land_Shoot_House_Wall_F",[7539.91,10558.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1364;
	_objects pushback _this;
	_objectIDs pushback 1364;
	_this setPosWorld [7539.91,10558.3,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1365 = objNull;
if (_layer1224) then {
	_item1365 = createVehicle ["Land_Shoot_House_Wall_F",[7544.22,10571.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1365;
	_objects pushback _this;
	_objectIDs pushback 1365;
	_this setPosWorld [7544.22,10571.3,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1366 = objNull;
if (_layer1224) then {
	_item1366 = createVehicle ["Land_Shoot_House_Wall_F",[7529.85,10562.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1366;
	_objects pushback _this;
	_objectIDs pushback 1366;
	_this setPosWorld [7529.85,10562.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1367 = objNull;
if (_layer1224) then {
	_item1367 = createVehicle ["Land_Shoot_House_Wall_F",[7545.72,10564.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1367;
	_objects pushback _this;
	_objectIDs pushback 1367;
	_this setPosWorld [7545.72,10564.5,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1368 = objNull;
if (_layer1224) then {
	_item1368 = createVehicle ["Land_Shoot_House_Wall_F",[7538.35,10570.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1368;
	_objects pushback _this;
	_objectIDs pushback 1368;
	_this setPosWorld [7538.35,10570.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1369 = objNull;
if (_layer1224) then {
	_item1369 = createVehicle ["Land_Shoot_House_Wall_F",[7531.32,10564.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1369;
	_objects pushback _this;
	_objectIDs pushback 1369;
	_this setPosWorld [7531.32,10564.4,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1370 = objNull;
if (_layer1224) then {
	_item1370 = createVehicle ["Land_Shoot_House_Wall_F",[7541.87,10558.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1370;
	_objects pushback _this;
	_objectIDs pushback 1370;
	_this setPosWorld [7541.87,10558.7,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1371 = objNull;
if (_layer1224) then {
	_item1371 = createVehicle ["Land_Shoot_House_Wall_F",[7530.91,10557.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1371;
	_objects pushback _this;
	_objectIDs pushback 1371;
	_this setPosWorld [7530.91,10557.3,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1372 = objNull;
if (_layer1224) then {
	_item1372 = createVehicle ["Land_Shoot_House_Wall_F",[7536,10557.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1372;
	_objects pushback _this;
	_objectIDs pushback 1372;
	_this setPosWorld [7536,10557.4,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1373 = objNull;
if (_layer1224) then {
	_item1373 = createVehicle ["Land_Shoot_House_Wall_F",[7534.05,10557,0],[],0,"CAN_COLLIDE"];
	_this = _item1373;
	_objects pushback _this;
	_objectIDs pushback 1373;
	_this setPosWorld [7534.05,10557,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1374 = objNull;
if (_layer1224) then {
	_item1374 = createVehicle ["Land_Shoot_House_Wall_F",[7538.78,10568.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1374;
	_objects pushback _this;
	_objectIDs pushback 1374;
	_this setPosWorld [7538.78,10568.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1375 = objNull;
if (_layer1224) then {
	_item1375 = createVehicle ["Land_Shoot_House_Wall_F",[7534.88,10567.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1375;
	_objects pushback _this;
	_objectIDs pushback 1375;
	_this setPosWorld [7534.88,10567.2,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1376 = objNull;
if (_layer1224) then {
	_item1376 = createVehicle ["Land_Shoot_House_Wall_F",[7546.14,10562.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1376;
	_objects pushback _this;
	_objectIDs pushback 1376;
	_this setPosWorld [7546.14,10562.5,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1377 = objNull;
if (_layer1224) then {
	_item1377 = createVehicle ["Land_Shoot_House_Wall_F",[7539.66,10564.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1377;
	_objects pushback _this;
	_objectIDs pushback 1377;
	_this setPosWorld [7539.66,10564.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1378 = objNull;
if (_layer1224) then {
	_item1378 = createVehicle ["Land_Shoot_House_Wall_F",[7540.67,10559.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1378;
	_objects pushback _this;
	_objectIDs pushback 1378;
	_this setPosWorld [7540.67,10559.5,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1379 = objNull;
if (_layer1224) then {
	_item1379 = createVehicle ["Land_Shoot_House_Wall_F",[7546.54,10560.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1379;
	_objects pushback _this;
	_objectIDs pushback 1379;
	_this setPosWorld [7546.54,10560.7,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1380 = objNull;
if (_layer1224) then {
	_item1380 = createVehicle ["Land_Shoot_House_Wall_F",[7536.77,10558.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1380;
	_objects pushback _this;
	_objectIDs pushback 1380;
	_this setPosWorld [7536.77,10558.6,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1381 = objNull;
if (_layer1224) then {
	_item1381 = createVehicle ["Land_Shoot_House_Wall_F",[7535.31,10565.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1381;
	_objects pushback _this;
	_objectIDs pushback 1381;
	_this setPosWorld [7535.31,10565.3,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1382 = objNull;
if (_layer1224) then {
	_item1382 = createVehicle ["Land_Shoot_House_Wall_F",[7545.77,10559.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1382;
	_objects pushback _this;
	_objectIDs pushback 1382;
	_this setPosWorld [7545.77,10559.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1383 = objNull;
if (_layer1224) then {
	_item1383 = createVehicle ["Land_Shoot_House_Wall_F",[7543.45,10570.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1383;
	_objects pushback _this;
	_objectIDs pushback 1383;
	_this setPosWorld [7543.45,10570.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1384 = objNull;
if (_layer1224) then {
	_item1384 = createVehicle ["Land_Shoot_House_Wall_F",[7539.55,10569.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1384;
	_objects pushback _this;
	_objectIDs pushback 1384;
	_this setPosWorld [7539.55,10569.3,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1385 = objNull;
if (_layer1224) then {
	_item1385 = createVehicle ["Land_Shoot_House_Wall_F",[7534.11,10566.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1385;
	_objects pushback _this;
	_objectIDs pushback 1385;
	_this setPosWorld [7534.11,10566.1,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1386 = objNull;
if (_layer1224) then {
	_item1386 = createVehicle ["Land_Shoot_House_Wall_F",[7532.16,10565.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1386;
	_objects pushback _this;
	_objectIDs pushback 1386;
	_this setPosWorld [7532.16,10565.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1387 = objNull;
if (_layer1224) then {
	_item1387 = createVehicle ["Land_Shoot_House_Wall_F",[7530.6,10563.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1387;
	_objects pushback _this;
	_objectIDs pushback 1387;
	_this setPosWorld [7530.6,10563.1,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1388 = objNull;
if (_layer1224) then {
	_item1388 = createVehicle ["Land_Shoot_House_Wall_F",[7532.1,10556.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1388;
	_objects pushback _this;
	_objectIDs pushback 1388;
	_this setPosWorld [7532.1,10556.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1389 = objNull;
if (_layer1224) then {
	_item1389 = createVehicle ["Land_Shoot_House_Wall_F",[7544.22,10571.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1389;
	_objects pushback _this;
	_objectIDs pushback 1389;
	_this setPosWorld [7544.22,10571.3,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1390 = objNull;
if (_layer1224) then {
	_item1390 = createVehicle ["Land_Shoot_House_Wall_F",[7528.61,10567.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1390;
	_objects pushback _this;
	_objectIDs pushback 1390;
	_this setPosWorld [7528.61,10567.9,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1391 = objNull;
if (_layer1224) then {
	_item1391 = createVehicle ["Land_Shoot_House_Wall_F",[7536.3,10560.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1391;
	_objects pushback _this;
	_objectIDs pushback 1391;
	_this setPosWorld [7536.3,10560.6,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1392 = objNull;
if (_layer1224) then {
	_item1392 = createVehicle ["Land_Shoot_House_Wall_F",[7530.34,10560.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1392;
	_objects pushback _this;
	_objectIDs pushback 1392;
	_this setPosWorld [7530.34,10560.1,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1393 = objNull;
if (_layer1224) then {
	_item1393 = createVehicle ["Land_Shoot_House_Wall_F",[7539.21,10566.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1393;
	_objects pushback _this;
	_objectIDs pushback 1393;
	_this setPosWorld [7539.21,10566.1,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1394 = objNull;
if (_layer1224) then {
	_item1394 = createVehicle ["Land_Shoot_House_Wall_F",[7541.5,10569.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1394;
	_objects pushback _this;
	_objectIDs pushback 1394;
	_this setPosWorld [7541.5,10569.7,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1396 = objNull;
if (_layer1395 && _layer1224) then {
	_item1396 = createVehicle ["Sign_Arrow_F",[7544.05,10578.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1396;
	_objects pushback _this;
	_objectIDs pushback 1396;
	_this setPosWorld [7544.05,10578.2,29.2333];
	_this setVectorDirAndUp [[0.973417,0.229039,0],[0,0,1]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1397 = objNull;
if (_layer1395 && _layer1224) then {
	_item1397 = createVehicle ["Sign_Arrow_F",[7534.31,10582.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1397;
	_objects pushback _this;
	_objectIDs pushback 1397;
	_this setPosWorld [7534.31,10582.4,29.2333];
	_this setVectorDirAndUp [[0.209529,-0.977802,0],[0,0,1]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1398 = objNull;
if (_layer1395 && _layer1224) then {
	_item1398 = createVehicle ["Sign_Arrow_F",[7529.27,10569.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1398;
	_objects pushback _this;
	_objectIDs pushback 1398;
	_this setPosWorld [7529.27,10569.5,29.2333];
	_this setVectorDirAndUp [[0.976827,0.214031,0],[0,0,1]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1399 = objNull;
if (_layer1395 && _layer1224) then {
	_item1399 = createVehicle ["Sign_Arrow_F",[7543.96,10562.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1399;
	_objects pushback _this;
	_objectIDs pushback 1399;
	_this setPosWorld [7543.96,10562.9,29.2333];
	_this setVectorDirAndUp [[-0.179738,0.983715,0],[0,0,1]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1400 = objNull;
if (_layer1395 && _layer1224) then {
	_item1400 = createVehicle ["Sign_Arrow_F",[7533.64,10559.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1400;
	_objects pushback _this;
	_objectIDs pushback 1400;
	_this setPosWorld [7533.64,10559.4,29.2333];
	_this setVectorDirAndUp [[-0.169558,0.98552,0],[0,0,1]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1401 = objNull;
if (_layer1395 && _layer1224) then {
	_item1401 = createVehicle ["Sign_Arrow_F",[7561,10575,0],[],0,"CAN_COLLIDE"];
	_this = _item1401;
	_objects pushback _this;
	_objectIDs pushback 1401;
	_this setPosWorld [7561,10575,29.2333];
	_this setVectorDirAndUp [[0.271565,-0.96242,0],[0,0,1]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1402 = objNull;
if (_layer1395 && _layer1224) then {
	_item1402 = createVehicle ["Sign_Arrow_F",[7558.25,10577.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1402;
	_objects pushback _this;
	_objectIDs pushback 1402;
	_this setPosWorld [7558.25,10577.7,29.2333];
	_this setVectorDirAndUp [[-0.232162,0.972677,0],[0,0,1]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1403 = objNull;
if (_layer1395 && _layer1224) then {
	_item1403 = createVehicle ["Sign_Arrow_F",[7550.54,10576.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1403;
	_objects pushback _this;
	_objectIDs pushback 1403;
	_this setPosWorld [7550.54,10576.7,29.2333];
	_this setVectorDirAndUp [[-0.242854,0.970063,0],[0,0,1]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1404 = objNull;
if (_layer1395 && _layer1224) then {
	_item1404 = createVehicle ["Sign_Arrow_F",[7553.19,10573.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1404;
	_objects pushback _this;
	_objectIDs pushback 1404;
	_this setPosWorld [7553.19,10573.3,29.2333];
	_this setVectorDirAndUp [[0.217306,-0.976103,0],[0,0,1]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1405 = objNull;
if (_layer1395 && _layer1224) then {
	_item1405 = createVehicle ["Sign_Arrow_F",[7545.77,10573.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1405;
	_objects pushback _this;
	_objectIDs pushback 1405;
	_this setPosWorld [7545.77,10573.8,29.2333];
	_this setVectorDirAndUp [[-0.976538,-0.215343,0],[0,0,1]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1406 = objNull;
if (_layer1395 && _layer1224) then {
	_item1406 = createVehicle ["Sign_Arrow_F",[7549.42,10585.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1406;
	_objects pushback _this;
	_objectIDs pushback 1406;
	_this setPosWorld [7549.42,10585.4,29.2333];
	_this setVectorDirAndUp [[0.976217,0.216797,0],[0,0,1]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1407 = objNull;
if (_layer1395 && _layer1224) then {
	_item1407 = createVehicle ["Sign_Arrow_F",[7534.11,10566.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1407;
	_objects pushback _this;
	_objectIDs pushback 1407;
	_this setPosWorld [7534.11,10566.9,29.2333];
	_this setVectorDirAndUp [[0.976827,0.214031,0],[0,0,1]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1408 = objNull;
if (_layer1395 && _layer1224) then {
	_item1408 = createVehicle ["Sign_Arrow_F",[7557.34,10573.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1408;
	_objects pushback _this;
	_objectIDs pushback 1408;
	_this setPosWorld [7557.34,10573.3,29.2333];
	_this setVectorDirAndUp [[0.976827,0.214031,0],[0,0,1]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1409 = objNull;
if (_layer1395 && _layer1224) then {
	_item1409 = createVehicle ["Sign_Arrow_F",[7554.48,10586.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1409;
	_objects pushback _this;
	_objectIDs pushback 1409;
	_this setPosWorld [7554.48,10586.4,29.2333];
	_this setVectorDirAndUp [[0.976827,0.214031,0],[0,0,1]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1410 = objNull;
if (_layer1395 && _layer1224) then {
	_item1410 = createVehicle ["Sign_Arrow_F",[7536.7,10582.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1410;
	_objects pushback _this;
	_objectIDs pushback 1410;
	_this setPosWorld [7536.7,10582.9,29.2333];
	_this setVectorDirAndUp [[-0.976538,-0.215343,0],[0,0,1]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1411 = objNull;
if (_layer1395 && _layer1224) then {
	_item1411 = createVehicle ["Sign_Arrow_F",[7539.31,10577.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1411;
	_objects pushback _this;
	_objectIDs pushback 1411;
	_this setPosWorld [7539.31,10577.5,29.2333];
	_this setVectorDirAndUp [[-0.976538,-0.215343,0],[0,0,1]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1412 = objNull;
if (_layer1395 && _layer1224) then {
	_item1412 = createVehicle ["Sign_Arrow_F",[7563.29,10566.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1412;
	_objects pushback _this;
	_objectIDs pushback 1412;
	_this setPosWorld [7563.29,10566.3,29.2219];
	_this setVectorDirAndUp [[-0.976437,-0.215343,0.0140559],[0.0143936,0,0.999896]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1413 = objNull;
if (_layer1395 && _layer1224) then {
	_item1413 = createVehicle ["Sign_Arrow_F",[7528.28,10581.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1413;
	_objects pushback _this;
	_objectIDs pushback 1413;
	_this setPosWorld [7528.28,10581.7,29.2333];
	_this setVectorDirAndUp [[0.973417,0.229039,0],[0,0,1]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1414 = objNull;
if (_layer1395 && _layer1224) then {
	_item1414 = createVehicle ["Sign_Arrow_F",[7559.22,10581.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1414;
	_objects pushback _this;
	_objectIDs pushback 1414;
	_this setPosWorld [7559.22,10581.9,29.2333];
	_this setVectorDirAndUp [[0.976827,0.214031,0],[0,0,1]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1417 = objNull;
if (_layer1224) then {
	_item1417 = createVehicle ["Land_Shoot_House_Wall_F",[7555.58,10561.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1417;
	_objects pushback _this;
	_objectIDs pushback 1417;
	_this setPosWorld [7555.58,10561.5,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1418 = objNull;
if (_layer1224) then {
	_item1418 = createVehicle ["Land_Shoot_House_Wall_F",[7557.62,10589.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1418;
	_objects pushback _this;
	_objectIDs pushback 1418;
	_this setPosWorld [7557.62,10589.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1419 = objNull;
if (_layer1224) then {
	_item1419 = createVehicle ["Land_Shoot_House_Wall_F",[7557.36,10572.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1419;
	_objects pushback _this;
	_objectIDs pushback 1419;
	_this setPosWorld [7557.36,10572.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1420 = objNull;
if (_layer1224) then {
	_item1420 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7551.24,10577,0],[],0,"CAN_COLLIDE"];
	_this = _item1420;
	_objects pushback _this;
	_objectIDs pushback 1420;
	_this setPosWorld [7551.24,10577,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1421 = objNull;
if (_layer1224) then {
	_item1421 = createVehicle ["Land_Shoot_House_Wall_F",[7550.81,10573.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1421;
	_objects pushback _this;
	_objectIDs pushback 1421;
	_this setPosWorld [7550.81,10573.8,30.5355];
	_this setVectorDirAndUp [[-0.214246,0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1422 = objNull;
if (_layer1224) then {
	_item1422 = createVehicle ["Land_Shoot_House_Wall_F",[7532.67,10568.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1422;
	_objects pushback _this;
	_objectIDs pushback 1422;
	_this setPosWorld [7532.67,10568.8,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1423 = objNull;
if (_layer1224) then {
	_item1423 = createVehicle ["Land_Shoot_House_Panels_Window_F",[7547.57,10574.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1423;
	_objects pushback _this;
	_objectIDs pushback 1423;
	_this setPosWorld [7547.57,10574.1,30.5355];
	_this setVectorDirAndUp [[-0.970125,-0.242604,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1424 = objNull;
if (_layer1224) then {
	_item1424 = createVehicle ["Land_Shoot_House_Wall_F",[7537.96,10557.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1424;
	_objects pushback _this;
	_objectIDs pushback 1424;
	_this setPosWorld [7537.96,10557.8,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1425 = objNull;
if (_layer1224) then {
	_item1425 = createVehicle ["Land_Shoot_House_Wall_F",[7543.84,10559.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1425;
	_objects pushback _this;
	_objectIDs pushback 1425;
	_this setPosWorld [7543.84,10559.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1426 = objNull;
if (_layer1224) then {
	_item1426 = createVehicle ["Land_Shoot_House_Wall_F",[7534.16,10584.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1426;
	_objects pushback _this;
	_objectIDs pushback 1426;
	_this setPosWorld [7534.16,10584.5,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1427 = objNull;
if (_layer1224) then {
	_item1427 = createVehicle ["Land_Shoot_House_Wall_F",[7526.45,10577.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1427;
	_objects pushback _this;
	_objectIDs pushback 1427;
	_this setPosWorld [7526.45,10577.7,30.5355];
	_this setVectorDirAndUp [[-0.97678,-0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1428 = objNull;
if (_layer1224) then {
	_item1428 = createVehicle ["Land_Shoot_House_Wall_F",[7530.21,10565.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1428;
	_objects pushback _this;
	_objectIDs pushback 1428;
	_this setPosWorld [7530.21,10565.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1429 = objNull;
if (_layer1224) then {
	_item1429 = createVehicle ["Land_Shoot_House_Wall_F",[7527.54,10577,0],[],0,"CAN_COLLIDE"];
	_this = _item1429;
	_objects pushback _this;
	_objectIDs pushback 1429;
	_this setPosWorld [7527.54,10577,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1430 = objNull;
if (_layer1224) then {
	_item1430 = createVehicle ["Land_Shoot_House_Wall_F",[7527.93,10574.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1430;
	_objects pushback _this;
	_objectIDs pushback 1430;
	_this setPosWorld [7527.93,10574.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1431 = objNull;
if (_layer1224) then {
	_item1431 = createVehicle ["Land_Shoot_House_Wall_F",[7545.92,10587,0],[],0,"CAN_COLLIDE"];
	_this = _item1431;
	_objects pushback _this;
	_objectIDs pushback 1431;
	_this setPosWorld [7545.92,10587,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1432 = objNull;
if (_layer1224) then {
	_item1432 = createVehicle ["Land_Shoot_House_Wall_F",[7542.01,10586.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1432;
	_objects pushback _this;
	_objectIDs pushback 1432;
	_this setPosWorld [7542.01,10586.2,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1433 = objNull;
if (_layer1224) then {
	_item1433 = createVehicle ["Land_Shoot_House_Wall_F",[7543.96,10586.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1433;
	_objects pushback _this;
	_objectIDs pushback 1433;
	_this setPosWorld [7543.96,10586.6,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1434 = objNull;
if (_layer1224) then {
	_item1434 = createVehicle ["Land_Shoot_House_Wall_F",[7530.63,10558.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1434;
	_objects pushback _this;
	_objectIDs pushback 1434;
	_this setPosWorld [7530.63,10558.7,30.5355];
	_this setVectorDirAndUp [[0.97678,0.214246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1435 = objNull;
if (_layer1224) then {
	_item1435 = createVehicle ["Land_Shoot_House_Wall_F",[7551.64,10560.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1435;
	_objects pushback _this;
	_objectIDs pushback 1435;
	_this setPosWorld [7551.64,10560.8,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1436 = objNull;
if (_layer1224) then {
	_item1436 = createVehicle ["Land_Shoot_House_Wall_F",[7549.68,10560.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1436;
	_objects pushback _this;
	_objectIDs pushback 1436;
	_this setPosWorld [7549.68,10560.3,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1437 = objNull;
if (_layer1224) then {
	_item1437 = createVehicle ["Land_Shoot_House_Wall_F",[7547.73,10559.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1437;
	_objects pushback _this;
	_objectIDs pushback 1437;
	_this setPosWorld [7547.73,10559.9,30.5355];
	_this setVectorDirAndUp [[0.214246,-0.97678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1438 = objNull;
if (_layer1224) then {
	_item1438 = createVehicle ["Land_InfoStand_V1_F",[7549.66,10556.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1438;
	_objects pushback _this;
	_objectIDs pushback 1438;
	_this setPosWorld [7549.66,10556.4,29.4354];
	_this setVectorDirAndUp [[-0.224543,0.974464,0],[0,0,1]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item1439 = objNull;
if (_layer1224) then {
	_item1439 = createVehicle ["Land_Scaffolding_New_F",[7525.99,10572.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1439;
	_objects pushback _this;
	_objectIDs pushback 1439;
	_this setPosWorld [7525.99,10572.9,31.6089];
	_this setVectorDirAndUp [[0.224419,-0.974493,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1440 = objNull;
if (_layer1224) then {
	_item1440 = createVehicle ["VR_Area_01_circle_4_yellow_F",[7549.93,10555.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1440;
	_objects pushback _this;
	_objectIDs pushback 1440;
	_this setPosWorld [7549.93,10555.2,28.8605];
	_this setVectorDirAndUp [[-0.211018,0.977482,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item1448 = objNull;
if (_layer1447) then {
	_item1448 = createVehicle ["TapeSign_F",[7558.83,10634.3,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1448;
	_objects pushback _this;
	_objectIDs pushback 1448;
	_this setPosWorld [7558.83,10634.3,29.0566];
	_this setVectorDirAndUp [[-0.866025,-0.5,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1449 = objNull;
if (_layer1447) then {
	_item1449 = createVehicle ["TapeSign_F",[7557.12,10637.2,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1449;
	_objects pushback _this;
	_objectIDs pushback 1449;
	_this setPosWorld [7557.12,10637.2,29.0527];
	_this setVectorDirAndUp [[-0.866025,-0.5,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1450 = objNull;
if (_layer1447) then {
	_item1450 = createSimpleObject ["Land_CampingTable_F",[7549.33,10630,28.8531]];
	_this = _item1450;
	_objects pushback _this;
	_objectIDs pushback 1450;
	_this setPosWorld [7549.33,10630,29.2647];
	_this setVectorDirAndUp [[0.857613,0.514291,-0.00217044],[0.00158197,0.00158221,0.999997]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1451 = objNull;
if (_layer1447) then {
	_item1451 = createVehicle ["Land_CncWall4_F",[7550.54,10630.4,0.00716019],[],0,"CAN_COLLIDE"];
	_this = _item1451;
	_objects pushback _this;
	_objectIDs pushback 1451;
	_this setPosWorld [7550.54,10630.4,30.6178];
	_this setVectorDirAndUp [[0.863281,0.504723,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1452 = objNull;
if (_layer1447) then {
	_item1452 = createVehicle ["Land_InfoStand_V1_F",[7555.73,10634.4,-9.15527e-005],[],0,"CAN_COLLIDE"];
	_this = _item1452;
	_objects pushback _this;
	_objectIDs pushback 1452;
	_this setPosWorld [7555.74,10634.4,29.3319];
	_this setVectorDirAndUp [[0.860775,0.50829,-0.0265995],[0.0223907,0.0143949,0.999646]];
	fr_at_button = _this;
	_this setVehicleVarName "fr_at_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item1453 = objNull;
if (_layer1447) then {
	_item1453 = createVehicle ["Sign_Arrow_Large_Blue_F",[7713.71,10783.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1453;
	_objects pushback _this;
	_objectIDs pushback 1453;
	_this setPosWorld [7713.71,10783.9,29.0327];
	_this setVectorDirAndUp [[0,0.999294,0.0375734],[-0.0215966,-0.0375646,0.999061]];
	fr_at_spawn = _this;
	_this setVehicleVarName "fr_at_spawn";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item1457 = objNull;
if (_layerRoot) then {
	_item1457 = createVehicle ["CamoNet_BLUFOR_open_F",[7514.59,10566.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1457;
	_objects pushback _this;
	_objectIDs pushback 1457;
	_this setPosWorld [7514.59,10566.5,30.0278];
	_this setVectorDirAndUp [[-0.99947,-0.0325446,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item1458 = objNull;
if (_layerRoot) then {
	_item1458 = createVehicle ["Land_Camping_Light_F",[7511.85,10565.9,0.815598],[],0,"CAN_COLLIDE"];
	_this = _item1458;
	_objects pushback _this;
	_objectIDs pushback 1458;
	_this setPosWorld [7511.85,10565.9,29.7943];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item1460 = objNull;
if (_layerRoot) then {
	_item1460 = createVehicle ["Land_InfoStand_V1_F",[8115.72,10150.6,0.158146],[],0,"CAN_COLLIDE"];
	_this = _item1460;
	_objects pushback _this;
	_objectIDs pushback 1460;
	_this setPosWorld [8115.71,10150.6,30.227];
	_this setVectorDirAndUp [[-0.008063,-0.999967,0.000619098],[-0.00885653,0.000690507,0.999961]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item1461 = objNull;
if (_layerRoot) then {
	_item1461 = createVehicle ["Land_InfoStand_V1_F",[7296.14,10498,0],[],0,"CAN_COLLIDE"];
	_this = _item1461;
	_objects pushback _this;
	_objectIDs pushback 1461;
	_this setPosWorld [7296.14,10498,38.7654];
	_this setVectorDirAndUp [[0.556658,0.830742,0],[0,0,1]];
	fr_button = _this;
	_this setVehicleVarName "fr_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item1463 = objNull;
if (_layerRoot) then {
	_item1463 = createVehicle ["SkeetMachine",[7559.98,10627.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1463;
	_objects pushback _this;
	_objectIDs pushback 1463;
	_this setPosWorld [7559.99,10627.2,29.2375];
	_this setVectorDirAndUp [[-0.79801,-0.602582,0.00861742],[0.00959889,0.00158818,0.999953]];
	sk1 = _this;
	_this setVehicleVarName "sk1";
	0 remoteExec ['setFeatureType', _this];
};

private _item1502 = objNull;
if (_layer1500) then {
	_item1502 = createVehicle ["Land_RepairDepot_01_tan_F",[8227.4,10179.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1502;
	_objects pushback _this;
	_objectIDs pushback 1502;
	_this setPosWorld [8227.4,10179.9,31.308];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1518 = objNull;
if (_layer1746) then {
	_item1518 = createVehicle ["B_supplyCrate_F",[7511.52,10568.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1518;
	_objects pushback _this;
	_objectIDs pushback 1518;
	_this setPosWorld [7511.52,10568.7,29.7524];
	_this setVectorDirAndUp [[0.997565,0.069742,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item1748 = objNull;
if (_layer1746) then {
	_item1748 = createVehicle ["Box_NATO_Wps_F",[8116.79,10154,0.916861],[],0,"CAN_COLLIDE"];
	_this = _item1748;
	_objects pushback _this;
	_objectIDs pushback 1748;
	_this setPosWorld [8116.79,10154,30.5843];
	_this setVectorDirAndUp [[-0.0591587,-0.997964,0.0238364],[0.0164929,0.0228978,0.999602]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1749 = objNull;
if (_layer1746) then {
	_item1749 = createVehicle ["Box_NATO_Wps_F",[8114.75,10157,0.908163],[],0,"CAN_COLLIDE"];
	_this = _item1749;
	_objects pushback _this;
	_objectIDs pushback 1749;
	_this setPosWorld [8114.75,10157,30.5961];
	_this setVectorDirAndUp [[0.00741496,-0.999682,-0.024098],[0.0155517,-0.0239805,0.999591]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1750 = objNull;
if (_layer1746) then {
	_item1750 = createVehicle ["Box_NATO_Wps_F",[8114.66,10153.9,0.929426],[],0,"CAN_COLLIDE"];
	_this = _item1750;
	_objects pushback _this;
	_objectIDs pushback 1750;
	_this setPosWorld [8114.66,10153.9,30.6207];
	_this setVectorDirAndUp [[0.0121785,-0.999668,0.0226984],[0.0164929,0.0228978,0.999602]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1751 = objNull;
if (_layer1746) then {
	_item1751 = createVehicle ["Box_NATO_Wps_F",[8117.13,10157.1,0.915264],[],0,"CAN_COLLIDE"];
	_this = _item1751;
	_objects pushback _this;
	_objectIDs pushback 1751;
	_this setPosWorld [8117.13,10157.1,30.5764];
	_this setVectorDirAndUp [[-0.0416019,-0.998854,-0.0236454],[0,-0.0236659,0.99972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1752 = objNull;
if (_layer1746) then {
	_item1752 = createVehicle ["B_supplyCrate_F",[7295.05,10499.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1752;
	_objects pushback _this;
	_objectIDs pushback 1752;
	_this setPosWorld [7295.05,10499.2,39.0824];
	_this setVectorDirAndUp [[0.663715,0.747986,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item1753 = objNull;
if (_layerRoot) then {
	_item1753 = createVehicle ["Land_TentLamp_01_suspended_F",[8112.21,10155.6,4.57158],[],0,"CAN_COLLIDE"];
	_this = _item1753;
	_objects pushback _this;
	_objectIDs pushback 1753;
	_this setPosWorld [8112.21,10155.6,34.1418];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1754 = objNull;
if (_layerRoot) then {
	_item1754 = createVehicle ["Land_TentLamp_01_suspended_F",[8122.54,10155.4,4.71304],[],0,"CAN_COLLIDE"];
	_this = _item1754;
	_objects pushback _this;
	_objectIDs pushback 1754;
	_this setPosWorld [8122.54,10155.4,34.1585];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1755 = objNull;
if (_layerRoot) then {
	_item1755 = createVehicle ["Land_TentLamp_01_suspended_F",[8133.68,10132.4,3.94223],[],0,"CAN_COLLIDE"];
	_this = _item1755;
	_objects pushback _this;
	_objectIDs pushback 1755;
	_this setPosWorld [8133.68,10132.4,33.1642];
	_this setVectorDirAndUp [[-0.0158988,0.999874,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1756 = objNull;
if (_layerRoot) then {
	_item1756 = createVehicle ["Land_TentLamp_01_suspended_F",[8133.51,10121.5,3.94271],[],0,"CAN_COLLIDE"];
	_this = _item1756;
	_objects pushback _this;
	_objectIDs pushback 1756;
	_this setPosWorld [8133.51,10121.5,33.1694];
	_this setVectorDirAndUp [[0.0240893,-0.99971,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1757 = objNull;
if (_layerRoot) then {
	_item1757 = createVehicle ["Land_TentLamp_01_suspended_F",[8138.51,10110.4,3.63052],[],0,"CAN_COLLIDE"];
	_this = _item1757;
	_objects pushback _this;
	_objectIDs pushback 1757;
	_this setPosWorld [8138.51,10110.4,32.7266];
	_this setVectorDirAndUp [[0.0457853,0.998951,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1760 = objNull;
if (_layerRoot) then {
	_item1760 = _item1758 createUnit ["B_Soldier_F",[8138.23,10120.3,0.612547],[],0,"CAN_COLLIDE"];
	_this = _item1760;
	_objects pushback _this;
	_objectIDs pushback 1760;
	_this setPosWorld [8138.23,10120.3,29.6797];
	_this setVectorDirAndUp [[0.998433,-0.0559593,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],["V_PlateCarrier1_rgr",[]],[],"H_HelmetB","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Gillis Miller";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male01ENG";;
	_this setpitch 1.04;;
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

private _item1761 = objNull;
if (_layerRoot) then {
	_item1761 = _item1758 createUnit ["B_Soldier_F",[8125.53,10131.5,0.293066],[],0,"CAN_COLLIDE"];
	_item1758 selectLeader _item1761;
	_this = _item1761;
	_objects pushback _this;
	_objectIDs pushback 1761;
	_this setPosWorld [8125.53,10131.6,29.6904];
	_this setVectorDirAndUp [[0.979431,0.201779,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],["V_PlateCarrier1_rgr",[]],[],"H_HelmetB","G_Combat",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Dwan Clarke";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1.04;;
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

private _item1762 = objNull;
if (_layerRoot) then {
	_item1762 = _item1758 createUnit ["B_Soldier_F",[8141.43,10127.8,0.657473],[],0,"CAN_COLLIDE"];
	_this = _item1762;
	_objects pushback _this;
	_objectIDs pushback 1762;
	_this setPosWorld [8141.43,10127.8,29.677];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],["V_PlateCarrier1_rgr",[]],[],"H_HelmetB","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Connor Robinson";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1;;
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

private _item1763 = objNull;
if (_layerRoot) then {
	_item1763 = _item1758 createUnit ["B_Soldier_F",[8116.24,10148.9,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1763;
	_objects pushback _this;
	_objectIDs pushback 1763;
	_this setPosWorld [8116.24,10149,29.4913];
	_this setVectorDirAndUp [[-0.997283,-0.0736599,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_ak104_zenitco01","rhs_acc_pgs64","","",["rhs_30Rnd_762x39mm_polymer",30],[],""],[],[],["U_B_CombatUniform_mcam",[]],["V_PlateCarrier1_rgr",[]],[],"H_HelmetB","G_Combat",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Lewis Wilson";;
	_this setface "WhiteHead_12";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["RELAX_4",["Acts_Ambient_Relax_4"],false,true] # 0 isEqualTo '') then      {        ["RELAX_4",["Acts_Ambient_Relax_4"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item1764 = objNull;
if (_layerRoot) then {
	_item1764 = _item1758 createUnit ["B_Soldier_F",[8114.46,10149,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1764;
	_objects pushback _this;
	_objectIDs pushback 1764;
	_this setPosWorld [8114.46,10149,29.5111];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],["V_PlateCarrier1_rgr",[]],[],"H_HelmetB","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Harrison Cooper";;
	_this setface "WhiteHead_14";;
	_this setspeaker "Male04ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["IDLE_1",["Acts_CivilIdle_1"],false,true] # 0 isEqualTo '') then      {        ["IDLE_1",["Acts_CivilIdle_1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item1187 = objNull;
if (_layerRoot) then {
	_item1187 = createTrigger ["EmptyDetectorArea10x10",[8159.94,9770.81,0],true];
	_this = _item1187;
	_triggers pushback _this;
	_triggerIDs pushback 1187;
	_item1187 setPosATL [8159.94,9770.81,0];
	_this setTriggerArea [5,20,177.296,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item1441 = objNull;
if (_layer1224) then {
	_item1441 = createTrigger ["EmptyDetectorAreaR50",[7539.55,10590.1,0],true];
	_this = _item1441;
	_triggers pushback _this;
	_triggerIDs pushback 1441;
	_item1441 setPosATL [7539.55,10590.1,0];
	_this setTriggerArea [50,50,0,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{player allowDamage false; player setCaptive true;}","call{player allowDamage true; player setCaptive false;}"];
};

private _item1442 = objNull;
if (_layer1224) then {
	_item1442 = createTrigger ["EmptyDetectorArea10x10",[7546.12,10573.7,0],true];
	_this = _item1442;
	_triggers pushback _this;
	_triggerIDs pushback 1442;
	_item1442 setPosATL [7546.12,10573.7,0];
	_this setTriggerArea [18,13.5,167.293,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};

private _item1519 = objNull;
if (_layer1746) then {
	_item1519 = createTrigger ["EmptyDetectorArea10x10",[8113.11,10092.2,1.41424],false];
	_this = _item1519;
	_triggers pushback _this;
	_triggerIDs pushback 1519;
	_item1519 setPosATL [8113.11,10092.2,1.41424];
	_this setTriggerArea [6,6,-174.263,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item1758;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
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

private _item1196 = objNull;
if (_layer1195) then {
	_item1196 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[8154.86,10157.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1196;
	_logics pushback _this;
	_logicIDs pushback 1196;
	_this setPosWorld [8154.86,10157.6,28.89];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this setVariable ["objectArea",[10,12,90,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item1197 = objNull;
if (_layer1195) then {
	_item1197 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[8116.84,10090.5,5.55656],[],0,"CAN_COLLIDE"];
	_this = _item1197;
	_logics pushback _this;
	_logicIDs pushback 1197;
	_this setPosWorld [8116.84,10090.5,34.9633];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this setVariable ["objectArea",[10,12,90,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item1198 = objNull;
if (_layer1195) then {
	_item1198 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[8156.53,10083.1,5.055],[],0,"CAN_COLLIDE"];
	_this = _item1198;
	_logics pushback _this;
	_logicIDs pushback 1198;
	_this setPosWorld [8156.53,10083.1,33.945];
	_this setVectorDirAndUp [[-8.74228e-008,-1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,8,180,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item1199 = objNull;
if (_layer1195) then {
	_item1199 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[7549.93,10576.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1199;
	_logics pushback _this;
	_logicIDs pushback 1199;
	_this setPosWorld [7549.93,10576.2,28.86];
	_this setVectorDirAndUp [[-0.258819,0.965926,0],[0,0,1]];
	_this setVariable ["objectArea",[60,30,345,true,-1]];
	_this setVariable ["#filter",5];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item1200 = objNull;
if (_layer1195) then {
	_item1200 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[7544.79,10582.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1200;
	_logics pushback _this;
	_logicIDs pushback 1200;
	_this setPosWorld [7544.79,10582.6,28.86];
	_this setVectorDirAndUp [[-0.258819,0.965926,0],[0,0,1]];
	_this setVariable ["objectArea",[15,15,345,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item1201 = objNull;
if (_layer1195) then {
	_item1201 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[7661.57,10752.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1201;
	_logics pushback _this;
	_logicIDs pushback 1201;
	_this setPosWorld [7661.57,10752.4,27.1];
	_this setVectorDirAndUp [[0.866025,0.5,0],[0,0,1]];
	_this setVariable ["objectArea",[125,150,60,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item1416 = objNull;
if (_layer1415 && _layer1224) then {
	_item1416 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[7555.29,10564.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1416;
	_logics pushback _this;
	_logicIDs pushback 1416;
	_this setPosWorld [7555.29,10564.2,28.86];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item1459 = objNull;
if (_layerRoot) then {
	_item1459 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[7515.89,10569,0],[],0,"CAN_COLLIDE"];
	_this = _item1459;
	_logics pushback _this;
	_logicIDs pushback 1459;
	_this setPosWorld [7515.89,10569,28.86];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	sh_end = _this;
	_this setVehicleVarName "sh_end";
};

private _item1520 = objNull;
if (_layer1746) then {
	_item1520 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8113.08,10133.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1520;
	_logics pushback _this;
	_logicIDs pushback 1520;
	_this setPosWorld [8113.08,10133.7,29.5314];
	_this setVectorDirAndUp [[0.0937684,0.995594,-0.000131735],[0.00959936,-0.000771789,0.999954]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer1746) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item1518,_item1519,_item1520,_item1748,_item1749,_item1750,_item1751,_item1752],[]]];};
if (_layer1500) then {missionNamespace setVariable ["base_mil_Repair Station",[[_item1502],[]]];};
if (_layer1447) then {missionNamespace setVariable ["base_mil_AT Range",[[_item1448,_item1449,_item1450,_item1451,_item1452,_item1453],[]]];};
if (_layer1415) then {missionNamespace setVariable ["base_mil_Spawns",[[_item1416],[]]];};
if (_layer1395) then {missionNamespace setVariable ["base_mil_Shoothouse Targets",[[_item1396,_item1397,_item1398,_item1399,_item1400,_item1401,_item1402,_item1403,_item1404,_item1405,_item1406,_item1407,_item1408,_item1409,_item1410,_item1411,_item1412,_item1413,_item1414],[]]];};
if (_layer1224) then {missionNamespace setVariable ["base_mil_Shoothouse",[[_item1225,_item1226,_item1227,_item1228,_item1229,_item1230,_item1231,_item1232,_item1233,_item1234,_item1235,_item1236,_item1237,_item1238,_item1239,_item1240,_item1241,_item1242,_item1243,_item1244,_item1245,_item1246,_item1247,_item1248,_item1249,_item1250,_item1251,_item1252,_item1253,_item1254,_item1255,_item1256,_item1257,_item1258,_item1259,_item1260,_item1261,_item1262,_item1263,_item1264,_item1265,_item1266,_item1267,_item1268,_item1269,_item1270,_item1271,_item1272,_item1273,_item1274,_item1275,_item1276,_item1277,_item1278,_item1279,_item1280,_item1281,_item1282,_item1283,_item1284,_item1285,_item1286,_item1287,_item1288,_item1289,_item1290,_item1291,_item1292,_item1293,_item1294,_item1295,_item1296,_item1297,_item1298,_item1299,_item1300,_item1301,_item1302,_item1303,_item1304,_item1305,_item1306,_item1307,_item1308,_item1309,_item1310,_item1311,_item1312,_item1313,_item1314,_item1315,_item1316,_item1317,_item1318,_item1319,_item1320,_item1321,_item1322,_item1323,_item1324,_item1325,_item1326,_item1327,_item1328,_item1329,_item1330,_item1331,_item1332,_item1333,_item1334,_item1335,_item1336,_item1337,_item1338,_item1339,_item1340,_item1341,_item1342,_item1343,_item1344,_item1345,_item1346,_item1347,_item1348,_item1349,_item1350,_item1351,_item1352,_item1353,_item1354,_item1355,_item1356,_item1357,_item1358,_item1359,_item1360,_item1361,_item1362,_item1363,_item1364,_item1365,_item1366,_item1367,_item1368,_item1369,_item1370,_item1371,_item1372,_item1373,_item1374,_item1375,_item1376,_item1377,_item1378,_item1379,_item1380,_item1381,_item1382,_item1383,_item1384,_item1385,_item1386,_item1387,_item1388,_item1389,_item1390,_item1391,_item1392,_item1393,_item1394,_item1396,_item1397,_item1398,_item1399,_item1400,_item1401,_item1402,_item1403,_item1404,_item1405,_item1406,_item1407,_item1408,_item1409,_item1410,_item1411,_item1412,_item1413,_item1414,_item1416,_item1417,_item1418,_item1419,_item1420,_item1421,_item1422,_item1423,_item1424,_item1425,_item1426,_item1427,_item1428,_item1429,_item1430,_item1431,_item1432,_item1433,_item1434,_item1435,_item1436,_item1437,_item1438,_item1439,_item1440,_item1441,_item1442],[]]];};
if (_layer1220) then {missionNamespace setVariable ["base_mil_Protection zones",[[_item1221,_item1222,_item1223],[]]];};
if (_layer1195) then {missionNamespace setVariable ["base_mil_Hide Terrains",[[_item1196,_item1197,_item1198,_item1199,_item1200,_item1201],[]]];};
if (_layer872) then {missionNamespace setVariable ["base_mil_Military Office",[[_item589,_item590,_item596,_item600,_item601,_item602,_item603,_item604,_item605,_item606,_item607,_item608,_item609,_item610,_item611,_item613,_item614,_item615,_item616,_item617,_item618,_item619,_item622,_item623,_item624,_item626,_item627,_item628,_item629,_item630,_item631,_item633,_item634,_item635,_item636,_item637,_item638,_item639,_item640,_item641,_item642,_item643,_item644,_item645,_item647,_item649,_item650,_item651,_item652,_item658,_item659,_item661,_item662,_item663,_item664,_item674,_item675,_item676,_item677,_item678,_item679,_item680,_item681,_item684,_item685,_item686,_item687,_item692,_item694,_item695,_item697,_item699,_item701,_item702,_item703,_item704,_item705,_item706,_item707,_item708,_item709,_item710,_item711,_item712,_item873,_item874,_item875,_item876,_item877,_item713,_item714,_item715,_item716,_item717,_item718,_item719,_item720,_item721,_item722,_item723,_item724,_item725,_item726,_item727,_item728,_item729,_item730,_item731,_item732,_item733,_item734,_item735,_item736,_item737,_item738,_item739,_item740,_item741,_item742,_item743,_item744,_item745,_item746,_item747,_item748,_item749,_item750,_item751,_item752,_item753,_item754,_item755,_item756,_item757,_item758,_item759,_item762,_item765,_item767,_item768,_item769,_item770,_item771,_item772,_item773,_item774,_item775,_item776,_item778,_item783,_item784,_item786,_item787,_item788,_item789,_item790,_item791,_item793,_item794,_item796,_item797,_item798,_item799,_item800,_item801,_item802,_item803,_item804,_item805,_item806,_item807,_item809,_item815,_item816,_item817,_item818,_item821,_item822,_item823,_item827,_item828,_item831,_item832,_item835,_item839,_item840,_item841,_item842,_item843,_item844,_item845,_item846,_item847,_item848,_item849,_item850,_item851,_item861,_item862,_item864,_item866,_item879],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item1452) then {
		this = _item1452;
		call{this addAction ["PULL","launch_skeet.sqf"];};
	};
	if !(isnull _item1518) then {
		this = _item1518;
		call{arsenals pushBack this};
	};
	if !(isnull _item1748) then {
		this = _item1748;
		call{arsenals pushBack this};
	};
	if !(isnull _item1749) then {
		this = _item1749;
		call{arsenals pushBack this};
	};
	if !(isnull _item1750) then {
		this = _item1750;
		call{arsenals pushBack this};
	};
	if !(isnull _item1751) then {
		this = _item1751;
		call{arsenals pushBack this};
	};
	if !(isnull _item1752) then {
		this = _item1752;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item1196) then {_item1196 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item1197) then {_item1197 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item1198) then {_item1198 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item1199) then {_item1199 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item1200) then {_item1200 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item1201) then {_item1201 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
