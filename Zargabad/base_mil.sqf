// Export of 'base_mil.zargabad' by Mal on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer8 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer4 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
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

private _item1 = objNull;
if (_layer0 && _layer11) then {
	_item1 = createVehicle ["Land_InfoStand_V1_F",[4799.72,6127.79,0],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [4799.72,6127.79,30.078];
	_this setVectorDirAndUp [[-0.998662,-0.051713,0.000646273],[0,0.0124963,0.999922]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item5 = objNull;
if (_layer4 && _layer0 && _layer11) then {
	_item5 = createVehicle ["Land_RepairDepot_01_tan_F",[4828.36,6195.48,0],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [4828.34,6195.47,32.368];
	_this setVectorDirAndUp [[-0.94334,0.331782,-0.00542025],[-0.00750107,-0.00499131,0.999959]];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item7 = objNull;
if (_layer0 && _layer11) then {
	_item7 = createVehicle ["B_supplyCrate_F",[4842.08,6101.66,0.663731],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [4842.08,6101.66,31.0411];
	_this setVectorDirAndUp [[0.999987,-0.00505485,0],[0,0,1]];
	_this enableSimulation false;
	[_this,"[[[[""arifle_MXC_F"",""arifle_MXM_F"",""arifle_MX_F"",""arifle_MX_GL_F"",""arifle_MX_SW_F"",""arifle_SDAR_F"",""hgun_P07_F"",""hgun_Pistol_heavy_01_F"",""launch_NLAW_F"",""launch_Titan_F"",""launch_Titan_short_F"",""SMG_01_F"",""srifle_EBR_F"",""srifle_LRR_camo_F"",""srifle_LRR_F"",""FirstAidKit"",""Medikit""],[4,2,8,4,4,2,2,2,2,2,2,2,2,2,2,10,1]],[[""100Rnd_65x39_caseless_mag_Tracer"",""11Rnd_45ACP_Mag"",""16Rnd_9x21_Mag"",""1Rnd_HE_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokePurple_Grenade_shell"",""1Rnd_SmokeRed_Grenade_shell"",""1Rnd_SmokeYellow_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""20Rnd_556x45_UW_mag"",""20Rnd_762x51_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""30Rnd_556x45_Stanag_red"",""30Rnd_65x39_caseless_mag"",""3Rnd_HE_Grenade_shell"",""7Rnd_408_Mag"",""APERSBoundingMine_Range_Mag"",""APERSMine_Range_Mag"",""APERSTripMine_Wire_Mag"",""ATMine_Range_Mag"",""B_IR_Grenade"",""ClaymoreDirectionalMine_Remote_Mag"",""DemoCharge_Remote_Mag"",""HandGrenade"",""Laserbatteries"",""MiniGrenade"",""NLAW_F"",""SatchelCharge_Remote_Mag"",""SLAMDirectionalMine_Wire_Mag"",""SmokeShell"",""SmokeShellBlue"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellPurple"",""SmokeShellRed"",""SmokeShellYellow"",""Titan_AA"",""Titan_AP"",""Titan_AT"",""UGL_FlareGreen_F"",""UGL_FlareWhite_F""],[16,14,14,15,2,2,2,2,2,2,2,6,24,14,6,52,3,12,5,5,5,5,8,5,5,24,5,24,8,5,5,2,2,2,2,2,2,2,6,6,6,2,2]],[[""Binocular"",""Laserdesignator"",""Rangefinder"",""acc_flashlight"",""acc_pointer_IR"",""ItemGPS"",""MineDetector"",""muzzle_snds_acp"",""muzzle_snds_B"",""muzzle_snds_H"",""muzzle_snds_H_SW"",""muzzle_snds_L"",""optic_Aco"",""optic_Aco_smg"",""optic_dms"",""optic_Hamr"",""optic_Holosight"",""optic_lrps"",""optic_MRD"",""optic_NVS"",""optic_SOS"",""optic_tws"",""optic_tws_mg"",""ToolKit""],[1,1,1,5,5,5,1,5,5,5,1,5,2,2,2,2,2,2,2,2,2,2,2,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item10 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item10 = createVehicle ["Land_BarGate_F",[4781.38,6142.41,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [4781.38,6142.41,33.9537];
	_this setVectorDirAndUp [[0.999945,-0.010194,0.00248962],[-0.00248975,0,0.999997]];
	gate = _this;
	_this setVehicleVarName "gate";
};

private _item36 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item36 = createVehicle ["Land_BarGate_F",[4845.25,6143.23,0.00261116],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [4845.25,6143.23,33.9199];
	_this setVectorDirAndUp [[-0.999291,0.0376536,0],[0,0,1]];
	gate_1 = _this;
	_this setVehicleVarName "gate_1";
};

private _item12 = objNull;
if (_layer0 && _layer11) then {
	_item12 = createVehicle ["B_supplyCrate_F",[4841.85,6100.95,4.98589],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [4841.85,6100.95,35.3592];
	_this setVectorDirAndUp [[0.999987,-0.00505485,0],[0,0,1]];
	_this enableSimulation false;
	[_this,"[[[[""arifle_MXC_F"",""arifle_MXM_F"",""arifle_MX_F"",""arifle_MX_GL_F"",""arifle_MX_SW_F"",""arifle_SDAR_F"",""hgun_P07_F"",""hgun_Pistol_heavy_01_F"",""launch_NLAW_F"",""launch_Titan_F"",""launch_Titan_short_F"",""SMG_01_F"",""srifle_EBR_F"",""srifle_LRR_camo_F"",""srifle_LRR_F"",""FirstAidKit"",""Medikit""],[4,2,8,4,4,2,2,2,2,2,2,2,2,2,2,10,1]],[[""100Rnd_65x39_caseless_mag_Tracer"",""11Rnd_45ACP_Mag"",""16Rnd_9x21_Mag"",""1Rnd_HE_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokePurple_Grenade_shell"",""1Rnd_SmokeRed_Grenade_shell"",""1Rnd_SmokeYellow_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""20Rnd_556x45_UW_mag"",""20Rnd_762x51_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""30Rnd_556x45_Stanag_red"",""30Rnd_65x39_caseless_mag"",""3Rnd_HE_Grenade_shell"",""7Rnd_408_Mag"",""APERSBoundingMine_Range_Mag"",""APERSMine_Range_Mag"",""APERSTripMine_Wire_Mag"",""ATMine_Range_Mag"",""B_IR_Grenade"",""ClaymoreDirectionalMine_Remote_Mag"",""DemoCharge_Remote_Mag"",""HandGrenade"",""Laserbatteries"",""MiniGrenade"",""NLAW_F"",""SatchelCharge_Remote_Mag"",""SLAMDirectionalMine_Wire_Mag"",""SmokeShell"",""SmokeShellBlue"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellPurple"",""SmokeShellRed"",""SmokeShellYellow"",""Titan_AA"",""Titan_AP"",""Titan_AT"",""UGL_FlareGreen_F"",""UGL_FlareWhite_F""],[16,14,14,15,2,2,2,2,2,2,2,6,24,14,6,52,3,12,5,5,5,5,8,5,5,24,5,24,8,5,5,2,2,2,2,2,2,2,6,6,6,2,2]],[[""Binocular"",""Laserdesignator"",""Rangefinder"",""acc_flashlight"",""acc_pointer_IR"",""ItemGPS"",""MineDetector"",""muzzle_snds_acp"",""muzzle_snds_B"",""muzzle_snds_H"",""muzzle_snds_H_SW"",""muzzle_snds_L"",""optic_Aco"",""optic_Aco_smg"",""optic_dms"",""optic_Hamr"",""optic_Holosight"",""optic_lrps"",""optic_MRD"",""optic_NVS"",""optic_SOS"",""optic_tws"",""optic_tws_mg"",""ToolKit""],[1,1,1,5,5,5,1,5,5,5,1,5,2,2,2,2,2,2,2,2,2,2,2,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createVehicle ["Land_Medevac_house_V1_F",[4813.95,6096.72,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [4813.95,6096.72,30.1939];
	_this setVectorDirAndUp [[-0.129445,-0.991587,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item15 = objNull;
if (_layerRoot) then {
	_item15 = createVehicle ["Land_Medevac_house_V1_F",[4824.47,6097.08,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [4824.47,6097.08,30.1174];
	_this setVectorDirAndUp [[0.239841,-0.970812,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item16 = objNull;
if (_layerRoot) then {
	_item16 = createVehicle ["Land_fortified_nest_small_EP1",[4782.24,6134.91,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [4782.24,6134.91,30.7968];
	_this setVectorDirAndUp [[0.999971,-0.0072861,0.00232638],[-0.00248975,-0.0224939,0.999744]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item18 = objNull;
if (_layerRoot) then {
	_item18 = createVehicle ["Land_Fort_Watchtower_EP1",[4784.75,6150.32,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [4784.75,6150.32,32.094];
	_this setVectorDirAndUp [[0.999097,0.0424719,0.0012208],[-0.00249582,0.0299802,0.999547]];
	_this allowdamage false;;
};

private _item19 = objNull;
if (_layerRoot) then {
	_item19 = createVehicle ["zed2_civil",[4846.52,6150.4,-0.134556],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [4846.52,6150.4,31.1871];
	_this setVectorDirAndUp [[-0.999471,0.0325098,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item20 = objNull;
if (_layerRoot) then {
	_item20 = createVehicle ["zed2_civil",[4845.99,6136.3,-0.148787],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [4845.99,6136.3,31.2012];
	_this setVectorDirAndUp [[-0.999471,0.0325098,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item21 = objNull;
if (_layerRoot) then {
	_item21 = createVehicle ["zed2_civil",[4845.86,6130.13,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [4845.86,6130.13,31.1768];
	_this setVectorDirAndUp [[-0.999471,0.0325098,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item22 = objNull;
if (_layerRoot) then {
	_item22 = createVehicle ["zed2_civil",[4845.73,6123.95,0.00807571],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [4845.73,6123.95,31.0794];
	_this setVectorDirAndUp [[-0.999471,0.0325098,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item23 = objNull;
if (_layerRoot) then {
	_item23 = createVehicle ["zed2_civil",[4842.6,6121.04,0.0362301],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [4842.6,6121.04,31.0444];
	_this setVectorDirAndUp [[0.00618995,0.999981,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item24 = objNull;
if (_layerRoot) then {
	_item24 = createVehicle ["zed2_civil",[4823.89,6205.28,0.00952911],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [4823.89,6205.28,31.4645];
	_this setVectorDirAndUp [[-0.409978,-0.912095,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item25 = objNull;
if (_layerRoot) then {
	_item25 = createVehicle ["zed2_civil",[4829.55,6202.81,0.0139999],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [4829.55,6202.81,31.4401];
	_this setVectorDirAndUp [[-0.409978,-0.912095,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item26 = objNull;
if (_layerRoot) then {
	_item26 = createVehicle ["zed2_civil",[4835.22,6200.35,-0.099411],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [4835.22,6200.35,31.3427];
	_this setVectorDirAndUp [[-0.409978,-0.912095,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item27 = objNull;
if (_layerRoot) then {
	_item27 = createVehicle ["zed2_civil",[4807.09,6212.95,0.0304298],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [4807.09,6212.95,31.5019];
	_this setVectorDirAndUp [[-0.426562,-0.904458,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item28 = objNull;
if (_layerRoot) then {
	_item28 = createVehicle ["zed2_civil",[4812.7,6210.38,-0.00642776],[],0,"CAN_COLLIDE"];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [4812.7,6210.38,31.4774];
	_this setVectorDirAndUp [[-0.426562,-0.904458,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item29 = objNull;
if (_layerRoot) then {
	_item29 = createVehicle ["zed2_civil",[4818.32,6207.82,-0.0960388],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [4818.32,6207.82,31.3801];
	_this setVectorDirAndUp [[-0.426562,-0.904458,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item30 = objNull;
if (_layerRoot) then {
	_item30 = createVehicle ["zed2_civil",[4802.47,6216.63,2.09808e-005],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [4802.47,6216.63,31.429];
	_this setVectorDirAndUp [[-0.787022,-0.616925,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item31 = objNull;
if (_layerRoot) then {
	_item31 = createVehicle ["zed2_civil",[4850.97,6185.48,-0.00203514],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [4850.97,6185.48,31.34];
	_this setVectorDirAndUp [[-0.84686,0.531817,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item32 = objNull;
if (_layerRoot) then {
	_item32 = createVehicle ["zed2_civil",[4847.96,6180.31,-0.00184631],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [4847.96,6180.31,31.3352];
	_this setVectorDirAndUp [[-0.876836,0.48079,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item33 = objNull;
if (_layerRoot) then {
	_item33 = createVehicle ["zed2_civil",[4840.96,6198.33,0.00644875],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [4840.96,6198.33,31.4158];
	_this setVectorDirAndUp [[-0.234311,-0.972162,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item37 = objNull;
if (_layerRoot) then {
	_item37 = createVehicle ["HeliH",[4795.62,6058.68,0.476107],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [4795.62,6058.68,29.958];
	_this setVectorDirAndUp [[-0.999685,0.0251107,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item38 = objNull;
if (_layerRoot) then {
	_item38 = createVehicle ["HeliH",[4806.96,6171.27,-0.00406837],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [4806.96,6171.27,29.7833];
	_this setVectorDirAndUp [[-0.826243,0.563314,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item39 = objNull;
if (_layerRoot) then {
	_item39 = createVehicle ["HeliH",[4794.57,6039.82,-0.00388336],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [4794.57,6039.82,29.4083];
	_this setVectorDirAndUp [[-0.998878,0.0473594,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item40 = objNull;
if (_layerRoot) then {
	_item40 = createVehicle ["HeliH",[4814.98,6040.16,-0.0279484],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [4814.98,6040.16,29.3863];
	_this setVectorDirAndUp [[-0.998554,0.0537651,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item41 = objNull;
if (_layerRoot) then {
	_item41 = createVehicle ["HeliH",[4815.44,6059.31,0.0022049],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [4815.44,6059.31,29.4953];
	_this setVectorDirAndUp [[-0.997053,0.0767128,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item43 = objNull;
if (_layerRoot) then {
	_item43 = createVehicle ["CamoNet_OPFOR_open_F",[4795.69,6115.69,0.0166645],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [4795.69,6115.69,30.806];
	_this setVectorDirAndUp [[0.99377,0.111446,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item44 = objNull;
if (_layerRoot) then {
	_item44 = createVehicle ["CamoNet_OPFOR_open_F",[4804.84,6118.45,-0.00159264],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [4804.84,6118.45,30.7414];
	_this setVectorDirAndUp [[-0.959657,-0.281172,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item45 = objNull;
if (_layerRoot) then {
	_item45 = createSimpleObject ["Land_CampingChair_V2_F",[4797.45,6119.44,29.6118]];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [4797.45,6119.44,30.1183];
	_this setVectorDirAndUp [[0.947178,0.320708,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item46 = objNull;
if (_layerRoot) then {
	_item46 = createSimpleObject ["Land_CampingChair_V2_F",[4797.85,6118.49,29.6006]];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [4797.85,6118.49,30.1071];
	_this setVectorDirAndUp [[0.947178,0.320708,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item47 = objNull;
if (_layerRoot) then {
	_item47 = createSimpleObject ["Land_CampingChair_V2_F",[4798.85,6113.03,29.5999]];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [4798.85,6113.03,30.1064];
	_this setVectorDirAndUp [[0.999968,0.00797843,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item48 = objNull;
if (_layerRoot) then {
	_item48 = createSimpleObject ["Land_CampingChair_V2_F",[4798.9,6114.18,29.5593]];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [4798.9,6114.18,30.0658];
	_this setVectorDirAndUp [[0.999968,0.00797843,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item49 = objNull;
if (_layerRoot) then {
	_item49 = createSimpleObject ["Land_CampingTable_F",[4804.03,6121.02,29.5834]];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [4804.03,6121.02,29.9949];
	_this setVectorDirAndUp [[0.944169,0.32946,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item50 = objNull;
if (_layerRoot) then {
	_item50 = createSimpleObject ["Land_CampingTable_F",[4804.78,6121.29,29.5847]];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [4804.78,6121.29,29.9962];
	_this setVectorDirAndUp [[0.944169,0.32946,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item51 = objNull;
if (_layerRoot) then {
	_item51 = createSimpleObject ["Land_CampingTable_F",[4805.76,6116.62,29.5919]];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [4805.76,6116.62,30.0034];
	_this setVectorDirAndUp [[0.547434,0.836849,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item52 = objNull;
if (_layerRoot) then {
	_item52 = createSimpleObject ["Land_CampingTable_F",[4806.2,6117.29,29.5932]];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [4806.2,6117.29,30.0047];
	_this setVectorDirAndUp [[0.547434,0.836849,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item53 = objNull;
if (_layerRoot) then {
	_item53 = createSimpleObject ["Land_CampingTable_F",[4794.4,6112.59,29.5582]];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [4794.4,6112.59,29.9698];
	_this setVectorDirAndUp [[0.955317,-0.295582,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item54 = objNull;
if (_layerRoot) then {
	_item54 = createSimpleObject ["Land_CampingTable_F",[4793.17,6118.53,29.6233]];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [4793.17,6118.53,30.0349];
	_this setVectorDirAndUp [[0.707447,0.706766,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item55 = objNull;
if (_layerRoot) then {
	_item55 = createSimpleObject ["Land_CampingTable_F",[4794.13,6116.62,29.6064]];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [4794.13,6116.62,30.0179];
	_this setVectorDirAndUp [[0.979066,0.203544,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item56 = objNull;
if (_layerRoot) then {
	_item56 = createSimpleObject ["Land_CampingTable_F",[4794.53,6114.71,29.5901]];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [4794.53,6114.71,30.0017];
	_this setVectorDirAndUp [[0.979066,0.203544,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item58 = objNull;
if (_layerRoot) then {
	_item58 = createSimpleObject ["Land_CampingChair_V2_F",[4807.17,6117.55,29.5835]];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [4807.17,6117.55,30.09];
	_this setVectorDirAndUp [[0.947178,0.320708,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item59 = objNull;
if (_layerRoot) then {
	_item59 = createSimpleObject ["Land_CampingChair_V2_F",[4805.14,6121.89,29.6156]];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [4805.14,6121.89,30.1221];
	_this setVectorDirAndUp [[0.947178,0.320708,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item60 = objNull;
if (_layerRoot) then {
	_item60 = createSimpleObject ["Land_CampingChair_V2_F",[4803.27,6121.33,29.5579]];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [4803.27,6121.33,30.0643];
	_this setVectorDirAndUp [[-0.995493,-0.0948304,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item61 = objNull;
if (_layerRoot) then {
	_item61 = createSimpleObject ["Land_CampingChair_V2_F",[4804.94,6116.24,29.5986]];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [4804.94,6116.24,30.1051];
	_this setVectorDirAndUp [[-0.866361,-0.499418,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item62 = objNull;
if (_layerRoot) then {
	_item62 = createSimpleObject ["Land_CampingChair_V2_F",[4805.94,6115.37,29.5902]];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [4805.94,6115.37,30.0967];
	_this setVectorDirAndUp [[0.0723986,-0.997376,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item63 = objNull;
if (_layerRoot) then {
	_item63 = createSimpleObject ["Land_MobilePhone_smart_F",[4806.86,6116.86,30.4088]];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [4806.86,6116.86,30.4132];
	_this setVectorDirAndUp [[0.99986,0.0167574,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\structures_f\items\electronics\data\electronics_screens_mobilephone_smart_co.paa"];
};

private _item64 = objNull;
if (_layerRoot) then {
	_item64 = createSimpleObject ["Land_Laptop_Intel_01_F",[4806.51,6117.2,30.4088]];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [4806.51,6117.2,30.5648];
	_this setVectorDirAndUp [[0.819703,0.572789,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\missions_f_oldman\data\img\screens\csatntb_co.paa"];
};

private _item65 = objNull;
if (_layerRoot) then {
	_item65 = createSimpleObject ["Land_PortableSolarPanel_01_olive_F",[4805.61,6117.07,30.4074]];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [4805.61,6117.07,30.4303];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item66 = objNull;
if (_layerRoot) then {
	_item66 = createSimpleObject ["Land_Computer_01_olive_F",[4804.97,6120.7,30.4003]];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [4804.97,6120.7,30.445];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item67 = objNull;
if (_layerRoot) then {
	_item67 = createSimpleObject ["Fridge_01_closed_F",[4803.48,6119.84,29.564]];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [4803.48,6119.84,30.0825];
	_this setVectorDirAndUp [[-0.875055,0.484024,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item68 = objNull;
if (_layerRoot) then {
	_item68 = createSimpleObject ["Land_Portable_generator_F",[4805.09,6120.9,29.596]];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [4805.09,6120.9,29.9552];
	_this setVectorDirAndUp [[0.318684,-0.947861,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item69 = objNull;
if (_layerRoot) then {
	_item69 = createSimpleObject ["Land_MultiScreenComputer_01_black_F",[4804.68,6121.64,30.4003]];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [4804.68,6121.64,30.6504];
	_this setVectorDirAndUp [[-0.983407,-0.181414,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [1,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
	_this setObjectTextureGlobal [2,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
	_this setObjectTextureGlobal [3,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
};

private _item70 = objNull;
if (_layerRoot) then {
	_item70 = createSimpleObject ["Land_WaterCooler_01_old_F",[4802.04,6111.8,29.5826]];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [4802.04,6111.8,30.3146];
	_this setVectorDirAndUp [[0.711444,-0.702743,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item71 = objNull;
if (_layerRoot) then {
	_item71 = createSimpleObject ["SatelliteAntenna_01_Small_Sand_F",[4793.06,6118.71,30.4389]];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [4793.06,6118.71,30.9439];
	_this setVectorDirAndUp [[-0.853863,0.520497,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item72 = objNull;
if (_layerRoot) then {
	_item72 = createSimpleObject ["Land_Tablet_02_black_F",[4794.11,6116.47,30.422]];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [4794.11,6116.47,30.4561];
	_this setVectorDirAndUp [[-0.995441,0.0953772,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\structures_f_heli\items\electronics\data\tablet_screen_co.paa"];
};

private _item73 = objNull;
if (_layerRoot) then {
	_item73 = createSimpleObject ["Land_SatellitePhone_F",[4794.41,6112.63,30.3738]];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [4794.41,6112.63,30.5634];
	_this setVectorDirAndUp [[0.959242,-0.282587,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item74 = objNull;
if (_layerRoot) then {
	_item74 = createSimpleObject ["Land_Router_01_black_F",[4793.57,6118.22,30.4389]];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [4793.57,6118.22,30.5547];
	_this setVectorDirAndUp [[-0.557667,-0.830065,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item75 = objNull;
if (_layerRoot) then {
	_item75 = createSimpleObject ["Land_PortableServer_01_sand_F",[4794.32,6115.18,29.6033]];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [4794.32,6115.18,29.7763];
	_this setVectorDirAndUp [[0.99491,0.100504,0.00722868],[-0.00499145,-0.0224937,0.999735]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Lights_Off_Source',0,true];
	_this animateSource ['Server_Move_Source',0,true];
	_this animateSource ['Server_Hide_Source',0,true];
};

private _item76 = objNull;
if (_layerRoot) then {
	_item76 = createSimpleObject ["Land_MultiScreenComputer_01_sand_F",[4794.73,6114.34,30.4057]];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [4794.73,6114.34,30.6558];
	_this setVectorDirAndUp [[0.999998,0.00193234,0],[0,0,1]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [1,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
	_this setObjectTextureGlobal [2,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
	_this setObjectTextureGlobal [3,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
};

private _item77 = objNull;
if (_layerRoot) then {
	_item77 = createSimpleObject ["Land_TripodScreen_01_large_sand_F",[4791.55,6117.39,29.6169]];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [4791.55,6117.39,30.6601];
	_this setVectorDirAndUp [[0.998355,-0.0568172,-0.00763043],[0.00750107,-0.00248968,0.999969]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,""];
};

private _item78 = objNull;
if (_layerRoot) then {
	_item78 = createSimpleObject ["Land_TripodScreen_01_large_sand_F",[4792.18,6113.49,29.5954]];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [4792.18,6113.49,30.6385];
	_this setVectorDirAndUp [[0.951862,0.306352,-0.0103667],[0.0124963,-0.00499106,0.999909]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,""];
};

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

private _item90 = objNull;
if (_layerRoot) then {
	_item90 = createVehicle ["CUP_str_lipa",[4754.16,6159.14,0],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [4754.16,6159.14,40.0418];
	_this setVectorDirAndUp [[0.206888,-0.978241,-0.0155656],[-0.00750107,-0.0174954,0.999819]];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item92 = objNull;
if (_layerRoot) then {
	_item92 = createVehicle ["CUP_hrusen2",[4757.56,6153.31,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [4757.56,6153.31,33.2186];
	_this setVectorDirAndUp [[0,0.999972,0.00750107],[0,-0.00750107,0.999972]];
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

private _item209 = objNull;
if (_layerRoot) then {
	_item209 = createVehicle ["CUP_Krovi_long",[4761.3,6151.24,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [4761.3,6151.24,30.5367];
	_this setVectorDirAndUp [[0,0.998752,-0.0499373],[-0.00750107,0.0499359,0.998724]];
	_this enableSimulation false;
	_this allowdamage false;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item3 = objNull;
if (_layer0 && _layer11) then {
	_item3 = createTrigger ["EmptyDetectorArea10x10",[4818.82,6103.13,0],true];
	_this = _item3;
	_triggers pushback _this;
	_triggerIDs pushback 3;
	_item3 setPosATL [4818.82,6103.13,0];
	_this setTriggerArea [10,10,179.009,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item6 = objNull;
if (_layer4 && _layer0 && _layer11) then {
	_item6 = createTrigger ["EmptyDetectorArea10x10",[4825.44,6183.77,0],true];
	_this = _item6;
	_triggers pushback _this;
	_triggerIDs pushback 6;
	_item6 setPosATL [4825.44,6183.77,0];
	_this setTriggerArea [10,10,-160.689,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};

private _item9 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item9 = createTrigger ["EmptyDetectorArea10x10",[4781.19,6142.02,1.90735e-006],true];
	_this = _item9;
	_triggers pushback _this;
	_triggerIDs pushback 9;
	_item9 setPosATL [4781.19,6142.02,1.90735e-006];
	_this setTriggerArea [5,20,85.7486,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item35 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item35 = createTrigger ["EmptyDetectorArea10x10",[4845.45,6143.61,0.00356483],true];
	_this = _item35;
	_triggers pushback _this;
	_triggerIDs pushback 35;
	_item35 setPosATL [4845.45,6143.61,0.00356483];
	_this setTriggerArea [5,20,267.322,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
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

private _item2 = objNull;
if (_layer0 && _layer11) then {
	_item2 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[4818.52,6129.65,-0.0551949],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_logics pushback _this;
	_logicIDs pushback 2;
	_this setPosWorld [4818.52,6129.65,29.6901];
	_this setVectorDirAndUp [[0.608254,0.793528,0.0184487],[-0.00750107,-0.017495,0.999819]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer8) then {missionNamespace setVariable ["base_mil_bargate",[[_item9,_item10,_item35,_item36],[]]];};
if (_layer4) then {missionNamespace setVariable ["base_mil_Repair Station",[[_item5,_item6],[]]];};
if (_layer0) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item7,_item9,_item10,_item35,_item36,_item12],[]]];};
if (_layer11) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item7,_item9,_item10,_item35,_item36,_item12],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item5) then {
		this = _item5;
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
	if !(isnull _item7) then {
		this = _item7;
		call{arsenals pushBack this};
	};
	if !(isnull _item12) then {
		this = _item12;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
