// Export of 'tempMissionSP.uzbin' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer38 = (_allWhitelisted || {"spawn medic crate" in _layerWhiteList}) && {!("spawn medic crate" in _layerBlackList)};
private _layer40 = (_allWhitelisted || {"spawn medic crate" in _layerWhiteList}) && {!("spawn medic crate" in _layerBlackList)};
private _layer12 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item16 = "";
if (_layerRoot) then {
	_item16 = createMarker ["marker_0",[9377.3,9758.31,0]];
	_this = _item16;
	_markers pushback _this;
	_markerIDs pushback 16;
	_this setMarkerType "b_maint";
	_this setMarkerText "Repair Station";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorYellow";
};

private _item17 = "";
if (_layerRoot) then {
	_item17 = createMarker ["marker_1",[9417.33,9800.42,0]];
	_this = _item17;
	_markers pushback _this;
	_markerIDs pushback 17;
	_this setMarkerType "b_med";
	_this setMarkerText "Medical";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorYellow";
};

private _item571 = "";
if (_layerRoot) then {
	_item571 = createMarker ["marker_2",[9429.25,10091.2,0]];
	_this = _item571;
	_markers pushback _this;
	_markerIDs pushback 571;
	_this setMarkerType "b_support";
	_this setMarkerText "Armory";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorYellow";
};

private _item572 = "";
if (_layerRoot) then {
	_item572 = createMarker ["marker_3",[9474.02,10061.2,0]];
	_this = _item572;
	_markers pushback _this;
	_markerIDs pushback 572;
	_this setMarkerType "b_hq";
	_this setMarkerText "HQ";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorYellow";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item610 = grpNull;
if (_layerRoot) then {
	_item610 = createGroup west;
	_this = _item610;
	_groups pushback _this;
	_groupIDs pushback 610;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item2 = objNull;
if (_layer12) then {
	_item2 = createVehicle ["Land_InfoStand_V1_F",[9436.25,10094.3,0.578674],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [9436.24,10094.4,505.659];
	_this setVectorDirAndUp [[0.86021,-0.509478,0.0217101],[-0.00972269,0.02618,0.99961]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item11 = objNull;
if (_layer12) then {
	_item11 = createVehicle ["Land_BarGate_F",[9414.06,10046.7,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [9414.06,10046.7,508.46];
	_this setVectorDirAndUp [[0.577143,0.816643,0],[0,0,1]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item13 = objNull;
if (_layer12) then {
	_item13 = createVehicle ["Land_Repair_center",[9391.14,9744.85,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [9391.14,9744.85,503.25];
	_this setVectorDirAndUp [[0.678277,-0.734772,0.00715817],[-0.00332963,0.00666814,0.999972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
};

private _item14 = objNull;
if (_layer12) then {
	_item14 = createVehicle ["Land_Repair_center",[9378.85,9731.79,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [9378.85,9731.79,503.035];
	_this setVectorDirAndUp [[0.707895,-0.706175,0.0141773],[-0.0299832,-0.00999015,0.9995]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
};

private _item20 = objNull;
if (_layer12) then {
	_item20 = createVehicle ["Gunrack1",[9431.62,10099.2,1.26352],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [9431.62,10099.2,506.314];
	_this setVectorDirAndUp [[-0.570517,-0.821286,-0.000505891],[0.0191513,-0.0139195,0.99972]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer12) then {
	_item21 = createVehicle ["Gunrack1",[9429.9,10096.8,1.3317],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [9429.9,10096.8,506.342];
	_this setVectorDirAndUp [[-0.570394,-0.821233,0.0150785],[0.0282835,-0.00129106,0.999599]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer12) then {
	_item31 = createVehicle ["Gunrack1",[9434.5,10096.9,1.29544],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [9434.5,10096.9,506.332];
	_this setVectorDirAndUp [[-0.57052,-0.821284,0.000244583],[-0.018926,0.013445,0.99973]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer12) then {
	_item32 = createVehicle ["Gunrack1",[9432.78,10094.5,1.36301],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [9432.78,10094.5,506.366];
	_this setVectorDirAndUp [[-0.570595,-0.821077,0.0159508],[-0.00972882,0.02618,0.99961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layerRoot) then {
	_item22 = createSimpleObject ["Land_CampingTable_F",[9431.95,10099.5,504.994]];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [9431.95,10099.5,505.405];
	_this setVectorDirAndUp [[-0.803285,0.595125,0.0236744],[0.0191513,-0.0139195,0.99972]];
	0 remoteExec ['setFeatureType', _this];
};

private _item23 = objNull;
if (_layerRoot) then {
	_item23 = createSimpleObject ["Land_CampingTable_F",[9430.78,10098,504.998]];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [9430.78,10098,505.409];
	_this setVectorDirAndUp [[-0.80311,0.595367,0.0234928],[0.0282835,-0.00129106,0.999599]];
	0 remoteExec ['setFeatureType', _this];
};

private _item24 = objNull;
if (_layerRoot) then {
	_item24 = createSimpleObject ["Land_CampingTable_F",[9429.62,10096.4,505.029]];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [9429.62,10096.4,505.44];
	_this setVectorDirAndUp [[-0.80311,0.595367,0.0234928],[0.0282835,-0.00129106,0.999599]];
	0 remoteExec ['setFeatureType', _this];
};

private _item25 = objNull;
if (_layerRoot) then {
	_item25 = createSimpleObject ["Land_CampingTable_F",[9434.86,10097.3,505.013]];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [9434.86,10097.3,505.425];
	_this setVectorDirAndUp [[-0.803288,0.595138,-0.0232109],[-0.018926,0.013445,0.99973]];
	0 remoteExec ['setFeatureType', _this];
};

private _item26 = objNull;
if (_layerRoot) then {
	_item26 = createSimpleObject ["Land_CampingTable_F",[9433.69,10095.7,505.023]];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [9433.69,10095.7,505.435];
	_this setVectorDirAndUp [[-0.803394,0.594988,-0.023397],[-0.00972269,0.02618,0.99961]];
	0 remoteExec ['setFeatureType', _this];
};

private _item27 = objNull;
if (_layerRoot) then {
	_item27 = createSimpleObject ["Land_CampingTable_F",[9432.54,10094.2,505.053]];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [9432.54,10094.2,505.464];
	_this setVectorDirAndUp [[-0.803394,0.594988,-0.023397],[-0.00972269,0.02618,0.99961]];
	0 remoteExec ['setFeatureType', _this];
};

private _item33 = objNull;
if (_layerRoot) then {
	_item33 = createVehicle ["Land_TentLamp_01_suspended_F",[9432.53,10097.1,5.02148],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [9432.53,10097.1,509.588];
	_this setVectorDirAndUp [[-0.823459,0.567376,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item35 = objNull;
if (_layerRoot) then {
	_item35 = createSimpleObject ["Land_Pallets_stack_F",[9434.16,10106.8,505.105]];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [9434.16,10106.8,505.535];
	_this setVectorDirAndUp [[0.782558,-0.622577,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item36 = objNull;
if (_layerRoot) then {
	_item36 = createSimpleObject ["Land_PalletTrolley_01_khaki_F",[9435.62,10105.6,505.102]];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [9435.62,10105.6,505.649];
	_this setVectorDirAndUp [[0,0.999562,0.029589],[0.00790332,-0.029588,0.999531]];
	0 remoteExec ['setFeatureType', _this];
};

private _item37 = objNull;
if (_layerRoot) then {
	_item37 = createVehicle ["Land_Pallet_MilBoxes_F",[9432.91,10105,0.408997],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [9432.91,10105,505.553];
	_this setVectorDirAndUp [[0.794422,-0.606882,-0.0242533],[0.00790618,-0.0295957,0.999531]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layerRoot) then {
	_item41 = createSimpleObject ["Land_PaperBox_01_open_empty_F",[9430.47,10087.8,505.075]];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [9430.47,10087.8,505.706];
	_this setVectorDirAndUp [[0.564548,0.825344,-0.00967783],[-0.00185932,0.0129966,0.999914]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item525 = objNull;
if (_layerRoot) then {
	_item525 = createSimpleObject ["Land_TableDesk_F",[9480.06,10057.2,504.913]];
	_this = _item525;
	_objects pushback _this;
	_objectIDs pushback 525;
	_this setPosWorld [9480.06,10057.2,505.32];
	_this setVectorDirAndUp [[-0.596262,-0.80279,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item526 = objNull;
if (_layerRoot) then {
	_item526 = createSimpleObject ["Land_TableDesk_F",[9482.61,10060.8,504.913]];
	_this = _item526;
	_objects pushback _this;
	_objectIDs pushback 526;
	_this setPosWorld [9482.61,10060.8,505.32];
	_this setVectorDirAndUp [[-0.596262,-0.80279,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item527 = objNull;
if (_layerRoot) then {
	_item527 = createSimpleObject ["Land_TableDesk_F",[9469.49,10063.4,504.913]];
	_this = _item527;
	_objects pushback _this;
	_objectIDs pushback 527;
	_this setPosWorld [9469.49,10063.4,505.32];
	_this setVectorDirAndUp [[-0.596262,-0.80279,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item528 = objNull;
if (_layerRoot) then {
	_item528 = createSimpleObject ["Land_TableDesk_F",[9472.11,10066.8,504.913]];
	_this = _item528;
	_objects pushback _this;
	_objectIDs pushback 528;
	_this setPosWorld [9472.11,10066.8,505.32];
	_this setVectorDirAndUp [[-0.596262,-0.80279,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item529 = objNull;
if (_layerRoot) then {
	_item529 = createSimpleObject ["Land_OfficeCabinet_01_F",[9478.11,10050.6,504.913]];
	_this = _item529;
	_objects pushback _this;
	_objectIDs pushback 529;
	_this setPosWorld [9478.11,10050.6,505.693];
	_this setVectorDirAndUp [[0.842401,-0.538852,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item531 = objNull;
if (_layerRoot) then {
	_item531 = createSimpleObject ["Land_OfficeChair_01_F",[9468.9,10062.5,504.913]];
	_this = _item531;
	_objects pushback _this;
	_objectIDs pushback 531;
	_this setPosWorld [9468.9,10062.5,505.587];
	_this setVectorDirAndUp [[-0.522635,-0.852557,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item532 = objNull;
if (_layerRoot) then {
	_item532 = createSimpleObject ["Land_OfficeChair_01_F",[9471.62,10065.9,504.913]];
	_this = _item532;
	_objects pushback _this;
	_objectIDs pushback 532;
	_this setPosWorld [9471.62,10065.9,505.587];
	_this setVectorDirAndUp [[-0.951756,0.306854,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item533 = objNull;
if (_layerRoot) then {
	_item533 = createSimpleObject ["Land_OfficeChair_01_F",[9481.99,10060.2,504.913]];
	_this = _item533;
	_objects pushback _this;
	_objectIDs pushback 533;
	_this setPosWorld [9481.99,10060.2,505.587];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item534 = objNull;
if (_layerRoot) then {
	_item534 = createSimpleObject ["Land_OfficeChair_01_F",[9479.34,10056.1,504.913]];
	_this = _item534;
	_objects pushback _this;
	_objectIDs pushback 534;
	_this setPosWorld [9479.34,10056.1,505.587];
	_this setVectorDirAndUp [[-0.299792,-0.954005,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item535 = objNull;
if (_layerRoot) then {
	_item535 = createSimpleObject ["Land_PCSet_01_screen_F",[9469.35,10063.7,505.735]];
	_this = _item535;
	_objects pushback _this;
	_objectIDs pushback 535;
	_this setPosWorld [9469.35,10063.7,505.989];
	_this setVectorDirAndUp [[0.465793,0.884875,0.00581072],[-0.00939852,-0.00161909,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item536 = objNull;
if (_layerRoot) then {
	_item536 = createSimpleObject ["Land_PCSet_01_screen_F",[9469.81,10063.3,505.736]];
	_this = _item536;
	_objects pushback _this;
	_objectIDs pushback 536;
	_this setPosWorld [9469.81,10063.3,505.99];
	_this setVectorDirAndUp [[0.720377,0.693582,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item537 = objNull;
if (_layerRoot) then {
	_item537 = createSimpleObject ["Land_PCSet_01_keyboard_F",[9469.35,10063.2,505.734]];
	_this = _item537;
	_objects pushback _this;
	_objectIDs pushback 537;
	_this setPosWorld [9469.35,10063.2,505.742];
	_this setVectorDirAndUp [[0.642108,0.766579,0.00727636],[-0.00939852,-0.00161909,0.999955]];
	0 remoteExec ['setFeatureType', _this];
};

private _item538 = objNull;
if (_layerRoot) then {
	_item538 = createSimpleObject ["Land_PCSet_01_mousepad_F",[9469.83,10062.9,505.747]];
	_this = _item538;
	_objects pushback _this;
	_objectIDs pushback 538;
	_this setPosWorld [9469.83,10062.9,505.75];
	_this setVectorDirAndUp [[-0.809762,0.586758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item539 = objNull;
if (_layerRoot) then {
	_item539 = createSimpleObject ["Land_PCSet_01_mouse_F",[9469.84,10062.9,505.762]];
	_this = _item539;
	_objects pushback _this;
	_objectIDs pushback 539;
	_this setPosWorld [9469.84,10062.9,505.787];
	_this setVectorDirAndUp [[0.274181,0.961678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item540 = objNull;
if (_layerRoot) then {
	_item540 = createSimpleObject ["Land_PCSet_01_mousepad_F",[9472.33,10066.4,505.748]];
	_this = _item540;
	_objects pushback _this;
	_objectIDs pushback 540;
	_this setPosWorld [9472.33,10066.4,505.752];
	_this setVectorDirAndUp [[-0.809762,0.586758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item541 = objNull;
if (_layerRoot) then {
	_item541 = createSimpleObject ["Land_PCSet_01_mouse_F",[9472.34,10066.4,505.764]];
	_this = _item541;
	_objects pushback _this;
	_objectIDs pushback 541;
	_this setPosWorld [9472.34,10066.4,505.789];
	_this setVectorDirAndUp [[0.274181,0.961678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item542 = objNull;
if (_layerRoot) then {
	_item542 = createSimpleObject ["Land_PCSet_01_keyboard_F",[9471.85,10066.7,505.736]];
	_this = _item542;
	_objects pushback _this;
	_objectIDs pushback 542;
	_this setPosWorld [9471.85,10066.7,505.744];
	_this setVectorDirAndUp [[0.642108,0.766579,0.00727636],[-0.00939852,-0.00161909,0.999955]];
	0 remoteExec ['setFeatureType', _this];
};

private _item543 = objNull;
if (_layerRoot) then {
	_item543 = createSimpleObject ["Land_PCSet_01_screen_F",[9472.31,10066.8,505.737]];
	_this = _item543;
	_objects pushback _this;
	_objectIDs pushback 543;
	_this setPosWorld [9472.31,10066.8,505.992];
	_this setVectorDirAndUp [[0.720377,0.693582,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item544 = objNull;
if (_layerRoot) then {
	_item544 = createSimpleObject ["Land_PCSet_01_screen_F",[9471.85,10067.2,505.736]];
	_this = _item544;
	_objects pushback _this;
	_objectIDs pushback 544;
	_this setPosWorld [9471.85,10067.2,505.991];
	_this setVectorDirAndUp [[0.465793,0.884875,0.00581072],[-0.00939852,-0.00161909,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item545 = objNull;
if (_layerRoot) then {
	_item545 = createSimpleObject ["Land_PCSet_01_mousepad_F",[9482.9,10060.3,505.748]];
	_this = _item545;
	_objects pushback _this;
	_objectIDs pushback 545;
	_this setPosWorld [9482.9,10060.3,505.752];
	_this setVectorDirAndUp [[-0.809762,0.586758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item546 = objNull;
if (_layerRoot) then {
	_item546 = createSimpleObject ["Land_PCSet_01_mouse_F",[9482.9,10060.3,505.764]];
	_this = _item546;
	_objects pushback _this;
	_objectIDs pushback 546;
	_this setPosWorld [9482.9,10060.3,505.789];
	_this setVectorDirAndUp [[0.274181,0.961678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item547 = objNull;
if (_layerRoot) then {
	_item547 = createSimpleObject ["Land_PCSet_01_keyboard_F",[9482.41,10060.7,505.736]];
	_this = _item547;
	_objects pushback _this;
	_objectIDs pushback 547;
	_this setPosWorld [9482.41,10060.7,505.744];
	_this setVectorDirAndUp [[0.642108,0.766579,0.00727636],[-0.00939852,-0.00161909,0.999955]];
	0 remoteExec ['setFeatureType', _this];
};

private _item548 = objNull;
if (_layerRoot) then {
	_item548 = createSimpleObject ["Land_PCSet_01_screen_F",[9482.87,10060.7,505.737]];
	_this = _item548;
	_objects pushback _this;
	_objectIDs pushback 548;
	_this setPosWorld [9482.87,10060.7,505.992];
	_this setVectorDirAndUp [[0.720377,0.693582,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item549 = objNull;
if (_layerRoot) then {
	_item549 = createSimpleObject ["Land_PCSet_01_screen_F",[9482.41,10061.1,505.736]];
	_this = _item549;
	_objects pushback _this;
	_objectIDs pushback 549;
	_this setPosWorld [9482.41,10061.1,505.991];
	_this setVectorDirAndUp [[0.465793,0.884875,0.00581072],[-0.00939852,-0.00161909,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item550 = objNull;
if (_layerRoot) then {
	_item550 = createSimpleObject ["Land_PCSet_01_mousepad_F",[9480.28,10056.7,505.748]];
	_this = _item550;
	_objects pushback _this;
	_objectIDs pushback 550;
	_this setPosWorld [9480.28,10056.7,505.752];
	_this setVectorDirAndUp [[-0.809762,0.586758,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item551 = objNull;
if (_layerRoot) then {
	_item551 = createSimpleObject ["Land_PCSet_01_mouse_F",[9480.29,10056.7,505.764]];
	_this = _item551;
	_objects pushback _this;
	_objectIDs pushback 551;
	_this setPosWorld [9480.29,10056.7,505.789];
	_this setVectorDirAndUp [[0.274181,0.961678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item552 = objNull;
if (_layerRoot) then {
	_item552 = createSimpleObject ["Land_PCSet_01_keyboard_F",[9479.8,10057,505.736]];
	_this = _item552;
	_objects pushback _this;
	_objectIDs pushback 552;
	_this setPosWorld [9479.8,10057,505.744];
	_this setVectorDirAndUp [[0.642108,0.766579,0.00727636],[-0.00939852,-0.00161909,0.999955]];
	0 remoteExec ['setFeatureType', _this];
};

private _item553 = objNull;
if (_layerRoot) then {
	_item553 = createSimpleObject ["Land_PCSet_01_screen_F",[9480.26,10057.1,505.737]];
	_this = _item553;
	_objects pushback _this;
	_objectIDs pushback 553;
	_this setPosWorld [9480.26,10057.1,505.992];
	_this setVectorDirAndUp [[0.720377,0.693582,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item554 = objNull;
if (_layerRoot) then {
	_item554 = createSimpleObject ["Land_PCSet_01_screen_F",[9479.8,10057.4,505.736]];
	_this = _item554;
	_objects pushback _this;
	_objectIDs pushback 554;
	_this setPosWorld [9479.8,10057.4,505.991];
	_this setVectorDirAndUp [[0.465793,0.884875,0.00581072],[-0.00939852,-0.00161909,0.999955]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item561 = objNull;
if (_layerRoot) then {
	_item561 = createVehicle ["CUP_shelf",[9464.8,10058.5,0.502991],[],0,"CAN_COLLIDE"];
	_this = _item561;
	_objects pushback _this;
	_objectIDs pushback 561;
	_this setPosWorld [9464.8,10058.5,504.913];
	_this setVectorDirAndUp [[0.792194,-0.61027,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item562 = objNull;
if (_layerRoot) then {
	_item562 = createSimpleObject ["Land_WaterCooler_01_new_F",[9467.11,10056.9,504.913]];
	_this = _item562;
	_objects pushback _this;
	_objectIDs pushback 562;
	_this setPosWorld [9467.11,10056.9,505.645];
	_this setVectorDirAndUp [[-0.611434,-0.791296,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item563 = objNull;
if (_layerRoot) then {
	_item563 = createVehicle ["Land_TentLamp_01_suspended_red_F",[9472.88,10048.9,3.45142],[],0,"CAN_COLLIDE"];
	_this = _item563;
	_objects pushback _this;
	_objectIDs pushback 563;
	_this setPosWorld [9472.88,10048.9,507.905];
	_this setVectorDirAndUp [[0.599215,0.800588,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,2] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item564 = objNull;
if (_layerRoot) then {
	_item564 = createVehicle ["Land_TentLamp_01_suspended_red_F",[9471.06,10046.2,3.47601],[],0,"CAN_COLLIDE"];
	_this = _item564;
	_objects pushback _this;
	_objectIDs pushback 564;
	_this setPosWorld [9471.06,10046.2,507.93];
	_this setVectorDirAndUp [[-0.604322,-0.79674,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,2] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item565 = objNull;
if (_layerRoot) then {
	_item565 = createVehicle ["Land_TentLamp_01_suspended_F",[9479.72,10067,3.9537],[],0,"CAN_COLLIDE"];
	_this = _item565;
	_objects pushback _this;
	_objectIDs pushback 565;
	_this setPosWorld [9479.72,10067,508.408];
	_this setVectorDirAndUp [[0.599215,0.800588,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item566 = objNull;
if (_layerRoot) then {
	_item566 = createVehicle ["Land_TentLamp_01_suspended_F",[9473.29,10058.2,3.91776],[],0,"CAN_COLLIDE"];
	_this = _item566;
	_objects pushback _this;
	_objectIDs pushback 566;
	_this setPosWorld [9473.29,10058.2,508.372];
	_this setVectorDirAndUp [[-0.604322,-0.79674,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,5] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item569 = objNull;
if (_layerRoot) then {
	_item569 = createVehicle ["B_Slingload_01_Fuel_F",[9366.51,9743.25,-0.0169983],[],0,"CAN_COLLIDE"];
	_this = _item569;
	_objects pushback _this;
	_objectIDs pushback 569;
	_this setPosWorld [9366.48,9743.23,501.6];
	_this setVectorDirAndUp [[-0.696351,0.717701,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item570 = objNull;
if (_layerRoot) then {
	_item570 = createVehicle ["Box_NATO_AmmoVeh_F",[9361.6,9747.3,0.0603333],[],0,"CAN_COLLIDE"];
	_this = _item570;
	_objects pushback _this;
	_objectIDs pushback 570;
	_this setPosWorld [9361.58,9747.29,501.043];
	_this setVectorDirAndUp [[-0.721629,-0.69228,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item578 = objNull;
if (_layerRoot) then {
	_item578 = createVehicle ["Land_CampingChair_V2_F",[9470.64,10045.5,0.486481],[],0,"CAN_COLLIDE"];
	_this = _item578;
	_objects pushback _this;
	_objectIDs pushback 578;
	_this setPosWorld [9470.64,10045.5,505.403];
	_this setVectorDirAndUp [[-0.826413,0.563065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item579 = objNull;
if (_layerRoot) then {
	_item579 = createVehicle ["Land_CampingChair_V2_F",[9471.76,10047.1,0.486481],[],0,"CAN_COLLIDE"];
	_this = _item579;
	_objects pushback _this;
	_objectIDs pushback 579;
	_this setPosWorld [9471.76,10047.1,505.403];
	_this setVectorDirAndUp [[-0.826413,0.563065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item580 = objNull;
if (_layerRoot) then {
	_item580 = createVehicle ["Land_CampingChair_V2_F",[9472.89,10048.8,0.486481],[],0,"CAN_COLLIDE"];
	_this = _item580;
	_objects pushback _this;
	_objectIDs pushback 580;
	_this setPosWorld [9472.89,10048.8,505.403];
	_this setVectorDirAndUp [[-0.826413,0.563065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item582 = objNull;
if (_layerRoot) then {
	_item582 = createVehicle ["Land_CampingChair_V2_F",[9469.39,10045.2,0.486481],[],0,"CAN_COLLIDE"];
	_this = _item582;
	_objects pushback _this;
	_objectIDs pushback 582;
	_this setPosWorld [9469.39,10045.2,505.403];
	_this setVectorDirAndUp [[-0.826413,0.563065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item583 = objNull;
if (_layerRoot) then {
	_item583 = createVehicle ["Land_CampingChair_V2_F",[9470.52,10046.8,0.486481],[],0,"CAN_COLLIDE"];
	_this = _item583;
	_objects pushback _this;
	_objectIDs pushback 583;
	_this setPosWorld [9470.52,10046.8,505.403];
	_this setVectorDirAndUp [[-0.826413,0.563065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item584 = objNull;
if (_layerRoot) then {
	_item584 = createVehicle ["Land_CampingChair_V2_F",[9471.82,10048.4,0.502991],[],0,"CAN_COLLIDE"];
	_this = _item584;
	_objects pushback _this;
	_objectIDs pushback 584;
	_this setPosWorld [9471.82,10048.4,505.419];
	_this setVectorDirAndUp [[-0.826413,0.563065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item585 = objNull;
if (_layerRoot) then {
	_item585 = createSimpleObject ["Land_TripodScreen_01_large_black_F",[9473.81,10045.3,504.913]];
	_this = _item585;
	_objects pushback _this;
	_objectIDs pushback 585;
	_this setPosWorld [9473.81,10045.3,505.956];
	_this setVectorDirAndUp [[-0.837413,0.54657,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,""];
};

private _item586 = objNull;
if (_layerRoot) then {
	_item586 = createVehicle ["Land_CampingChair_V2_F",[9469.34,10046.4,0.502991],[],0,"CAN_COLLIDE"];
	_this = _item586;
	_objects pushback _this;
	_objectIDs pushback 586;
	_this setPosWorld [9469.34,10046.4,505.419];
	_this setVectorDirAndUp [[-0.826413,0.563065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item587 = objNull;
if (_layerRoot) then {
	_item587 = createVehicle ["Land_CampingChair_V2_F",[9470.47,10048.1,0.502991],[],0,"CAN_COLLIDE"];
	_this = _item587;
	_objects pushback _this;
	_objectIDs pushback 587;
	_this setPosWorld [9470.47,10048.1,505.419];
	_this setVectorDirAndUp [[-0.826413,0.563065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item588 = objNull;
if (_layerRoot) then {
	_item588 = createVehicle ["Land_CampingChair_V2_F",[9471.59,10049.7,0.502991],[],0,"CAN_COLLIDE"];
	_this = _item588;
	_objects pushback _this;
	_objectIDs pushback 588;
	_this setPosWorld [9471.59,10049.7,505.419];
	_this setVectorDirAndUp [[-0.826413,0.563065,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item594 = objNull;
if (_layerRoot) then {
	_item594 = createSimpleObject ["Land_PortableDesk_01_olive_F",[9466.68,10044.3,504.913]];
	_this = _item594;
	_objects pushback _this;
	_objectIDs pushback 594;
	_this setPosWorld [9466.68,10044.3,505.357];
	_this setVectorDirAndUp [[0.5865,0.80995,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
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

private _item611 = objNull;
if (_layerRoot) then {
	_item611 = _item610 createUnit ["B_Soldier_F",[9428.6,10085.8,0.671997],[],0,"CAN_COLLIDE"];
	_item610 selectLeader _item611;
	_this = _item611;
	_objects pushback _this;
	_objectIDs pushback 611;
	_this setPosWorld [9428.6,10085.9,505.105];
	_this setVectorDirAndUp [[0.445479,0.895292,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Luke Hall";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,true] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'PATH'};
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

private _item601 = objNull;
if (_layerRoot) then {
	_item601 = _item610 createUnit ["B_Soldier_F",[9478.45,10057.1,0.502991],[],0,"CAN_COLLIDE"];
	_this = _item601;
	_objects pushback _this;
	_objectIDs pushback 601;
	_this setPosWorld [9478.45,10057.2,504.914];
	_this setVectorDirAndUp [[0.987361,0.158486,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],["V_PlateCarrier1_rgr",[]],[],"H_HelmetB","G_Combat",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "James Wright";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male06ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,true] # 0 isEqualTo '') then      {        ["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'PATH'};
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

private _item603 = objNull;
if (_layerRoot) then {
	_item603 = _item610 createUnit ["B_Soldier_F",[9403.78,10046.3,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item603;
	_objects pushback _this;
	_objectIDs pushback 603;
	_this setPosWorld [9403.78,10046.4,504.452];
	_this setVectorDirAndUp [[-0.673263,-0.739403,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "William Morris";;
	_this setface "WhiteHead_01";;
	_this setspeaker "Male02ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'PATH'};
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

private _item605 = objNull;
if (_layerRoot) then {
	_item605 = _item610 createUnit ["B_Soldier_F",[9456.46,10090.1,0],[],0,"CAN_COLLIDE"];
	_this = _item605;
	_objects pushback _this;
	_objectIDs pushback 605;
	_this setPosWorld [9456.46,10090.1,504.429];
	_this setVectorDirAndUp [[0.872172,-0.4892,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Danny Johnson";;
	_this setface "WhiteHead_08";;
	_this setspeaker "Male12ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'PATH'};
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

private _item607 = objNull;
if (_layerRoot) then {
	_item607 = _item610 createUnit ["B_Soldier_F",[9479.44,10056.1,0.502991],[],0,"CAN_COLLIDE"];
	_this = _item607;
	_objects pushback _this;
	_objectIDs pushback 607;
	_this setPosWorld [9479.44,10056.1,504.914];
	_this setVectorDirAndUp [[0.248014,0.968757,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],["V_PlateCarrier1_rgr",[]],[],"H_HelmetB","G_Combat",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ethan Green";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1.03;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'PATH'};
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

private _item609 = objNull;
if (_layerRoot) then {
	_item609 = _item610 createUnit ["B_Soldier_F",[9468.99,10062.5,0.502991],[],0,"CAN_COLLIDE"];
	_this = _item609;
	_objects pushback _this;
	_objectIDs pushback 609;
	_this setPosWorld [9468.99,10062.5,504.914];
	_this setVectorDirAndUp [[0.549475,0.83551,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],["V_PlateCarrier1_rgr",[]],[],"H_HelmetB","G_Tactical_Black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Jamie Wilson";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U3",["hubsittingchairuc_idle1","hubsittingchairuc_idle2","hubsittingchairuc_idle3","hubsittingchairuc_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U3",["hubsittingchairuc_idle1","hubsittingchairuc_idle2","hubsittingchairuc_idle3","hubsittingchairuc_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'PATH'};
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

private _item613 = objNull;
if (_layerRoot) then {
	_item613 = _item610 createUnit ["B_Soldier_F",[9457.78,10088.9,0],[],0,"CAN_COLLIDE"];
	_this = _item613;
	_objects pushback _this;
	_objectIDs pushback 613;
	_this setPosWorld [9457.78,10088.9,504.421];
	_this setVectorDirAndUp [[-0.941518,0.336964,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],["V_PlateCarrier1_rgr",[]],[],"H_HelmetB","G_Combat",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dixon Brown";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male10ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,true] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'PATH'};
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

private _item4 = objNull;
if (_layer12) then {
	_item4 = createTrigger ["EmptyDetectorArea10x10",[9435.54,9789.3,0],true];
	_this = _item4;
	_triggers pushback _this;
	_triggerIDs pushback 4;
	_item4 setPosATL [9435.54,9789.3,0];
	_this setTriggerArea [12,10,312.479,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item10 = objNull;
if (_layer12) then {
	_item10 = createTrigger ["EmptyDetectorArea10x10",[9414.28,10046.4,0],true];
	_this = _item10;
	_triggers pushback _this;
	_triggerIDs pushback 10;
	_item10 setPosATL [9414.28,10046.4,0];
	_this setTriggerArea [5,20,34.5036,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item7 = objNull;
if (_layer12) then {
	_item7 = createTrigger ["EmptyDetectorArea10x10",[9374.33,9753.32,0.0333862],true];
	_this = _item7;
	_triggers pushback _this;
	_triggerIDs pushback 7;
	_item7 setPosATL [9374.33,9753.32,0.0333862];
	_this setTriggerArea [10,15,317.786,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};

private _item596 = objNull;
if (_layer12) then {
	_item596 = createTrigger ["EmptyDetectorArea10x10",[9496.45,10075.8,0.623993],true];
	_this = _item596;
	_triggers pushback _this;
	_triggerIDs pushback 596;
	_item596 setPosATL [9496.45,10075.8,0.623993];
	_this setTriggerArea [3,4,201.035,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item610;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this enableDynamicSimulation true;
	      if (!is3DEN && !(["","ColorWEST","Alpha 2-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 2-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 2-2",true]'];          ["","ColorWEST","Alpha 2-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 2-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 2-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item0 = objNull;
if (_layerRoot) then {
	_item0 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[9413,10045.3,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_logics pushback _this;
	_logicIDs pushback 0;
	_this setPosWorld [9413,10045.3,504.41];
	_this setVectorDirAndUp [[0.867006,0.498298,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,60.1125,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item3 = objNull;
if (_layer12) then {
	_item3 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[9448.82,10077.4,0],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_logics pushback _this;
	_logicIDs pushback 3;
	_this setPosWorld [9448.82,10077.4,504.41];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item15 = objNull;
if (_layerRoot) then {
	_item15 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[9383.59,9738.75,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_logics pushback _this;
	_logicIDs pushback 15;
	_this setPosWorld [9383.59,9738.75,500.665];
	_this setVectorDirAndUp [[-0.672576,0.739973,-0.00896736],[-0.0133317,0,0.999911]];
	_this setVariable ["objectArea",[10,5,317.732,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item39 = objNull;
if (_layer38 && _layer40) then {
	_item39 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[9436.8,10103.7,0.310883],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_logics pushback _this;
	_logicIDs pushback 39;
	_this setPosWorld [9436.8,10103.7,505.045];
	_this setVectorDirAndUp [[0,0.999934,-0.0115015],[-0.00511379,0.0115013,0.999921]];
};

private _item42 = objNull;
if (_layerRoot) then {
	_item42 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[9461.67,10083.1,0.460419],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_logics pushback _this;
	_logicIDs pushback 42;
	_this setPosWorld [9461.67,10083.1,504.87];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item43 = objNull;
if (_layerRoot) then {
	_item43 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[9440.63,10046.8,0],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_logics pushback _this;
	_logicIDs pushback 43;
	_this setPosWorld [9440.63,10046.8,504.41];
	_this setVectorDirAndUp [[-0.549498,-0.835495,0],[0,0,1]];
	_this setVariable ["objectArea",[5,8,213.333,true,-1]];
	_this setVariable ["#filter",14];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer38) then {missionNamespace setVariable ["tempMissionSP_Spawn Medic Crate",[[_item39],[]]];};
if (_layer40) then {missionNamespace setVariable ["tempMissionSP_Spawn Medic Crate",[[_item39],[]]];};
if (_layer12) then {missionNamespace setVariable ["tempMissionSP_SIA ZGM Essentials",[[_item2,_item4,_item3,_item11,_item10,_item13,_item14,_item7,_item20,_item21,_item31,_item32,_item596],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item13) then {
		this = _item13;
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
	if !(isnull _item14) then {
		this = _item14;
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
	if !(isnull _item20) then {
		this = _item20;
		call{arsenals pushBack this};
	};
	if !(isnull _item21) then {
		this = _item21;
		call{arsenals pushBack this};
	};
	if !(isnull _item31) then {
		this = _item31;
		call{arsenals pushBack this};
	};
	if !(isnull _item32) then {
		this = _item32;
		call{arsenals pushBack this};
	};
	if !(isnull _item611) then {
		this = _item611;
		call{[this] spawn {sleep 1; _unit = (_this select 0); removeAllWeapons _unit;}};
	};
	if !(isnull _item601) then {
		this = _item601;
		call{[this] spawn {sleep 3; _unit = (_this select 0); removeVest _unit; removeAllWeapons _unit; removeHeadgear _unit; _unit addHeadGear "H_HeadSet_black_F"; removeGoggles _unit;}};
	};
	if !(isnull _item607) then {
		this = _item607;
		call{[this] spawn {sleep 3; _unit = (_this select 0); removeVest _unit; removeAllWeapons _unit; removeHeadgear _unit; _unit addHeadGear "H_HeadSet_black_F"; removeGoggles _unit;}};
	};
	if !(isnull _item609) then {
		this = _item609;
		call{[this] spawn {sleep 3; _unit = (_this select 0); removeVest _unit; removeAllWeapons _unit; removeHeadgear _unit; _unit addHeadGear "H_HeadSet_black_F"; removeGoggles _unit;}};
	};
	if !(isnull _item613) then {
		this = _item613;
		call{[this] spawn {sleep 3; _unit = (_this select 0);  removeAllWeapons _unit;}};
	};
	if !(isnull _item39) then {
		this = _item39;
		call{if (isServer) then {_medcrate = "ACE_medicalSupplyCrate_advanced" createVehicle position this; _medcrate setPosASL (getPosASL this);};};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item0) then {_item0 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item15) then {_item15 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item42) then {_item42 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item43) then {_item43 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
