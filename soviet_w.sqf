// Export of 'tempMissionSP.BaranowWinter' by Freedom on v0.9

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

private _item236 = grpNull;
if (_layerRoot) then {
	_item236 = createGroup east;
	_this = _item236;
	_groups pushback _this;
	_groupIDs pushback 236;
};

private _item260 = grpNull;
if (_layerRoot) then {
	_item260 = createGroup west;
	_this = _item260;
	_groups pushback _this;
	_groupIDs pushback 260;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layer229) then {
	_item0 = createVehicle ["Land_InfoStand_V1_F",[4647.86,2663.88,2.71848],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [4647.86,2663.88,28.5438];
	_this setVectorDirAndUp [[0.416363,0.909188,0.00430344],[-0.00204263,-0.00379782,0.999991]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item6 = objNull;
if (_layer4 && _layer229) then {
	_item6 = createVehicle ["Land_BarGate_F",[4573.87,2670.06,0],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [4573.87,2670.06,26.8815];
	_this setVectorDirAndUp [[-0.870369,0.481552,-0.102794],[-0.0747901,0.0770517,0.994218]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item10 = objNull;
if (_layer9 && _layer229) then {
	_item10 = createVehicle ["Land_InfoStand_V1_F",[4399.5,3117.35,-0.000959396],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [4399.52,3117.34,24.0001];
	_this setVectorDirAndUp [[-0.975508,0.216201,0.0405042],[0.0387193,-0.0124866,0.999172]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item11 = objNull;
if (_layer9 && _layer229) then {
	_item11 = createVehicle ["Land_Scaffolding_New_F",[4374.41,3103.09,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [4374.41,3103.09,26.5899];
	_this setVectorDirAndUp [[0.976213,-0.216815,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item12 = objNull;
if (_layer9 && _layer229) then {
	_item12 = createVehicle ["Land_Shoot_House_Panels_Window_F",[4382.19,3134.62,0],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [4382.19,3134.62,25.2505];
	_this setVectorDirAndUp [[0.973892,-0.226971,0.00428924],[0.00375014,0.0349773,0.999381]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item13 = objNull;
if (_layer9 && _layer229) then {
	_item13 = createVehicle ["Land_Shoot_House_Panels_Window_F",[4380.37,3126.9,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [4380.37,3126.9,25.4638];
	_this setVectorDirAndUp [[0.97388,-0.22691,0.00834884],[-0.00624348,0.00999455,0.999931]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item14 = objNull;
if (_layer9 && _layer229) then {
	_item14 = createVehicle ["Land_Shoot_House_Panels_Window_F",[4389.46,3134.98,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [4389.46,3134.98,25.0448];
	_this setVectorDirAndUp [[-0.97326,0.228369,0.0247573],[0.0362272,0.0461703,0.998276]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item15 = objNull;
if (_layer9 && _layer229) then {
	_item15 = createVehicle ["Land_Shoot_House_Panels_Window_F",[4387.64,3127.19,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [4387.64,3127.19,25.3996];
	_this setVectorDirAndUp [[-0.973595,0.227398,0.0200796],[0.0249911,0.0187398,0.999512]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item16 = objNull;
if (_layer9 && _layer229) then {
	_item16 = createVehicle ["Land_Shoot_House_Panels_Window_F",[4381.7,3119.33,0],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [4381.7,3119.33,25.5611];
	_this setVectorDirAndUp [[0.226978,0.973872,0.00738701],[0.00499134,-0.00874814,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item17 = objNull;
if (_layer9 && _layer229) then {
	_item17 = createVehicle ["Land_Shoot_House_Panels_Window_F",[4381.56,3127.66,0],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [4381.56,3127.66,25.4636];
	_this setVectorDirAndUp [[-0.226978,-0.973864,0.00831678],[-0.00624348,0.00999455,0.999931]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item18 = objNull;
if (_layer9 && _layer229) then {
	_item18 = createVehicle ["Land_Shoot_House_Panels_Window_F",[4382.61,3123.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [4382.61,3123.1,25.5158];
	_this setVectorDirAndUp [[-0.198517,-0.98006,0.00855642],[-0.00624348,0.00999455,0.999931]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item19 = objNull;
if (_layer9 && _layer229) then {
	_item19 = createVehicle ["Land_Shoot_House_Wall_F",[4372.45,3136.88,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [4372.45,3136.88,25.2255];
	_this setVectorDirAndUp [[0.973892,-0.227011,0.000248046],[-0.00375055,-0.0149976,0.99988]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item20 = objNull;
if (_layer9 && _layer229) then {
	_item20 = createVehicle ["Land_Shoot_House_Wall_F",[4373.33,3127.45,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [4373.33,3127.45,25.4273];
	_this setVectorDirAndUp [[-0.226981,-0.973697,0.0198377],[-0.00375055,0.0212431,0.999767]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item21 = objNull;
if (_layer9 && _layer229) then {
	_item21 = createVehicle ["Land_Shoot_House_Wall_F",[4377.22,3126.54,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [4377.22,3126.54,25.4505];
	_this setVectorDirAndUp [[-0.226979,-0.973655,0.0218242],[0.00500326,0.021243,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layer9 && _layer229) then {
	_item22 = createVehicle ["Land_Shoot_House_Wall_F",[4370.64,3129.09,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [4370.64,3129.09,25.378];
	_this setVectorDirAndUp [[0.973892,-0.22682,0.00932406],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item23 = objNull;
if (_layer9 && _layer229) then {
	_item23 = createVehicle ["Land_Shoot_House_Wall_F",[4374.56,3141.53,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [4374.56,3141.53,25.303];
	_this setVectorDirAndUp [[-0.226981,-0.973777,-0.0154575],[-0.00375055,-0.0149976,0.99988]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item24 = objNull;
if (_layer9 && _layer229) then {
	_item24 = createVehicle ["Land_Shoot_House_Wall_F",[4380.4,3140.17,0],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [4380.4,3140.17,25.2565];
	_this setVectorDirAndUp [[-0.22688,-0.973761,0.0177583],[0.029985,0.0112411,0.999487]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item25 = objNull;
if (_layer9 && _layer229) then {
	_item25 = createVehicle ["Land_Shoot_House_Wall_F",[4378.45,3140.63,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [4378.45,3140.63,25.2857];
	_this setVectorDirAndUp [[-0.226981,-0.973802,-0.0137551],[0.00375014,-0.0149976,0.99988]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer9 && _layer229) then {
	_item26 = createVehicle ["Land_Shoot_House_Wall_F",[4372,3134.94,0],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [4372,3134.94,25.237];
	_this setVectorDirAndUp [[0.973892,-0.22682,0.00932406],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item27 = objNull;
if (_layer9 && _layer229) then {
	_item27 = createVehicle ["Land_Shoot_House_Wall_F",[4371.09,3131.04,0],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [4371.09,3131.04,25.331];
	_this setVectorDirAndUp [[0.973892,-0.22682,0.00932406],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item28 = objNull;
if (_layer9 && _layer229) then {
	_item28 = createVehicle ["Land_Shoot_House_Wall_F",[4380.82,3128.78,0],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [4380.82,3128.78,25.436];
	_this setVectorDirAndUp [[0.97388,-0.226759,0.0117604],[-0.00625302,0.0249907,0.999668]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item29 = objNull;
if (_layer9 && _layer229) then {
	_item29 = createVehicle ["Land_Shoot_House_Wall_F",[4371.39,3127.9,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [4371.39,3127.9,25.4104];
	_this setVectorDirAndUp [[-0.226981,-0.973697,0.0198377],[-0.00375055,0.0212431,0.999767]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item30 = objNull;
if (_layer9 && _layer229) then {
	_item30 = createVehicle ["Land_Shoot_House_Wall_F",[4371.55,3132.99,0],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [4371.55,3132.99,25.284];
	_this setVectorDirAndUp [[0.973892,-0.22682,0.00932406],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item31 = objNull;
if (_layer9 && _layer229) then {
	_item31 = createVehicle ["Land_Shoot_House_Wall_F",[4373.36,3140.78,0],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [4373.36,3140.78,25.2873];
	_this setVectorDirAndUp [[0.973892,-0.227011,0.000248046],[-0.00375055,-0.0149976,0.99988]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item32 = objNull;
if (_layer9 && _layer229) then {
	_item32 = createVehicle ["Land_Shoot_House_Wall_F",[4383.09,3138.52,0],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [4383.09,3138.52,25.1945];
	_this setVectorDirAndUp [[0.973461,-0.227296,-0.0266479],[0.029985,0.0112411,0.999487]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer9 && _layer229) then {
	_item33 = createVehicle ["Land_Shoot_House_Wall_F",[4376.51,3141.08,0],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [4376.51,3141.08,25.2998];
	_this setVectorDirAndUp [[-0.226981,-0.973802,-0.0137551],[0.00375014,-0.0149976,0.99988]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item34 = objNull;
if (_layer9 && _layer229) then {
	_item34 = createVehicle ["Land_Shoot_House_Wall_F",[4374.07,3126.24,0],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [4374.07,3126.24,25.4556];
	_this setVectorDirAndUp [[0.973892,-0.226853,0.00847366],[-0.00375055,0.0212431,0.999767]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item35 = objNull;
if (_layer9 && _layer229) then {
	_item35 = createVehicle ["Land_Shoot_House_Wall_F",[4376.54,3123.61,0],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [4376.54,3123.61,25.516];
	_this setVectorDirAndUp [[0.973887,-0.227034,-4.97391e-005],[0.00500326,0.021243,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer9 && _layer229) then {
	_item36 = createVehicle ["Land_Shoot_House_Wall_F",[4376.99,3125.56,0],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [4376.99,3125.56,25.4723];
	_this setVectorDirAndUp [[0.973887,-0.227034,-4.97391e-005],[0.00500326,0.021243,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer9 && _layer229) then {
	_item37 = createVehicle ["Land_Shoot_House_Wall_F",[4376.09,3121.67,0],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [4376.09,3121.67,25.5596];
	_this setVectorDirAndUp [[0.973887,-0.227034,-4.97391e-005],[0.00500326,0.021243,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item38 = objNull;
if (_layer9 && _layer229) then {
	_item38 = createVehicle ["Land_Shoot_House_Wall_F",[4373.16,3122.35,0],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [4373.16,3122.35,25.5356];
	_this setVectorDirAndUp [[0.973896,-0.22687,0.00752988],[-0.00248975,0.0224939,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layer9 && _layer229) then {
	_item39 = createVehicle ["Land_Shoot_House_Wall_F",[4382.35,3139.72,0],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [4382.35,3139.72,25.2032];
	_this setVectorDirAndUp [[-0.22688,-0.973761,0.0177583],[0.029985,0.0112411,0.999487]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item40 = objNull;
if (_layer9 && _layer229) then {
	_item40 = createVehicle ["Land_Shoot_House_Wall_F",[4382.64,3136.57,0],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [4382.64,3136.57,25.2091];
	_this setVectorDirAndUp [[0.973892,-0.226901,-0.00705605],[0.00375014,-0.0149976,0.99988]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item41 = objNull;
if (_layer9 && _layer229) then {
	_item41 = createVehicle ["Land_Shoot_House_Wall_F",[4380.96,3120.53,0],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [4380.96,3120.53,25.5594];
	_this setVectorDirAndUp [[-0.973887,0.227034,4.97429e-005],[0.00500326,0.021243,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item42 = objNull;
if (_layer9 && _layer229) then {
	_item42 = createVehicle ["Land_Shoot_House_Wall_F",[4381.41,3122.48,0],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [4381.41,3122.48,25.5158];
	_this setVectorDirAndUp [[-0.973887,0.227034,4.97429e-005],[0.00500326,0.021243,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item43 = objNull;
if (_layer9 && _layer229) then {
	_item43 = createVehicle ["Land_Shoot_House_Wall_F",[4385.33,3134.91,0],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [4385.33,3134.91,25.1973];
	_this setVectorDirAndUp [[-0.226833,-0.972479,0.0532089],[0.0362272,0.0461703,0.998276]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item44 = objNull;
if (_layer9 && _layer229) then {
	_item44 = createVehicle ["Land_Shoot_House_Wall_F",[4385.56,3135.89,0],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [4385.56,3135.89,25.1441];
	_this setVectorDirAndUp [[0.97326,-0.228369,-0.0247573],[0.0362272,0.0461703,0.998276]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item45 = objNull;
if (_layer9 && _layer229) then {
	_item45 = createVehicle ["Land_Shoot_House_Wall_F",[4382.93,3133.42,0],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [4382.93,3133.42,25.2897];
	_this setVectorDirAndUp [[0.22698,0.973273,-0.0349153],[0.00375014,0.0349773,0.999381]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item46 = objNull;
if (_layer9 && _layer229) then {
	_item46 = createVehicle ["Land_Shoot_House_Wall_F",[4383.39,3135.37,0],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [4383.39,3135.37,25.2199];
	_this setVectorDirAndUp [[0.22698,0.973273,-0.0349153],[0.00375014,0.0349773,0.999381]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item47 = objNull;
if (_layer9 && _layer229) then {
	_item47 = createVehicle ["Land_Shoot_House_Wall_F",[4384.88,3132.97,0],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [4384.88,3132.97,25.2797];
	_this setVectorDirAndUp [[0.22691,0.973105,-0.0397336],[0.0249911,0.0349666,0.999076]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item48 = objNull;
if (_layer9 && _layer229) then {
	_item48 = createVehicle ["Land_Shoot_House_Wall_F",[4381.28,3130.73,0],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [4381.28,3130.73,25.3903];
	_this setVectorDirAndUp [[0.973892,-0.226971,0.00428924],[0.00375014,0.0349773,0.999381]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item49 = objNull;
if (_layer9 && _layer229) then {
	_item49 = createVehicle ["Land_Shoot_House_Wall_F",[4381.11,3125.66,0],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [4381.11,3125.66,25.4808];
	_this setVectorDirAndUp [[0.226977,0.973865,-0.00831679],[-0.00624348,0.00999455,0.999931]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item50 = objNull;
if (_layer9 && _layer229) then {
	_item50 = createVehicle ["Land_Shoot_House_Wall_F",[4383.06,3125.2,0],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [4383.06,3125.2,25.4976];
	_this setVectorDirAndUp [[0.226977,0.973865,-0.00831679],[-0.00624348,0.00999455,0.999931]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item51 = objNull;
if (_layer9 && _layer229) then {
	_item51 = createVehicle ["Land_Shoot_House_Wall_F",[4383.51,3127.15,0],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [4383.51,3127.15,25.4809];
	_this setVectorDirAndUp [[0.226977,0.973865,-0.00831679],[-0.00624348,0.00999455,0.999931]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item52 = objNull;
if (_layer9 && _layer229) then {
	_item52 = createVehicle ["Land_Shoot_House_Wall_F",[4373.62,3124.3,0],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [4373.62,3124.3,25.4953];
	_this setVectorDirAndUp [[0.973892,-0.226853,0.00847366],[-0.00375055,0.0212431,0.999767]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layer9 && _layer229) then {
	_item53 = createVehicle ["Land_Shoot_House_Wall_F",[4379.2,3139.42,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [4379.2,3139.42,25.2649];
	_this setVectorDirAndUp [[0.973892,-0.226901,-0.00705605],[0.00375014,-0.0149976,0.99988]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item54 = objNull;
if (_layer9 && _layer229) then {
	_item54 = createVehicle ["Land_Shoot_House_Wall_F",[4378.29,3135.53,0],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [4378.29,3135.53,25.2334];
	_this setVectorDirAndUp [[0.973892,-0.226971,0.00428924],[0.00375014,0.0349773,0.999381]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item55 = objNull;
if (_layer9 && _layer229) then {
	_item55 = createVehicle ["Land_Shoot_House_Wall_F",[4380.53,3131.93,0],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [4380.53,3131.93,25.3511];
	_this setVectorDirAndUp [[0.22698,0.973273,-0.0349153],[0.00375014,0.0349773,0.999381]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item56 = objNull;
if (_layer9 && _layer229) then {
	_item56 = createVehicle ["Land_Shoot_House_Wall_F",[4378.58,3132.38,0],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [4378.58,3132.38,25.3321];
	_this setVectorDirAndUp [[0.226977,0.97363,-0.02292],[-0.00625302,0.0249907,0.999668]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item57 = objNull;
if (_layer9 && _layer229) then {
	_item57 = createVehicle ["Land_Shoot_House_Wall_F",[4377.84,3133.58,0],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [4377.84,3133.58,25.2975];
	_this setVectorDirAndUp [[0.97388,-0.226759,0.0117604],[-0.00625302,0.0249907,0.999668]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item58 = objNull;
if (_layer9 && _layer229) then {
	_item58 = createVehicle ["Land_Shoot_House_Wall_F",[4374.53,3128.2,0],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [4374.53,3128.2,25.4151];
	_this setVectorDirAndUp [[-0.973892,0.226819,-0.00932406],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item59 = objNull;
if (_layer9 && _layer229) then {
	_item59 = createVehicle ["Land_Shoot_House_Wall_F",[4374.99,3130.14,0],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [4374.99,3130.14,25.3681];
	_this setVectorDirAndUp [[-0.973892,0.226819,-0.00932406],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item60 = objNull;
if (_layer9 && _layer229) then {
	_item60 = createVehicle ["Land_Shoot_House_Wall_F",[4374.24,3131.34,0],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [4374.24,3131.34,25.3353];
	_this setVectorDirAndUp [[-0.226981,-0.973616,0.0234878],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item61 = objNull;
if (_layer9 && _layer229) then {
	_item61 = createVehicle ["Land_Shoot_House_Wall_F",[4375.9,3134.03,0],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [4375.9,3134.03,25.2743];
	_this setVectorDirAndUp [[-0.973892,0.226819,-0.00932406],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item62 = objNull;
if (_layer9 && _layer229) then {
	_item62 = createVehicle ["Land_Shoot_House_Wall_F",[4375.15,3135.23,0],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [4375.15,3135.23,25.2415];
	_this setVectorDirAndUp [[-0.226981,-0.973616,0.0234878],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item63 = objNull;
if (_layer9 && _layer229) then {
	_item63 = createVehicle ["Land_Shoot_House_Wall_F",[4373.2,3135.69,0],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [4373.2,3135.69,25.2228];
	_this setVectorDirAndUp [[-0.226981,-0.973616,0.0234878],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item64 = objNull;
if (_layer9 && _layer229) then {
	_item64 = createVehicle ["Land_Shoot_House_Wall_F",[4374.7,3133.28,0],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [4374.7,3133.28,25.2885];
	_this setVectorDirAndUp [[-0.226981,-0.973616,0.0234878],[-0.00375055,0.024991,0.999681]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item65 = objNull;
if (_layer9 && _layer229) then {
	_item65 = createVehicle ["Land_Shoot_House_Wall_F",[4377.38,3131.64,0],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [4377.38,3131.64,25.3433];
	_this setVectorDirAndUp [[-0.97388,0.226758,-0.0117604],[-0.00625302,0.0249907,0.999668]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item66 = objNull;
if (_layer9 && _layer229) then {
	_item66 = createVehicle ["Land_Shoot_House_Wall_F",[4376.47,3127.74,0],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [4376.47,3127.74,25.4311];
	_this setVectorDirAndUp [[-0.97388,0.226909,-0.00834884],[-0.00624348,0.00999455,0.999931]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item67 = objNull;
if (_layer9 && _layer229) then {
	_item67 = createVehicle ["Land_Shoot_House_Wall_F",[4387.93,3124.04,0],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [4387.93,3124.04,25.4512];
	_this setVectorDirAndUp [[-0.226952,-0.973813,0.0134277],[0.0162488,0.00999938,0.999818]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer9 && _layer229) then {
	_item68 = createVehicle ["Land_Shoot_House_Wall_F",[4389.91,3136.93,0],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [4389.91,3136.93,24.9708];
	_this setVectorDirAndUp [[0.97326,-0.227364,-0.0327255],[0.0362272,0.0112441,0.99928]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer9 && _layer229) then {
	_item69 = createVehicle ["Land_Shoot_House_Wall_F",[4398.29,3128.82,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [4398.29,3128.82,25.0175];
	_this setVectorDirAndUp [[0.973303,-0.228313,-0.0235413],[0.0349773,0.0461723,0.998321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layer9 && _layer229) then {
	_item70 = createVehicle ["Land_Shoot_House_Wall_F",[4391.11,3137.68,0],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [4391.11,3137.68,24.9168];
	_this setVectorDirAndUp [[-0.226812,-0.973686,0.0221787],[0.0387193,0.0137395,0.999156]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item71 = objNull;
if (_layer9 && _layer229) then {
	_item71 = createVehicle ["Land_Shoot_House_Wall_F",[4391.83,3123.13,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [4391.83,3123.13,25.371];
	_this setVectorDirAndUp [[-0.226911,-0.973621,0.0239279],[0.0249911,0.0187398,0.999512]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer9 && _layer229) then {
	_item72 = createVehicle ["Land_Shoot_House_Wall_F",[4389,3133.03,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [4389,3133.03,25.1514];
	_this setVectorDirAndUp [[0.97326,-0.228369,-0.0247573],[0.0362272,0.0461703,0.998276]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer9 && _layer229) then {
	_item73 = createVehicle ["Land_Shoot_House_Wall_F",[4387.19,3125.24,0],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [4387.19,3125.24,25.4475];
	_this setVectorDirAndUp [[0.973595,-0.227398,-0.0200796],[0.0249911,0.0187398,0.999512]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer9 && _layer229) then {
	_item74 = createVehicle ["Land_Shoot_House_Wall_F",[4395.01,3136.77,0],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [4395.01,3136.77,24.7784];
	_this setVectorDirAndUp [[-0.226812,-0.973686,0.0221787],[0.0387193,0.0137395,0.999156]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer9 && _layer229) then {
	_item75 = createVehicle ["Land_Shoot_House_Wall_F",[4396.96,3136.32,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [4396.96,3136.32,24.709];
	_this setVectorDirAndUp [[-0.226812,-0.973686,0.0221787],[0.0387193,0.0137395,0.999156]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer9 && _layer229) then {
	_item76 = createVehicle ["Land_Shoot_House_Wall_F",[4398.91,3135.86,0],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [4398.91,3135.86,24.6447];
	_this setVectorDirAndUp [[-0.226812,-0.972245,0.057413],[0.0387208,0.049901,0.998003]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer9 && _layer229) then {
	_item77 = createVehicle ["Land_Shoot_House_Wall_F",[4399.65,3134.66,0],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [4399.65,3134.66,24.6759];
	_this setVectorDirAndUp [[0.973169,-0.228582,-0.0263279],[0.0387208,0.049901,0.998003]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item78 = objNull;
if (_layer9 && _layer229) then {
	_item78 = createVehicle ["Land_Shoot_House_Wall_F",[4399.2,3132.71,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [4399.2,3132.71,24.7908];
	_this setVectorDirAndUp [[0.973169,-0.228582,-0.0263279],[0.0387208,0.049901,0.998003]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layer9 && _layer229) then {
	_item79 = createVehicle ["Land_Shoot_House_Wall_F",[4398.75,3130.76,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [4398.75,3130.76,24.9059];
	_this setVectorDirAndUp [[0.973169,-0.228582,-0.0263279],[0.0387208,0.049901,0.998003]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layer9 && _layer229) then {
	_item80 = createVehicle ["Land_Shoot_House_Wall_F",[4395.73,3122.23,0],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [4395.73,3122.23,25.2393];
	_this setVectorDirAndUp [[-0.226812,-0.973563,0.0270434],[0.0387193,0.0187316,0.999075]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item81 = objNull;
if (_layer9 && _layer229) then {
	_item81 = createVehicle ["Land_Shoot_House_Wall_F",[4397.84,3126.87,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [4397.84,3126.87,25.0881];
	_this setVectorDirAndUp [[0.973303,-0.227467,-0.0306563],[0.0349773,0.0149887,0.999276]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer9 && _layer229) then {
	_item82 = createVehicle ["Land_Shoot_House_Wall_F",[4388.1,3129.14,0],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [4388.1,3129.14,25.3333];
	_this setVectorDirAndUp [[0.973595,-0.227694,-0.0163847],[0.0249911,0.0349666,0.999076]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item83 = objNull;
if (_layer9 && _layer229) then {
	_item83 = createVehicle ["Land_Shoot_House_Wall_F",[4386.8,3119.17,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [4386.8,3119.17,25.509];
	_this setVectorDirAndUp [[0.97377,-0.226962,-0.016104],[0.0162454,-0.00124468,0.999867]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item84 = objNull;
if (_layer9 && _layer229) then {
	_item84 = createVehicle ["Land_Shoot_House_Wall_F",[4387.25,3121.12,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [4387.25,3121.12,25.4915];
	_this setVectorDirAndUp [[0.97377,-0.227129,-0.0135539],[0.0162488,0.00999938,0.999818]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item85 = objNull;
if (_layer9 && _layer229) then {
	_item85 = createVehicle ["Land_Shoot_House_Wall_F",[4387.71,3123.07,0],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [4387.71,3123.07,25.4646];
	_this setVectorDirAndUp [[0.97377,-0.227129,-0.0135539],[0.0162488,0.00999938,0.999818]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item86 = objNull;
if (_layer9 && _layer229) then {
	_item86 = createVehicle ["Land_Shoot_House_Wall_F",[4390.63,3122.39,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [4390.63,3122.39,25.415];
	_this setVectorDirAndUp [[0.973595,-0.227398,-0.0200796],[0.0249911,0.0187398,0.999512]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item87 = objNull;
if (_layer9 && _layer229) then {
	_item87 = createVehicle ["Land_Shoot_House_Wall_F",[4390.18,3120.44,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [4390.18,3120.44,25.4508];
	_this setVectorDirAndUp [[0.97377,-0.227129,-0.0135539],[0.0162488,0.00999938,0.999818]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item88 = objNull;
if (_layer9 && _layer229) then {
	_item88 = createVehicle ["Land_Shoot_House_Wall_F",[4389.72,3118.49,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [4389.72,3118.49,25.4606];
	_this setVectorDirAndUp [[0.97377,-0.226962,-0.016104],[0.0162454,-0.00124468,0.999867]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item89 = objNull;
if (_layer9 && _layer229) then {
	_item89 = createVehicle ["Land_Shoot_House_Wall_F",[4382.91,3120.08,0],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [4382.91,3120.08,25.5593];
	_this setVectorDirAndUp [[-0.973887,0.227034,4.97429e-005],[0.00500326,0.021243,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item90 = objNull;
if (_layer9 && _layer229) then {
	_item90 = createVehicle ["Land_Shoot_House_Wall_F",[4383.36,3122.03,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [4383.36,3122.03,25.5312];
	_this setVectorDirAndUp [[-0.97388,0.226909,-0.00834884],[-0.00624348,0.00999455,0.999931]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item91 = objNull;
if (_layer9 && _layer229) then {
	_item91 = createVehicle ["Land_Shoot_House_Wall_F",[4386.9,3128.39,0],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [4386.9,3128.39,25.3894];
	_this setVectorDirAndUp [[-0.226911,-0.973105,0.0397337],[0.0249911,0.0349666,0.999076]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item92 = objNull;
if (_layer9 && _layer229) then {
	_item92 = createVehicle ["Land_Shoot_House_Wall_F",[4384.95,3128.84,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [4384.95,3128.84,25.4222];
	_this setVectorDirAndUp [[-0.226911,-0.973105,0.0397337],[0.0249911,0.0349666,0.999076]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item93 = objNull;
if (_layer9 && _layer229) then {
	_item93 = createVehicle ["Land_Shoot_House_Wall_F",[4393.06,3137.22,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [4393.06,3137.22,24.8476];
	_this setVectorDirAndUp [[-0.226812,-0.973686,0.0221787],[0.0387193,0.0137395,0.999156]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item94 = objNull;
if (_layer9 && _layer229) then {
	_item94 = createVehicle ["Land_Shoot_House_Wall_F",[4384.49,3126.9,0],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [4384.49,3126.9,25.4785];
	_this setVectorDirAndUp [[-0.226952,-0.973813,0.0134277],[0.0162488,0.00999938,0.999818]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer9 && _layer229) then {
	_item95 = createVehicle ["Land_Shoot_House_Wall_F",[4388.71,3136.18,0],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [4388.71,3136.18,25.0227];
	_this setVectorDirAndUp [[-0.226833,-0.973745,0.0191802],[0.0362272,0.0112441,0.99928]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer9 && _layer229) then {
	_item96 = createVehicle ["Land_Shoot_House_Wall_F",[4388.26,3134.23,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [4388.26,3134.23,25.1229];
	_this setVectorDirAndUp [[-0.226833,-0.972479,0.0532089],[0.0362272,0.0461703,0.998276]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layer9 && _layer229) then {
	_item97 = createVehicle ["Land_Shoot_House_Wall_F",[4386.76,3136.63,0],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [4386.76,3136.63,25.0882];
	_this setVectorDirAndUp [[-0.226833,-0.973745,0.0191802],[0.0362272,0.0112441,0.99928]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item98 = objNull;
if (_layer9 && _layer229) then {
	_item98 = createVehicle ["Land_Shoot_House_Wall_F",[4396.93,3122.97,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [4396.93,3122.97,25.1787];
	_this setVectorDirAndUp [[0.973169,-0.227649,-0.0334472],[0.0387193,0.0187316,0.999075]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item99 = objNull;
if (_layer9 && _layer229) then {
	_item99 = createVehicle ["Land_Shoot_House_Wall_F",[4386.08,3133.71,0],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [4386.08,3133.71,25.2235];
	_this setVectorDirAndUp [[-0.973595,0.227694,0.0163847],[0.0249911,0.0349666,0.999076]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item100 = objNull;
if (_layer9 && _layer229) then {
	_item100 = createVehicle ["Land_Shoot_House_Wall_F",[4383.85,3128.1,0],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [4383.85,3128.1,25.472];
	_this setVectorDirAndUp [[-0.97388,0.226758,-0.0117604],[-0.00625302,0.0249907,0.999668]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item101 = objNull;
if (_layer9 && _layer229) then {
	_item101 = createVehicle ["Land_Shoot_House_Wall_F",[4386.31,3134.69,0],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [4386.31,3134.69,25.1725];
	_this setVectorDirAndUp [[-0.226833,-0.972479,0.0532089],[0.0362272,0.0461703,0.998276]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layer9 && _layer229) then {
	_item102 = createVehicle ["Land_Shoot_House_Wall_F",[4393.78,3122.68,0],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [4393.78,3122.68,25.3062];
	_this setVectorDirAndUp [[-0.226812,-0.973563,0.0270434],[0.0387193,0.0187316,0.999075]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layer9 && _layer229) then {
	_item103 = createVehicle ["Land_Shoot_House_Wall_F",[4392.06,3124.11,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [4392.06,3124.11,25.3462];
	_this setVectorDirAndUp [[0.973169,-0.227649,-0.0334472],[0.0387193,0.0187316,0.999075]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layer9 && _layer229) then {
	_item104 = createVehicle ["Land_Shoot_House_Wall_F",[4392.51,3126.05,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [4392.51,3126.05,25.2922];
	_this setVectorDirAndUp [[0.973169,-0.227649,-0.0334472],[0.0387193,0.0187316,0.999075]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item105 = objNull;
if (_layer9 && _layer229) then {
	_item105 = createVehicle ["Land_Shoot_House_Wall_F",[4392.97,3128,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [4392.97,3128,25.2416];
	_this setVectorDirAndUp [[0.973303,-0.228313,-0.0235413],[0.0349773,0.0461723,0.998321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item106 = objNull;
if (_layer9 && _layer229) then {
	_item106 = createVehicle ["Land_Shoot_House_Wall_F",[4394.17,3128.75,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [4394.17,3128.75,25.165];
	_this setVectorDirAndUp [[-0.226843,-0.972492,0.0529254],[0.0349773,0.0461723,0.998321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layer9 && _layer229) then {
	_item107 = createVehicle ["Land_Shoot_House_Wall_F",[4393.22,3134.08,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [4393.22,3134.08,24.9513];
	_this setVectorDirAndUp [[-0.973303,0.228313,0.0235413],[0.0349773,0.0461723,0.998321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item108 = objNull;
if (_layer9 && _layer229) then {
	_item108 = createVehicle ["Land_Shoot_House_Wall_F",[4393.97,3132.89,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [4393.97,3132.89,24.9806];
	_this setVectorDirAndUp [[0.226842,0.972492,-0.0529254],[0.0349773,0.0461723,0.998321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item109 = objNull;
if (_layer9 && _layer229) then {
	_item109 = createVehicle ["Land_Shoot_House_Wall_F",[4395.92,3132.43,0],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [4395.92,3132.43,24.9322];
	_this setVectorDirAndUp [[0.226811,0.972245,-0.057413],[0.0387208,0.049901,0.998003]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item110 = objNull;
if (_layer9 && _layer229) then {
	_item110 = createVehicle ["Land_Shoot_House_Wall_F",[4396.66,3131.23,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [4396.66,3131.23,24.9629];
	_this setVectorDirAndUp [[-0.973303,0.228313,0.0235413],[0.0349773,0.0461723,0.998321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item111 = objNull;
if (_layer9 && _layer229) then {
	_item111 = createVehicle ["Land_Shoot_House_Wall_F",[4397.41,3130.03,0],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [4397.41,3130.03,24.9923];
	_this setVectorDirAndUp [[0.226842,0.972492,-0.0529254],[0.0349773,0.0461723,0.998321]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item112 = objNull;
if (_layer9 && _layer229) then {
	_item112 = createVehicle ["Land_Shoot_House_Wall_F",[4386.44,3126.44,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [4386.44,3126.44,25.4436];
	_this setVectorDirAndUp [[-0.226911,-0.973621,0.0239279],[0.0249911,0.0187398,0.999512]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item113 = objNull;
if (_layer9 && _layer229) then {
	_item113 = createVehicle ["Land_Shoot_House_Wall_F",[4374.18,3104.66,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [4374.18,3104.66,25.5167];
	_this setVectorDirAndUp [[-0.226978,-0.973853,0.00953559],[-0.00624348,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item114 = objNull;
if (_layer9 && _layer229) then {
	_item114 = createVehicle ["Land_Shoot_House_Wall_F",[4376.45,3114.4,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [4376.45,3114.4,25.5636];
	_this setVectorDirAndUp [[-0.226974,-0.973897,-0.00287538],[0.00874824,-0.00499114,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item115 = objNull;
if (_layer9 && _layer229) then {
	_item115 = createVehicle ["Land_Shoot_House_Wall_F",[4379.43,3109.59,0],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [4379.43,3109.59,25.5255];
	_this setVectorDirAndUp [[-0.226974,-0.973899,0.0019857],[0.00874824,0,0.999962]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item116 = objNull;
if (_layer9 && _layer229) then {
	_item116 = createVehicle ["Land_Shoot_House_Wall_F",[4379.76,3119.79,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [4379.76,3119.79,25.5748];
	_this setVectorDirAndUp [[-0.226979,-0.973872,-0.007387],[0.00499134,-0.00874814,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item117 = objNull;
if (_layer9 && _layer229) then {
	_item117 = createVehicle ["Land_Shoot_House_Wall_F",[4376.12,3104.2,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [4376.12,3104.2,25.5352];
	_this setVectorDirAndUp [[-0.226978,-0.973899,-0.00100726],[0.00624349,-0.00248934,0.999977]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item118 = objNull;
if (_layer9 && _layer229) then {
	_item118 = createVehicle ["Land_Shoot_House_Wall_F",[4370.02,3122.06,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [4370.02,3122.06,25.5343];
	_this setVectorDirAndUp [[-0.226982,-0.973665,0.0213419],[-0.00248975,0.0224939,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item119 = objNull;
if (_layer9 && _layer229) then {
	_item119 = createVehicle ["Land_Shoot_House_Wall_F",[4371.97,3121.6,0],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [4371.97,3121.6,25.5494];
	_this setVectorDirAndUp [[-0.226982,-0.973665,0.0213419],[-0.00248975,0.0224939,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item120 = objNull;
if (_layer9 && _layer229) then {
	_item120 = createVehicle ["Land_Shoot_House_Wall_F",[4378.07,3103.75,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [4378.07,3103.75,25.5204];
	_this setVectorDirAndUp [[-0.226978,-0.973874,-0.0071028],[0.00624349,-0.00874807,0.999942]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item121 = objNull;
if (_layer9 && _layer229) then {
	_item121 = createVehicle ["Land_Shoot_House_Wall_F",[4378.07,3103.75,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [4378.07,3103.75,25.5204];
	_this setVectorDirAndUp [[-0.226978,-0.973874,-0.0071028],[0.00624349,-0.00874807,0.999942]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item122 = objNull;
if (_layer9 && _layer229) then {
	_item122 = createVehicle ["Land_Shoot_House_Wall_F",[4368.36,3119.36,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [4368.36,3119.36,25.5684];
	_this setVectorDirAndUp [[0.973704,-0.227362,0.0143622],[-0.0199947,-0.0224892,0.999547]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layer9 && _layer229) then {
	_item123 = createVehicle ["Land_Shoot_House_Wall_F",[4378.4,3113.94,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [4378.4,3113.94,25.5443];
	_this setVectorDirAndUp [[-0.226974,-0.973897,-0.00287538],[0.00874824,-0.00499114,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item124 = objNull;
if (_layer9 && _layer229) then {
	_item124 = createVehicle ["Land_Shoot_House_Wall_F",[4368.33,3106.02,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [4368.33,3106.02,25.4649];
	_this setVectorDirAndUp [[-0.226978,-0.973853,0.00953559],[-0.00624348,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item125 = objNull;
if (_layer9 && _layer229) then {
	_item125 = createVehicle ["Land_Shoot_House_Wall_F",[4367.91,3117.41,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [4367.91,3117.41,25.5154];
	_this setVectorDirAndUp [[0.973704,-0.227362,0.0143622],[-0.0199947,-0.0224892,0.999547]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item126 = objNull;
if (_layer9 && _layer229) then {
	_item126 = createVehicle ["Land_Shoot_House_Wall_F",[4366.55,3111.57,0],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [4366.55,3111.57,25.4094];
	_this setVectorDirAndUp [[0.97388,-0.227036,-0.00352746],[0.00624349,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layer9 && _layer229) then {
	_item127 = createVehicle ["Land_Shoot_House_Wall_F",[4366.09,3109.62,0],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [4366.09,3109.62,25.4342];
	_this setVectorDirAndUp [[0.97388,-0.227036,-0.00352746],[0.00624349,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layer9 && _layer229) then {
	_item128 = createVehicle ["Land_Shoot_House_Wall_F",[4377.81,3120.24,0],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [4377.81,3120.24,25.5814];
	_this setVectorDirAndUp [[-0.226979,-0.973655,0.0218242],[0.00500326,0.021243,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layer9 && _layer229) then {
	_item129 = createVehicle ["Land_Shoot_House_Wall_F",[4376.83,3120.47,0],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [4376.83,3120.47,25.5814];
	_this setVectorDirAndUp [[-0.226979,-0.973655,0.0218242],[0.00500326,0.021243,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layer9 && _layer229) then {
	_item130 = createVehicle ["Land_Shoot_House_Wall_F",[4368.82,3121.31,0],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [4368.82,3121.31,25.5481];
	_this setVectorDirAndUp [[0.973896,-0.22687,0.00752988],[-0.00248975,0.0224939,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layer9 && _layer229) then {
	_item131 = createVehicle ["Land_Shoot_House_Wall_F",[4375.54,3110.5,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [4375.54,3110.5,25.5425];
	_this setVectorDirAndUp [[-0.226937,-0.973884,-0.00698606],[-0.0199947,-0.00251273,0.999797]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item132 = objNull;
if (_layer9 && _layer229) then {
	_item132 = createVehicle ["Land_Shoot_House_Wall_F",[4376.12,3104.2,0],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [4376.12,3104.2,25.5352];
	_this setVectorDirAndUp [[-0.226978,-0.973899,-0.00100726],[0.00624349,-0.00248934,0.999977]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item133 = objNull;
if (_layer9 && _layer229) then {
	_item133 = createVehicle ["Land_Shoot_House_Wall_F",[4366.39,3106.47,0],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [4366.39,3106.47,25.4678];
	_this setVectorDirAndUp [[-0.226978,-0.973821,0.0123697],[0.00624349,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item134 = objNull;
if (_layer9 && _layer229) then {
	_item134 = createVehicle ["Land_Shoot_House_Wall_F",[4374.5,3114.85,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [4374.5,3114.85,25.566];
	_this setVectorDirAndUp [[-0.226982,-0.973884,-0.00542618],[-0.00248975,-0.00499132,0.999984]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item135 = objNull;
if (_layer9 && _layer229) then {
	_item135 = createVehicle ["Land_Shoot_House_Wall_F",[4372.64,3106.85,0],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [4372.64,3106.85,25.4825];
	_this setVectorDirAndUp [[-0.226978,-0.973853,0.00953559],[-0.00624348,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item136 = objNull;
if (_layer9 && _layer229) then {
	_item136 = createVehicle ["Land_Shoot_House_Wall_F",[4373.59,3110.96,0],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [4373.59,3110.96,25.5047];
	_this setVectorDirAndUp [[-0.226937,-0.973884,-0.00698606],[-0.0199947,-0.00251273,0.999797]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item137 = objNull;
if (_layer9 && _layer229) then {
	_item137 = createVehicle ["Land_Shoot_House_Wall_F",[4369.7,3111.86,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [4369.7,3111.86,25.4291];
	_this setVectorDirAndUp [[-0.226937,-0.973884,-0.00698606],[-0.0199947,-0.00251273,0.999797]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layer9 && _layer229) then {
	_item138 = createVehicle ["Land_Shoot_House_Wall_F",[4368.66,3116.21,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [4368.66,3116.21,25.5034];
	_this setVectorDirAndUp [[-0.226937,-0.97355,-0.0264439],[-0.0199947,-0.0224892,0.999547]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layer9 && _layer229) then {
	_item139 = createVehicle ["Land_Shoot_House_Wall_F",[4367.75,3112.32,0],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [4367.75,3112.32,25.3975];
	_this setVectorDirAndUp [[-0.226937,-0.97355,-0.0264439],[-0.0199947,-0.0224892,0.999547]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item140 = objNull;
if (_layer9 && _layer229) then {
	_item140 = createVehicle ["Land_Shoot_House_Wall_F",[4377.49,3110.05,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [4377.49,3110.05,25.5413];
	_this setVectorDirAndUp [[-0.226978,-0.973899,-0.00100726],[0.00624349,-0.00248934,0.999977]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item141 = objNull;
if (_layer9 && _layer229) then {
	_item141 = createVehicle ["Land_Shoot_House_Wall_F",[4377.58,3119.27,0],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [4377.58,3119.27,25.5812];
	_this setVectorDirAndUp [[0.973887,-0.22693,-0.00684656],[0.00499134,-0.00874814,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item142 = objNull;
if (_layer9 && _layer229) then {
	_item142 = createVehicle ["Land_Shoot_House_Wall_F",[4377.13,3117.32,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [4377.13,3117.32,25.5722];
	_this setVectorDirAndUp [[0.973862,-0.226936,-0.00965274],[0.00874824,-0.00499114,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item143 = objNull;
if (_layer9 && _layer229) then {
	_item143 = createVehicle ["Land_Shoot_House_Wall_F",[4376.67,3115.37,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [4376.67,3115.37,25.5664];
	_this setVectorDirAndUp [[0.973862,-0.226936,-0.00965274],[0.00874824,-0.00499114,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layer9 && _layer229) then {
	_item144 = createVehicle ["Land_Shoot_House_Wall_F",[4378.23,3108.85,0],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [4378.23,3108.85,25.5337];
	_this setVectorDirAndUp [[0.97388,-0.226966,-0.00664556],[0.00624349,-0.00248934,0.999977]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item145 = objNull;
if (_layer9 && _layer229) then {
	_item145 = createVehicle ["Land_Shoot_House_Wall_F",[4382.16,3107.99,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [4382.16,3107.99,25.5016];
	_this setVectorDirAndUp [[0.973862,-0.226982,-0.00851991],[0.00874824,0,0.999962]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer9 && _layer229) then {
	_item146 = createVehicle ["Land_Shoot_House_Wall_F",[4377.32,3104.95,0],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [4377.32,3104.95,25.5296];
	_this setVectorDirAndUp [[0.97388,-0.226966,-0.00664556],[0.00624349,-0.00248934,0.999977]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer9 && _layer229) then {
	_item147 = createVehicle ["Land_Shoot_House_Wall_F",[4365.64,3107.67,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [4365.64,3107.67,25.4589];
	_this setVectorDirAndUp [[0.97388,-0.227036,-0.00352746],[0.00624349,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item148 = objNull;
if (_layer9 && _layer229) then {
	_item148 = createVehicle ["Land_Shoot_House_Wall_F",[4372.39,3110.21,0],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [4372.39,3110.21,25.4788];
	_this setVectorDirAndUp [[0.973704,-0.22703,0.0189023],[-0.0199947,-0.00251273,0.999797]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer9 && _layer229) then {
	_item149 = createVehicle ["Land_Shoot_House_Wall_F",[4379.76,3119.79,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [4379.76,3119.79,25.5748];
	_this setVectorDirAndUp [[-0.226979,-0.973872,-0.007387],[0.00499134,-0.00874814,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer9 && _layer229) then {
	_item150 = createVehicle ["Land_Shoot_House_Wall_F",[4367,3113.52,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [4367,3113.52,25.4096];
	_this setVectorDirAndUp [[0.973704,-0.227362,0.0143622],[-0.0199947,-0.0224892,0.999547]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer9 && _layer229) then {
	_item151 = createVehicle ["Land_Shoot_House_Wall_F",[4370.6,3115.76,0],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [4370.6,3115.76,25.5321];
	_this setVectorDirAndUp [[-0.226937,-0.97355,-0.0264439],[-0.0199947,-0.0224892,0.999547]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item152 = objNull;
if (_layer9 && _layer229) then {
	_item152 = createVehicle ["Land_Shoot_House_Wall_F",[4381.97,3102.84,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [4381.97,3102.84,25.4881];
	_this setVectorDirAndUp [[-0.226978,-0.973874,-0.0071028],[0.00624349,-0.00874807,0.999942]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item153 = objNull;
if (_layer9 && _layer229) then {
	_item153 = createVehicle ["Land_Shoot_House_Wall_F",[4393.6,3109.37,0],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [4393.6,3109.37,25.2908];
	_this setVectorDirAndUp [[0.972914,-0.226061,-0.0483105],[0.0449542,-0.0199744,0.998789]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item154 = objNull;
if (_layer9 && _layer229) then {
	_item154 = createVehicle ["Land_Shoot_House_Wall_F",[4383.65,3118.88,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [4383.65,3118.88,25.5474];
	_this setVectorDirAndUp [[-0.226979,-0.973872,-0.007387],[0.00499134,-0.00874814,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item155 = objNull;
if (_layer9 && _layer229) then {
	_item155 = createVehicle ["Land_Shoot_House_Wall_F",[4385.83,3101.93,0],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [4385.83,3101.93,25.4353];
	_this setVectorDirAndUp [[-0.226948,-0.973896,-0.00454888],[0.0174955,-0.00874691,0.999809]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item156 = objNull;
if (_layer9 && _layer229) then {
	_item156 = createVehicle ["Land_Shoot_House_Wall_F",[4390.47,3117.29,0],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [4390.47,3117.29,25.447];
	_this setVectorDirAndUp [[-0.226952,-0.973903,0.00247507],[0.0162454,-0.00124468,0.999867]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item157 = objNull;
if (_layer9 && _layer229) then {
	_item157 = createVehicle ["Land_Shoot_House_Wall_F",[4382.29,3113.03,0],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [4382.29,3113.03,25.5056];
	_this setVectorDirAndUp [[-0.226974,-0.973897,-0.00287538],[0.00874824,-0.00499114,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item158 = objNull;
if (_layer9 && _layer229) then {
	_item158 = createVehicle ["Land_Shoot_House_Wall_F",[4384.38,3104.24,0],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [4384.38,3104.24,25.4745];
	_this setVectorDirAndUp [[-0.226889,-0.973899,0.00652284],[0.0287372,0,0.999587]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item159 = objNull;
if (_layer9 && _layer229) then {
	_item159 = createVehicle ["Land_Shoot_House_Wall_F",[4394.06,3111.31,0],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [4394.06,3111.31,25.3024];
	_this setVectorDirAndUp [[0.972684,-0.226227,-0.0520326],[0.0499373,-0.014979,0.99864]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item160 = objNull;
if (_layer9 && _layer229) then {
	_item160 = createVehicle ["Land_Shoot_House_Wall_F",[4390.59,3100.83,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [4390.59,3100.83,25.3041];
	_this setVectorDirAndUp [[-0.226889,-0.973879,0.0089708],[0.0287372,0.00251254,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layer9 && _layer229) then {
	_item161 = createVehicle ["Land_Shoot_House_Wall_F",[4392.69,3105.47,0],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [4392.69,3105.47,25.2536];
	_this setVectorDirAndUp [[0.972914,-0.226061,-0.0483105],[0.0449542,-0.0199744,0.998789]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item162 = objNull;
if (_layer9 && _layer229) then {
	_item162 = createVehicle ["Land_Shoot_House_Wall_F",[4392.24,3103.52,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [4392.24,3103.52,25.2537];
	_this setVectorDirAndUp [[0.973823,-0.227011,-0.0116046],[0.012496,0.00248956,0.999919]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item163 = objNull;
if (_layer9 && _layer229) then {
	_item163 = createVehicle ["Land_Shoot_House_Wall_F",[4384.24,3112.58,0],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [4384.24,3112.58,25.4885];
	_this setVectorDirAndUp [[-0.226974,-0.973879,-0.00653428],[0.00874824,-0.00874791,0.999923]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item164 = objNull;
if (_layer9 && _layer229) then {
	_item164 = createVehicle ["Land_Shoot_House_Wall_F",[4383.33,3108.69,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [4383.33,3108.69,25.4914];
	_this setVectorDirAndUp [[-0.226974,-0.973899,0.0019857],[0.00874824,0,0.999962]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item165 = objNull;
if (_layer9 && _layer229) then {
	_item165 = createVehicle ["Land_Shoot_House_Wall_F",[4392.42,3116.83,0],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [4392.42,3116.83,25.4006];
	_this setVectorDirAndUp [[-0.226699,-0.973912,0.0101225],[0.0499373,-0.00124329,0.998752]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layer9 && _layer229) then {
	_item166 = createVehicle ["Land_Shoot_House_Wall_F",[4388.19,3111.67,0],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [4388.19,3111.67,25.4422];
	_this setVectorDirAndUp [[-0.226974,-0.973744,-0.0174875],[0.00874824,-0.0199939,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layer9 && _layer229) then {
	_item167 = createVehicle ["Land_Shoot_House_Wall_F",[4392.85,3110.57,0],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [4392.85,3110.57,25.3485];
	_this setVectorDirAndUp [[-0.226753,-0.973908,-0.009271],[0.0449542,-0.0199744,0.998789]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layer9 && _layer229) then {
	_item168 = createVehicle ["Land_Shoot_House_Wall_F",[4394.22,3116.41,0],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [4394.22,3116.41,25.3102];
	_this setVectorDirAndUp [[-0.226699,-0.973912,0.0101225],[0.0499373,-0.00124329,0.998752]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layer9 && _layer229) then {
	_item169 = createVehicle ["Land_Shoot_House_Wall_F",[4391.95,3106.67,0],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [4391.95,3106.67,25.3094];
	_this setVectorDirAndUp [[-0.226974,-0.973744,-0.0174875],[0.00874824,-0.0199939,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item170 = objNull;
if (_layer9 && _layer229) then {
	_item170 = createVehicle ["Land_Shoot_House_Wall_F",[4385.28,3108.23,0],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [4385.28,3108.23,25.4487];
	_this setVectorDirAndUp [[-0.226889,-0.973899,0.00652284],[0.0287372,0,0.999587]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item171 = objNull;
if (_layer9 && _layer229) then {
	_item171 = createVehicle ["Land_Shoot_House_Wall_F",[4394.96,3115.21,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [4394.96,3115.21,25.2713];
	_this setVectorDirAndUp [[0.972684,-0.226921,-0.0489164],[0.0499373,-0.00124329,0.998752]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item172 = objNull;
if (_layer9 && _layer229) then {
	_item172 = createVehicle ["Land_Shoot_House_Wall_F",[4384.4,3117.68,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [4384.4,3117.68,25.5317];
	_this setVectorDirAndUp [[0.973862,-0.226898,-0.0105053],[0.00874824,-0.00874791,0.999923]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item173 = objNull;
if (_layer9 && _layer229) then {
	_item173 = createVehicle ["Land_Shoot_House_Wall_F",[4383.49,3113.78,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [4383.49,3113.78,25.5036];
	_this setVectorDirAndUp [[0.973887,-0.22693,-0.00684656],[0.00499134,-0.00874814,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item174 = objNull;
if (_layer9 && _layer229) then {
	_item174 = createVehicle ["Land_Shoot_House_Wall_F",[4384.08,3107.49,0],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [4384.08,3107.49,25.4833];
	_this setVectorDirAndUp [[0.973497,-0.226982,-0.0279872],[0.0287372,0,0.999587]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item175 = objNull;
if (_layer9 && _layer229) then {
	_item175 = createVehicle ["Land_Shoot_House_Wall_F",[4383.62,3105.54,0],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [4383.62,3105.54,25.4888];
	_this setVectorDirAndUp [[0.973862,-0.226982,-0.00851991],[0.00874824,0,0.999962]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layer9 && _layer229) then {
	_item176 = createVehicle ["Land_Shoot_House_Wall_F",[4385.19,3103.07,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [4385.19,3103.07,25.4536];
	_this setVectorDirAndUp [[0.973497,-0.227051,-0.0274165],[0.0287372,0.00251254,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item177 = objNull;
if (_layer9 && _layer229) then {
	_item177 = createVehicle ["Land_Shoot_House_Wall_F",[4391.79,3101.57,0],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [4391.79,3101.57,25.2677];
	_this setVectorDirAndUp [[0.973497,-0.227051,-0.0274165],[0.0287372,0.00251254,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item178 = objNull;
if (_layer9 && _layer229) then {
	_item178 = createVehicle ["Land_Shoot_House_Wall_F",[4383.65,3118.88,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [4383.65,3118.88,25.5474];
	_this setVectorDirAndUp [[-0.226979,-0.973872,-0.007387],[0.00499134,-0.00874814,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item179 = objNull;
if (_layer9 && _layer229) then {
	_item179 = createVehicle ["Land_Shoot_House_Wall_F",[4380.05,3103.31,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [4380.05,3103.31,25.5041];
	_this setVectorDirAndUp [[0.226977,0.973874,0.00710281],[0.00624349,-0.00874807,0.999942]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item180 = objNull;
if (_layer9 && _layer229) then {
	_item180 = createVehicle ["Land_Shoot_House_Wall_F",[4389.96,3107.09,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [4389.96,3107.09,25.3352];
	_this setVectorDirAndUp [[-0.226974,-0.973744,-0.0174875],[0.00874824,-0.0199939,0.999762]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item181 = objNull;
if (_layer9 && _layer229) then {
	_item181 = createVehicle ["Land_Shoot_House_Wall_F",[4387.82,3101.52,0],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [4387.82,3101.52,25.3819];
	_this setVectorDirAndUp [[0.226888,0.97388,-0.00897077],[0.0287372,0.00251254,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer9 && _layer229) then {
	_item182 = createVehicle ["Land_Shoot_House_Wall_F",[4386.19,3112.13,0],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [4386.19,3112.13,25.4675];
	_this setVectorDirAndUp [[-0.226974,-0.973879,-0.00653428],[0.00874824,-0.00874791,0.999923]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer9 && _layer229) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[4383.94,3115.73,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [4383.94,3115.73,25.5184];
	_this setVectorDirAndUp [[0.973887,-0.22693,-0.00684656],[0.00499134,-0.00874814,0.999949]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer9 && _layer229) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[4397.38,3124.92,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [4397.38,3124.92,25.1334];
	_this setVectorDirAndUp [[0.973303,-0.227467,-0.0306563],[0.0349773,0.0149887,0.999276]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer9 && _layer229) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[4372.92,3138.84,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [4372.92,3138.84,25.2566];
	_this setVectorDirAndUp [[0.973892,-0.227011,0.000248046],[-0.00375055,-0.0149976,0.99988]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer9 && _layer229) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[4388.56,3131.1,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [4388.56,3131.1,25.253];
	_this setVectorDirAndUp [[0.973595,-0.227694,-0.0163847],[0.0249911,0.0349666,0.999076]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer9 && _layer229) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[4384.27,3125.89,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [4384.27,3125.89,25.4923];
	_this setVectorDirAndUp [[-0.97377,0.227128,0.0135539],[0.0162488,0.00999938,0.999818]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer9 && _layer229) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[4380.97,3107.36,0],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [4380.97,3107.36,25.512];
	_this setVectorDirAndUp [[-0.226974,-0.973899,0.0019857],[0.00874824,0,0.999962]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer9 && _layer229) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[4393.15,3107.42,0],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [4393.15,3107.42,25.2719];
	_this setVectorDirAndUp [[0.972914,-0.226061,-0.0483105],[0.0449542,-0.0199744,0.998789]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer9 && _layer229) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[4394.49,3113.29,0],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [4394.49,3113.29,25.2926];
	_this setVectorDirAndUp [[0.972684,-0.226921,-0.0489164],[0.0499373,-0.00124329,0.998752]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer9 && _layer229) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[4367.47,3115.45,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [4367.47,3115.45,25.4625];
	_this setVectorDirAndUp [[0.973704,-0.227362,0.0143622],[-0.0199947,-0.0224892,0.999547]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer9 && _layer229) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[4370.27,3105.58,0],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [4370.27,3105.58,25.482];
	_this setVectorDirAndUp [[-0.226978,-0.973853,0.00953559],[-0.00624348,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer9 && _layer229) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[4383.17,3103.59,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [4383.17,3103.59,25.4871];
	_this setVectorDirAndUp [[0.97388,-0.22692,-0.00806599],[0.00624349,-0.00874807,0.999942]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer9 && _layer229) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[4371.4,3106.24,0],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [4371.4,3106.24,25.4816];
	_this setVectorDirAndUp [[0.97388,-0.226899,0.00863282],[-0.00624348,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer9 && _layer229) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[4373.47,3105.69,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [4373.47,3105.69,25.5006];
	_this setVectorDirAndUp [[0.97388,-0.226899,0.00863282],[-0.00624348,0.011246,0.999917]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer9 && _layer229) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[4370.22,3127.17,0],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [4370.22,3127.17,25.4215];
	_this setVectorDirAndUp [[0.973892,-0.226853,0.00847366],[-0.00375055,0.0212431,0.999767]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer9 && _layer229) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[4369.31,3123.27,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [4369.31,3123.27,25.5052];
	_this setVectorDirAndUp [[0.973896,-0.22687,0.00752988],[-0.00248975,0.0224939,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer9 && _layer229) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[4369.76,3125.22,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [4369.76,3125.22,25.4625];
	_this setVectorDirAndUp [[0.973896,-0.22687,0.00752988],[-0.00248975,0.0224939,0.999744]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer9 && _layer229) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[4389.21,3101.18,0],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [4389.21,3101.18,25.3429];
	_this setVectorDirAndUp [[0.226888,0.97388,-0.00897077],[0.0287372,0.00251254,0.999584]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer9 && _layer229) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[4396.4,3121.02,0],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [4396.4,3121.02,25.2359];
	_this setVectorDirAndUp [[0.973169,-0.227649,-0.0334472],[0.0387193,0.0187316,0.999075]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer9 && _layer229) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[4395.94,3119.07,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [4395.94,3119.07,25.2611];
	_this setVectorDirAndUp [[0.973169,-0.226493,-0.0405421],[0.0387193,-0.0124866,0.999172]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer9 && _layer229) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[4395.49,3117.13,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [4395.49,3117.13,25.2543];
	_this setVectorDirAndUp [[0.973169,-0.226493,-0.0405421],[0.0387193,-0.0124866,0.999172]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer9 && _layer229) then {
	_item203 = createVehicle ["VR_Area_01_circle_4_yellow_F",[4400.68,3117.09,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [4400.68,3117.09,23.3577];
	_this setVectorDirAndUp [[-0.973144,0.230198,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item207 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item207 = createVehicle ["Sign_Arrow_F",[4377.39,3121.68,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [4377.39,3121.68,24.2507];
	_this setVectorDirAndUp [[0.212179,0.976987,-0.0218209],[0.00500326,0.021243,0.999762]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item208 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item208 = createVehicle ["Sign_Arrow_F",[4369.45,3114.68,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [4369.45,3114.68,24.1825];
	_this setVectorDirAndUp [[0.972598,-0.232058,0.0142344],[-0.0199947,-0.0224892,0.999547]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item209 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item209 = createVehicle ["Sign_Arrow_F",[4378.84,3104.62,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [4378.84,3104.62,24.2171];
	_this setVectorDirAndUp [[0.227192,0.973849,0.0010058],[0.00624349,-0.00248934,0.999977]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item210 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item210 = createVehicle ["Sign_Arrow_F",[4391.17,3115,0],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [4391.17,3115,24.1305];
	_this setVectorDirAndUp [[-0.96518,0.261095,0.0160069],[0.0162454,-0.00124468,0.999867]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item211 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item211 = createVehicle ["Sign_Arrow_F",[4389.86,3104.2,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [4389.86,3104.2,24.0149];
	_this setVectorDirAndUp [[-0.962159,0.271081,0.0276612],[0.0287372,0,0.999587]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item212 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item212 = createVehicle ["Sign_Arrow_F",[4387.59,3135.59,0],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [4387.59,3135.59,23.7821];
	_this setVectorDirAndUp [[0.984958,-0.170532,-0.0278568],[0.0362272,0.0461703,0.998276]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item213 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item213 = createVehicle ["Sign_Arrow_F",[4383.94,3134.29,0],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [4383.94,3134.29,23.9533];
	_this setVectorDirAndUp [[-0.977899,0.209045,-0.00364683],[0.00375014,0.0349773,0.999381]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item214 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item214 = createVehicle ["Sign_Arrow_F",[4381.54,3126.89,0],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [4381.54,3126.89,24.1689];
	_this setVectorDirAndUp [[-0.980129,0.198197,-0.00810087],[-0.00624348,0.00999455,0.999931]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item215 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item215 = createVehicle ["Sign_Arrow_F",[4385.78,3127.81,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [4385.78,3127.81,24.1324];
	_this setVectorDirAndUp [[0.974301,-0.224346,-0.0201545],[0.0249911,0.0187398,0.999512]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item216 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item216 = createVehicle ["Sign_Arrow_F",[4382.07,3121.35,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [4382.07,3121.35,24.2342];
	_this setVectorDirAndUp [[-0.225885,-0.973909,0.0218241],[0.00500326,0.021243,0.999762]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item217 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item217 = createVehicle ["Sign_Arrow_F",[4373.16,3129.64,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [4373.16,3129.64,24.0715];
	_this setVectorDirAndUp [[0.224436,0.974205,-0.0235121],[-0.00375055,0.024991,0.999681]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item218 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item218 = createVehicle ["Sign_Arrow_F",[4383.32,3107.84,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [4383.32,3107.84,24.1892];
	_this setVectorDirAndUp [[0.227188,0.973849,-0.00198757],[0.00874824,0,0.999962]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item219 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item219 = createVehicle ["Sign_Arrow_F",[4387.54,3131.57,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [4387.54,3131.57,23.9599];
	_this setVectorDirAndUp [[0.227125,0.973054,-0.0397373],[0.0249911,0.0349666,0.999076]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item220 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item220 = createVehicle ["Sign_Arrow_F",[4374.5,3134.62,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [4374.5,3134.62,23.9521];
	_this setVectorDirAndUp [[0.227195,0.973566,-0.0234858],[-0.00375055,0.024991,0.999681]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item221 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item221 = createVehicle ["Sign_Arrow_F",[4369.94,3117.08,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [4369.94,3117.08,24.2465];
	_this setVectorDirAndUp [[-0.225843,-0.973805,-0.0264277],[-0.0199947,-0.0224892,0.999547]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item222 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item222 = createVehicle ["Sign_Arrow_F",[4375.97,3117.1,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [4375.97,3117.1,24.2787];
	_this setVectorDirAndUp [[-0.225887,-0.974138,-0.00542472],[-0.00248975,-0.00499132,0.999984]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item223 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item223 = createVehicle ["Sign_Arrow_F",[4396.41,3133.92,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [4396.41,3133.92,23.5362];
	_this setVectorDirAndUp [[-0.225719,-0.972501,0.0573834],[0.0387208,0.049901,0.998003]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item224 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item224 = createVehicle ["Sign_Arrow_F",[4367.48,3108.94,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [4367.48,3108.94,24.131];
	_this setVectorDirAndUp [[0.212177,0.977154,-0.0123148],[0.00624349,0.011246,0.999917]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item225 = objNull;
if (_layer206 && _layer9 && _layer229) then {
	_item225 = createVehicle ["Sign_Arrow_F",[4380.56,3136.97,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [4380.56,3136.97,23.9208];
	_this setVectorDirAndUp [[0.227195,0.973752,0.0137536],[0.00375014,-0.0149976,0.99988]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', 0, _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item272 = objNull;
if (_layer229) then {
	_item272 = createVehicle ["LIB_WeaponsBox_Big_SU",[4649.91,2662.72,2.71826],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [4650.21,2662.71,27.9711];
	_this setVectorDirAndUp [[-0.825946,0.563749,0.000453919],[-0.00204263,-0.00379782,0.999991]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item233 = objNull;
if (_layerRoot) then {
	_item233 = createVehicle ["Camp_EP1",[4637.1,2603.61,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [4637.1,2603.61,23.161];
	_this setVectorDirAndUp [[0.387587,0.921833,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item234 = objNull;
if (_layerRoot) then {
	_item234 = createVehicle ["FlagCarrierRedCross_EP1",[4640.46,2605.26,0],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [4640.46,2605.26,25.9768];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item235 = objNull;
if (_layerRoot) then {
	_item235 = createVehicle ["LIB_SOV_M3_Halftrack_w_DLV",[4649.1,2639.42,0],[],0,"CAN_COLLIDE"];
	_this = _item235;
	_objects pushback _this;
	_objectIDs pushback 235;
	_this setPosWorld [4649.1,2639.41,27.5138];
	_this setVectorDirAndUp [[-0.468716,-0.883349,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[""FirstAidKit""],[4]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (local _this) then {parseSimpleArray "[[""left_door"",""right_door"",""wing_1_1"",""wing_2_1"",""shield"",""hood_1_1"",""hood_2_1"",""front_bumper"",""hithull"",""hitengine"",""hittrans"",""hitfuel"",""hitlfwheel"",""hitrfwheel"",""hitlftire_0"",""hitlftire_1"",""hitlftire_2"",""hitlftire_3"",""hitlbtire_0"",""hitlbtire_1"",""hitlbtire_2"",""hitlbtire_3"",""hitrftire_0"",""hitrftire_1"",""hitrftire_2"",""hitrftire_3"",""hitrbtire_0"",""hitrbtire_1"",""hitrbtire_2"",""hitrbtire_3"",""left_wing"",""right_wing"",""hitbody"",""hitlf2wheel"",""hitrf2wheel"",""hitlmwheel"",""hitrmwheel"",""hitlbwheel"",""hitrbwheel"",""hitrglass"",""hitlglass"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitturret"",""hitgun"",""#p svetlo"",""#l svetlo""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
};

private _item237 = objNull;
if (_layerRoot) then {
	_item237 = _item236 createUnit ["LIB_SOV_Captain_w",[4668.2,2641.66,6.72091],[],0,"CAN_COLLIDE"];
	_item236 selectLeader _item237;
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [4668.2,2641.71,31.9724];
	_this setVectorDirAndUp [[-0.944859,0.327477,0],[0,0,1]];
	selectPlayer _this;
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Isaak Kostin";;
	_this setface "LIB_WhiteHead_04_Dirt";;
	_this setspeaker "Male01SU";;
	_this setpitch 1.01;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item238 = objNull;
if (_layerRoot) then {
	_item238 = _item236 createUnit ["LIB_SOV_Mgunner_w",[4597.5,2663.92,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [4597.5,2663.97,24.2194];
	_this setVectorDirAndUp [[-0.998391,0.0567103,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Alexey Dyaditsin";;
	_this setface "LIB_WhiteHead_03_Dirt";;
	_this setspeaker "Male02SU";;
	_this setpitch 0.98;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["STAND_IA",["amovpercmstpslowwrfldnon","amovpercmstpslowwrfldnon","aidlpercmstpslowwrfldnon_g01","aidlpercmstpslowwrfldnon_g02","aidlpercmstpslowwrfldnon_g03","aidlpercmstpslowwrfldnon_g05"],false,false] # 0 isEqualTo '') then      {        ["STAND_IA",["amovpercmstpslowwrfldnon","amovpercmstpslowwrfldnon","aidlpercmstpslowwrfldnon_g01","aidlpercmstpslowwrfldnon_g02","aidlpercmstpslowwrfldnon_g03","aidlpercmstpslowwrfldnon_g05"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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
	_item241 = _item236 createUnit ["LIB_SOV_Scout_sniper_w",[4655.16,2669.29,16.516],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [4655.16,2669.34,41.4888];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Evgeny Bogdanov";;
	_this setface "LIB_Volker_IF";;
	_this setspeaker "Male01SU";;
	_this setpitch 1;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item242 = objNull;
if (_layerRoot) then {
	_item242 = _item236 createUnit ["LIB_SOV_Rifleman_w",[4592.01,2653.33,0],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [4592.01,2653.38,24.442];
	_this setVectorDirAndUp [[-0.995503,-0.094734,0],[0,0,1]];
	_this setUnitLoadout [["LIB_M9130","","","",["LIB_5Rnd_762x54",5],[],""],[],[],["U_LIB_SOV_Strelok_w",[["FirstAidKit",1],["LIB_ACC_M1891_Bayo",1],["LIB_5Rnd_762x54",7,5]]],["V_LIB_SOV_RA_MosinBelt",[["LIB_5Rnd_762x54",2,5],["LIB_Rg42",2,1]]],["B_LIB_SOV_RA_GasBag",[]],"H_LIB_SOV_RA_PrivateCap","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Shail Proshin";;
	_this setface "LIB_WhiteHead_07_Dirt";;
	_this setspeaker "Male03SU";;
	_this setpitch 1.04;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item244 = objNull;
if (_layerRoot) then {
	_item244 = _item236 createUnit ["LIB_SOV_Medic_w",[4637.67,2606.24,0],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [4637.67,2606.29,22.0014];
	_this setVectorDirAndUp [[0.245223,0.969467,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Lev Sherba";;
	_this setface "WhiteHead_14";;
	_this setspeaker "Male03SU";;
	_this setpitch 1.02;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item245 = objNull;
if (_layerRoot) then {
	_item245 = _item236 createUnit ["LIB_SOV_Unequip_w",[4648.98,2636.54,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [4648.98,2636.59,25.2204];
	_this setVectorDirAndUp [[-0.737996,0.674805,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_LIB_SOV_Strelok_w",[["FirstAidKit",1],["LIB_ACC_M1891_Bayo",1]]],["V_LIB_SOV_RA_MosinBelt",[]],[],"H_LIB_SOV_Ushanka","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Valeri Smolin";;
	_this setface "LIB_Volker_IF";;
	_this setspeaker "Male02SU";;
	_this setpitch 0.99;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["REPAIR_VEH_STAND",["inbasemoves_assemblingvehicleerc"],false,false] # 0 isEqualTo '') then      {        ["REPAIR_VEH_STAND",["inbasemoves_assemblingvehicleerc"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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
	_item246 = _item236 createUnit ["LIB_SOV_Smgunner_w2",[4660.43,2634.09,0],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [4660.43,2634.14,25.2514];
	_this setVectorDirAndUp [[-0.972538,0.232746,0],[0,0,1]];
	_this setUnitLoadout [["LIB_M9130","","","",["LIB_5Rnd_762x54",5],[],""],[],[],["U_LIB_SOV_Strelok_2_w",[["FirstAidKit",1]]],["V_LIB_SOV_RA_PPShBelt",[["LIB_Rg42",2,1]]],["B_LIB_SOV_RA_GasBag",[]],"H_LIB_SOV_Ushanka2","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Izmail Nikonov";;
	_this setface "LIB_Walter_IF";;
	_this setspeaker "Male02SU";;
	_this setpitch 0.95;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item253 = objNull;
if (_layerRoot) then {
	_item253 = _item236 createUnit ["LIB_SOV_AT_M1A1_soldier_w",[4659.68,2636.44,0],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [4659.68,2636.49,25.2514];
	_this setVectorDirAndUp [[-0.251765,-0.967788,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Izmail Vorontsev";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male03SU";;
	_this setpitch 1.01;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["SIT_LOW",["amovpsitmstpslowwrfldnon","amovpsitmstpslowwrfldnon_smoking","amovpsitmstpslowwrfldnon_weaponcheck1","amovpsitmstpslowwrfldnon_weaponcheck2"],false,false] # 0 isEqualTo '') then      {        ["SIT_LOW",["amovpsitmstpslowwrfldnon","amovpsitmstpslowwrfldnon_smoking","amovpsitmstpslowwrfldnon_weaponcheck1","amovpsitmstpslowwrfldnon_weaponcheck2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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
	_item254 = _item236 createUnit ["LIB_SOV_Scout_rifleman_w",[4657.49,2635.7,0],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [4657.49,2635.75,25.2514];
	_this setVectorDirAndUp [[0.785454,-0.61892,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Boris Bederman";;
	_this setface "WhiteHead_12";;
	_this setspeaker "Male02SU";;
	_this setpitch 1.02;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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
};

private _item262 = objNull;
if (_layerRoot) then {
	_item262 = _item236 createUnit ["LIB_SOV_Rifleman_ADS_w",[4662.6,2646.82,6.721],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [4662.6,2646.87,31.9724];
	_this setVectorDirAndUp [[-0.910612,0.413263,0],[0,0,1]];
	_this setUnitLoadout [["LIB_M9130","","","",["LIB_5Rnd_762x54",5],[],""],[],[],["U_LIB_SOV_Strelok_w",[["FirstAidKit",1],["LIB_ACC_M1891_Bayo",1],["LIB_5Rnd_762x54",7,5]]],["V_LIB_SOV_RA_MosinBelt",[["LIB_5Rnd_762x54",2,5],["LIB_Rg42",2,1]]],["B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel",[]],"H_LIB_SOV_Ushanka2","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Gennady Voitkovsky";;
	_this setface "WhiteHead_12";;
	_this setspeaker "Male01SU";;
	_this setpitch 1.02;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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

private _item264 = objNull;
if (_layerRoot) then {
	_item264 = _item236 createUnit ["LIB_SOV_Sergeant_w",[4662.78,2643.24,6.72091],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [4662.78,2643.29,31.9724];
	_this setVectorDirAndUp [[0.918425,-0.395595,0],[0,0,1]];
	_this setUnitLoadout [["LIB_PPSh41_d","","","",["LIB_71Rnd_762x25",71],[],""],[],[],["U_LIB_SOV_Sergeant_w",[["FirstAidKit",1],["LIB_35Rnd_762x25",3,35]]],["V_LIB_SOV_RA_PPShBelt",[["LIB_71Rnd_762x25",1,71],["LIB_Rg42",2,1],["LIB_RDG",2,1]]],["B_LIB_SOV_RA_GasBag",[]],"H_LIB_SOV_Ushanka","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Moisey Zvonarev";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male01SU";;
	_this setpitch 0.97;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["STAND_IA",["amovpercmstpslowwrfldnon","amovpercmstpslowwrfldnon","aidlpercmstpslowwrfldnon_g01","aidlpercmstpslowwrfldnon_g02","aidlpercmstpslowwrfldnon_g03","aidlpercmstpslowwrfldnon_g05"],false,false] # 0 isEqualTo '') then      {        ["STAND_IA",["amovpercmstpslowwrfldnon","amovpercmstpslowwrfldnon","aidlpercmstpslowwrfldnon_g01","aidlpercmstpslowwrfldnon_g02","aidlpercmstpslowwrfldnon_g03","aidlpercmstpslowwrfldnon_g05"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item271 = objNull;
if (_layerRoot) then {
	_item271 = _item236 createUnit ["LIB_SOV_Unequip_w",[4628.82,2640.48,0],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [4628.82,2640.53,25.2396];
	_this setVectorDirAndUp [[0.999242,-0.0389198,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Shail Dedov";;
	_this setface "LIB_WhiteHead_15_Dirt";;
	_this setspeaker "male02su";;
	_this setpitch 1.04037;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated""],[0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
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
	_item248 = createVehicle ["Land_Campfire_burning",[4659,2634.94,-0.00789452],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [4659,2634.94,25.4774];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item259 = objNull;
if (_layerRoot) then {
	_item259 = createVehicle ["Land_WoodenTable_large_F",[4667.47,2642.09,6.72091],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [4667.47,2642.09,32.4032];
	_this setVectorDirAndUp [[0.498542,0.866865,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item261 = objNull;
if (_layerRoot) then {
	_item261 = _item260 createUnit ["LIB_GER_Unequip_w",[4666.75,2642.74,6.721],[],0,"CAN_COLLIDE"];
	_item260 selectLeader _item261;
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [4666.75,2642.79,31.9724];
	_this setVectorDirAndUp [[-0.942775,-0.333428,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_LIB_GER_Recruit_w",[["FirstAidKit",1],["LIB_ACC_K98_Bayo",1]]],["V_LIB_GER_VestKar98",[]],[],"H_LIB_GER_Cap_w","",[],["ItemMap","","","LIB_GER_ItemCompass_deg","LIB_GER_ItemWatch",""]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this setname "Georg Bauer";;
	_this setface "WhiteHead_08";;
	_this setspeaker "Male03Ger";;
	_this setpitch 0.97;;
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	      if !(["VICTIM",["Acts_ExecutionVictim_Loop"],false,false] # 0 isEqualTo '') then      {        ["VICTIM",["Acts_ExecutionVictim_Loop"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item266 = objNull;
if (_layerRoot) then {
	_item266 = createVehicle ["Weapon_LIB_K98ZF39",[4667.01,2641.74,7.5855],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [4667.01,2641.74,32.8355];
	_this setVectorDirAndUp [[-0.628272,0.777994,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item268 = objNull;
if (_layerRoot) then {
	_item268 = createVehicle ["Weapon_LIB_P38",[4667.5,2642.74,7.5855],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [4667.5,2642.74,32.8355];
	_this setVectorDirAndUp [[-0.538091,-0.842887,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};

private _item270 = objNull;
if (_layerRoot) then {
	_item270 = createVehicle ["Item_LIB_Binocular_PL",[4667.29,2641.35,7.5855],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [4667.29,2641.35,33.0343];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item2 = objNull;
if (_layer229) then {
	_item2 = createTrigger ["EmptyDetectorArea10x10",[4637.25,2603.91,0],false];
	_this = _item2;
	_triggers pushback _this;
	_triggerIDs pushback 2;
	_item2 setPosATL [4637.25,2603.91,0];
	_this setTriggerArea [6,6,30.1856,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item5 = objNull;
if (_layer4 && _layer229) then {
	_item5 = createTrigger ["EmptyDetectorArea10x10",[4574.6,2669.67,1.90735e-006],true];
	_this = _item5;
	_triggers pushback _this;
	_triggerIDs pushback 5;
	_item5 setPosATL [4574.6,2669.67,1.90735e-006];
	_this setTriggerArea [5,20,297.349,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item204 = objNull;
if (_layer9 && _layer229) then {
	_item204 = createTrigger ["EmptyDetectorAreaR50",[4364.73,3122.73,0],false];
	_this = _item204;
	_triggers pushback _this;
	_triggerIDs pushback 204;
	_item204 setPosATL [4364.73,3122.73,0];
	_this setTriggerArea [50,50,295.491,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item205 = objNull;
if (_layer9 && _layer229) then {
	_item205 = createTrigger ["EmptyDetectorArea10x10",[4382.31,3121.63,1.90735e-006],true];
	_this = _item205;
	_triggers pushback _this;
	_triggerIDs pushback 205;
	_item205 setPosATL [4382.31,3121.63,1.90735e-006];
	_this setTriggerArea [18,13.5,102.784,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item236;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["HQ"];                            } else {                                [_this, "HQ"] call CBA_fnc_setCallsign;                            };                        ;
	      if (!is3DEN && (["","Default","HQ",true,true] # 0 != '')) then      {        [_this, ["","Default","HQ",true,true]] spawn {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '_parameters'];          _parameters params [['_type', ''], ['_color', 'Default'], ['_text', groupID _group], ['_showGroupSize', true], ['_showVehicle', true]];          private _leader = leader _group;          private _marker = createMarkerLocal [            'ENH_GroupMarker_' + str _group,            _leader          ];          _marker setMarkerTypeLocal _type;          _marker setMarkerColorLocal _color;          _marker setMarkerTextLocal (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then {              _marker setMarkerPos _leader;              private _groupString = (_text call BIS_fnc_localize);              private _sizeString = (' (' + str count units _group + ')');              if (vehicle _leader != _leader) then {                private _vehicleName = getText (configFile >> 'CfgVehicles' >> typeOf vehicle _leader >> 'displayName');                private _vehicleString = (' [' + _vehicleName + ']');                if (_showVehicle) then {                  if (_showGroupSize) then {                    _marker setMarkerTextLocal (_groupString + _vehicleString + _sizeString);                  } else {                    _marker setMarkerTextLocal (_groupString + _vehicleString);                  };                };              } else              {                if (_showGroupSize) then {                  _marker setMarkerTextLocal (_groupString + _sizeString);                };              };            };          };        };      };;
};
_this = _item260;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["Alpha 1-1"];                            } else {                                [_this, "Alpha 1-1"] call CBA_fnc_setCallsign;                            };                        ;
	      if (!is3DEN && (["","Default","Alpha 1-1",true,true] # 0 != '')) then      {        [_this, ["","Default","Alpha 1-1",true,true]] spawn {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '_parameters'];          _parameters params [['_type', ''], ['_color', 'Default'], ['_text', groupID _group], ['_showGroupSize', true], ['_showVehicle', true]];          private _leader = leader _group;          private _marker = createMarkerLocal [            'ENH_GroupMarker_' + str _group,            _leader          ];          _marker setMarkerTypeLocal _type;          _marker setMarkerColorLocal _color;          _marker setMarkerTextLocal (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then {              _marker setMarkerPos _leader;              private _groupString = (_text call BIS_fnc_localize);              private _sizeString = (' (' + str count units _group + ')');              if (vehicle _leader != _leader) then {                private _vehicleName = getText (configFile >> 'CfgVehicles' >> typeOf vehicle _leader >> 'displayName');                private _vehicleString = (' [' + _vehicleName + ']');                if (_showVehicle) then {                  if (_showGroupSize) then {                    _marker setMarkerTextLocal (_groupString + _vehicleString + _sizeString);                  } else {                    _marker setMarkerTextLocal (_groupString + _vehicleString);                  };                };              } else              {                if (_showGroupSize) then {                  _marker setMarkerTextLocal (_groupString + _sizeString);                };              };            };          };        };      };;
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
	_item3 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[4622.23,2638.55,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_logics pushback _this;
	_logicIDs pushback 3;
	_this setPosWorld [4622.23,2638.55,25.2123];
	_this setVectorDirAndUp [[0.803844,0.594595,0.0170824],[-0.021246,0,0.999774]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item227 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item227 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[4394.83,3125.82,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_logics pushback _this;
	_logicIDs pushback 227;
	_this setPosWorld [4394.83,3125.82,23.5337];
	_this setVectorDirAndUp [[-0.902102,0.430791,0.0251143],[0.0349773,0.0149887,0.999276]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item228 = objNull;
if (_layer226 && _layer9 && _layer229) then {
	_item228 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[4397.62,3111.38,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_logics pushback _this;
	_logicIDs pushback 228;
	_this setPosWorld [4397.62,3111.38,23.4497];
	_this setVectorDirAndUp [[-0.901527,0.429645,0.0515255],[0.0499373,-0.014979,0.99864]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer226) then {missionNamespace setVariable ["tempMissionSP_Spawns",[[_item227,_item228],[]]];};
if (_layer206) then {missionNamespace setVariable ["tempMissionSP_Shoothouse Targets",[[_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225],[]]];};
if (_layer9) then {missionNamespace setVariable ["tempMissionSP_Shoothouse Pit",[[_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228],[]]];};
if (_layer4) then {missionNamespace setVariable ["tempMissionSP_bargate",[[_item5,_item6],[]]];};
if (_layer229) then {missionNamespace setVariable ["tempMissionSP_SIA ZGM Essentials",[[_item0,_item2,_item3,_item5,_item6,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item19,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item155,_item156,_item157,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item227,_item228,_item272],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item272) then {
		this = _item272;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
