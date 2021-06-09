// Export of 'base_mil.Stratis' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer362 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer587 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer334 = (_allWhitelisted || {"firing range + skeet" in _layerWhiteList}) && {!("firing range + skeet" in _layerBlackList)};
private _layer326 = (_allWhitelisted || {"at range" in _layerWhiteList}) && {!("at range" in _layerBlackList)};
private _layer299 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer279 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer118 = (_allWhitelisted || {"shoothouse" in _layerWhiteList}) && {!("shoothouse" in _layerBlackList)};
private _layer117 = (_allWhitelisted || {"shoothouse with pit" in _layerWhiteList}) && {!("shoothouse with pit" in _layerBlackList)};
private _layer109 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer30 = (_allWhitelisted || {"office" in _layerWhiteList}) && {!("office" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item592 = grpNull;
if (_layerRoot) then {
	_item592 = createGroup west;
	_this = _item592;
	_groups pushback _this;
	_groupIDs pushback 592;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item31 = objNull;
if (_layer30) then {
	_item31 = createSimpleObject ["Land_PortableCabinet_01_bookcase_sand_F",[1913.32,5739.84,6.24709]];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [1913.32,5739.84,6.66504];
	_this setVectorDirAndUp [[-0.96037,0.278726,0.00114835],[0.00119573,0,0.999999]];
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

private _item32 = objNull;
if (_layer30) then {
	_item32 = createVehicle ["Desk",[1914.59,5733.59,0.61552],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [1914.59,5733.59,6.68655];
	_this setVectorDirAndUp [[0.218816,0.975766,-0.000261645],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer30) then {
	_item33 = createSimpleObject ["Land_OfficeCabinet_01_F",[1913.13,5739.07,6.24517]];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [1913.13,5739.07,7.02567];
	_this setVectorDirAndUp [[-0.963843,0.266468,0.0011525],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item34 = objNull;
if (_layer30) then {
	_item34 = createSimpleObject ["Land_OfficeChair_01_F",[1914.77,5734.89,6.20815]];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [1914.77,5734.89,6.88257];
	_this setVectorDirAndUp [[-0.128721,0.991681,0.000153916],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item35 = objNull;
if (_layer30) then {
	_item35 = createSimpleObject ["MapBoard_seismic_F",[1911.8,5730.82,6.28296]];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [1911.8,5730.82,7.25184];
	_this setVectorDirAndUp [[-0.995451,-0.0952637,0.00119029],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f_epc\civ\infoboards\data\mapboard_seismic_co.paa"];
};

private _item36 = objNull;
if (_layer30) then {
	_item36 = createSimpleObject ["Land_CampingChair_V2_white_F",[1918.91,5743.06,6.27411]];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [1918.91,5743.06,6.7806];
	_this setVectorDirAndUp [[0.977525,-0.210818,-0.00116886],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer30) then {
	_item37 = createVehicle ["Land_CampingChair_V2_white_F",[1918.68,5741.97,0.584399],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [1918.68,5741.97,6.78089];
	_this setVectorDirAndUp [[0.964213,-0.265125,-0.00115294],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer30) then {
	_item38 = createVehicle ["Land_GymRack_03_F",[1926.9,5753.4,0.567502],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [1926.9,5753.4,6.8402];
	_this setVectorDirAndUp [[0.21949,0.975615,-0.000262452],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layer30) then {
	_item39 = createVehicle ["Land_GymBench_01_F",[1929.17,5752.78,0.567502],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [1929.17,5752.78,6.84682];
	_this setVectorDirAndUp [[0.24511,0.969495,-0.000293086],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer30) then {
	_item40 = createSimpleObject ["Fridge_01_closed_F",[1927.07,5743.58,6.2575]];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [1927.07,5743.58,6.77599];
	_this setVectorDirAndUp [[0.248759,0.968565,-0.00029745],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item41 = objNull;
if (_layer30) then {
	_item41 = createSimpleObject ["Land_WaterCooler_01_new_F",[1927.94,5743.39,6.2575]];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [1927.94,5743.39,6.98958];
	_this setVectorDirAndUp [[0.248764,0.968564,-0.000297456],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item42 = objNull;
if (_layer30) then {
	_item42 = createSimpleObject ["Land_PCSet_01_screen_F",[1914.87,5733.47,7.1001]];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [1914.87,5733.47,7.35477];
	_this setVectorDirAndUp [[0.147055,-0.989121,0.00391708],[0.00911492,0.00531508,0.999944]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item43 = objNull;
if (_layer30) then {
	_item43 = createSimpleObject ["Land_PCSet_01_screen_F",[1914.28,5733.6,7.1023]];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [1914.28,5733.6,7.35698];
	_this setVectorDirAndUp [[-0.490181,-0.871621,0.000586125],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item44 = objNull;
if (_layer30) then {
	_item44 = createSimpleObject ["Land_PCSet_01_keyboard_F",[1914.61,5733.78,7.10094]];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [1914.61,5733.78,7.10888];
	_this setVectorDirAndUp [[-0.228559,-0.973503,0.00725794],[0.00911492,0.00531508,0.999944]];
	0 remoteExec ['setFeatureType', _this];
};

private _item45 = objNull;
if (_layer30) then {
	_item45 = createSimpleObject ["Land_PCSet_01_mouse_F",[1914.19,5733.92,7.10271]];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [1914.19,5733.92,7.12792];
	_this setVectorDirAndUp [[-0.273264,-0.961939,0.000326751],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item46 = objNull;
if (_layer30) then {
	_item46 = createVehicle ["Desk",[1914.32,5732.58,0.620515],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [1914.32,5732.58,6.6863];
	_this setVectorDirAndUp [[-0.261039,-0.965328,0.000312134],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layer30) then {
	_item47 = createSimpleObject ["Land_OfficeChair_01_F",[1914.2,5731.72,6.27938]];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [1914.2,5731.72,6.9538];
	_this setVectorDirAndUp [[-0.285303,-0.958437,0.000341146],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item48 = objNull;
if (_layer30) then {
	_item48 = createSimpleObject ["Land_PCSet_01_screen_F",[1914.04,5732.71,7.10048]];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [1914.04,5732.71,7.35515];
	_this setVectorDirAndUp [[-0.103908,0.994578,0.00421861],[-0.00694832,-0.00496737,0.999964]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item49 = objNull;
if (_layer30) then {
	_item49 = createSimpleObject ["Land_PCSet_01_screen_F",[1914.63,5732.55,7.10161]];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [1914.63,5732.55,7.35629];
	_this setVectorDirAndUp [[0.527618,0.849481,-0.000630891],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item50 = objNull;
if (_layer30) then {
	_item50 = createSimpleObject ["Land_PCSet_01_keyboard_F",[1914.29,5732.39,7.10067]];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [1914.29,5732.39,7.1086];
	_this setVectorDirAndUp [[0.270678,0.962647,0.00666283],[-0.00694832,-0.00496737,0.999964]];
	0 remoteExec ['setFeatureType', _this];
};

private _item51 = objNull;
if (_layer30) then {
	_item51 = createSimpleObject ["Land_PCSet_01_mouse_F",[1914.7,5732.23,7.10152]];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [1914.7,5732.23,7.12673];
	_this setVectorDirAndUp [[0.314834,0.949147,-0.000376457],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item52 = objNull;
if (_layer30) then {
	_item52 = createVehicle ["Desk",[1925.78,5732.12,0.590806],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [1925.78,5732.12,6.67262];
	_this setVectorDirAndUp [[0.218816,0.975766,-0.000261645],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layer30) then {
	_item53 = createSimpleObject ["Land_OfficeChair_01_F",[1925.94,5732.95,6.26536]];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [1925.94,5732.95,6.93978];
	_this setVectorDirAndUp [[0.181713,0.983352,-0.00021728],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item54 = objNull;
if (_layer30) then {
	_item54 = createVehicle ["Land_Laptop_unfolded_F",[1925.76,5732.25,1.41262],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [1925.76,5732.25,7.24371];
	_this setVectorDirAndUp [[0.210186,0.977636,-0.00711243],[0.00911492,0.00531508,0.999944]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"];
};

private _item55 = objNull;
if (_layer30) then {
	_item55 = createSimpleObject ["Land_Document_01_F",[1926.18,5732.15,7.09935]];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [1926.18,5732.15,7.10468];
	_this setVectorDirAndUp [[-0.0908962,-0.99586,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item56 = objNull;
if (_layer30) then {
	_item56 = createSimpleObject ["Land_File1_F",[1925.23,5732.26,7.08896]];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [1925.23,5732.26,7.09759];
	_this setVectorDirAndUp [[-0.396324,-0.91811,0.000473898],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item57 = objNull;
if (_layer30) then {
	_item57 = createSimpleObject ["Land_PencilYellow_F",[1925.2,5732.52,7.08899]];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [1925.2,5732.52,7.09317];
	_this setVectorDirAndUp [[-0.837333,-0.546692,0.00100123],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item58 = objNull;
if (_layer30) then {
	_item58 = createVehicle ["CUP_vending_machine",[1932.25,5748.06,0.567502],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [1932.25,5748.06,7.29896];
	_this setVectorDirAndUp [[0.963169,-0.268894,-0.00115169],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item59 = objNull;
if (_layer30) then {
	_item59 = createVehicle ["Land_MapBoard_01_Wall_Stratis_F",[1913.73,5742.86,1.768],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [1913.73,5742.86,8.00668];
	_this setVectorDirAndUp [[-0.966752,0.255716,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_stratis_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item60 = objNull;
if (_layer30) then {
	_item60 = createVehicle ["ProtectionZone_Invisible_F",[1916.42,5729.81,6.368],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [1916.42,5729.81,16.7671];
	_this setVectorDirAndUp [[-0.159364,-0.98722,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item61 = objNull;
if (_layer30) then {
	_item61 = createVehicle ["ProtectionZone_Invisible_F",[1972.05,5707.46,0],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [1972.05,5707.46,10.45];
	_this setVectorDirAndUp [[0.196443,0.980515,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item62 = objNull;
if (_layer30) then {
	_item62 = createVehicle ["Land_TentLamp_01_suspended_F",[1960.01,5704.35,4.78214],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [1960.01,5704.35,10.4962];
	_this setVectorDirAndUp [[-0.25935,-0.965783,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item63 = objNull;
if (_layer30) then {
	_item63 = createVehicle ["Land_TentLamp_01_suspended_F",[1921.94,5739.7,4.01154],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [1921.94,5739.7,9.7448];
	_this setVectorDirAndUp [[-0.25935,-0.965783,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item64 = objNull;
if (_layer30) then {
	_item64 = createVehicle ["Land_TentLamp_01_suspended_F",[1919.16,5729.04,4.0609],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [1919.16,5729.04,9.75013];
	_this setVectorDirAndUp [[-0.25935,-0.965783,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item70 = objNull;
if (_layer30) then {
	_item70 = createSimpleObject ["Land_CampingTable_white_F",[1963.02,5705.22,5.93424]];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [1963.02,5705.22,6.34563];
	_this setVectorDirAndUp [[-0.242674,-0.969816,-0.0237767],[0.00914114,-0.0267942,0.999599]];
	0 remoteExec ['setFeatureType', _this];
};

private _item71 = objNull;
if (_layer30) then {
	_item71 = createSimpleObject ["Land_CampingTable_white_F",[1962.23,5701.89,5.93991]];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [1962.23,5701.89,6.3513];
	_this setVectorDirAndUp [[-0.242632,-0.969843,0.0231148],[0.0208266,0.018614,0.99961]];
	0 remoteExec ['setFeatureType', _this];
};

private _item72 = objNull;
if (_layer30) then {
	_item72 = createSimpleObject ["Land_CampingTable_white_F",[1960.37,5702.36,5.94897]];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [1960.37,5702.36,6.3605];
	_this setVectorDirAndUp [[-0.242675,-0.970108,0.000529951],[-0.00894359,0.00278352,0.999956]];
	0 remoteExec ['setFeatureType', _this];
};

private _item77 = objNull;
if (_layer30) then {
	_item77 = createVehicle ["Land_i_Shed_Ind_F",[1958.25,5701.18,0.283813],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [1958.25,5701.18,7.48062];
	_this setVectorDirAndUp [[0.249078,0.968483,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item78 = objNull;
if (_layer30) then {
	_item78 = createVehicle ["Land_InfoStand_V1_F",[1954.95,5704.38,0.314912],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [1954.95,5704.38,6.52433];
	_this setVectorDirAndUp [[-0.960426,0.278386,0.00916503],[0.0114194,0.00647733,0.999914]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item80 = objNull;
if (_layer30) then {
	_item80 = createSimpleObject ["Land_CampingTable_white_F",[1961.13,5705.69,5.95395]];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [1961.13,5705.69,6.36549];
	_this setVectorDirAndUp [[-0.242684,-0.970062,-0.00921226],[-0.00229024,-0.00892321,0.999958]];
	0 remoteExec ['setFeatureType', _this];
};

private _item81 = objNull;
if (_layer30) then {
	_item81 = createVehicle ["Land_CampingChair_V2_white_F",[1918.39,5740.95,0.586425],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [1918.39,5740.95,6.78125];
	_this setVectorDirAndUp [[0.91456,-0.404448,-0.00109357],[0.00119573,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item355 = objNull;
if (_layer30) then {
	_item355 = createVehicle ["Land_CampingChair_V2_white_F",[1917.76,5743.5,0.58964],[],0,"CAN_COLLIDE"];
	_this = _item355;
	_objects pushback _this;
	_objectIDs pushback 355;
	_this setPosWorld [1917.76,5743.5,6.78613];
	_this setVectorDirAndUp [[0.977525,-0.210818,-0.00116916],[0.00119604,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item356 = objNull;
if (_layer30) then {
	_item356 = createVehicle ["Land_CampingChair_V2_white_F",[1917.52,5742.41,0.58964],[],0,"CAN_COLLIDE"];
	_this = _item356;
	_objects pushback _this;
	_objectIDs pushback 356;
	_this setPosWorld [1917.52,5742.41,6.78597];
	_this setVectorDirAndUp [[0.964213,-0.265125,-0.00115324],[0.00119604,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item357 = objNull;
if (_layer30) then {
	_item357 = createVehicle ["Land_CampingChair_V2_white_F",[1917.23,5741.39,0.58964],[],0,"CAN_COLLIDE"];
	_this = _item357;
	_objects pushback _this;
	_objectIDs pushback 357;
	_this setPosWorld [1917.23,5741.39,6.78268];
	_this setVectorDirAndUp [[0.91456,-0.404448,-0.00109385],[0.00119604,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer109) then {
	_item110 = createVehicle ["Land_RepairDepot_01_tan_F",[2071.32,5709.65,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [2071.27,5709.68,8.15312];
	_this setVectorDirAndUp [[-0.12491,-0.992119,0.0098998],[-0.0200001,0.0124937,0.999722]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item112 = objNull;
if (_layer109) then {
	_item112 = createVehicle ["B_Slingload_01_Fuel_F",[2079.43,5701.59,-0.00020504],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [2079.39,5701.6,7.41867];
	_this setVectorDirAndUp [[-0.982916,0.181371,-0.0313005],[-0.0299852,0.00999025,0.9995]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item113 = objNull;
if (_layerRoot) then {
	_item113 = createVehicle ["RU_WarfareBFieldhHospital",[1898.33,5776.01,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [1898.33,5776.01,5.32205];
	_this setVectorDirAndUp [[0.980516,-0.19644,0.000489089],[0,0.00248975,0.999997]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item119 = objNull;
if (_layer118 && _layer117) then {
	_item119 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2226.31,5517.96,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [2226.31,5517.96,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer118 && _layer117) then {
	_item120 = createVehicle ["Land_Shoot_House_Wall_F",[2234.32,5527.87,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [2234.32,5527.87,8.2326];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer118 && _layer117) then {
	_item121 = createVehicle ["Land_Shoot_House_Wall_F",[2225.3,5524.95,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [2225.3,5524.95,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer118 && _layer117) then {
	_item122 = createVehicle ["Land_Shoot_House_Wall_F",[2225.27,5520.95,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [2225.27,5520.95,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer118 && _layer117) then {
	_item123 = createVehicle ["Land_Shoot_House_Wall_F",[2226.32,5527.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [2226.32,5527.94,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer118 && _layer117) then {
	_item124 = createVehicle ["Land_Shoot_House_Wall_F",[2239.31,5526.83,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [2239.31,5526.83,8.00138];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer118 && _layer117) then {
	_item125 = createVehicle ["Land_Shoot_House_Wall_F",[2239.27,5520.84,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [2239.27,5520.84,8.24756];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer118 && _layer117) then {
	_item126 = createVehicle ["Land_Shoot_House_Wall_F",[2239.28,5522.84,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [2239.28,5522.84,8.21719];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer118 && _layer117) then {
	_item127 = createVehicle ["Land_Shoot_House_Wall_F",[2232.32,5527.89,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [2232.32,5527.89,8.26236];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer118 && _layer117) then {
	_item128 = createVehicle ["Land_Shoot_House_Wall_F",[2228.32,5527.92,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [2228.32,5527.92,8.27489];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer118 && _layer117) then {
	_item129 = createVehicle ["Land_Shoot_House_Wall_F",[2228.25,5517.93,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [2228.25,5517.93,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer118 && _layer117) then {
	_item130 = createVehicle ["Land_Shoot_House_Wall_F",[2225.31,5526.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [2225.31,5526.94,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer118 && _layer117) then {
	_item131 = createVehicle ["Land_Shoot_House_Wall_F",[2230.32,5527.91,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [2230.32,5527.91,8.26993];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer118 && _layer117) then {
	_item132 = createVehicle ["Land_Shoot_House_Wall_F",[2238.32,5527.84,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [2238.32,5527.84,8.00491];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer118 && _layer117) then {
	_item133 = createVehicle ["Land_Shoot_House_Wall_F",[2238.24,5517.85,0],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [2238.24,5517.85,8.25867];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer118 && _layer117) then {
	_item134 = createVehicle ["Land_Shoot_House_Wall_F",[2239.3,5524.83,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [2239.3,5524.83,8.17695];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer118 && _layer117) then {
	_item135 = createVehicle ["Land_Shoot_House_Wall_F",[2224.29,5523.96,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [2224.29,5523.96,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer118 && _layer117) then {
	_item136 = createVehicle ["Land_Shoot_House_Wall_F",[2222.27,5520.98,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [2222.27,5520.98,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer118 && _layer117) then {
	_item137 = createVehicle ["Land_Shoot_House_Wall_F",[2224.27,5520.96,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [2224.27,5520.96,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer118 && _layer117) then {
	_item138 = createVehicle ["Land_Shoot_House_Wall_F",[2220.27,5520.99,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [2220.27,5520.99,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer118 && _layer117) then {
	_item139 = createVehicle ["Land_Shoot_House_Wall_F",[2220.29,5523.99,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [2220.29,5523.99,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer118 && _layer117) then {
	_item140 = createVehicle ["Land_Shoot_House_Wall_F",[2239.23,5519,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [2239.23,5519,8.25125];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer118 && _layer117) then {
	_item141 = createVehicle ["Land_Shoot_House_Wall_F",[2236.24,5517.87,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [2236.24,5517.87,8.27367];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer118 && _layer117) then {
	_item142 = createVehicle ["Land_Shoot_House_Wall_F",[2220.23,5515.99,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [2220.23,5515.99,8.2755];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer118 && _layer117) then {
	_item143 = createVehicle ["Land_Shoot_House_Wall_F",[2222.23,5515.98,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [2222.23,5515.98,8.2755];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer118 && _layer117) then {
	_item144 = createVehicle ["Land_Shoot_House_Wall_F",[2239.18,5515.07,0],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [2239.18,5515.07,8.25167];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer118 && _layer117) then {
	_item145 = createVehicle ["Land_Shoot_House_Wall_F",[2234.08,5515.83,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [2234.08,5515.83,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer118 && _layer117) then {
	_item146 = createVehicle ["Land_Shoot_House_Wall_F",[2237.23,5519.02,0],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [2237.23,5519.02,8.26624];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer118 && _layer117) then {
	_item147 = createVehicle ["Land_Shoot_House_Wall_F",[2239.22,5517.02,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [2239.22,5517.02,8.25135];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer118 && _layer117) then {
	_item148 = createVehicle ["Land_Shoot_House_Wall_F",[2237.24,5514.83,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [2237.24,5514.83,8.26623];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer118 && _layer117) then {
	_item149 = createVehicle ["Land_Shoot_House_Wall_F",[2230.24,5517.91,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [2230.24,5517.91,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer118 && _layer117) then {
	_item150 = createVehicle ["Land_Shoot_House_Wall_F",[2225.26,5516.97,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [2225.26,5516.97,8.2755];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer118 && _layer117) then {
	_item151 = createVehicle ["Land_Shoot_House_Wall_F",[2225.25,5514.97,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [2225.25,5514.97,8.2755];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer118 && _layer117) then {
	_item152 = createVehicle ["Land_Shoot_House_Wall_F",[2222.29,5523.98,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [2222.29,5523.98,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer118 && _layer117) then {
	_item153 = createVehicle ["Land_Shoot_House_Wall_F",[2238.28,5521.85,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [2238.28,5521.85,8.25226];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer118 && _layer117) then {
	_item154 = createVehicle ["Land_Shoot_House_Wall_F",[2234.28,5521.88,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [2234.28,5521.88,8.27511];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer118 && _layer117) then {
	_item155 = createVehicle ["Land_Shoot_House_Wall_F",[2231.25,5518.91,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [2231.25,5518.91,8.2755];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layer118 && _layer117) then {
	_item156 = createVehicle ["Land_Shoot_House_Wall_F",[2231.27,5520.91,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [2231.27,5520.91,8.2755];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer118 && _layer117) then {
	_item157 = createVehicle ["Land_Shoot_House_Wall_F",[2232.28,5521.9,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [2232.28,5521.9,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer118 && _layer117) then {
	_item158 = createVehicle ["Land_Shoot_House_Wall_F",[2226.3,5523.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [2226.3,5523.94,8.2755];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item159 = objNull;
if (_layer118 && _layer117) then {
	_item159 = createVehicle ["Land_Shoot_House_Wall_F",[2228.3,5523.92,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [2228.3,5523.92,8.2755];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item160 = objNull;
if (_layer118 && _layer117) then {
	_item160 = createVehicle ["Land_Shoot_House_Wall_F",[2213.27,5523.06,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [2213.27,5523.06,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layer118 && _layer117) then {
	_item161 = createVehicle ["Land_Shoot_House_Wall_F",[2232.29,5523.89,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [2232.29,5523.89,8.27505];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item162 = objNull;
if (_layer118 && _layer117) then {
	_item162 = createVehicle ["Land_Shoot_House_Wall_F",[2233.3,5524.88,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [2233.3,5524.88,8.27006];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer118 && _layer117) then {
	_item163 = createVehicle ["Land_Shoot_House_Wall_F",[2233.31,5526.88,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [2233.31,5526.88,8.2626];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer118 && _layer117) then {
	_item164 = createVehicle ["Land_Shoot_House_Wall_F",[2231.3,5524.9,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [2231.3,5524.9,8.27502];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer118 && _layer117) then {
	_item165 = createVehicle ["Land_Shoot_House_Wall_F",[2230.28,5521.91,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [2230.28,5521.91,8.2755];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer118 && _layer117) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[2226.28,5521.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [2226.28,5521.94,8.2755];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer118 && _layer117) then {
	_item167 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2236.19,5510.86,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [2236.19,5510.86,8.27077];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer118 && _layer117) then {
	_item168 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2228.19,5510.93,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [2228.19,5510.93,8.2755];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer118 && _layer117) then {
	_item169 = createVehicle ["Land_Shoot_House_Wall_F",[2225.18,5509.95,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [2225.18,5509.95,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer118 && _layer117) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[2238.19,5510.85,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [2238.19,5510.85,8.25334];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer118 && _layer117) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[2232.11,5500.89,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [2232.11,5500.89,8.25886];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer118 && _layer117) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[2239.18,5509.84,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [2239.18,5509.84,8.24084];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer118 && _layer117) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[2225.15,5505.95,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [2225.15,5505.95,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer118 && _layer117) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[2234.19,5510.88,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [2234.19,5510.88,8.2727];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer118 && _layer117) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[2233.94,5507.04,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [2233.94,5507.04,8.26826];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer118 && _layer117) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[2239.15,5505.84,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [2239.15,5505.84,8.21783];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer118 && _layer117) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[2239.14,5503.84,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [2239.14,5503.84,8.20847];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer118 && _layer117) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[2239.12,5501.84,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [2239.12,5501.84,8.20871];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer118 && _layer117) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[2238.11,5500.85,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [2238.11,5500.85,8.21342];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer118 && _layer117) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[2236.11,5500.86,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [2236.11,5500.86,8.22357];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer118 && _layer117) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[2234.11,5500.88,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [2234.11,5500.88,8.23879];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer118 && _layer117) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[2225.12,5501.95,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [2225.12,5501.95,8.27783];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer118 && _layer117) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[2230.11,5500.91,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [2230.11,5500.91,8.26495];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer118 && _layer117) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[2220.18,5509.99,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [2220.18,5509.99,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer118 && _layer117) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[2222.18,5509.98,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [2222.18,5509.98,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer118 && _layer117) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[2224.18,5509.96,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [2224.18,5509.96,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer118 && _layer117) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[2224.16,5506.96,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [2224.16,5506.96,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer118 && _layer117) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[2220.15,5504.17,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [2220.15,5504.17,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer118 && _layer117) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[2229.2,5511.92,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [2229.2,5511.92,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer118 && _layer117) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[2239.16,5507.84,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [2239.16,5507.84,8.23265];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer118 && _layer117) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[2227.21,5513.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [2227.21,5513.94,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer118 && _layer117) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[2239.19,5513.52,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [2239.19,5513.52,8.25154];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer118 && _layer117) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[2235.2,5511.87,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [2235.2,5511.87,8.27518];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer118 && _layer117) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[2239.21,5511.82,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [2239.21,5511.82,8.25054];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer118 && _layer117) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[2226.11,5500.94,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [2226.11,5500.94,8.27787];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer118 && _layer117) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[2238.23,5513.82,0],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [2238.23,5513.82,8.25879];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer118 && _layer117) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[2228.25,5514.83,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [2228.25,5514.83,8.2755];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer118 && _layer117) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[2235.03,5516.97,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [2235.03,5516.97,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer118 && _layer117) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[2225.14,5503.95,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [2225.14,5503.95,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer118 && _layer117) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[2226.15,5505.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [2226.15,5505.94,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer118 && _layer117) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[2228.15,5505.93,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [2228.15,5505.93,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer118 && _layer117) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[2230.15,5505.91,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [2230.15,5505.91,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer118 && _layer117) then {
	_item203 = createVehicle ["Land_Shoot_House_Wall_F",[2231.14,5504.9,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [2231.14,5504.9,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item204 = objNull;
if (_layer118 && _layer117) then {
	_item204 = createVehicle ["Land_Shoot_House_Wall_F",[2236.14,5507,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item204;
	_objects pushback _this;
	_objectIDs pushback 204;
	_this setPosWorld [2236.14,5507,8.26088];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item205 = objNull;
if (_layer118 && _layer117) then {
	_item205 = createVehicle ["Land_Shoot_House_Wall_F",[2235.13,5506.01,0],[],0,"CAN_COLLIDE"];
	_this = _item205;
	_objects pushback _this;
	_objectIDs pushback 205;
	_this setPosWorld [2235.13,5506.01,8.26269];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item206 = objNull;
if (_layer118 && _layer117) then {
	_item206 = createVehicle ["Land_Shoot_House_Wall_F",[2235.12,5504.01,0],[],0,"CAN_COLLIDE"];
	_this = _item206;
	_objects pushback _this;
	_objectIDs pushback 206;
	_this setPosWorld [2235.12,5504.01,8.25992];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item207 = objNull;
if (_layer118 && _layer117) then {
	_item207 = createVehicle ["Land_Shoot_House_Wall_F",[2234.11,5503.01,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [2234.11,5503.01,8.2551];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item208 = objNull;
if (_layer118 && _layer117) then {
	_item208 = createVehicle ["Land_Shoot_House_Wall_F",[2233.07,5508.1,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [2233.07,5508.1,8.27282];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item209 = objNull;
if (_layer118 && _layer117) then {
	_item209 = createVehicle ["Land_Shoot_House_Wall_F",[2227.2,5511.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [2227.2,5511.94,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item210 = objNull;
if (_layer118 && _layer117) then {
	_item210 = createVehicle ["Land_Shoot_House_Panels_Window_F",[2219.22,5515,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [2219.22,5515,8.2755];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item211 = objNull;
if (_layer118 && _layer117) then {
	_item211 = createVehicle ["Land_Shoot_House_Wall_F",[2203.25,5519.13,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [2203.25,5519.13,8.27923];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item212 = objNull;
if (_layer118 && _layer117) then {
	_item212 = createVehicle ["Land_Shoot_House_Wall_F",[2213.25,5519.05,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [2213.25,5519.05,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item213 = objNull;
if (_layer118 && _layer117) then {
	_item213 = createVehicle ["Land_Shoot_House_Wall_F",[2209.22,5515.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [2209.22,5515.08,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item214 = objNull;
if (_layer118 && _layer117) then {
	_item214 = createVehicle ["Land_Shoot_House_Wall_F",[2213.21,5515.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [2213.21,5515.08,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item215 = objNull;
if (_layer118 && _layer117) then {
	_item215 = createVehicle ["Land_Shoot_House_Wall_F",[2203.24,5517.13,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [2203.24,5517.13,8.27931];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item216 = objNull;
if (_layer118 && _layer117) then {
	_item216 = createVehicle ["Land_Shoot_House_Wall_F",[2219.32,5527,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [2219.32,5527,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item217 = objNull;
if (_layer118 && _layer117) then {
	_item217 = createVehicle ["Land_Shoot_House_Wall_F",[2219.3,5525,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [2219.3,5525,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item218 = objNull;
if (_layer118 && _layer117) then {
	_item218 = createVehicle ["Land_Shoot_House_Wall_F",[2203.22,5515.13,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [2203.22,5515.13,8.28522];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item219 = objNull;
if (_layer118 && _layer117) then {
	_item219 = createVehicle ["Land_Shoot_House_Wall_F",[2203.22,5515.13,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [2203.22,5515.13,8.28522];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item220 = objNull;
if (_layer118 && _layer117) then {
	_item220 = createVehicle ["Land_Shoot_House_Wall_F",[2216.32,5528.02,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [2216.32,5528.02,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item221 = objNull;
if (_layer118 && _layer117) then {
	_item221 = createVehicle ["Land_Shoot_House_Wall_F",[2213.24,5517.05,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [2213.24,5517.05,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item222 = objNull;
if (_layer118 && _layer117) then {
	_item222 = createVehicle ["Land_Shoot_House_Wall_F",[2203.3,5525.13,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [2203.3,5525.13,8.3875];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item223 = objNull;
if (_layer118 && _layer117) then {
	_item223 = createVehicle ["Land_Shoot_House_Wall_F",[2214.33,5528.04,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [2214.33,5528.04,8.2757];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item224 = objNull;
if (_layer118 && _layer117) then {
	_item224 = createVehicle ["Land_Shoot_House_Wall_F",[2208.32,5528.09,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [2208.32,5528.09,8.28624];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item225 = objNull;
if (_layer118 && _layer117) then {
	_item225 = createVehicle ["Land_Shoot_House_Wall_F",[2206.32,5528.1,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [2206.32,5528.1,8.3326];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item226 = objNull;
if (_layer118 && _layer117) then {
	_item226 = createVehicle ["Land_Shoot_House_Wall_F",[2219.25,5519,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item226;
	_objects pushback _this;
	_objectIDs pushback 226;
	_this setPosWorld [2219.25,5519,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item227 = objNull;
if (_layer118 && _layer117) then {
	_item227 = createVehicle ["Land_Shoot_House_Wall_F",[2219.26,5520,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_objects pushback _this;
	_objectIDs pushback 227;
	_this setPosWorld [2219.26,5520,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item228 = objNull;
if (_layer118 && _layer117) then {
	_item228 = createVehicle ["Land_Shoot_House_Wall_F",[2218.32,5528.01,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_objects pushback _this;
	_objectIDs pushback 228;
	_this setPosWorld [2218.32,5528.01,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item229 = objNull;
if (_layer118 && _layer117) then {
	_item229 = createVehicle ["Land_Shoot_House_Wall_F",[2209.25,5519.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item229;
	_objects pushback _this;
	_objectIDs pushback 229;
	_this setPosWorld [2209.25,5519.08,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item230 = objNull;
if (_layer118 && _layer117) then {
	_item230 = createVehicle ["Land_Shoot_House_Wall_F",[2203.24,5517.13,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [2203.24,5517.13,8.27931];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item231 = objNull;
if (_layer118 && _layer117) then {
	_item231 = createVehicle ["Land_Shoot_House_Wall_F",[2203.32,5527.13,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [2203.32,5527.13,8.43558];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item232 = objNull;
if (_layer118 && _layer117) then {
	_item232 = createVehicle ["Land_Shoot_House_Wall_F",[2213.27,5521.05,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [2213.27,5521.05,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item233 = objNull;
if (_layer118 && _layer117) then {
	_item233 = createVehicle ["Land_Shoot_House_Wall_F",[2205.05,5521.11,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [2205.05,5521.11,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item234 = objNull;
if (_layer118 && _layer117) then {
	_item234 = createVehicle ["Land_Shoot_House_Wall_F",[2209.27,5521.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [2209.27,5521.08,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item235 = objNull;
if (_layer118 && _layer117) then {
	_item235 = createVehicle ["Land_Shoot_House_Wall_F",[2209.3,5525.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item235;
	_objects pushback _this;
	_objectIDs pushback 235;
	_this setPosWorld [2209.3,5525.08,8.2782];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item236 = objNull;
if (_layer118 && _layer117) then {
	_item236 = createVehicle ["Land_Shoot_House_Wall_F",[2213.32,5527.05,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [2213.32,5527.05,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item237 = objNull;
if (_layer118 && _layer117) then {
	_item237 = createVehicle ["Land_Shoot_House_Wall_F",[2209.32,5527.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [2209.32,5527.08,8.28221];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item238 = objNull;
if (_layer118 && _layer117) then {
	_item238 = createVehicle ["Land_Shoot_House_Wall_F",[2209.24,5517.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [2209.24,5517.08,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item239 = objNull;
if (_layer118 && _layer117) then {
	_item239 = createVehicle ["Land_Shoot_House_Wall_F",[2218.25,5519.01,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [2218.25,5519.01,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item240 = objNull;
if (_layer118 && _layer117) then {
	_item240 = createVehicle ["Land_Shoot_House_Wall_F",[2210.31,5519.02,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [2210.31,5519.02,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item241 = objNull;
if (_layer118 && _layer117) then {
	_item241 = createVehicle ["Land_Shoot_House_Wall_F",[2214.25,5519.04,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [2214.25,5519.04,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item242 = objNull;
if (_layer118 && _layer117) then {
	_item242 = createVehicle ["Land_Shoot_House_Wall_F",[2208.23,5516.09,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [2208.23,5516.09,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item243 = objNull;
if (_layer118 && _layer117) then {
	_item243 = createVehicle ["Land_Shoot_House_Wall_F",[2208.26,5512.07,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [2208.26,5512.07,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item244 = objNull;
if (_layer118 && _layer117) then {
	_item244 = createVehicle ["Land_Shoot_House_Wall_F",[2204.23,5516.12,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [2204.23,5516.12,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item245 = objNull;
if (_layer118 && _layer117) then {
	_item245 = createVehicle ["Land_Shoot_House_Wall_F",[2204.33,5528.12,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [2204.33,5528.12,8.37907];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item246 = objNull;
if (_layer118 && _layer117) then {
	_item246 = createVehicle ["Land_Shoot_House_Wall_F",[2208.28,5522.09,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [2208.28,5522.09,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item247 = objNull;
if (_layer118 && _layer117) then {
	_item247 = createVehicle ["Land_Shoot_House_Wall_F",[2210.32,5528.07,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [2210.32,5528.07,8.28094];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item248 = objNull;
if (_layer118 && _layer117) then {
	_item248 = createVehicle ["Land_Shoot_House_Wall_F",[2213.3,5525.05,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [2213.3,5525.05,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item249 = objNull;
if (_layer118 && _layer117) then {
	_item249 = createVehicle ["Land_Shoot_House_Wall_F",[2203.19,5511.13,0],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [2203.19,5511.13,8.28361];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item250 = objNull;
if (_layer118 && _layer117) then {
	_item250 = createVehicle ["Land_Shoot_House_Wall_F",[2212.1,5501.21,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [2212.1,5501.21,8.28919];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item251 = objNull;
if (_layer118 && _layer117) then {
	_item251 = createVehicle ["Land_Shoot_House_Wall_F",[2219.2,5513,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [2219.2,5513,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item252 = objNull;
if (_layer118 && _layer117) then {
	_item252 = createVehicle ["Land_Shoot_House_Wall_F",[2203.14,5507.16,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [2203.14,5507.16,8.29259];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item253 = objNull;
if (_layer118 && _layer117) then {
	_item253 = createVehicle ["Land_Shoot_House_Wall_F",[2219.06,5505.04,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [2219.06,5505.04,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item254 = objNull;
if (_layer118 && _layer117) then {
	_item254 = createVehicle ["Land_Shoot_House_Wall_F",[2213.21,5513.05,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [2213.21,5513.05,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item255 = objNull;
if (_layer118 && _layer117) then {
	_item255 = createVehicle ["Land_Shoot_House_Wall_F",[2205.08,5509.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [2205.08,5509.08,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item256 = objNull;
if (_layer118 && _layer117) then {
	_item256 = createVehicle ["Land_Shoot_House_Wall_F",[2214.1,5501.19,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [2214.1,5501.19,8.28428];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item257 = objNull;
if (_layer118 && _layer117) then {
	_item257 = createVehicle ["Land_Shoot_House_Wall_F",[2203.11,5502.28,0],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [2203.11,5502.28,8.38518];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item258 = objNull;
if (_layer118 && _layer117) then {
	_item258 = createVehicle ["Land_Shoot_House_Wall_F",[2208.1,5501.24,0],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [2208.1,5501.24,8.31584];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item259 = objNull;
if (_layer118 && _layer117) then {
	_item259 = createVehicle ["Land_Shoot_House_Wall_F",[2206.11,5501.26,0],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [2206.11,5501.26,8.3389];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item260 = objNull;
if (_layer118 && _layer117) then {
	_item260 = createVehicle ["Land_Shoot_House_Wall_F",[2209.19,5511.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [2209.19,5511.08,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item261 = objNull;
if (_layer118 && _layer117) then {
	_item261 = createVehicle ["Land_Shoot_House_Wall_F",[2219.16,5511.02,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [2219.16,5511.02,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item262 = objNull;
if (_layer118 && _layer117) then {
	_item262 = createVehicle ["Land_Shoot_House_Wall_F",[2213.18,5511.06,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [2213.18,5511.06,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item263 = objNull;
if (_layer118 && _layer117) then {
	_item263 = createVehicle ["Land_Shoot_House_Wall_F",[2213.18,5507.01,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [2213.18,5507.01,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item264 = objNull;
if (_layer118 && _layer117) then {
	_item264 = createVehicle ["Land_Shoot_House_Wall_F",[2219.09,5507.02,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [2219.09,5507.02,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item265 = objNull;
if (_layer118 && _layer117) then {
	_item265 = createVehicle ["Land_Shoot_House_Wall_F",[2209.11,5502.23,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [2209.11,5502.23,8.2909];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item266 = objNull;
if (_layer118 && _layer117) then {
	_item266 = createVehicle ["Land_Shoot_House_Wall_F",[2209.17,5509.08,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [2209.17,5509.08,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item267 = objNull;
if (_layer118 && _layer117) then {
	_item267 = createVehicle ["Land_Shoot_House_Wall_F",[2218.1,5501.16,0],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [2218.1,5501.16,8.2826];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item268 = objNull;
if (_layer118 && _layer117) then {
	_item268 = createVehicle ["Land_Shoot_House_Wall_F",[2218.2,5512.01,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [2218.2,5512.01,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item269 = objNull;
if (_layer118 && _layer117) then {
	_item269 = createVehicle ["Land_Shoot_House_Wall_F",[2212.17,5511.97,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [2212.17,5511.97,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item270 = objNull;
if (_layer118 && _layer117) then {
	_item270 = createVehicle ["Land_Shoot_House_Wall_F",[2210.24,5511.99,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [2210.24,5511.99,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item271 = objNull;
if (_layer118 && _layer117) then {
	_item271 = createVehicle ["Land_Shoot_House_Wall_F",[2204.11,5508.03,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [2204.11,5508.03,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item272 = objNull;
if (_layer118 && _layer117) then {
	_item272 = createVehicle ["Land_Shoot_House_Wall_F",[2204.11,5501.27,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [2204.11,5501.27,8.39825];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item273 = objNull;
if (_layer118 && _layer117) then {
	_item273 = createVehicle ["Land_Shoot_House_Wall_F",[2219.2,5513,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [2219.2,5513,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item274 = objNull;
if (_layer118 && _layer117) then {
	_item274 = createVehicle ["Land_Shoot_House_Wall_F",[2203.22,5513.1,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [2203.22,5513.1,8.28524];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item275 = objNull;
if (_layer118 && _layer117) then {
	_item275 = createVehicle ["Land_Shoot_House_Wall_F",[2209.09,5504.26,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [2209.09,5504.26,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item276 = objNull;
if (_layer118 && _layer117) then {
	_item276 = createVehicle ["Land_Shoot_House_Wall_F",[2203.18,5505.13,0],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [2203.18,5505.13,8.29707];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item277 = objNull;
if (_layer118 && _layer117) then {
	_item277 = createVehicle ["Land_Shoot_House_Wall_F",[2213.17,5509.05,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [2213.17,5509.05,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item278 = objNull;
if (_layer118 && _layer117) then {
	_item278 = createVehicle ["Land_Shoot_House_Wall_F",[2216.2,5512.03,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [2216.2,5512.03,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item280 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item280 = createVehicle ["Sign_Arrow_F",[2220.56,5519.72,0],[],0,"CAN_COLLIDE"];
	_this = _item280;
	_objects pushback _this;
	_objectIDs pushback 280;
	_this setPosWorld [2220.56,5519.72,6.97326];
	_this setVectorDirAndUp [[0.999974,0.00715174,0],[0,0,1]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item281 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item281 = createVehicle ["Sign_Arrow_F",[2211.99,5525.94,0],[],0,"CAN_COLLIDE"];
	_this = _item281;
	_objects pushback _this;
	_objectIDs pushback 281;
	_this setPosWorld [2211.99,5525.94,6.97328];
	_this setVectorDirAndUp [[-0.0128453,-0.999918,0],[0,0,1]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item282 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item282 = createVehicle ["Sign_Arrow_F",[2206.27,5519.1,0],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [2206.27,5519.1,6.97326];
	_this setVectorDirAndUp [[0.999966,-0.00823886,0],[0,0,1]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item283 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item283 = createVehicle ["Sign_Arrow_F",[2216.33,5507.72,0],[],0,"CAN_COLLIDE"];
	_this = _item283;
	_objects pushback _this;
	_objectIDs pushback 283;
	_this setPosWorld [2216.33,5507.72,6.97326];
	_this setVectorDirAndUp [[0.0432048,0.999066,0],[0,0,1]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item284 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item284 = createVehicle ["Sign_Arrow_F",[2206.24,5503.73,0],[],0,"CAN_COLLIDE"];
	_this = _item284;
	_objects pushback _this;
	_objectIDs pushback 284;
	_this setPosWorld [2206.24,5503.73,6.98171];
	_this setVectorDirAndUp [[0.0535319,0.998566,0],[0,0,1]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item285 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item285 = createVehicle ["Sign_Arrow_F",[2236.38,5512.82,0],[],0,"CAN_COLLIDE"];
	_this = _item285;
	_objects pushback _this;
	_objectIDs pushback 285;
	_this setPosWorld [2236.38,5512.82,6.97044];
	_this setVectorDirAndUp [[0.0510579,-0.998696,0],[0,0,1]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item286 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item286 = createVehicle ["Sign_Arrow_F",[2229.07,5508.22,0],[],0,"CAN_COLLIDE"];
	_this = _item286;
	_objects pushback _this;
	_objectIDs pushback 286;
	_this setPosWorld [2229.07,5508.22,6.97326];
	_this setVectorDirAndUp [[-0.0103608,0.999946,0],[0,0,1]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item287 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item287 = createVehicle ["Sign_Arrow_F",[2227.08,5516.22,0],[],0,"CAN_COLLIDE"];
	_this = _item287;
	_objects pushback _this;
	_objectIDs pushback 287;
	_this setPosWorld [2227.08,5516.22,6.97326];
	_this setVectorDirAndUp [[-0.0213667,0.999772,0],[0,0,1]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item288 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item288 = createVehicle ["Sign_Arrow_F",[2228.38,5512.88,0],[],0,"CAN_COLLIDE"];
	_this = _item288;
	_objects pushback _this;
	_objectIDs pushback 288;
	_this setPosWorld [2228.38,5512.88,6.97326];
	_this setVectorDirAndUp [[-0.00488479,-0.999988,0],[0,0,1]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item289 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item289 = createVehicle ["Sign_Arrow_F",[2221.51,5511.76,0],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [2221.51,5511.76,6.97326];
	_this setVectorDirAndUp [[-0.999976,0.00689598,0],[0,0,1]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item290 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item290 = createVehicle ["Sign_Arrow_F",[2227.41,5525.6,0],[],0,"CAN_COLLIDE"];
	_this = _item290;
	_objects pushback _this;
	_objectIDs pushback 290;
	_this setPosWorld [2227.41,5525.6,6.97326];
	_this setVectorDirAndUp [[0.999985,-0.00540699,0],[0,0,1]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item291 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item291 = createVehicle ["Sign_Arrow_F",[2210.77,5509.81,0],[],0,"CAN_COLLIDE"];
	_this = _item291;
	_objects pushback _this;
	_objectIDs pushback 291;
	_this setPosWorld [2210.77,5509.81,6.97326];
	_this setVectorDirAndUp [[0.999966,-0.00823886,0],[0,0,1]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item292 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item292 = createVehicle ["Sign_Arrow_F",[2221.62,5506.86,0],[],0,"CAN_COLLIDE"];
	_this = _item292;
	_objects pushback _this;
	_objectIDs pushback 292;
	_this setPosWorld [2221.62,5506.86,6.97326];
	_this setVectorDirAndUp [[0.999966,-0.00823886,0],[0,0,1]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item293 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item293 = createVehicle ["Sign_Arrow_F",[2232.56,5525.38,0],[],0,"CAN_COLLIDE"];
	_this = _item293;
	_objects pushback _this;
	_objectIDs pushback 293;
	_this setPosWorld [2232.56,5525.38,6.96841];
	_this setVectorDirAndUp [[0.999966,-0.00823886,0],[0,0,1]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item294 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item294 = createVehicle ["Sign_Arrow_F",[2214.45,5525.98,0],[],0,"CAN_COLLIDE"];
	_this = _item294;
	_objects pushback _this;
	_objectIDs pushback 294;
	_this setPosWorld [2214.45,5525.98,6.97326];
	_this setVectorDirAndUp [[-0.999976,0.00689598,0],[0,0,1]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item295 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item295 = createVehicle ["Sign_Arrow_F",[2215.79,5520.1,0],[],0,"CAN_COLLIDE"];
	_this = _item295;
	_objects pushback _this;
	_objectIDs pushback 295;
	_this setPosWorld [2215.79,5520.1,6.97326];
	_this setVectorDirAndUp [[-0.999976,0.00689598,0],[0,0,1]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item296 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item296 = createVehicle ["Sign_Arrow_F",[2236.68,5503.85,0],[],0,"CAN_COLLIDE"];
	_this = _item296;
	_objects pushback _this;
	_objectIDs pushback 296;
	_this setPosWorld [2236.68,5503.85,6.94305];
	_this setVectorDirAndUp [[-0.999976,0.00689598,0],[0,0,1]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item297 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item297 = createVehicle ["Sign_Arrow_F",[2227.63,5520.06,0],[],0,"CAN_COLLIDE"];
	_this = _item297;
	_objects pushback _this;
	_objectIDs pushback 297;
	_this setPosWorld [2227.63,5520.06,6.97326];
	_this setVectorDirAndUp [[0.999974,0.00715174,0],[0,0,1]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item298 = objNull;
if (_layer279 && _layer118 && _layer117) then {
	_item298 = createVehicle ["Sign_Arrow_F",[2236.18,5519.99,0],[],0,"CAN_COLLIDE"];
	_this = _item298;
	_objects pushback _this;
	_objectIDs pushback 298;
	_this setPosWorld [2236.18,5519.99,6.9719];
	_this setVectorDirAndUp [[0.999966,-0.00823886,0],[0,0,1]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item302 = objNull;
if (_layer118 && _layer117) then {
	_item302 = createVehicle ["Land_Shoot_House_Wall_F",[2228.11,5500.93,0],[],0,"CAN_COLLIDE"];
	_this = _item302;
	_objects pushback _this;
	_objectIDs pushback 302;
	_this setPosWorld [2228.11,5500.93,8.27495];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item303 = objNull;
if (_layer118 && _layer117) then {
	_item303 = createVehicle ["Land_Shoot_House_Wall_F",[2236.33,5527.85,0],[],0,"CAN_COLLIDE"];
	_this = _item303;
	_objects pushback _this;
	_objectIDs pushback 303;
	_this setPosWorld [2236.33,5527.85,8.18798];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item304 = objNull;
if (_layer118 && _layer117) then {
	_item304 = createVehicle ["Land_Shoot_House_Wall_F",[2226.18,5513.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item304;
	_objects pushback _this;
	_objectIDs pushback 304;
	_this setPosWorld [2226.18,5513.94,8.2755];
	_this setVectorDirAndUp [[0.00801853,0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item305 = objNull;
if (_layer118 && _layer117) then {
	_item305 = createVehicle ["Land_Shoot_House_Wall_F",[2207.38,5513.09,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item305;
	_objects pushback _this;
	_objectIDs pushback 305;
	_this setPosWorld [2207.38,5513.09,8.2755];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item306 = objNull;
if (_layer118 && _layer117) then {
	_item306 = createVehicle ["Land_Shoot_House_Wall_F",[2210.11,5501.22,0],[],0,"CAN_COLLIDE"];
	_this = _item306;
	_objects pushback _this;
	_objectIDs pushback 306;
	_this setPosWorld [2210.11,5501.22,8.29617];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item307 = objNull;
if (_layer118 && _layer117) then {
	_item307 = createVehicle ["Land_Shoot_House_Wall_F",[2216.13,5501.2,0],[],0,"CAN_COLLIDE"];
	_this = _item307;
	_objects pushback _this;
	_objectIDs pushback 307;
	_this setPosWorld [2216.13,5501.2,8.28249];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item308 = objNull;
if (_layer118 && _layer117) then {
	_item308 = createVehicle ["Land_Shoot_House_Wall_F",[2212.31,5528.04,0],[],0,"CAN_COLLIDE"];
	_this = _item308;
	_objects pushback _this;
	_objectIDs pushback 308;
	_this setPosWorld [2212.31,5528.04,8.2757];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item309 = objNull;
if (_layer118 && _layer117) then {
	_item309 = createVehicle ["Land_Shoot_House_Wall_F",[2203.3,5523.14,0],[],0,"CAN_COLLIDE"];
	_this = _item309;
	_objects pushback _this;
	_objectIDs pushback 309;
	_this setPosWorld [2203.3,5523.14,8.28605];
	_this setVectorDirAndUp [[-0.999968,0.00801937,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item310 = objNull;
if (_layer118 && _layer117) then {
	_item310 = createVehicle ["Land_Shoot_House_Wall_F",[2204.19,5510.12,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item310;
	_objects pushback _this;
	_objectIDs pushback 310;
	_this setPosWorld [2204.19,5510.12,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item311 = objNull;
if (_layer118 && _layer117) then {
	_item311 = createVehicle ["Land_Shoot_House_Wall_F",[2204.37,5522.16,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item311;
	_objects pushback _this;
	_objectIDs pushback 311;
	_this setPosWorld [2204.37,5522.16,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item312 = objNull;
if (_layer118 && _layer117) then {
	_item312 = createVehicle ["Land_Shoot_House_Wall_F",[2204.11,5520.05,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item312;
	_objects pushback _this;
	_objectIDs pushback 312;
	_this setPosWorld [2204.11,5520.05,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item313 = objNull;
if (_layer118 && _layer117) then {
	_item313 = createVehicle ["Land_Shoot_House_Wall_F",[2224.35,5527.92,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item313;
	_objects pushback _this;
	_objectIDs pushback 313;
	_this setPosWorld [2224.35,5527.92,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item314 = objNull;
if (_layer118 && _layer117) then {
	_item314 = createVehicle ["Land_Shoot_House_Wall_F",[2220.35,5527.96,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item314;
	_objects pushback _this;
	_objectIDs pushback 314;
	_this setPosWorld [2220.35,5527.96,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item315 = objNull;
if (_layer118 && _layer117) then {
	_item315 = createVehicle ["Land_Shoot_House_Wall_F",[2222.35,5527.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item315;
	_objects pushback _this;
	_objectIDs pushback 315;
	_this setPosWorld [2222.35,5527.94,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item316 = objNull;
if (_layer118 && _layer117) then {
	_item316 = createVehicle ["Land_Shoot_House_Wall_F",[2203.15,5503.7,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item316;
	_objects pushback _this;
	_objectIDs pushback 316;
	_this setPosWorld [2203.15,5503.7,8.32375];
	_this setVectorDirAndUp [[0.999968,-0.00801857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item317 = objNull;
if (_layer118 && _layer117) then {
	_item317 = createVehicle ["Land_Shoot_House_Wall_F",[2224.09,5501.03,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item317;
	_objects pushback _this;
	_objectIDs pushback 317;
	_this setPosWorld [2224.09,5501.03,8.2827];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item318 = objNull;
if (_layer118 && _layer117) then {
	_item318 = createVehicle ["Land_Shoot_House_Wall_F",[2222.09,5501.05,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item318;
	_objects pushback _this;
	_objectIDs pushback 318;
	_this setPosWorld [2222.09,5501.05,8.28288];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item319 = objNull;
if (_layer118 && _layer117) then {
	_item319 = createVehicle ["Land_Shoot_House_Wall_F",[2220.09,5501.06,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item319;
	_objects pushback _this;
	_objectIDs pushback 319;
	_this setPosWorld [2220.09,5501.06,8.28284];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item320 = objNull;
if (_layer118 && _layer117) then {
	_item320 = createVehicle ["Land_InfoStand_V1_F",[2198.71,5505.31,-0.000415802],[],0,"CAN_COLLIDE"];
	_this = _item320;
	_objects pushback _this;
	_objectIDs pushback 320;
	_this setPosWorld [2198.73,5505.32,7.32994];
	_this setVectorDirAndUp [[0.999176,0.0200844,-0.035275],[0.0349773,0.0149887,0.999276]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item321 = objNull;
if (_layer118 && _layer117) then {
	_item321 = createVehicle ["Land_Scaffolding_New_F",[2201.77,5518.56,-4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item321;
	_objects pushback _this;
	_objectIDs pushback 321;
	_this setPosWorld [2201.77,5518.56,9.36004];
	_this setVectorDirAndUp [[0.00240794,-0.999997,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item322 = objNull;
if (_layer118 && _layer117) then {
	_item322 = createVehicle ["VR_Area_01_circle_4_yellow_F",[2197.66,5505.29,0.0510001],[],0,"CAN_COLLIDE"];
	_this = _item322;
	_objects pushback _this;
	_objectIDs pushback 322;
	_this setPosWorld [2197.66,5505.29,6.82822];
	_this setVectorDirAndUp [[0.999777,0.00675442,-0.0199971],[0.0199975,0,0.9998]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item325 = objNull;
if (_layer118 && _layer117) then {
	_item325 = createVehicle ["Land_Shoot_House_Wall_F",[2206.24,5522.12,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item325;
	_objects pushback _this;
	_objectIDs pushback 325;
	_this setPosWorld [2206.24,5522.12,8.2755];
	_this setVectorDirAndUp [[-0.0080185,-0.999968,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item327 = objNull;
if (_layer326) then {
	_item327 = createVehicle ["Land_InfoStand_V1_F",[2173.38,5369.02,-1.81198e-005],[],0,"CAN_COLLIDE"];
	_this = _item327;
	_objects pushback _this;
	_objectIDs pushback 327;
	_this setPosWorld [2173.38,5369.03,9.29421];
	_this setVectorDirAndUp [[0.999987,-0.00436018,-0.00245673],[0.00248939,0.00750104,0.999969]];
	fr_at_button = _this;
	_this setVehicleVarName "fr_at_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item328 = objNull;
if (_layer326) then {
	_item328 = createVehicle ["Sign_Arrow_Large_Blue_F",[2444,5343.31,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item328;
	_objects pushback _this;
	_objectIDs pushback 328;
	_this setPosWorld [2444,5343.31,28.082];
	_this setVectorDirAndUp [[-0.838025,0.544602,0.0335087],[-0.179535,-0.333216,0.9256]];
	fr_at_spawn = _this;
	_this setVehicleVarName "fr_at_spawn";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item329 = objNull;
if (_layer326) then {
	_item329 = createVehicle ["Sign_Arrow_Large_Blue_F",[2569.56,5275.85,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item329;
	_objects pushback _this;
	_objectIDs pushback 329;
	_this setPosWorld [2569.56,5275.85,31.9479];
	_this setVectorDirAndUp [[-0.822416,0.552263,-0.136515],[-0.260666,-0.152528,0.953304]];
	fr_at_spawn_1 = _this;
	_this setVehicleVarName "fr_at_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item330 = objNull;
if (_layer326) then {
	_item330 = createVehicle ["Sign_Arrow_Large_Blue_F",[2669.4,5119.72,0],[],0,"CAN_COLLIDE"];
	_this = _item330;
	_objects pushback _this;
	_objectIDs pushback 330;
	_this setPosWorld [2669.4,5119.72,75.9852];
	_this setVectorDirAndUp [[-0.846759,0.478173,-0.233132],[-0.109341,0.272443,0.955939]];
	fr_at_spawn_2 = _this;
	_this setVehicleVarName "fr_at_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item333 = objNull;
if (_layerRoot) then {
	_item333 = createVehicle ["TargetP_Inf_F",[2410.59,5102.99,0],[],0,"CAN_COLLIDE"];
	_this = _item333;
	_objects pushback _this;
	_objectIDs pushback 333;
	_this setPosWorld [2410.59,5102.99,86.7631];
	_this setVectorDirAndUp [[0.667939,-0.632493,0.392186],[-0.207858,0.347459,0.914367]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item335 = objNull;
if (_layer334) then {
	_item335 = createVehicle ["Land_MysteriousBell_01_F",[2158.5,5381.55,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item335;
	_objects pushback _this;
	_objectIDs pushback 335;
	_this setPosWorld [2158.5,5381.55,9.40131];
	_this setVectorDirAndUp [[-0.851866,0.523759,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item336 = objNull;
if (_layer334) then {
	_item336 = createVehicle ["TargetP_Inf_F",[2258.16,5343.91,0],[],0,"CAN_COLLIDE"];
	_this = _item336;
	_objects pushback _this;
	_objectIDs pushback 336;
	_this setPosWorld [2258.16,5343.91,7.70328];
	_this setVectorDirAndUp [[0.998963,0.00602274,0.0451177],[-0.0449543,-0.0249659,0.998677]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item337 = objNull;
if (_layer334) then {
	_item337 = createVehicle ["TargetP_Inf_F",[2258.16,5357.13,0],[],0,"CAN_COLLIDE"];
	_this = _item337;
	_objects pushback _this;
	_objectIDs pushback 337;
	_this setPosWorld [2258.16,5357.13,7.7773];
	_this setVectorDirAndUp [[0.981378,-0.190652,-0.0234463],[0.0199975,-0.0199935,0.9996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item338 = objNull;
if (_layer334) then {
	_item338 = createVehicle ["TargetP_Inf_F",[2258.16,5370.34,1.43051e-006],[],0,"CAN_COLLIDE"];
	_this = _item338;
	_objects pushback _this;
	_objectIDs pushback 338;
	_this setPosWorld [2258.16,5370.34,7.77824];
	_this setVectorDirAndUp [[0.979779,-0.200083,0.000655775],[0.00749277,0.0399659,0.999173]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item339 = objNull;
if (_layer334) then {
	_item339 = createVehicle ["TargetP_Inf_F",[2372.16,5386.22,0],[],0,"CAN_COLLIDE"];
	_this = _item339;
	_objects pushback _this;
	_objectIDs pushback 339;
	_this setPosWorld [2372.16,5386.22,32.5806];
	_this setVectorDirAndUp [[0.964727,-0.0471605,0.258994],[-0.260665,-0.308723,0.914737]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item340 = objNull;
if (_layer334) then {
	_item340 = createVehicle ["TargetP_Inf_F",[2258.16,5383.55,1.43051e-006],[],0,"CAN_COLLIDE"];
	_this = _item340;
	_objects pushback _this;
	_objectIDs pushback 340;
	_this setPosWorld [2258.16,5383.55,7.63383];
	_this setVectorDirAndUp [[0.995032,-0.0932638,0.0348251],[-0.0349775,0,0.999388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item341 = objNull;
if (_layer334) then {
	_item341 = createVehicle ["SkeetMachine",[2174.11,5338.75,-0.000501633],[],0,"CAN_COLLIDE"];
	_this = _item341;
	_objects pushback _this;
	_objectIDs pushback 341;
	_this setPosWorld [2174.11,5338.75,9.22638];
	_this setVectorDirAndUp [[-0.844584,-0.535424,0],[0,0,1]];
	sk1 = _this;
	_this setVehicleVarName "sk1";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item345 = objNull;
if (_layerRoot) then {
	_item345 = createVehicle ["Windsock_01_F",[1774.03,5797.26,0],[],0,"CAN_COLLIDE"];
	_this = _item345;
	_objects pushback _this;
	_objectIDs pushback 345;
	_this setPosWorld [1774.03,5797.26,6.775];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item364 = objNull;
if (_layer362 && _layer587) then {
	_item364 = createVehicle ["Land_BarGate_F",[2284.77,5780.46,0],[],0,"CAN_COLLIDE"];
	_this = _item364;
	_objects pushback _this;
	_objectIDs pushback 364;
	_this setPosWorld [2284.77,5780.46,9.26711];
	_this setVectorDirAndUp [[-0.975494,0.218071,0.0292635],[0.0299852,0,0.99955]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item588 = objNull;
if (_layer587) then {
	_item588 = createVehicle ["B_supplyCrate_F",[2167.32,5362.98,0],[],0,"CAN_COLLIDE"];
	_this = _item588;
	_objects pushback _this;
	_objectIDs pushback 588;
	_this setPosWorld [2167.32,5362.98,9.62242];
	_this setVectorDirAndUp [[0.999928,-0.0120093,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item589 = objNull;
if (_layer587) then {
	_item589 = createVehicle ["Box_NATO_Wps_F",[1961.58,5702.14,1.08664],[],0,"CAN_COLLIDE"];
	_this = _item589;
	_objects pushback _this;
	_objectIDs pushback 589;
	_this setPosWorld [1961.58,5702.14,6.95325];
	_this setVectorDirAndUp [[0.209792,0.977485,-0.0225773],[0.0208325,0.0186172,0.99961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item590 = objNull;
if (_layer587) then {
	_item590 = createVehicle ["Box_NATO_Wps_F",[1962.26,5705.39,1.08001],[],0,"CAN_COLLIDE"];
	_this = _item590;
	_objects pushback _this;
	_objectIDs pushback 590;
	_this setPosWorld [1962.26,5705.39,6.95002];
	_this setVectorDirAndUp [[-0.193125,-0.980868,-0.0245259],[0.00914133,-0.0267942,0.999599]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item594 = objNull;
if (_layerRoot) then {
	_item594 = _item592 createUnit ["B_Soldier_F",[1930.62,5732.41,0],[],0,"CAN_COLLIDE"];
	_this = _item594;
	_objects pushback _this;
	_objectIDs pushback 594;
	_this setPosWorld [1930.62,5732.46,5.68245];
	_this setVectorDirAndUp [[-0.283882,-0.958859,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Lewis Patel";;
	_this setface "WhiteHead_19";;
	_this setspeaker "Male10ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["RELAX_2",["Acts_Ambient_Relax_2"],false,true] # 0 isEqualTo '') then      {        ["RELAX_2",["Acts_Ambient_Relax_2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item595 = objNull;
if (_layerRoot) then {
	_item595 = _item592 createUnit ["B_Soldier_F",[1914.76,5734.86,0.693446],[],0,"CAN_COLLIDE"];
	_item592 selectLeader _item595;
	_this = _item595;
	_objects pushback _this;
	_objectIDs pushback 595;
	_this setPosWorld [1914.76,5734.91,6.36204];
	_this setVectorDirAndUp [[0.0704103,-0.997518,0],[0,0,1]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Jammie James";;
	_this setface "WhiteHead_21";;
	_this setspeaker "Male02ENG";;
	_this setpitch 1.01;;
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

private _item596 = objNull;
if (_layerRoot) then {
	_item596 = _item592 createUnit ["B_Soldier_F",[1918.73,5742.99,0.584332],[],0,"CAN_COLLIDE"];
	_this = _item596;
	_objects pushback _this;
	_objectIDs pushback 596;
	_this setPosWorld [1918.73,5743.04,6.27577];
	_this setVectorDirAndUp [[-0.987023,0.160581,0],[0,0,1]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Dylan Hall";;
	_this setface "WhiteHead_14";;
	_this setspeaker "Male02ENG";;
	_this setpitch 1.02;;
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

private _item597 = objNull;
if (_layerRoot) then {
	_item597 = _item592 createUnit ["B_Soldier_F",[1929.8,5730.46,0],[],0,"CAN_COLLIDE"];
	_this = _item597;
	_objects pushback _this;
	_objectIDs pushback 597;
	_this setPosWorld [1929.8,5730.5,5.67758];
	_this setVectorDirAndUp [[0.102845,0.994697,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ashton Jackson";;
	_this setface "Sturrock";;
	_this setspeaker "Male01ENG";;
	_this setpitch 0.97;;
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

private _item598 = objNull;
if (_layerRoot) then {
	_item598 = _item592 createUnit ["B_Soldier_F",[2287.35,5786.16,0],[],0,"CAN_COLLIDE"];
	_this = _item598;
	_objects pushback _this;
	_objectIDs pushback 598;
	_this setPosWorld [2287.35,5786.21,5.18055];
	_this setVectorDirAndUp [[0.987287,-0.158951,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "James Taylor";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.99;;
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


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item323 = objNull;
if (_layer118 && _layer117) then {
	_item323 = createTrigger ["EmptyDetectorAreaR50",[2203.58,5456.06,0],true];
	_this = _item323;
	_triggers pushback _this;
	_triggerIDs pushback 323;
	_item323 setPosATL [2203.58,5456.06,0];
	_this setTriggerArea [120,60,-86.1924,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{player allowDamage false; player setCaptive true;}","call{player allowDamage true; player setCaptive false;}"];
};

private _item324 = objNull;
if (_layer118 && _layer117) then {
	_item324 = createTrigger ["EmptyDetectorArea10x10",[2221.59,5514.92,0],true];
	_this = _item324;
	_triggers pushback _this;
	_triggerIDs pushback 324;
	_item324 setPosATL [2221.59,5514.92,0];
	_this setTriggerArea [18,13.5,180.124,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};

private _item360 = objNull;
if (_layer587) then {
	_item360 = createTrigger ["EmptyDetectorArea10x10",[1897.72,5776.36,0.100006],false];
	_this = _item360;
	_triggers pushback _this;
	_triggerIDs pushback 360;
	_item360 setPosATL [1897.72,5776.36,0.100006];
	_this setTriggerArea [6,6,195.06,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item363 = objNull;
if (_layer362 && _layer587) then {
	_item363 = createTrigger ["EmptyDetectorArea10x10",[2285.04,5780.8,0],true];
	_this = _item363;
	_triggers pushback _this;
	_triggerIDs pushback 363;
	_item363 setPosATL [2285.04,5780.8,0];
	_this setTriggerArea [5,20,277.76,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item592;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	     // if (!is3DEN && (["","ColorWEST","Alpha 1-1",true] # 0 != '') then      {        [_this, ["","ColorWEST","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-1",true]'];          ["","ColorWEST","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item79 = objNull;
if (_layer30) then {
	_item79 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[1959.67,5705.38,0.578319],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_logics pushback _this;
	_logicIDs pushback 79;
	_this setPosWorld [1959.67,5705.38,6.24667];
	_this setVectorDirAndUp [[-0.996671,-0.0815239,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,265.324,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item116 = objNull;
if (_layerRoot) then {
	_item116 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[2221.5,5516.73,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_logics pushback _this;
	_logicIDs pushback 116;
	_this setPosWorld [2221.5,5516.73,6.6];
	_this setVectorDirAndUp [[-0.998764,0.0497108,0],[0,0,1]];
	_this setVariable ["objectArea",[8,15,272.849,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item300 = objNull;
if (_layer299 && _layer118 && _layer117) then {
	_item300 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[2205.77,5525.26,0],[],0,"CAN_COLLIDE"];
	_this = _item300;
	_logics pushback _this;
	_logicIDs pushback 300;
	_this setPosWorld [2205.77,5525.26,6.63156];
	_this setVectorDirAndUp [[0.222072,0.97503,0],[0,0,1]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item301 = objNull;
if (_layer299 && _layer118 && _layer117) then {
	_item301 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[2188.67,5505.06,0],[],0,"CAN_COLLIDE"];
	_this = _item301;
	_logics pushback _this;
	_logicIDs pushback 301;
	_this setPosWorld [2188.67,5505.06,6.81];
	_this setVectorDirAndUp [[0.222076,0.975029,0],[0,0,1]];
	sh_end = _this;
	_this setVehicleVarName "sh_end";
};

private _item361 = objNull;
if (_layer587) then {
	_item361 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[1939.65,5716.84,-4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item361;
	_logics pushback _this;
	_logicIDs pushback 361;
	_this setPosWorld [1939.65,5716.84,5.63332];
	_this setVectorDirAndUp [[0.804023,0.594577,0.00496969],[-0.00248975,-0.00499144,0.999984]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer362) then {missionNamespace setVariable ["base_mil_bargate",[[_item363,_item364],[]]];};
if (_layer587) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item360,_item361,_item363,_item364,_item588,_item589,_item590],[]]];};
if (_layer334) then {missionNamespace setVariable ["base_mil_Firing Range + Skeet",[[_item335,_item336,_item337,_item338,_item339,_item340,_item341],[]]];};
if (_layer326) then {missionNamespace setVariable ["base_mil_AT Range",[[_item327,_item328,_item329,_item330],[]]];};
if (_layer299) then {missionNamespace setVariable ["base_mil_Spawns",[[_item300,_item301],[]]];};
if (_layer279) then {missionNamespace setVariable ["base_mil_Shoothouse Targets",[[_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293,_item294,_item295,_item296,_item297,_item298],[]]];};
if (_layer118) then {missionNamespace setVariable ["base_mil_Shoothouse",[[_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item206,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item236,_item237,_item238,_item239,_item240,_item241,_item242,_item243,_item244,_item245,_item246,_item247,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item259,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293,_item294,_item295,_item296,_item297,_item298,_item300,_item301,_item302,_item303,_item304,_item305,_item306,_item307,_item308,_item309,_item310,_item311,_item312,_item313,_item314,_item315,_item316,_item317,_item318,_item319,_item320,_item321,_item322,_item323,_item324,_item325],[]]];};
if (_layer117) then {missionNamespace setVariable ["base_mil_Shoothouse with Pit",[[_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item206,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item236,_item237,_item238,_item239,_item240,_item241,_item242,_item243,_item244,_item245,_item246,_item247,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item259,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293,_item294,_item295,_item296,_item297,_item298,_item300,_item301,_item302,_item303,_item304,_item305,_item306,_item307,_item308,_item309,_item310,_item311,_item312,_item313,_item314,_item315,_item316,_item317,_item318,_item319,_item320,_item321,_item322,_item323,_item324,_item325],[]]];};
if (_layer109) then {missionNamespace setVariable ["base_mil_Repair Station",[[_item110,_item112],[]]];};
if (_layer30) then {missionNamespace setVariable ["base_mil_Office",[[_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item70,_item71,_item72,_item77,_item78,_item79,_item80,_item81,_item355,_item356,_item357],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item327) then {
		this = _item327;
		call{this addAction ["PULL","launch_skeet.sqf"];};
	};
	if !(isnull _item588) then {
		this = _item588;
		call{arsenals pushBack this};
	};
	if !(isnull _item589) then {
		this = _item589;
		call{arsenals pushBack this};
	};
	if !(isnull _item590) then {
		this = _item590;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item79) then {_item79 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item116) then {_item116 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
