// Export of 'temp.Stratis' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer361 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer353 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer364 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer114 = (_allWhitelisted || {"ace heal trigger" in _layerWhiteList}) && {!("ace heal trigger" in _layerBlackList)};
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

private _item65 = grpNull;
if (_layer30) then {
	_item65 = createGroup resistance;
	_this = _item65;
	_groups pushback _this;
	_groupIDs pushback 65;
};

private _item85 = grpNull;
if (_layerRoot) then {
	_item85 = createGroup resistance;
	_this = _item85;
	_groups pushback _this;
	_groupIDs pushback 85;
};

private _item91 = grpNull;
if (_layerRoot) then {
	_item91 = createGroup resistance;
	_this = _item91;
	_groups pushback _this;
	_groupIDs pushback 91;
};

private _item342 = grpNull;
if (_layerRoot) then {
	_item342 = createGroup resistance;
	_this = _item342;
	_groups pushback _this;
	_groupIDs pushback 342;
};

private _item103 = grpNull;
if (_layerRoot) then {
	_item103 = createGroup resistance;
	_this = _item103;
	_groups pushback _this;
	_groupIDs pushback 103;
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
	_item34 = createSimpleObject ["Land_OfficeChair_01_F",[1914.77,5734.89,6.27926]];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [1914.77,5734.89,6.95368];
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
	_item36 = createVehicle ["Land_CampingChair_V2_white_F",[1918.91,5743.06,0.584111],[],0,"CAN_COLLIDE"];
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

private _item66 = objNull;
if (_layer30) then {
	_item66 = _item65 createUnit ["UK3CB_AAF_I_JNR_OFF",[1925.88,5732.91,0.700944],[],0,"CAN_COLLIDE"];
	_item65 selectLeader _item66;
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [1925.88,5732.96,6.37937];
	_this setVectorDirAndUp [[-0.411008,-0.911632,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["UK3CB_AAF_I_U_CombatUniform_DIGI_GRN",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Biton Melidoni";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male04GRE";;
	_this setpitch 0.97;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(false) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item67 = objNull;
if (_layer30) then {
	_item67 = _item65 createUnit ["UK3CB_AAF_I_JNR_OFF",[1915.66,5734.67,0.611],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [1915.66,5734.72,6.27912];
	_this setVectorDirAndUp [[-0.726159,-0.687526,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["UK3CB_AAF_I_U_CombatUniform_DIGI_GRN",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Vyron Manago";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male01GRE";;
	_this setpitch 1.05;;
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
	if !(false) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item68 = objNull;
if (_layer30) then {
	_item68 = _item65 createUnit ["UK3CB_AAF_I_JNR_OFF",[1914.21,5731.72,0.625846],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [1914.21,5731.77,6.2814];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["UK3CB_AAF_I_U_CombatUniform_DIGI_GRN",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Vyron Maras";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male04GRE";;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(false) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item69 = objNull;
if (_layer30) then {
	_item69 = _item65 createUnit ["UK3CB_AAF_I_JNR_OFF",[1914.7,5734.79,0.707057],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [1914.7,5734.84,6.37546];
	_this setVectorDirAndUp [[0.0314281,-0.999506,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["UK3CB_AAF_I_U_CombatUniform_DIGI_GRN",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Nicolo Ioannou";;
	_this setface "Ioannou";;
	_this setspeaker "Male03GRE";;
	_this setpitch 1.05;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(false) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
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

private _item82 = objNull;
if (_layerRoot) then {
	_item82 = createVehicle ["UK3CB_AAF_I_GAZ_Vodnik_PKT",[1999.19,5718.68,0],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [1999.19,5718.68,7.99655];
	_this setVectorDirAndUp [[-0.989146,0.146935,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitbody"",""hitengine"",""hitfuel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""hitturret"",""hitgun"",""hitturretpkt2"",""hitgunpkt2"",""#l svetlo"",""#p svetlo"",""#turret_light""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 6] call ace_cargo_fnc_setSpace;;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
};

private _item83 = objNull;
if (_layerRoot) then {
	_item83 = createVehicle ["UK3CB_AAF_I_LR_Closed",[1996.87,5712.4,0],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [1996.87,5712.4,7.42989];
	_this setVectorDirAndUp [[-0.968031,0.250832,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitbeacon"",""hitbody"",""hitengine"",""hitfuel"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitrglass"",""hitlglass"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""#l svetlo"",""#l_svetlo_2"",""#p svetlo"",""#p_svetlo_2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
};

private _item84 = objNull;
if (_layerRoot) then {
	_item84 = createVehicle ["UK3CB_AAF_I_Ural_Ammo",[2099,5691.37,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [2098.99,5691.37,8.40397];
	_this setVectorDirAndUp [[0.201723,0.979442,0.000502243],[-0.00248975,0,0.999997]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitbody"",""hitengine"",""hitfuel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitlmwheel"",""hitlbwheel"",""hitrmwheel"",""hitrbwheel"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hithull"",""#l svetlo"",""#p svetlo"",""#turretlight""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	_this setVariable ['s',1];;
	[_this, 20] call ace_cargo_fnc_setSpace;;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
};

private _item86 = objNull;
if (_layerRoot) then {
	_item86 = _item85 createUnit ["UK3CB_AAF_I_HELI_PILOT",[1885.64,5728.46,0],[],0,"CAN_COLLIDE"];
	_item85 selectLeader _item86;
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [1883.02,5730.29,6.7856];
	_this setVectorDirAndUp [[-0.907071,0.420978,-0.000162448],[-0.00249582,-0.0049918,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Nicolo Strambopoulos";;
	_this setface "GreekHead_A3_02";;
	_this setspeaker "male04gre";;
	_this setpitch 0.964762;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item87 = objNull;
if (_layerRoot) then {
	_item87 = _item85 createUnit ["UK3CB_AAF_I_HELI_PILOT",[1885.64,5728.46,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [1882.56,5729.3,6.7795];
	_this setVectorDirAndUp [[-0.907071,0.420978,-0.000162448],[-0.00249582,-0.0049918,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Vasilis Strambopoulos";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "male01gre";;
	_this setpitch 0.961676;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item88 = objNull;
if (_layerRoot) then {
	_item88 = _item85 createUnit ["UK3CB_AAF_I_HELI_PILOT",[1885.64,5728.46,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [1885.19,5729.56,6.75126];
	_this setVectorDirAndUp [[-0.907071,0.420978,-0.000162448],[-0.00249582,-0.0049918,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Kostas Elias";;
	_this setface "GreekHead_A3_02";;
	_this setspeaker "male02gre";;
	_this setpitch 0.95253;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item89 = objNull;
if (_layerRoot) then {
	_item89 = _item85 createUnit ["UK3CB_AAF_I_HELI_PILOT",[1885.64,5728.46,0],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [1884.51,5728.13,6.7423];
	_this setVectorDirAndUp [[-0.907071,0.420978,-0.000162448],[-0.00249582,-0.0049918,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Dimitiros Strambopoulos";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "male04gre";;
	_this setpitch 1.0117;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item90 = objNull;
if (_layerRoot) then {
	_item90 = createVehicle ["UK3CB_AAF_I_UH1H_M240",[1885.64,5728.46,0],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [1885.63,5728.45,7.86795];
	_this setVectorDirAndUp [[-0.907071,0.420978,-0.000162448],[-0.00249582,-0.0049918,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""FirstAidKit""],[1]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hithull"",""hitfuel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass7"",""hitvrotor"",""hithrotor"",""hitavionics"",""hitengine"",""hitwinch"",""hitengine1"",""hitengine2"",""hitmissiles"",""hitrglass"",""hitlglass"",""hitengine3"",""hittransmission"",""hitlight"",""hithydraulics"",""hitgear"",""hithstabilizerl1"",""hithstabilizerr1"",""hitvstabilizer1"",""hittail"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""#light_hitpoint""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
};

private _item92 = objNull;
if (_layerRoot) then {
	_item92 = _item91 createUnit ["UK3CB_AAF_I_SL",[1930.66,5748.6,0.568999],[],0,"CAN_COLLIDE"];
	_item91 selectLeader _item92;
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [1930.66,5748.65,6.26044];
	_this setVectorDirAndUp [[0.96857,-0.248741,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["UK3CB_AAF_I_U_CombatUniform_DIGI_GRN",[]],["UK3CB_AAF_I_V_Falcon_2_DIGI_GRN",[]],[],"H_Cap_blk_Raven","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Orestis Christou";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male04GRE";;
	_this setpitch 0.98;;
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

private _item93 = objNull;
if (_layerRoot) then {
	_item93 = _item91 createUnit ["UK3CB_AAF_I_TL",[1948.65,5704.25,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [1948.65,5704.3,5.58756];
	_this setVectorDirAndUp [[-0.203112,-0.979156,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kostis Strambopoulos";;
	_this setface "Ioannou";;
	_this setspeaker "Male06GRE";;
	_this setpitch 0.97;;
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

private _item94 = objNull;
if (_layerRoot) then {
	_item94 = _item91 createUnit ["UK3CB_AAF_I_MD",[2152.6,5568.8,4.35601],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [2152.6,5568.85,10.499];
	_this setVectorDirAndUp [[-0.271505,-0.962437,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Aris Vidales";;
	_this setface "Ioannou";;
	_this setspeaker "Male04GRE";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH2",["inbasemoves_patrolling2"],false,false] # 0 isEqualTo '') then      {        ["WATCH2",["inbasemoves_patrolling2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item95 = objNull;
if (_layerRoot) then {
	_item95 = _item91 createUnit ["UK3CB_AAF_I_RIF_1",[2286.56,5787.92,0.478354],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [2286.56,5787.97,5.7037];
	_this setVectorDirAndUp [[0.860433,0.509564,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Angelos Costas";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male06GRE";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_HIGH2",["hubsittinghighb_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_HIGH2",["hubsittinghighb_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item96 = objNull;
if (_layerRoot) then {
	_item96 = _item91 createUnit ["UK3CB_AAF_I_LAT",[2141.2,5796.44,4.34822],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [2141.2,5796.49,9.83955];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Nikos Malas";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male04GRE";;
	_this setpitch 0.95;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item97 = objNull;
if (_layerRoot) then {
	_item97 = _item91 createUnit ["UK3CB_AAF_I_RIF_1",[2282.64,5762.76,4.339],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [2282.64,5762.81,9.65978];
	_this setVectorDirAndUp [[0.75511,0.655598,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Lazaros Manelia";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male01GRE";;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item98 = objNull;
if (_layerRoot) then {
	_item98 = _item91 createUnit ["UK3CB_AAF_I_ENG",[2288.86,5788.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [2288.86,5788.99,5.1969];
	_this setVectorDirAndUp [[-0.881411,-0.472351,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Giorgos Athanasiadis";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male02GRE";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item99 = objNull;
if (_layerRoot) then {
	_item99 = _item91 createUnit ["UK3CB_AAF_I_DEM",[1948.08,5702.78,0],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [1948.08,5702.83,5.57918];
	_this setVectorDirAndUp [[0.358677,0.933462,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["UK3CB_AAF_I_U_CombatUniform_DIGI_GRN",[]],["UK3CB_AAF_I_V_Falcon_2_DIGI_GRN",[]],["UK3CB_AAF_I_B_CARRYALL_OLI",[]],"UK3CB_AAF_I_H_MKVI_Helmet_A_GRN","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Vasilis Athanasiadis";;
	_this setface "Mavros";;
	_this setspeaker "Male02GRE";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,true] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item100 = objNull;
if (_layerRoot) then {
	_item100 = _item91 createUnit ["UK3CB_AAF_I_OFF",[1905.71,5714.72,12.93],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [1905.71,5714.77,18.4593];
	_this setVectorDirAndUp [[-0.964262,0.264951,0],[0,0,1]];
	_this setRank "MAJOR";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Giorgos Karapataki";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male04GRE";;
	_this setpitch 0.96;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item101 = objNull;
if (_layerRoot) then {
	_item101 = _item91 createUnit ["UK3CB_AAF_I_RIF_1",[2181.9,5512.59,-0.20309],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [2181.9,5512.64,6.60835];
	_this setVectorDirAndUp [[0.456861,-0.889538,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Nikos Karmanlis";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male01GRE";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_HIGH2",["hubsittinghighb_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_HIGH2",["hubsittinghighb_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item102 = objNull;
if (_layerRoot) then {
	_item102 = _item91 createUnit ["UK3CB_AAF_I_RIF_1",[2172.96,5363.63,0.0500002],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [2172.96,5363.68,8.78144];
	_this setVectorDirAndUp [[0.999793,0.0203666,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Panos Haikias";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male01GRE";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WARMUP_KNEELING",["Acts_AidlPercMstpSloWWrflDnon_warmup_6_loop"],false,false] # 0 isEqualTo '') then      {        ["WARMUP_KNEELING",["Acts_AidlPercMstpSloWWrflDnon_warmup_6_loop"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item110 = objNull;
if (_layer109) then {
	_item110 = createVehicle ["Land_RepairDepot_01_tan_F",[2071.32,5709.65,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [2071.27,5709.68,8.15312];
	_this setVectorDirAndUp [[-0.12491,-0.992119,0.00990057],[-0.0199947,0.0124938,0.999722]];
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
	_item113 = createVehicle ["RU_WarfareBFieldhHospital",[1947.43,5766.04,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [1947.43,5766.04,5.2782];
	_this setVectorDirAndUp [[0.980513,-0.196454,-0.000967658],[0.00248975,0.00750104,0.999969]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
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

private _item343 = objNull;
if (_layerRoot) then {
	_item343 = _item342 createUnit ["UK3CB_AAF_I_OFF",[2173.07,5338.9,0],[],0,"CAN_COLLIDE"];
	_item342 selectLeader _item343;
	_this = _item343;
	_objects pushback _this;
	_objectIDs pushback 343;
	_this setPosWorld [2173.07,5338.95,8.75144];
	_this setVectorDirAndUp [[0.858038,0.513586,0],[0,0,1]];
	_this setUnitLoadout [[],[],["UK3CB_BHP","","","",["UK3CB_BHP_9_13Rnd",13],[],""],["UK3CB_AAF_B_U_CombatUniform_Digi_Mix_02",[]],["UK3CB_AAF_B_V_Vest_DIGI_GRN",[]],[],"H_Cap_headphones","rhs_googles_orange",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	sk_op = _this;
	_this setVehicleVarName "sk_op";
	_this setRank "MAJOR";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Petros Lagos";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male04GRE";;
	_this setpitch 0.96;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item344 = objNull;
if (_layerRoot) then {
	_item344 = createVehicle ["UK3CB_AAF_I_L39_CAS",[1910.51,5821.23,0],[],0,"CAN_COLLIDE"];
	_this = _item344;
	_objects pushback _this;
	_objectIDs pushback 344;
	_this setPosWorld [1910.51,5821.19,7.9228];
	_this setVectorDirAndUp [[-0.977611,0.210421,0],[0,0,1]];
	_this lock 2;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hithull"",""hitengine"",""hitavionics"",""hitfuel"",""hitfuel_lead_left"",""hitfuel_lead_right"",""hitfuel_left"",""hitfuel_right"",""hitfuel2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitlaileron_link"",""hitraileron_link"",""hitlaileron"",""hitraileron"",""hitlcrudder"",""hitlcelevator"",""hitrelevator"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
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

private _item346 = objNull;
if (_layerRoot) then {
	_item346 = createVehicle ["UK3CB_AAF_I_RHIB",[2198.45,5854.83,3.01226],[],0,"CAN_COLLIDE"];
	_this = _item346;
	_objects pushback _this;
	_objectIDs pushback 346;
	_this setPosWorld [2198.45,5854.83,3.43748];
	_this setVectorDirAndUp [[0.991073,-0.133321,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit"",""Medikit""],[10,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitwindscreen"",""hitlights_spotlight"",""hitcontrols"",""hitbody"",""hitengine"",""hitturret"",""hitgun"",""#lights_spotlight""],[0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
};

private _item347 = objNull;
if (_layerRoot) then {
	_item347 = createVehicle ["UK3CB_AAF_I_RHIB_Gunboat",[2168.18,5863.23,3.04759],[],0,"CAN_COLLIDE"];
	_this = _item347;
	_objects pushback _this;
	_objectIDs pushback 347;
	_this setPosWorld [2168.18,5863.23,3.43756];
	_this setVectorDirAndUp [[0.949455,-0.313902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit"",""Medikit""],[10,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitwindscreen"",""hitlights_spotlight"",""hitcontrols"",""hitbody"",""hitengine"",""hitturret"",""hitgun"",""hitrearturret"",""hitreargun"",""#lights_spotlight""],[0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
};

private _item104 = objNull;
if (_layerRoot) then {
	_item104 = _item103 createUnit ["UK3CB_AAF_I_TL",[1930.85,5702.9,0],[],0,"CAN_COLLIDE"];
	_item103 selectLeader _item104;
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [1930.85,5702.95,5.52144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Orestis Nicolau";;
	_this setface "GreekHead_A3_02";;
	_this setspeaker "male06gre";;
	_this setpitch 1.00671;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item105 = objNull;
if (_layerRoot) then {
	_item105 = _item103 createUnit ["UK3CB_AAF_I_RIF_1",[1935.85,5697.9,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [1935.85,5697.95,5.57915];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Giannis Haikias";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "male05gre";;
	_this setpitch 1.02209;;
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
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item363 = objNull;
if (_layer361 && _layer353 && _layer364) then {
	_item363 = createVehicle ["Land_BarGate_F",[2284.47,5780.06,3.33786e-006],[],0,"CAN_COLLIDE"];
	_this = _item363;
	_objects pushback _this;
	_objectIDs pushback 363;
	_this setPosWorld [2284.47,5780.06,9.27628];
	_this setVectorDirAndUp [[0.986878,-0.158731,-0.0296051],[0.0299852,0,0.99955]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item365 = objNull;
if (_layer353 && _layer364) then {
	_item365 = createVehicle ["Gunrack1",[1962.96,5705.26,1.06659],[],0,"CAN_COLLIDE"];
	_this = _item365;
	_objects pushback _this;
	_objectIDs pushback 365;
	_this setPosWorld [1962.96,5705.26,7.25616];
	_this setVectorDirAndUp [[-0.976315,0.215852,0.0147143],[0.00914133,-0.0267942,0.999599]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item366 = objNull;
if (_layer353 && _layer364) then {
	_item366 = createVehicle ["Gunrack1",[1961.25,5705.77,1.09432],[],0,"CAN_COLLIDE"];
	_this = _item366;
	_objects pushback _this;
	_objectIDs pushback 366;
	_this setPosWorld [1961.25,5705.77,7.27535];
	_this setVectorDirAndUp [[-0.976354,0.21618,-0.000307006],[-0.00229024,-0.00892355,0.999958]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item367 = objNull;
if (_layer353 && _layer364) then {
	_item367 = createVehicle ["Gunrack1",[1960.34,5702.34,1.09267],[],0,"CAN_COLLIDE"];
	_this = _item367;
	_objects pushback _this;
	_objectIDs pushback 367;
	_this setPosWorld [1960.34,5702.34,7.26912];
	_this setVectorDirAndUp [[-0.976317,0.216143,-0.00933383],[-0.00894359,0.00278352,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item368 = objNull;
if (_layer353 && _layer364) then {
	_item368 = createVehicle ["Gunrack1",[1962.17,5701.98,1.07416],[],0,"CAN_COLLIDE"];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [1962.17,5701.98,7.25981];
	_this setVectorDirAndUp [[-0.976144,0.21651,0.0163111],[0.0208325,0.0186172,0.99961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item111 = objNull;
if (_layer109) then {
	_item111 = createTrigger ["EmptyDetectorArea10x10",[2076.99,5708.82,0],true];
	_this = _item111;
	_triggers pushback _this;
	_triggerIDs pushback 111;
	_item111 setPosATL [2076.99,5708.82,0];
	_this setTriggerArea [10,10,97.1129,true,5];
	repStation = _this;
};

private _item115 = objNull;
if (_layer114) then {
	_item115 = createTrigger ["EmptyDetectorArea10x10",[1947.81,5765.65,0.099997],true];
	_this = _item115;
	_triggers pushback _this;
	_triggerIDs pushback 115;
	_item115 setPosATL [1947.81,5765.65,0.099997];
	_this setTriggerArea [5,5,284.655,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You heave been fully healed"";  
}",""];
	_this setTriggerTimeout [3,3,3,true];
};

private _item362 = objNull;
if (_layer361 && _layer353 && _layer364) then {
	_item362 = createTrigger ["EmptyDetectorArea10x10",[2284.22,5779.7,3.33786e-006],true];
	_this = _item362;
	_triggers pushback _this;
	_triggerIDs pushback 362;
	_item362 setPosATL [2284.22,5779.7,3.33786e-006];
	_this setTriggerArea [5,20,94.2977,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item65;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-5"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorGUER","Alpha 1-5",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorGUER","Alpha 1-5",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorGUER","Alpha 1-5",true]'];          ["","ColorGUER","Alpha 1-5",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorGUER","Alpha 1-5",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorGUER","Alpha 1-5",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item85;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "November 1"] call CBA_fnc_setCallsign;
	      if (!is3DEN && !(["o_air","ColorGUER","November 2",false] isEqualTo ['', '', '', true])) then      {        [_this, ["o_air","ColorGUER","November 2",false]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["o_air","ColorGUER","November 2",false]'];          ["o_air","ColorGUER","November 2",false] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["o_air","ColorGUER","November 2",false]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["o_air","ColorGUER","November 2",false] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item91;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorGUER","Alpha 2-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorGUER","Alpha 2-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorGUER","Alpha 2-1",true]'];          ["","ColorGUER","Alpha 2-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorGUER","Alpha 2-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorGUER","Alpha 2-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item342;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Rangemaster"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorGUER","Alpha 2-3",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorGUER","Alpha 2-3",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorGUER","Alpha 2-3",true]'];          ["","ColorGUER","Alpha 2-3",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorGUER","Alpha 2-3",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorGUER","Alpha 2-3",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item103;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-1"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this setSpeedMode "LIMITED";
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorGUER","Alpha 1-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorGUER","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorGUER","Alpha 1-1",true]'];          ["","ColorGUER","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorGUER","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorGUER","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];

private _item106 = [];
if (_layerRoot) then {
	_item106 = _item103 addWaypoint [[2193.71,5648.31,0],0];
	_this = _item106;
	_waypoints pushback _this;
	_waypointIDs pushback 106;
	_this setWaypointType "MOVE";
};

private _item107 = [];
if (_layerRoot) then {
	_item107 = _item103 addWaypoint [[2206.5,5742.97,0],0];
	_this = _item107;
	_waypoints pushback _this;
	_waypointIDs pushback 107;
	_this setWaypointType "MOVE";
};

private _item108 = [];
if (_layerRoot) then {
	_item108 = _item103 addWaypoint [[1930.71,5701.77,0],0];
	_this = _item108;
	_waypoints pushback _this;
	_waypointIDs pushback 108;
	_this setWaypointType "CYCLE";
};


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

private _item355 = objNull;
if (_layer353 && _layer364) then {
	_item355 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[1942.26,5709.53,0],[],0,"CAN_COLLIDE"];
	_this = _item355;
	_logics pushback _this;
	_logicIDs pushback 355;
	_this setPosWorld [1942.26,5709.53,5.58664];
	_this setVectorDirAndUp [[0,0.99995,0.0100007],[-0.00499145,-0.0100006,0.999938]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer361) then {missionNamespace setVariable ["temp_bargate",[[_item362,_item363],[]]];};
if (_layer353) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item355,_item362,_item363,_item365,_item366,_item367,_item368],[]]];};
if (_layer364) then {missionNamespace setVariable ["temp_SIA ZGM Essentials",[[_item355,_item362,_item363,_item365,_item366,_item367,_item368],[]]];};
if (_layer114) then {missionNamespace setVariable ["temp_Ace Heal Trigger",[[_item115],[]]];};
if (_layer109) then {missionNamespace setVariable ["temp_Repair Station",[[_item110,_item111,_item112],[]]];};
if (_layer30) then {missionNamespace setVariable ["temp_Office",[[_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item77,_item78,_item79,_item80,_item81],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item86 && !isNull _item90) then {_item86 moveInDriver _item90;};
if (!isNull _item87 && !isNull _item90) then {_item87 moveInTurret [_item90,[0]];};
if (!isNull _item88 && !isNull _item90) then {_item88 moveInTurret [_item90,[1]];};
if (!isNull _item89 && !isNull _item90) then {_item89 moveInTurret [_item90,[2]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item110) then {
		this = _item110;
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
	if !(isnull _item365) then {
		this = _item365;
		call{arsenals pushBack this};
	};
	if !(isnull _item366) then {
		this = _item366;
		call{arsenals pushBack this};
	};
	if !(isnull _item367) then {
		this = _item367;
		call{arsenals pushBack this};
	};
	if !(isnull _item368) then {
		this = _item368;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item79) then {_item79 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
