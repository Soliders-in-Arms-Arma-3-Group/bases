// Export of 'base_mil.zargabad' by Mal on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer359 = (_allWhitelisted || {"repair station_1" in _layerWhiteList}) && {!("repair station_1" in _layerBlackList)};
private _layer355 = (_allWhitelisted || {"sia zgm essentials_1" in _layerWhiteList}) && {!("sia zgm essentials_1" in _layerBlackList)};
private _layer366 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer0 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer11 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item80 = objNull;
if (_layerRoot) then {
	_item80 = createVehicle ["CUP_t_fagus2s_summer",[4742.38,6151.12,0.000207901],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [4742.38,6151.12,37.0089];
	_this setVectorDirAndUp [[0,0.999888,-0.0149939],[0,0.0149939,0.999888]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item81 = objNull;
if (_layerRoot) then {
	_item81 = createVehicle ["CUP_str_lipa",[4737.5,6161.01,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [4737.5,6161.01,39.9431];
	_this setVectorDirAndUp [[0,0.999922,-0.0124963],[-0.00999474,0.0124957,0.999872]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item93 = objNull;
if (_layerRoot) then {
	_item93 = createVehicle ["CUP_les_dub_jiny",[4749.66,6153.41,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [4749.66,6153.41,38.1382];
	_this setVectorDirAndUp [[0,0.999972,0.00750107],[0,-0.00750107,0.999972]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item94 = objNull;
if (_layerRoot) then {
	_item94 = createVehicle ["CUP_t_fagus2s_summer",[4712.34,6150.48,0.000207901],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [4712.34,6150.48,37.0266];
	_this setVectorDirAndUp [[0,0.99995,-0.00999474],[0.0124963,0.00999396,0.999872]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item95 = objNull;
if (_layerRoot) then {
	_item95 = createVehicle ["CUP_str_lipa",[4707.47,6160.37,0],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [4707.47,6160.37,39.9856];
	_this setVectorDirAndUp [[0,0.999888,0.0149978],[-0.0199947,-0.0149948,0.999688]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item96 = objNull;
if (_layerRoot) then {
	_item96 = createVehicle ["CUP_str_lipa",[4724.12,6158.5,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [4724.12,6158.5,39.9342];
	_this setVectorDirAndUp [[0.206878,-0.97834,0.0071932],[0.0124963,0.00999396,0.999872]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item97 = objNull;
if (_layerRoot) then {
	_item97 = createVehicle ["CUP_hrusen2",[4727.52,6152.68,0],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [4727.52,6152.68,33.1631];
	_this setVectorDirAndUp [[0,0.999997,-0.00248975],[0.0124963,0.00248956,0.999919]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item98 = objNull;
if (_layerRoot) then {
	_item98 = createVehicle ["CUP_les_dub_jiny",[4719.62,6152.77,0],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [4719.62,6152.77,38.1315];
	_this setVectorDirAndUp [[0,0.999988,0.00499145],[0,-0.00499145,0.999988]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item99 = objNull;
if (_layerRoot) then {
	_item99 = createVehicle ["CUP_t_fagus2s_summer",[4683.31,6148.92,0.000211716],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [4683.31,6148.92,37.0551];
	_this setVectorDirAndUp [[0,0.999997,-0.00248975],[0.00248975,0.00248975,0.999994]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item100 = objNull;
if (_layerRoot) then {
	_item100 = createVehicle ["CUP_str_lipa",[4678.43,6158.81,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [4678.43,6158.81,40.0038];
	_this setVectorDirAndUp [[0,0.999997,0.00248975],[-0.00248975,-0.00248975,0.999994]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item101 = objNull;
if (_layerRoot) then {
	_item101 = createVehicle ["CUP_str_lipa",[4695.09,6156.94,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [4695.09,6156.94,39.9862];
	_this setVectorDirAndUp [[0.206888,-0.978364,-0.000883963],[-0.00750107,-0.00248968,0.999969]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item102 = objNull;
if (_layerRoot) then {
	_item102 = createVehicle ["CUP_hrusen2",[4698.49,6151.11,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [4698.49,6151.11,33.1805];
	_this setVectorDirAndUp [[0,0.999847,-0.0174959],[-0.00248975,0.0174958,0.999844]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item103 = objNull;
if (_layerRoot) then {
	_item103 = createVehicle ["CUP_les_dub_jiny",[4690.59,6151.21,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [4690.59,6151.21,38.1392];
	_this setVectorDirAndUp [[0,0.999997,0.00248975],[0.00248975,-0.00248975,0.999994]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item104 = objNull;
if (_layerRoot) then {
	_item104 = createVehicle ["CUP_t_fagus2s_summer",[4653.84,6148.14,0.000211716],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [4653.84,6148.14,37.2063];
	_this setVectorDirAndUp [[0,0.999972,-0.00749312],[0.00999474,0.00749274,0.999922]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item105 = objNull;
if (_layerRoot) then {
	_item105 = createVehicle ["CUP_str_lipa",[4648.96,6158.02,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [4648.96,6158.02,40.1508];
	_this setVectorDirAndUp [[0,0.999988,0.00499145],[0,-0.00499145,0.999988]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item106 = objNull;
if (_layerRoot) then {
	_item106 = createVehicle ["CUP_str_lipa",[4665.62,6156.15,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [4665.62,6156.15,40.0486];
	_this setVectorDirAndUp [[0.206893,-0.97828,-0.012741],[0.00248975,-0.0124963,0.999919]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item107 = objNull;
if (_layerRoot) then {
	_item107 = createVehicle ["CUP_hrusen2",[4669.02,6150.33,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [4669.02,6150.33,33.2404];
	_this setVectorDirAndUp [[0,0.999847,-0.0174959],[0.00750107,0.0174954,0.999819]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item108 = objNull;
if (_layerRoot) then {
	_item108 = createVehicle ["CUP_les_dub_jiny",[4661.12,6150.42,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [4661.12,6150.42,38.2726];
	_this setVectorDirAndUp [[0,0.999972,-0.00749312],[0.0149978,0.00749227,0.999859]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item109 = objNull;
if (_layerRoot) then {
	_item109 = createVehicle ["CUP_t_fagus2s_summer",[4626.09,6147.13,0.000209808],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [4626.09,6147.13,37.3467];
	_this setVectorDirAndUp [[0,0.999688,-0.0249912],[0.0100007,0.0249899,0.999638]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item110 = objNull;
if (_layerRoot) then {
	_item110 = createVehicle ["CUP_str_lipa",[4621.21,6157.01,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [4621.21,6157.01,40.2556];
	_this setVectorDirAndUp [[0,1,0],[0.0124963,0,0.999922]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item111 = objNull;
if (_layerRoot) then {
	_item111 = createVehicle ["CUP_str_lipa",[4637.87,6155.14,0],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [4637.87,6155.14,40.1945];
	_this setVectorDirAndUp [[0.206862,-0.978363,0.00371908],[0.0174959,0.00749992,0.999819]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item112 = objNull;
if (_layerRoot) then {
	_item112 = createVehicle ["CUP_hrusen2",[4641.27,6149.32,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [4641.27,6149.32,33.4152];
	_this setVectorDirAndUp [[0,0.999997,0.00248975],[-0.00248975,-0.00248975,0.999994]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item113 = objNull;
if (_layerRoot) then {
	_item113 = createVehicle ["CUP_les_dub_jiny",[4633.37,6149.41,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [4633.37,6149.41,38.404];
	_this setVectorDirAndUp [[0,0.999988,-0.00499145],[-0.00248975,0.00499144,0.999984]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item114 = objNull;
if (_layerRoot) then {
	_item114 = createVehicle ["CUP_t_fagus2s_summer",[4594.48,6147.38,0.000207901],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [4594.48,6147.38,37.4051];
	_this setVectorDirAndUp [[0,0.999622,-0.027489],[-0.00500338,0.0274886,0.99961]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item115 = objNull;
if (_layerRoot) then {
	_item115 = createVehicle ["CUP_str_lipa",[4589.6,6157.27,0],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [4589.6,6157.27,40.2638];
	_this setVectorDirAndUp [[0,0.999888,-0.0149978],[0.0174959,0.0149955,0.999734]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item116 = objNull;
if (_layerRoot) then {
	_item116 = createVehicle ["CUP_str_lipa",[4606.25,6155.4,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [4606.25,6155.4,40.2666];
	_this setVectorDirAndUp [[0.206893,-0.978362,0.00192077],[0.00248975,0.00248975,0.999994]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item117 = objNull;
if (_layerRoot) then {
	_item117 = createVehicle ["CUP_hrusen2",[4609.65,6149.57,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [4609.65,6149.57,33.5025];
	_this setVectorDirAndUp [[0,0.999997,-0.00248975],[0.00750107,0.00248968,0.999969]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item118 = objNull;
if (_layerRoot) then {
	_item118 = createVehicle ["CUP_les_dub_jiny",[4601.75,6149.67,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [4601.75,6149.67,38.4961];
	_this setVectorDirAndUp [[0,0.999988,-0.00499145],[0.00750107,0.00499131,0.999959]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item119 = objNull;
if (_layerRoot) then {
	_item119 = createVehicle ["CUP_t_fagus2s_summer",[4566.18,6146.8,0.000211716],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [4566.18,6146.8,37.4253];
	_this setVectorDirAndUp [[0,0.99955,-0.0299852],[0.00750107,0.0299844,0.999522]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item120 = objNull;
if (_layerRoot) then {
	_item120 = createVehicle ["CUP_str_lipa",[4561.3,6156.69,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [4561.3,6156.69,40.2877];
	_this setVectorDirAndUp [[0,1,0],[0.00999474,0,0.99995]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item121 = objNull;
if (_layerRoot) then {
	_item121 = createVehicle ["CUP_str_lipa",[4577.96,6154.82,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [4577.96,6154.82,40.2617];
	_this setVectorDirAndUp [[0.206862,-0.977537,-0.0403661],[-0.0174993,-0.0449487,0.998836]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item122 = objNull;
if (_layerRoot) then {
	_item122 = createVehicle ["CUP_hrusen2",[4581.36,6148.99,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [4581.36,6148.99,33.4682];
	_this setVectorDirAndUp [[0,0.999847,-0.0174959],[-0.00499145,0.0174957,0.999834]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item123 = objNull;
if (_layerRoot) then {
	_item123 = createVehicle ["CUP_les_dub_jiny",[4573.46,6149.09,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [4573.46,6149.09,38.4657];
	_this setVectorDirAndUp [[0,0.999888,-0.0149978],[0.0174959,0.0149955,0.999734]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item124 = objNull;
if (_layerRoot) then {
	_item124 = createVehicle ["CUP_t_fagus2s_summer",[4531.28,6148.76,0.000209808],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [4531.28,6148.76,37.33];
	_this setVectorDirAndUp [[0,0.999972,-0.00750107],[0,0.00750107,0.999972]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item125 = objNull;
if (_layerRoot) then {
	_item125 = createVehicle ["CUP_str_lipa",[4526.4,6158.65,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [4526.4,6158.65,40.2961];
	_this setVectorDirAndUp [[0,0.999997,-0.00248975],[-0.00499145,0.00248972,0.999984]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item126 = objNull;
if (_layerRoot) then {
	_item126 = createVehicle ["CUP_str_lipa",[4543.05,6156.78,0],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [4543.05,6156.78,40.2739];
	_this setVectorDirAndUp [[0.206893,-0.978178,-0.0190421],[-0.00251358,-0.0199946,0.999797]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item127 = objNull;
if (_layerRoot) then {
	_item127 = createVehicle ["CUP_hrusen2",[4546.45,6150.95,0],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [4546.45,6150.95,33.4478];
	_this setVectorDirAndUp [[0,0.999747,-0.022494],[0.0100007,0.0224929,0.999697]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item128 = objNull;
if (_layerRoot) then {
	_item128 = createVehicle ["CUP_les_dub_jiny",[4538.56,6151.05,0],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [4538.56,6151.05,38.4183];
	_this setVectorDirAndUp [[0,0.999972,-0.00750107],[0.00248975,0.00750104,0.999969]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item129 = objNull;
if (_layerRoot) then {
	_item129 = createVehicle ["CUP_t_fagus2s_summer",[4497.27,6149.05,0.000209808],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [4497.27,6149.05,37.4295];
	_this setVectorDirAndUp [[0,0.999888,-0.0149978],[-0.00749312,0.0149974,0.999859]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item130 = objNull;
if (_layerRoot) then {
	_item130 = createVehicle ["CUP_str_lipa",[4492.39,6158.94,0],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [4492.39,6158.94,40.3257];
	_this setVectorDirAndUp [[0,0.999972,0.00750107],[-0.00750107,-0.00750086,0.999944]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item131 = objNull;
if (_layerRoot) then {
	_item131 = createVehicle ["CUP_str_lipa",[4509.05,6157.06,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [4509.05,6157.06,40.294];
	_this setVectorDirAndUp [[0.206893,-0.97832,-0.0092634],[-0.00248975,-0.00999471,0.999947]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item132 = objNull;
if (_layerRoot) then {
	_item132 = createVehicle ["CUP_hrusen2",[4512.45,6151.24,0],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [4512.45,6151.24,33.5329];
	_this setVectorDirAndUp [[0,0.9998,-0.0199947],[0.00251358,0.0199946,0.999797]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item133 = objNull;
if (_layerRoot) then {
	_item133 = createVehicle ["CUP_les_dub_jiny",[4504.55,6151.34,0],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [4504.55,6151.34,38.4868];
	_this setVectorDirAndUp [[0,0.9998,-0.0199947],[0.00750107,0.0199941,0.999772]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item134 = objNull;
if (_layerRoot) then {
	_item134 = createVehicle ["CUP_t_fagus2s_summer",[4464.46,6149.75,0.000209808],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [4464.46,6149.75,37.5013];
	_this setVectorDirAndUp [[0,0.999888,-0.0149978],[0.0174959,0.0149955,0.999734]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item135 = objNull;
if (_layerRoot) then {
	_item135 = createVehicle ["CUP_str_lipa",[4459.59,6159.64,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [4459.59,6159.64,40.4073];
	_this setVectorDirAndUp [[0,0.999922,0.0124963],[0.00248975,-0.0124963,0.999919]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item136 = objNull;
if (_layerRoot) then {
	_item136 = createVehicle ["CUP_str_lipa",[4476.24,6157.77,0],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [4476.24,6157.77,40.3556];
	_this setVectorDirAndUp [[0.206888,-0.978347,0.00578689],[0.00750107,0.00750086,0.999944]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item137 = objNull;
if (_layerRoot) then {
	_item137 = createVehicle ["CUP_hrusen2",[4479.64,6151.94,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [4479.64,6151.94,33.5826];
	_this setVectorDirAndUp [[0,0.9998,-0.0199947],[0.00750107,0.0199941,0.999772]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item138 = objNull;
if (_layerRoot) then {
	_item138 = createVehicle ["CUP_les_dub_jiny",[4471.74,6152.04,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [4471.74,6152.04,38.5857];
	_this setVectorDirAndUp [[0,0.999888,-0.0149978],[-0.00499145,0.0149977,0.999875]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item139 = objNull;
if (_layerRoot) then {
	_item139 = createVehicle ["CUP_t_fagus2s_summer",[4425.78,6148.36,0.000209808],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [4425.78,6148.36,37.5802];
	_this setVectorDirAndUp [[0,0.999922,-0.0124963],[-0.00499145,0.0124962,0.999909]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item140 = objNull;
if (_layerRoot) then {
	_item140 = createVehicle ["CUP_str_lipa",[4420.91,6158.24,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [4420.91,6158.24,40.4948];
	_this setVectorDirAndUp [[0,0.999972,-0.00750107],[0.0100007,0.00750069,0.999922]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item141 = objNull;
if (_layerRoot) then {
	_item141 = createVehicle ["CUP_str_lipa",[4437.56,6156.37,0],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [4437.56,6156.37,40.4973];
	_this setVectorDirAndUp [[0.206891,-0.978269,0.0136408],[0.00499145,0.0149977,0.999875]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item142 = objNull;
if (_layerRoot) then {
	_item142 = createVehicle ["CUP_hrusen2",[4440.96,6150.55,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [4440.96,6150.55,33.6982];
	_this setVectorDirAndUp [[0,0.9998,-0.0199947],[0.0100007,0.0199937,0.99975]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item143 = objNull;
if (_layerRoot) then {
	_item143 = createVehicle ["CUP_les_dub_jiny",[4433.06,6150.64,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [4433.06,6150.64,38.6719];
	_this setVectorDirAndUp [[0,0.999922,-0.0124963],[0.00248975,0.0124963,0.999919]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item144 = objNull;
if (_layerRoot) then {
	_item144 = createVehicle ["CUP_t_fagus2s_summer",[4386.78,6149.97,0.000211716],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [4386.78,6149.97,37.6417];
	_this setVectorDirAndUp [[0,0.999988,0.00499145],[0.00499145,-0.00499139,0.999975]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item145 = objNull;
if (_layerRoot) then {
	_item145 = createVehicle ["CUP_str_lipa",[4381.9,6159.86,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [4381.9,6159.86,40.5751];
	_this setVectorDirAndUp [[0,0.999997,0.00248975],[-0.00248975,-0.00248975,0.999994]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item146 = objNull;
if (_layerRoot) then {
	_item146 = createVehicle ["CUP_str_lipa",[4398.56,6157.99,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [4398.56,6157.99,40.5285];
	_this setVectorDirAndUp [[0.206891,-0.978363,-0.00140319],[-0.00499145,-0.00248972,0.999984]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item147 = objNull;
if (_layerRoot) then {
	_item147 = createVehicle ["CUP_hrusen2",[4401.96,6152.16,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [4401.96,6152.16,33.7545];
	_this setVectorDirAndUp [[0,0.999988,0.00499145],[-0.00248975,-0.00499144,0.999984]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item148 = objNull;
if (_layerRoot) then {
	_item148 = createVehicle ["CUP_les_dub_jiny",[4394.06,6152.26,0],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [4394.06,6152.26,38.716];
	_this setVectorDirAndUp [[0,0.999988,-0.00499145],[0.00499145,0.00499139,0.999975]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item149 = objNull;
if (_layerRoot) then {
	_item149 = createVehicle ["CUP_t_fagus2s_summer",[4743.58,6125.26,0.000209808],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [4743.58,6125.26,36.9378];
	_this setVectorDirAndUp [[-0.00293595,0.999993,-0.00245305],[0.0124963,0.00248956,0.999919]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item150 = objNull;
if (_layerRoot) then {
	_item150 = createVehicle ["CUP_str_lipa",[4738.67,6135.13,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [4738.67,6135.13,40.1579];
	_this setVectorDirAndUp [[-0.00293618,0.999743,0.0224866],[-0.00248975,-0.0224939,0.999744]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item151 = objNull;
if (_layerRoot) then {
	_item151 = createVehicle ["CUP_str_lipa",[4755.33,6133.31,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [4755.33,6133.31,40.075];
	_this setVectorDirAndUp [[0.20976,-0.977265,-0.0308908],[0.00750107,-0.0299844,0.999522]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item152 = objNull;
if (_layerRoot) then {
	_item152 = createVehicle ["CUP_hrusen2",[4758.75,6127.49,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [4758.75,6127.49,33.09];
	_this setVectorDirAndUp [[-0.00293615,0.999946,0.0100094],[0.00499145,-0.00999462,0.999938]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item153 = objNull;
if (_layerRoot) then {
	_item153 = createVehicle ["CUP_les_dub_jiny",[4750.85,6127.57,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [4750.85,6127.57,38.0304];
	_this setVectorDirAndUp [[-0.00293618,0.999946,0.00998739],[-0.00248975,-0.00999471,0.999947]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item154 = objNull;
if (_layerRoot) then {
	_item154 = createVehicle ["CUP_t_fagus2s_summer",[4713.55,6124.53,0.000207901],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [4713.55,6124.53,36.8663];
	_this setVectorDirAndUp [[-0.00293618,0.999796,0.0199976],[0,-0.0199977,0.9998]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item155 = objNull;
if (_layerRoot) then {
	_item155 = createVehicle ["CUP_str_lipa",[4708.64,6134.41,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [4708.64,6134.41,40.0929];
	_this setVectorDirAndUp [[-0.00293618,0.999546,0.0299851],[0,-0.0299852,0.99955]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item156 = objNull;
if (_layerRoot) then {
	_item156 = createVehicle ["CUP_str_lipa",[4725.3,6132.58,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [4725.3,6132.58,40.0449];
	_this setVectorDirAndUp [[0.209765,-0.977296,-0.0298401],[0.00248975,-0.0299851,0.999547]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item157 = objNull;
if (_layerRoot) then {
	_item157 = createVehicle ["CUP_hrusen2",[4728.72,6126.77,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [4728.72,6126.77,33.0928];
	_this setVectorDirAndUp [[-0.00293618,0.999743,0.0224866],[-0.00248975,-0.0224939,0.999744]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item158 = objNull;
if (_layerRoot) then {
	_item158 = createVehicle ["CUP_les_dub_jiny",[4720.82,6126.84,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [4720.82,6126.84,38.0473];
	_this setVectorDirAndUp [[-0.00293618,0.999843,0.0174958],[0,-0.0174959,0.999847]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item159 = objNull;
if (_layerRoot) then {
	_item159 = createVehicle ["CUP_t_fagus2s_summer",[4684.52,6122.89,0.000211716],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [4684.52,6122.89,36.9451];
	_this setVectorDirAndUp [[-0.0029361,0.999883,0.0150198],[0.00749312,-0.0149974,0.999859]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item160 = objNull;
if (_layerRoot) then {
	_item160 = createVehicle ["CUP_str_lipa",[4679.61,6132.76,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [4679.61,6132.76,40.0707];
	_this setVectorDirAndUp [[-0.00293617,0.999683,0.0249985],[0.00251358,-0.0249911,0.999685]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item161 = objNull;
if (_layerRoot) then {
	_item161 = createVehicle ["CUP_str_lipa",[4696.27,6130.94,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [4696.27,6130.94,40.0174];
	_this setVectorDirAndUp [[0.20975,-0.976967,-0.0392593],[0.0124963,-0.0374706,0.99922]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item162 = objNull;
if (_layerRoot) then {
	_item162 = createVehicle ["CUP_hrusen2",[4699.69,6125.12,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [4699.69,6125.12,33.0595];
	_this setVectorDirAndUp [[-0.00293595,0.999883,0.0150345],[0.0124963,-0.0149967,0.999809]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item163 = objNull;
if (_layerRoot) then {
	_item163 = createVehicle ["CUP_les_dub_jiny",[4691.79,6125.19,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [4691.79,6125.19,38.0706];
	_this setVectorDirAndUp [[-0.00293618,0.999993,0.00248974],[0,-0.00248975,0.999997]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item164 = objNull;
if (_layerRoot) then {
	_item164 = createVehicle ["CUP_t_fagus2s_summer",[4657.85,6124.35,0.000207901],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [4657.85,6124.35,37.0028];
	_this setVectorDirAndUp [[-0.00293618,0.999796,0.0199976],[0,-0.0199977,0.9998]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item165 = objNull;
if (_layerRoot) then {
	_item165 = createVehicle ["CUP_str_lipa",[4650.14,6131.88,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [4650.14,6131.88,40.1613];
	_this setVectorDirAndUp [[-0.00293618,0.999384,0.0349847],[0.00248975,-0.0349774,0.999385]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item166 = objNull;
if (_layerRoot) then {
	_item166 = createVehicle ["CUP_str_lipa",[4666.8,6130.06,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [4666.8,6130.06,40.0255];
	_this setVectorDirAndUp [[0.209765,-0.977296,-0.0298401],[0.00248975,-0.0299851,0.999547]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item167 = objNull;
if (_layerRoot) then {
	_item167 = createVehicle ["CUP_hrusen2",[4670.22,6124.25,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [4670.22,6124.25,33.1066];
	_this setVectorDirAndUp [[-0.00293615,0.999618,0.0274742],[-0.00500338,-0.0274886,0.99961]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item168 = objNull;
if (_layerRoot) then {
	_item168 = createVehicle ["CUP_les_dub_jiny",[4665.13,6126.66,0],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [4665.13,6126.66,38.1242];
	_this setVectorDirAndUp [[-0.00293618,0.999468,0.0324819],[0,-0.032482,0.999472]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item169 = objNull;
if (_layerRoot) then {
	_item169 = createVehicle ["CUP_t_fagus2s_summer",[4617.17,6125.58,0],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [4617.17,6125.58,37.1547];
	_this setVectorDirAndUp [[-0.0029361,0.999983,0.00501345],[0.00750107,-0.00499131,0.999959]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item170 = objNull;
if (_layerRoot) then {
	_item170 = createVehicle ["CUP_str_lipa",[4622.41,6133.12,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [4622.41,6133.12,40.301];
	_this setVectorDirAndUp [[-0.00293615,0.999795,0.0200093],[0.00500338,-0.0199945,0.999788]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item171 = objNull;
if (_layerRoot) then {
	_item171 = createVehicle ["CUP_str_lipa",[4639.05,6128.97,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [4639.05,6128.97,40.145];
	_this setVectorDirAndUp [[0.209766,-0.977446,-0.0244352],[0,-0.0249912,0.999688]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item172 = objNull;
if (_layerRoot) then {
	_item172 = createVehicle ["CUP_hrusen2",[4645.27,6125.5,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [4645.27,6125.5,33.2573];
	_this setVectorDirAndUp [[-0.00293615,0.999546,0.0300018],[0.00500338,-0.0299868,0.999538]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item173 = objNull;
if (_layerRoot) then {
	_item173 = createVehicle ["CUP_les_dub_jiny",[4637.38,6125.57,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [4637.38,6125.57,38.2151];
	_this setVectorDirAndUp [[-0.00293618,0.999843,0.0174958],[0,-0.0174959,0.999847]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item174 = objNull;
if (_layerRoot) then {
	_item174 = createVehicle ["CUP_t_fagus2s_summer",[4594,6122.4,0.000207901],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [4594,6122.4,37.2257];
	_this setVectorDirAndUp [[-0.00293604,0.999996,2.93464e-005],[0.00999474,0,0.99995]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item175 = objNull;
if (_layerRoot) then {
	_item175 = createVehicle ["CUP_str_lipa",[4589.09,6132.28,0],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [4589.09,6132.28,40.337];
	_this setVectorDirAndUp [[-0.00293618,0.999743,0.0224939],[0,-0.022494,0.999747]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item176 = objNull;
if (_layerRoot) then {
	_item176 = createVehicle ["CUP_str_lipa",[4605.77,6132.78,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [4605.77,6132.78,40.3443];
	_this setVectorDirAndUp [[0.209766,-0.977602,-0.0171066],[0,-0.0174959,0.999847]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item177 = objNull;
if (_layerRoot) then {
	_item177 = createVehicle ["CUP_hrusen2",[4610.87,6125.64,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [4610.87,6125.64,33.3526];
	_this setVectorDirAndUp [[-0.00293486,0.999996,8.80421e-005],[0.0299852,0,0.99955]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item178 = objNull;
if (_layerRoot) then {
	_item178 = createVehicle ["CUP_les_dub_jiny",[4601.29,6127.04,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [4601.29,6127.04,38.3648];
	_this setVectorDirAndUp [[-0.00293618,0.999946,0.010002],[0.00248975,-0.00999471,0.999947]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item179 = objNull;
if (_layerRoot) then {
	_item179 = createVehicle ["CUP_t_fagus2s_summer",[4566.63,6123.9,0.000209808],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [4566.63,6123.9,37.2003];
	_this setVectorDirAndUp [[-0.00293617,0.999796,0.0199872],[-0.00251358,-0.0199946,0.999797]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item180 = objNull;
if (_layerRoot) then {
	_item180 = createVehicle ["CUP_str_lipa",[4561.73,6133.77,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [4561.73,6133.77,40.3626];
	_this setVectorDirAndUp [[-0.00293615,0.999546,0.0299704],[-0.00500338,-0.0299848,0.999538]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item181 = objNull;
if (_layerRoot) then {
	_item181 = createVehicle ["CUP_str_lipa",[4578.39,6131.95,0],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [4578.39,6131.95,40.3212];
	_this setVectorDirAndUp [[0.209763,-0.977343,-0.028269],[-0.00500338,-0.0299848,0.999538]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item182 = objNull;
if (_layerRoot) then {
	_item182 = createVehicle ["CUP_hrusen2",[4581.8,6126.13,0],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [4581.8,6126.13,33.4253];
	_this setVectorDirAndUp [[-0.00293618,0.999883,0.0149905],[-0.00248975,-0.0149978,0.999884]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item183 = objNull;
if (_layerRoot) then {
	_item183 = createVehicle ["CUP_les_dub_jiny",[4573.91,6126.21,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [4573.91,6126.21,38.346];
	_this setVectorDirAndUp [[-0.00293618,0.999883,0.0150051],[0.00248975,-0.0149978,0.999884]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item184 = objNull;
if (_layerRoot) then {
	_item184 = createVehicle ["CUP_t_fagus2s_summer",[4530.79,6123.6,0.000205994],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [4530.79,6123.6,37.2148];
	_this setVectorDirAndUp [[-0.0029361,0.999996,2.20245e-005],[0.00750107,0,0.999972]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item185 = objNull;
if (_layerRoot) then {
	_item185 = createVehicle ["CUP_str_lipa",[4525.89,6133.47,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [4525.89,6133.47,40.396];
	_this setVectorDirAndUp [[-0.00293618,0.999293,0.0374734],[0,-0.0374736,0.999298]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item186 = objNull;
if (_layerRoot) then {
	_item186 = createVehicle ["CUP_str_lipa",[4543.48,6133.81,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [4543.48,6133.81,40.3531];
	_this setVectorDirAndUp [[0.209766,-0.97697,-0.0390778],[0,-0.039967,0.999201]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item187 = objNull;
if (_layerRoot) then {
	_item187 = createVehicle ["CUP_hrusen2",[4546.89,6128,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [4546.89,6128,33.3931];
	_this setVectorDirAndUp [[-0.00293615,0.999796,0.0199799],[-0.00500338,-0.0199945,0.999788]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item188 = objNull;
if (_layerRoot) then {
	_item188 = createVehicle ["CUP_les_dub_jiny",[4538.07,6125.91,0],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [4538.07,6125.91,38.3164];
	_this setVectorDirAndUp [[-0.00293615,0.999946,0.0100094],[0.00499145,-0.00999462,0.999938]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item189 = objNull;
if (_layerRoot) then {
	_item189 = createVehicle ["CUP_t_fagus2s_summer",[4496.79,6123.79,0.000204086],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [4496.79,6123.79,37.3238];
	_this setVectorDirAndUp [[-0.00293615,0.999618,0.0274742],[-0.00500338,-0.0274886,0.99961]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item190 = objNull;
if (_layerRoot) then {
	_item190 = createVehicle ["CUP_str_lipa",[4491.88,6133.66,0],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [4491.88,6133.66,40.5033];
	_this setVectorDirAndUp [[-0.00293618,0.999293,0.0374807],[0.00248975,-0.0374735,0.999295]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item191 = objNull;
if (_layerRoot) then {
	_item191 = createVehicle ["CUP_str_lipa",[4508.54,6131.84,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [4508.54,6131.84,40.3919];
	_this setVectorDirAndUp [[0.209763,-0.977026,-0.0376886],[0.00500338,-0.0374731,0.999285]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item192 = objNull;
if (_layerRoot) then {
	_item192 = createVehicle ["CUP_hrusen2",[4511.96,6126.02,0],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [4511.96,6126.02,33.4641];
	_this setVectorDirAndUp [[-0.0029361,0.999993,0.00251177],[0.00750107,-0.00248968,0.999969]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item193 = objNull;
if (_layerRoot) then {
	_item193 = createVehicle ["CUP_les_dub_jiny",[4504.06,6126.1,0],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [4504.06,6126.1,38.4387];
	_this setVectorDirAndUp [[-0.00293618,0.999946,0.00999335],[-0.00248975,-0.0100007,0.999947]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item194 = objNull;
if (_layerRoot) then {
	_item194 = createVehicle ["CUP_t_fagus2s_summer",[4463.98,6124.39,0.000207901],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [4463.98,6124.39,37.549];
	_this setVectorDirAndUp [[-0.0029361,0.999843,-0.0174738],[0.00750107,0.0174954,0.999819]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item195 = objNull;
if (_layerRoot) then {
	_item195 = createVehicle ["CUP_str_lipa",[4459.07,6134.27,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [4459.07,6134.27,40.6344];
	_this setVectorDirAndUp [[-0.00293618,0.999468,0.0324819],[0,-0.032482,0.999472]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item196 = objNull;
if (_layerRoot) then {
	_item196 = createVehicle ["CUP_str_lipa",[4475.73,6132.44,0],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [4475.73,6132.44,40.5258];
	_this setVectorDirAndUp [[0.209765,-0.977219,-0.0322863],[0.00251358,-0.0324819,0.999469]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item197 = objNull;
if (_layerRoot) then {
	_item197 = createVehicle ["CUP_hrusen2",[4479.15,6126.63,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [4479.15,6126.63,33.5814];
	_this setVectorDirAndUp [[-0.0029361,0.999946,0.0100167],[0.00750107,-0.00999446,0.999922]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item198 = objNull;
if (_layerRoot) then {
	_item198 = createVehicle ["CUP_les_dub_jiny",[4471.25,6126.7,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [4471.25,6126.7,38.5998];
	_this setVectorDirAndUp [[-0.00293618,0.999968,0.00750834],[0.00248975,-0.00750104,0.999969]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item199 = objNull;
if (_layerRoot) then {
	_item199 = createVehicle ["CUP_t_fagus2s_summer",[4426.99,6121.56,0.000205994],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [4426.99,6121.56,38.1498];
	_this setVectorDirAndUp [[-0.00293618,0.995514,-0.0945668],[0.00248975,0.0945742,0.995515]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item200 = objNull;
if (_layerRoot) then {
	_item200 = createVehicle ["CUP_str_lipa",[4422.09,6131.44,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [4422.09,6131.44,40.6604];
	_this setVectorDirAndUp [[-0.00293618,0.999618,0.0274816],[-0.00248975,-0.0274889,0.999619]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item201 = objNull;
if (_layerRoot) then {
	_item201 = createVehicle ["CUP_str_lipa",[4437.06,6130.93,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [4437.06,6130.93,40.6341];
	_this setVectorDirAndUp [[0.20976,-0.977574,-0.0186799],[0.00750107,-0.0174954,0.999819]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item202 = objNull;
if (_layerRoot) then {
	_item202 = createVehicle ["CUP_hrusen2",[4440.48,6125.12,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [4440.48,6125.12,34.0016];
	_this setVectorDirAndUp [[-0.00293618,0.997554,-0.0698355],[-0.00248975,0.0698283,0.997556]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item203 = objNull;
if (_layerRoot) then {
	_item203 = createVehicle ["CUP_les_dub_jiny",[4432.58,6125.19,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [4432.58,6125.19,38.9812];
	_this setVectorDirAndUp [[-0.00293615,0.997556,-0.0698144],[0.00500338,0.0698285,0.997546]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item204 = objNull;
if (_layerRoot) then {
	_item204 = createVehicle ["CUP_t_fagus2s_summer",[4400.83,6130.58,0.000209808],[],0,"CAN_COLLIDE"];
	_this = _item204;
	_objects pushback _this;
	_objectIDs pushback 204;
	_this setPosWorld [4400.83,6130.58,37.8754];
	_this setVectorDirAndUp [[0.431479,-0.901787,-0.0246063],[0.0100007,-0.0224929,0.999697]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item205 = objNull;
if (_layerRoot) then {
	_item205 = createVehicle ["CUP_str_lipa",[4409.5,6123.76,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item205;
	_objects pushback _this;
	_objectIDs pushback 205;
	_this setPosWorld [4409.5,6123.76,40.6779];
	_this setVectorDirAndUp [[0.431414,-0.899127,0.0738387],[-0.0199977,0.0722961,0.997183]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item206 = objNull;
if (_layerRoot) then {
	_item206 = createVehicle ["CUP_str_lipa",[4393.67,6118.27,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item206;
	_objects pushback _this;
	_objectIDs pushback 206;
	_this setPosWorld [4393.67,6118.27,40.7927];
	_this setVectorDirAndUp [[-0.608652,0.789889,-0.0749534],[-0.0224966,0.0772486,0.996758]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item207 = objNull;
if (_layerRoot) then {
	_item207 = createVehicle ["CUP_hrusen2",[4388.09,6122.05,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [4388.09,6122.05,33.8705];
	_this setVectorDirAndUp [[0.431488,-0.901997,-0.0148014],[-0.00750107,-0.0199941,0.999772]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item208 = objNull;
if (_layerRoot) then {
	_item208 = createVehicle ["CUP_les_dub_jiny",[4395.25,6125.37,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [4395.25,6125.37,38.8513];
	_this setVectorDirAndUp [[0.431488,-0.901448,-0.0347884],[0.00750107,-0.0349766,0.99936]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item356 = objNull;
if (_layer355 && _layer366) then {
	_item356 = createVehicle ["Land_InfoStand_V1_F",[4837.59,4589.41,0],[],0,"CAN_COLLIDE"];
	_this = _item356;
	_objects pushback _this;
	_objectIDs pushback 356;
	_this setPosWorld [4837.57,4589.39,38.4518];
	_this setVectorDirAndUp [[0.553419,0.832738,-0.0166071],[0.0224913,0.00499019,0.999735]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item360 = objNull;
if (_layer359 && _layer355 && _layer366) then {
	_item360 = createVehicle ["Land_RepairDepot_01_tan_F",[4899.75,4625.45,0],[],0,"CAN_COLLIDE"];
	_this = _item360;
	_objects pushback _this;
	_objectIDs pushback 360;
	_this setPosWorld [4899.74,4625.43,41.7675];
	_this setVectorDirAndUp [[-0.635628,0.77198,-0.00499283],[0.022494,0.0249849,0.999435]];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item362 = objNull;
if (_layer355 && _layer366) then {
	_item362 = createVehicle ["B_supplyCrate_F",[4853.11,4602.25,0.806969],[],0,"CAN_COLLIDE"];
	_this = _item362;
	_objects pushback _this;
	_objectIDs pushback 362;
	_this setPosWorld [4853.08,4602.23,39.3016];
	_this setVectorDirAndUp [[0.796793,0.604251,-0.00137893],[0.00114512,0.00077204,0.999999]];
	_this enableSimulation false;
	[_this,"[[[[""arifle_MXC_F"",""arifle_MXM_F"",""arifle_MX_F"",""arifle_MX_GL_F"",""arifle_MX_SW_F"",""arifle_SDAR_F"",""hgun_P07_F"",""hgun_Pistol_heavy_01_F"",""launch_NLAW_F"",""launch_Titan_F"",""launch_Titan_short_F"",""SMG_01_F"",""srifle_EBR_F"",""srifle_LRR_camo_F"",""srifle_LRR_F"",""FirstAidKit"",""Medikit""],[4,2,8,4,4,2,2,2,2,2,2,2,2,2,2,10,1]],[[""100Rnd_65x39_caseless_mag_Tracer"",""11Rnd_45ACP_Mag"",""16Rnd_9x21_Mag"",""1Rnd_HE_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokePurple_Grenade_shell"",""1Rnd_SmokeRed_Grenade_shell"",""1Rnd_SmokeYellow_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""20Rnd_556x45_UW_mag"",""20Rnd_762x51_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""30Rnd_556x45_Stanag_red"",""30Rnd_65x39_caseless_mag"",""3Rnd_HE_Grenade_shell"",""7Rnd_408_Mag"",""APERSBoundingMine_Range_Mag"",""APERSMine_Range_Mag"",""APERSTripMine_Wire_Mag"",""ATMine_Range_Mag"",""B_IR_Grenade"",""ClaymoreDirectionalMine_Remote_Mag"",""DemoCharge_Remote_Mag"",""HandGrenade"",""Laserbatteries"",""MiniGrenade"",""NLAW_F"",""SatchelCharge_Remote_Mag"",""SLAMDirectionalMine_Wire_Mag"",""SmokeShell"",""SmokeShellBlue"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellPurple"",""SmokeShellRed"",""SmokeShellYellow"",""Titan_AA"",""Titan_AP"",""Titan_AT"",""UGL_FlareGreen_F"",""UGL_FlareWhite_F""],[16,14,14,15,2,2,2,2,2,2,2,6,24,14,6,52,3,12,5,5,5,5,8,5,5,24,5,24,8,5,5,2,2,2,2,2,2,2,6,6,6,2,2]],[[""Binocular"",""Laserdesignator"",""Rangefinder"",""acc_flashlight"",""acc_pointer_IR"",""ItemGPS"",""MineDetector"",""muzzle_snds_acp"",""muzzle_snds_B"",""muzzle_snds_H"",""muzzle_snds_H_SW"",""muzzle_snds_L"",""optic_Aco"",""optic_Aco_smg"",""optic_dms"",""optic_Hamr"",""optic_Holosight"",""optic_lrps"",""optic_MRD"",""optic_NVS"",""optic_SOS"",""optic_tws"",""optic_tws_mg"",""ToolKit""],[1,1,1,5,5,5,1,5,5,5,1,5,2,2,2,2,2,2,2,2,2,2,2,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item379 = objNull;
if (_layer355 && _layer366) then {
	_item379 = createVehicle ["B_supplyCrate_F",[4843.01,4600.02,0.710754],[],0,"CAN_COLLIDE"];
	_this = _item379;
	_objects pushback _this;
	_objectIDs pushback 379;
	_this setPosWorld [4843.01,4600.02,39.3083];
	_this setVectorDirAndUp [[0.928781,-0.370629,-0.000453506],[0.000488281,0,1]];
	_this enableSimulation false;
	[_this,"[[[[""arifle_MXC_F"",""arifle_MXM_F"",""arifle_MX_F"",""arifle_MX_GL_F"",""arifle_MX_SW_F"",""arifle_SDAR_F"",""hgun_P07_F"",""hgun_Pistol_heavy_01_F"",""launch_NLAW_F"",""launch_Titan_F"",""launch_Titan_short_F"",""SMG_01_F"",""srifle_EBR_F"",""srifle_LRR_camo_F"",""srifle_LRR_F"",""FirstAidKit"",""Medikit""],[4,2,8,4,4,2,2,2,2,2,2,2,2,2,2,10,1]],[[""100Rnd_65x39_caseless_mag_Tracer"",""11Rnd_45ACP_Mag"",""16Rnd_9x21_Mag"",""1Rnd_HE_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokePurple_Grenade_shell"",""1Rnd_SmokeRed_Grenade_shell"",""1Rnd_SmokeYellow_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""20Rnd_556x45_UW_mag"",""20Rnd_762x51_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""30Rnd_556x45_Stanag_red"",""30Rnd_65x39_caseless_mag"",""3Rnd_HE_Grenade_shell"",""7Rnd_408_Mag"",""APERSBoundingMine_Range_Mag"",""APERSMine_Range_Mag"",""APERSTripMine_Wire_Mag"",""ATMine_Range_Mag"",""B_IR_Grenade"",""ClaymoreDirectionalMine_Remote_Mag"",""DemoCharge_Remote_Mag"",""HandGrenade"",""Laserbatteries"",""MiniGrenade"",""NLAW_F"",""SatchelCharge_Remote_Mag"",""SLAMDirectionalMine_Wire_Mag"",""SmokeShell"",""SmokeShellBlue"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellPurple"",""SmokeShellRed"",""SmokeShellYellow"",""Titan_AA"",""Titan_AP"",""Titan_AT"",""UGL_FlareGreen_F"",""UGL_FlareWhite_F""],[16,14,14,15,2,2,2,2,2,2,2,6,24,14,6,52,3,12,5,5,5,5,8,5,5,24,5,24,8,5,5,2,2,2,2,2,2,2,6,6,6,2,2]],[[""Binocular"",""Laserdesignator"",""Rangefinder"",""acc_flashlight"",""acc_pointer_IR"",""ItemGPS"",""MineDetector"",""muzzle_snds_acp"",""muzzle_snds_B"",""muzzle_snds_H"",""muzzle_snds_H_SW"",""muzzle_snds_L"",""optic_Aco"",""optic_Aco_smg"",""optic_dms"",""optic_Hamr"",""optic_Holosight"",""optic_lrps"",""optic_MRD"",""optic_NVS"",""optic_SOS"",""optic_tws"",""optic_tws_mg"",""ToolKit""],[1,1,1,5,5,5,1,5,5,5,1,5,2,2,2,2,2,2,2,2,2,2,2,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item380 = objNull;
if (_layer355 && _layer366) then {
	_item380 = createVehicle ["B_supplyCrate_F",[4850.96,4593.01,0.703907],[],0,"CAN_COLLIDE"];
	_this = _item380;
	_objects pushback _this;
	_objectIDs pushback 380;
	_this setPosWorld [4850.96,4593.01,39.3044];
	_this setVectorDirAndUp [[-0.406617,0.913599,0.000198544],[0.000488281,0,1]];
	_this enableSimulation false;
	[_this,"[[[[""arifle_MXC_F"",""arifle_MXM_F"",""arifle_MX_F"",""arifle_MX_GL_F"",""arifle_MX_SW_F"",""arifle_SDAR_F"",""hgun_P07_F"",""hgun_Pistol_heavy_01_F"",""launch_NLAW_F"",""launch_Titan_F"",""launch_Titan_short_F"",""SMG_01_F"",""srifle_EBR_F"",""srifle_LRR_camo_F"",""srifle_LRR_F"",""FirstAidKit"",""Medikit""],[4,2,8,4,4,2,2,2,2,2,2,2,2,2,2,10,1]],[[""100Rnd_65x39_caseless_mag_Tracer"",""11Rnd_45ACP_Mag"",""16Rnd_9x21_Mag"",""1Rnd_HE_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokePurple_Grenade_shell"",""1Rnd_SmokeRed_Grenade_shell"",""1Rnd_SmokeYellow_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""20Rnd_556x45_UW_mag"",""20Rnd_762x51_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""30Rnd_556x45_Stanag_red"",""30Rnd_65x39_caseless_mag"",""3Rnd_HE_Grenade_shell"",""7Rnd_408_Mag"",""APERSBoundingMine_Range_Mag"",""APERSMine_Range_Mag"",""APERSTripMine_Wire_Mag"",""ATMine_Range_Mag"",""B_IR_Grenade"",""ClaymoreDirectionalMine_Remote_Mag"",""DemoCharge_Remote_Mag"",""HandGrenade"",""Laserbatteries"",""MiniGrenade"",""NLAW_F"",""SatchelCharge_Remote_Mag"",""SLAMDirectionalMine_Wire_Mag"",""SmokeShell"",""SmokeShellBlue"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellPurple"",""SmokeShellRed"",""SmokeShellYellow"",""Titan_AA"",""Titan_AP"",""Titan_AT"",""UGL_FlareGreen_F"",""UGL_FlareWhite_F""],[16,14,14,15,2,2,2,2,2,2,2,6,24,14,6,52,3,12,5,5,5,5,8,5,5,24,5,24,8,5,5,2,2,2,2,2,2,2,6,6,6,2,2]],[[""Binocular"",""Laserdesignator"",""Rangefinder"",""acc_flashlight"",""acc_pointer_IR"",""ItemGPS"",""MineDetector"",""muzzle_snds_acp"",""muzzle_snds_B"",""muzzle_snds_H"",""muzzle_snds_H_SW"",""muzzle_snds_L"",""optic_Aco"",""optic_Aco_smg"",""optic_dms"",""optic_Hamr"",""optic_Holosight"",""optic_lrps"",""optic_MRD"",""optic_NVS"",""optic_SOS"",""optic_tws"",""optic_tws_mg"",""ToolKit""],[1,1,1,5,5,5,1,5,5,5,1,5,2,2,2,2,2,2,2,2,2,2,2,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item368 = objNull;
if (_layerRoot) then {
	_item368 = createSimpleObject ["Land_WoodenTable_large_F",[4857.64,4586.17,38.4087]];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [4857.64,4586.17,38.841];
	_this setVectorDirAndUp [[0.0138876,-0.999904,-6.78105e-006],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item369 = objNull;
if (_layerRoot) then {
	_item369 = createSimpleObject ["Land_WoodenTable_large_F",[4857.62,4588.39,38.4087]];
	_this = _item369;
	_objects pushback _this;
	_objectIDs pushback 369;
	_this setPosWorld [4857.62,4588.39,38.841];
	_this setVectorDirAndUp [[0.0138876,-0.999904,-6.78105e-006],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item370 = objNull;
if (_layerRoot) then {
	_item370 = createSimpleObject ["Land_WoodenTable_large_F",[4858.92,4586.21,38.4081]];
	_this = _item370;
	_objects pushback _this;
	_objectIDs pushback 370;
	_this setPosWorld [4858.92,4586.21,38.8404];
	_this setVectorDirAndUp [[0.0138876,-0.999904,-6.78105e-006],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item371 = objNull;
if (_layerRoot) then {
	_item371 = createSimpleObject ["Land_WoodenTable_large_F",[4858.87,4588.41,38.3733]];
	_this = _item371;
	_objects pushback _this;
	_objectIDs pushback 371;
	_this setPosWorld [4858.87,4588.41,38.8056];
	_this setVectorDirAndUp [[0.0138876,-0.999904,-6.78105e-006],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item372 = objNull;
if (_layerRoot) then {
	_item372 = createSimpleObject ["Land_WoodenTable_large_F",[4839.57,4609.25,38.4175]];
	_this = _item372;
	_objects pushback _this;
	_objectIDs pushback 372;
	_this setPosWorld [4839.57,4609.25,38.8498];
	_this setVectorDirAndUp [[-0.966685,-0.255969,0.000472014],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item373 = objNull;
if (_layerRoot) then {
	_item373 = createSimpleObject ["Land_WoodenTable_large_F",[4842.95,4597.6,38.4159]];
	_this = _item373;
	_objects pushback _this;
	_objectIDs pushback 373;
	_this setPosWorld [4842.95,4597.6,38.8482];
	_this setVectorDirAndUp [[0.0138876,-0.999904,-6.78105e-006],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item374 = objNull;
if (_layerRoot) then {
	_item374 = createSimpleObject ["Land_RattanChair_01_F",[4856.7,4586.34,38.4092]];
	_this = _item374;
	_objects pushback _this;
	_objectIDs pushback 374;
	_this setPosWorld [4856.7,4586.34,38.9674];
	_this setVectorDirAndUp [[-0.971031,-0.238952,0.000474136],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item375 = objNull;
if (_layerRoot) then {
	_item375 = createSimpleObject ["Land_RattanChair_01_F",[4859.76,4588.67,38.4076]];
	_this = _item375;
	_objects pushback _this;
	_objectIDs pushback 375;
	_this setPosWorld [4859.76,4588.67,38.9659];
	_this setVectorDirAndUp [[0.987705,-0.15633,-0.000482278],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item376 = objNull;
if (_layerRoot) then {
	_item376 = createSimpleObject ["Land_RattanChair_01_F",[4859.88,4585.65,38.4076]];
	_this = _item376;
	_objects pushback _this;
	_objectIDs pushback 376;
	_this setPosWorld [4859.88,4585.65,38.9658];
	_this setVectorDirAndUp [[0.987705,-0.15633,-0.000482278],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item377 = objNull;
if (_layerRoot) then {
	_item377 = createSimpleObject ["Land_RattanChair_01_F",[4859.88,4586.49,38.4076]];
	_this = _item377;
	_objects pushback _this;
	_objectIDs pushback 377;
	_this setPosWorld [4859.88,4586.49,38.9658];
	_this setVectorDirAndUp [[0.999807,0.0196522,-0.000488187],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item378 = objNull;
if (_layerRoot) then {
	_item378 = createSimpleObject ["Land_RattanChair_01_F",[4856.75,4588.86,38.4091]];
	_this = _item378;
	_objects pushback _this;
	_objectIDs pushback 378;
	_this setPosWorld [4856.75,4588.86,38.9674];
	_this setVectorDirAndUp [[-0.926677,0.375858,0.000452479],[0.000488281,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item358 = objNull;
if (_layer355 && _layer366) then {
	_item358 = createTrigger ["EmptyDetectorArea10x10",[4869.18,4633.21,0],true];
	_this = _item358;
	_triggers pushback _this;
	_triggerIDs pushback 358;
	_item358 setPosATL [4869.18,4633.21,0];
	_this setTriggerArea [6,6,141.544,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item361 = objNull;
if (_layer359 && _layer355 && _layer366) then {
	_item361 = createTrigger ["EmptyDetectorArea10x10",[4891.2,4616.93,7.62939e-006],true];
	_this = _item361;
	_triggers pushback _this;
	_triggerIDs pushback 361;
	_item361 setPosATL [4891.2,4616.93,7.62939e-006];
	_this setTriggerArea [10,10,230.457,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
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

private _item357 = objNull;
if (_layer355 && _layer366) then {
	_item357 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[4835.57,4578.83,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item357;
	_logics pushback _this;
	_logicIDs pushback 357;
	_this setPosWorld [4835.57,4578.83,37.8585];
	_this setVectorDirAndUp [[0,0.999988,0.00499145],[0.0100007,-0.0049912,0.999938]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer359) then {missionNamespace setVariable ["base_mil_Repair Station_1",[[_item360,_item361],[]]];};
if (_layer355) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials_1",[[_item356,_item357,_item358,_item360,_item361,_item362,_item379,_item380],[]]];};
if (_layer366) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item356,_item357,_item358,_item360,_item361,_item362,_item379,_item380],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item360) then {
		this = _item360;
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
	if !(isnull _item362) then {
		this = _item362;
		call{arsenals pushBack this};
	};
	if !(isnull _item379) then {
		this = _item379;
		call{arsenals pushBack this};
	};
	if !(isnull _item380) then {
		this = _item380;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]


