// Export of 'altis%20major%20power%20base.Altis' by Pvt.Heart on v0.9

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
	_item1 = createVehicle ["Land_InfoStand_V1_F",[26765,24628.5,-0.0018425],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [26764.9,24628.5,21.7243];
	_this setVectorDirAndUp [[-0.777806,0.622711,-0.0851387],[-0.0665191,0.0531395,0.996369]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item5 = objNull;
if (_layer4 && _layer0 && _layer11) then {
	_item5 = createVehicle ["Land_RepairDepot_01_tan_F",[26776,24693.5,-0.00232506],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [26775.9,24693.6,21.5912];
	_this setVectorDirAndUp [[-0.764326,0.643779,-0.0368087],[-0.0133317,0.0412942,0.999058]];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item7 = objNull;
if (_layer0 && _layer11) then {
	_item7 = createVehicle ["B_supplyCrate_F",[26774.7,24651.9,8.58307e-005],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [26774.7,24651.9,21.573];
	_this setVectorDirAndUp [[0.606321,0.795215,0.00283753],[-0.0186628,0.0106622,0.999769]];
	_this enableSimulation false;
	[_this,"[[[[""arifle_MXC_F"",""arifle_MXM_F"",""arifle_MX_F"",""arifle_MX_GL_F"",""arifle_MX_SW_F"",""arifle_SDAR_F"",""hgun_P07_F"",""hgun_Pistol_heavy_01_F"",""launch_NLAW_F"",""launch_Titan_F"",""launch_Titan_short_F"",""SMG_01_F"",""srifle_EBR_F"",""srifle_LRR_camo_F"",""srifle_LRR_F"",""FirstAidKit"",""Medikit""],[4,2,8,4,4,2,2,2,2,2,2,2,2,2,2,10,1]],[[""100Rnd_65x39_caseless_mag_Tracer"",""11Rnd_45ACP_Mag"",""16Rnd_9x21_Mag"",""1Rnd_HE_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokePurple_Grenade_shell"",""1Rnd_SmokeRed_Grenade_shell"",""1Rnd_SmokeYellow_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""20Rnd_556x45_UW_mag"",""20Rnd_762x51_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""30Rnd_556x45_Stanag_red"",""30Rnd_65x39_caseless_mag"",""3Rnd_HE_Grenade_shell"",""7Rnd_408_Mag"",""APERSBoundingMine_Range_Mag"",""APERSMine_Range_Mag"",""APERSTripMine_Wire_Mag"",""ATMine_Range_Mag"",""B_IR_Grenade"",""ClaymoreDirectionalMine_Remote_Mag"",""DemoCharge_Remote_Mag"",""HandGrenade"",""Laserbatteries"",""MiniGrenade"",""NLAW_F"",""SatchelCharge_Remote_Mag"",""SLAMDirectionalMine_Wire_Mag"",""SmokeShell"",""SmokeShellBlue"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellPurple"",""SmokeShellRed"",""SmokeShellYellow"",""Titan_AA"",""Titan_AP"",""Titan_AT"",""UGL_FlareGreen_F"",""UGL_FlareWhite_F""],[16,14,14,15,2,2,2,2,2,2,2,6,24,14,6,52,3,12,5,5,5,5,8,5,5,24,5,24,8,5,5,2,2,2,2,2,2,2,6,6,6,2,2]],[[""Binocular"",""Laserdesignator"",""Rangefinder"",""acc_flashlight"",""acc_pointer_IR"",""ItemGPS"",""MineDetector"",""muzzle_snds_acp"",""muzzle_snds_B"",""muzzle_snds_H"",""muzzle_snds_H_SW"",""muzzle_snds_L"",""optic_Aco"",""optic_Aco_smg"",""optic_dms"",""optic_Hamr"",""optic_Holosight"",""optic_lrps"",""optic_MRD"",""optic_NVS"",""optic_SOS"",""optic_tws"",""optic_tws_mg"",""ToolKit""],[1,1,1,5,5,5,1,5,5,5,1,5,2,2,2,2,2,2,2,2,2,2,2,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item10 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item10 = createVehicle ["Land_BarGate_F",[26849,24460.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [26849,24460.6,30.8177];
	_this setVectorDirAndUp [[0.795607,-0.605606,0.0158373],[-0.00265204,0.0226602,0.99974]];
	gate = _this;
	_this setVehicleVarName "gate";
};

private _item13 = objNull;
if (_layerRoot) then {
	_item13 = createVehicle ["INS_WarfareBFieldhHospital",[26794.8,24672.8,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [26794.8,24672.8,19.9538];
	_this setVectorDirAndUp [[0.68231,0.730788,-0.0200629],[-0.012,0.0386352,0.999181]];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createVehicle ["PowGen_Big",[26758.1,24680.8,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [26758.1,24680.8,21.6563];
	_this setVectorDirAndUp [[0,0.999353,-0.0359766],[0.0359766,0.0359533,0.998706]];
};

private _item16 = objNull;
if (_layerRoot) then {
	_item16 = createVehicle ["Land_New_WiredFence_10m_F",[26854.8,24468.4,0],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [26854.8,24468.4,27.7864];
	_this setVectorDirAndUp [[-0.750088,0.661339,0],[0,0,1]];
};

private _item17 = objNull;
if (_layerRoot) then {
	_item17 = createVehicle ["Land_New_WiredFence_10m_F",[26842.2,24452.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [26842.2,24452.8,28.089];
	_this setVectorDirAndUp [[-0.758897,0.651211,0],[0,0,1]];
};

private _item18 = objNull;
if (_layerRoot) then {
	_item18 = createVehicle ["Land_Fort_Watchtower",[26834.1,24449.4,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [26834.1,24449.4,29.0785];
	_this setVectorDirAndUp [[-0.743679,0.668246,-0.0197168],[-0.0133317,0.014663,0.999804]];
};

private _item19 = objNull;
if (_layerRoot) then {
	_item19 = createVehicle ["Land_fort_bagfence_round",[26859.2,24474.9,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [26859.2,24474.9,26.73];
	_this setVectorDirAndUp [[0.996344,0.0852967,0.0047034],[-0.00665923,0.0226598,0.999721]];
};

private _item24 = objNull;
if (_layerRoot) then {
	_item24 = createVehicle ["Land_Com_tower_ep1",[26701.4,24646.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [26701.4,24646.5,35.1169];
	_this setVectorDirAndUp [[0.567733,0.822044,-0.0438422],[0,0.0532575,0.998581]];
};

private _item25 = objNull;
if (_layerRoot) then {
	_item25 = createVehicle ["Land_vodni_vez",[26724.2,24646.4,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [26724.2,24646.4,23.6768];
	_this setVectorDirAndUp [[-0.771337,-0.63642,-0.00289644],[-0.00265204,-0.00133687,0.999996]];
};

private _item27 = objNull;
if (_layerRoot) then {
	_item27 = createVehicle ["Land_Army_hut_storrage",[26738.6,24546.4,0],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [26738.6,24546.4,24.6562];
	_this setVectorDirAndUp [[0.740038,-0.672013,0.0272601],[-0.018666,0.0199942,0.999626]];
};

private _item29 = objNull;
if (_layerRoot) then {
	_item29 = createVehicle ["Land_Army_hut_storrage",[26729.6,24554.1,0],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [26729.6,24554.1,24.3213];
	_this setVectorDirAndUp [[0.765343,-0.643077,0.0264972],[-0.0133317,0.0253205,0.99959]];
};

private _item30 = objNull;
if (_layerRoot) then {
	_item30 = createVehicle ["Land_HBarrier5",[26841.1,24473.3,0],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [26841.1,24473.3,26.927];
	_this setVectorDirAndUp [[-0.753407,0.656443,-0.0382211],[-0.0239937,0.0306425,0.999242]];
};

private _item31 = objNull;
if (_layerRoot) then {
	_item31 = createVehicle ["Land_HBarrier5",[26822.7,24476.7,0],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [26822.7,24476.7,26.4728];
	_this setVectorDirAndUp [[-0.742239,0.669282,-0.0338048],[-0.0106697,0.0386358,0.999196]];
};

private _item37 = objNull;
if (_layerRoot) then {
	_item37 = createVehicle ["Land_Vez",[27239.1,24921.4,7.82013e-005],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [27239.1,24921.4,30.719];
	_this setVectorDirAndUp [[0.776827,-0.629552,0.0142965],[-0.0399685,-0.0266358,0.998846]];
};

private _item38 = objNull;
if (_layerRoot) then {
	_item38 = createVehicle ["Land_Fuel_tank_big",[26765.4,24665.6,0],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [26765.4,24665.6,21.302];
	_this setVectorDirAndUp [[0.663396,0.74796,-0.0214934],[0.00533751,0.0239934,0.999698]];
};

private _item40 = objNull;
if (_layerRoot) then {
	_item40 = createVehicle ["Land_ScrapHeap_1_F",[26770.5,24697.3,0.000396729],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [26770.5,24697.3,19.5205];
	_this setVectorDirAndUp [[0.653734,-0.756335,0.0242839],[0.0106641,0.0412955,0.99909]];
};

private _item41 = objNull;
if (_layerRoot) then {
	_item41 = createVehicle ["Land_TankTracks_01_long_F",[26779.8,24690.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [26779.7,24690.7,19.844];
	_this setVectorDirAndUp [[0,0.999147,-0.0412979],[-0.0133317,0.0412942,0.999058]];
};

private _item42 = objNull;
if (_layerRoot) then {
	_item42 = createVehicle ["Land_PortableDesk_01_olive_F",[26771.1,24654.4,0.496929],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [26771.1,24654.4,21.5268];
	_this setVectorDirAndUp [[-0.71903,-0.694978,0.000785025],[0.00109178,0,0.999999]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
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

private _item43 = objNull;
if (_layerRoot) then {
	_item43 = createVehicle ["Land_Laptop_02_unfolded_F",[26770.4,24655.1,1.40461],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [26770.4,24655.1,22.1002];
	_this setVectorDirAndUp [[0.973939,0.226808,-0.00106333],[0.00109178,0,0.999999]];
	_this setObjectTextureGlobal [0,"a3\props_f_argo\items\electronics\data\laptop_02_screen_co.paa"];
};

private _item44 = objNull;
if (_layerRoot) then {
	_item44 = createVehicle ["Land_Pallet_MilBoxes_F",[26778.4,24649.6,0.209944],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [26778.4,24649.6,21.5248];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item45 = objNull;
if (_layerRoot) then {
	_item45 = createVehicle ["Land_PortableCabinet_01_7drawers_sand_F",[26770.3,24656.1,0.530657],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [26770.3,24656.1,21.5019];
	_this setVectorDirAndUp [[0.639725,0.768604,-0.00069844],[0.00109178,0,0.999999]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
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

private _item46 = objNull;
if (_layerRoot) then {
	_item46 = createVehicle ["Land_DeskChair_01_black_F",[26769.6,24655.1,0.532383],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [26769.6,24655.1,21.3055];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item48 = objNull;
if (_layerRoot) then {
	_item48 = createVehicle ["Land_PaperBox_open_full_F",[26776.9,24651.3,0.300766],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [26776.9,24651.3,21.6843];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item49 = objNull;
if (_layerRoot) then {
	_item49 = createVehicle ["Intel_File1_F",[26771.1,24654.6,1.3948],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [26771.1,24654.6,21.9877];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item50 = objNull;
if (_layerRoot) then {
	_item50 = createVehicle ["Leaflet_05_Old_F",[26771.8,24653.7,1.36098],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [26771.8,24653.7,21.9717];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
	_this setObjectTextureGlobal [0,"a3\weapons_f_orange\ammo\data\leaflet_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item51 = objNull;
if (_layerRoot) then {
	_item51 = createVehicle ["Land_FoodSacks_01_cargo_brown_idap_F",[26744.7,24651.1,0.497162],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [26744.7,24651.1,21.6318];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item52 = objNull;
if (_layerRoot) then {
	_item52 = createVehicle ["Land_PaperBox_01_small_closed_brown_IDAP_F",[26762.3,24633.7,0.280981],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [26762.3,24633.7,21.3];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item53 = objNull;
if (_layerRoot) then {
	_item53 = createVehicle ["Land_PaperBox_01_open_water_F",[26760.9,24634,0.380957],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [26760.9,24634,21.7242];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item54 = objNull;
if (_layerRoot) then {
	_item54 = createVehicle ["Land_FoodSacks_01_cargo_white_idap_F",[26744.9,24648.4,0.495285],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [26744.9,24648.4,21.6317];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item55 = objNull;
if (_layerRoot) then {
	_item55 = createVehicle ["Land_EmergencyBlanket_01_stack_F",[26762.7,24632.6,0.231323],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [26762.7,24632.6,21.2962];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item56 = objNull;
if (_layerRoot) then {
	_item56 = createVehicle ["Land_FoodSacks_01_large_white_idap_F",[26747.7,24646.1,0.5305],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [26747.7,24646.1,21.5829];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item57 = objNull;
if (_layerRoot) then {
	_item57 = createVehicle ["Land_WaterBottle_01_stack_F",[26748.3,24648.7,0.542582],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [26748.3,24648.7,21.739];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item58 = objNull;
if (_layerRoot) then {
	_item58 = createVehicle ["Land_GymBench_01_F",[26732.3,24651.1,0.000152588],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [26732.3,24651.1,21.1045];
	_this setVectorDirAndUp [[0,0.999992,0.00399666],[-0.039967,-0.00399347,0.999193]];
};

private _item59 = objNull;
if (_layerRoot) then {
	_item59 = createVehicle ["Land_GymRack_01_F",[26736.9,24648.7,0.000846863],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [26736.9,24648.7,21.7862];
	_this setVectorDirAndUp [[0.801614,0.596848,0.0344494],[-0.039967,-0.00399347,0.999193]];
};

private _item60 = objNull;
if (_layerRoot) then {
	_item60 = createVehicle ["Land_GymRack_02_F",[26741.5,24644.7,6.29425e-005],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [26741.5,24644.7,21.2893];
	_this setVectorDirAndUp [[0.419439,0.907784,0.000362175],[0.0106641,-0.00532624,0.999929]];
};

private _item61 = objNull;
if (_layerRoot) then {
	_item61 = createVehicle ["Land_GymRack_03_F",[26734.3,24652.1,0.000312805],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [26734.3,24652.1,21.1822];
	_this setVectorDirAndUp [[0,0.999992,0.00399666],[-0.039967,-0.00399347,0.999193]];
};

private _item62 = objNull;
if (_layerRoot) then {
	_item62 = createVehicle ["Land_GymRack_02_F",[26738.7,24646.7,9.53674e-005],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [26738.7,24646.7,21.3277];
	_this setVectorDirAndUp [[0.464866,0.88538,-0.00141909],[0.0106641,-0.00399644,0.999935]];
};

private _item63 = objNull;
if (_layerRoot) then {
	_item63 = createVehicle ["Land_Bucket_painted_F",[26753,24667.8,0.765812],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [26753,24667.8,21.242];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item64 = objNull;
if (_layerRoot) then {
	_item64 = createVehicle ["Land_Pliers_F",[26752.9,24668.9,1.76646],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [26752.9,24668.9,22.1055];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item65 = objNull;
if (_layerRoot) then {
	_item65 = createVehicle ["Land_Saw_F",[26753.2,24668.5,1.74529],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [26753.2,24668.5,22.0907];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item66 = objNull;
if (_layerRoot) then {
	_item66 = createVehicle ["Land_Rope_01_F",[26751.6,24667.9,0.76581],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [26751.6,24667.9,21.1302];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item67 = objNull;
if (_layerRoot) then {
	_item67 = createVehicle ["Land_ToolTrolley_02_F",[26752.9,24668.9,0.768602],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [26752.9,24668.9,21.5834];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item68 = objNull;
if (_layerRoot) then {
	_item68 = createVehicle ["Land_WeldingTrolley_01_F",[26755,24670.6,0.776243],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [26755,24670.6,21.797];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item69 = objNull;
if (_layerRoot) then {
	_item69 = createVehicle ["Land_Toilet",[26711.5,24624.5,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [26711.5,24624.5,20.9908];
	_this setVectorDirAndUp [[-0.659278,-0.751897,-0.00174844],[-0.00265204,0,0.999996]];
};

private _item70 = objNull;
if (_layerRoot) then {
	_item70 = createVehicle ["Land_Toilet",[26710.6,24625.3,0],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [26710.6,24625.3,20.9884];
	_this setVectorDirAndUp [[-0.629827,-0.776734,-0.00167033],[-0.00265204,0,0.999996]];
};

private _item71 = objNull;
if (_layerRoot) then {
	_item71 = createVehicle ["Land_Toilet",[26709.7,24626.1,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [26709.7,24626.1,20.986];
	_this setVectorDirAndUp [[-0.636696,-0.771113,-0.00168855],[-0.00265204,0,0.999996]];
};

private _item72 = objNull;
if (_layerRoot) then {
	_item72 = createVehicle ["Land_Toilet",[26708.7,24626.8,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [26708.7,24626.8,20.9833];
	_this setVectorDirAndUp [[-0.659521,-0.751684,-0.00174909],[-0.00265204,0,0.999996]];
};

private _item74 = objNull;
if (_layerRoot) then {
	_item74 = createVehicle ["Vysilacka",[26771.5,24654.1,1.37207],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [26771.5,24654.1,23.072];
	_this setVectorDirAndUp [[-0.421283,0.906929,0.000459949],[0.00109178,0,0.999999]];
};

private _item75 = objNull;
if (_layerRoot) then {
	_item75 = createVehicle ["Misc_Backpackheap",[26738.1,24655,0.424559],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [26738.1,24655,21.3876];
	_this setVectorDirAndUp [[0,1,0],[0.00109178,0,0.999999]];
};

private _item76 = objNull;
if (_layerRoot) then {
	_item76 = createVehicle ["CUP_hromada_beden_dekorativniX",[26754.4,24641,0.571342],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [26754.4,24641,21.1021];
	_this setVectorDirAndUp [[-0.906168,0.422917,0.000989338],[0.00109178,0,0.999999]];
};

private _item77 = objNull;
if (_layerRoot) then {
	_item77 = createVehicle ["Misc_cargo_cont_net2",[26773.6,24662,0.00665855],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [26773.6,24662,21.356];
	_this setVectorDirAndUp [[0,0.999712,-0.0239937],[-0.0146684,0.0239911,0.999605]];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item3 = objNull;
if (_layer0 && _layer11) then {
	_item3 = createTrigger ["EmptyDetectorArea10x10",[26795.9,24673.9,0.10041],true];
	_this = _item3;
	_triggers pushback _this;
	_triggerIDs pushback 3;
	_item3 setPosATL [26795.9,24673.9,0.10041];
	_this setTriggerArea [6,6,141.544,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item6 = objNull;
if (_layer4 && _layer0 && _layer11) then {
	_item6 = createTrigger ["EmptyDetectorArea10x10",[26776.1,24694.1,0],true];
	_this = _item6;
	_triggers pushback _this;
	_triggerIDs pushback 6;
	_item6 setPosATL [26776.1,24694.1,0];
	_this setTriggerArea [10,10,230.457,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};

private _item9 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item9 = createTrigger ["EmptyDetectorArea10x10",[26848.1,24460.5,0.758554],true];
	_this = _item9;
	_triggers pushback _this;
	_triggerIDs pushback 9;
	_item9 setPosATL [26848.1,24460.5,0.758554];
	_this setTriggerArea [5,20,48.284,true,5];
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
	_item2 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[26753.5,24616.1,0],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_logics pushback _this;
	_logicIDs pushback 2;
	_this setPosWorld [26753.5,24616.1,20.8608];
	_this setVectorDirAndUp [[0,0.999645,-0.0266571],[-0.0784246,0.026575,0.996566]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer8) then {missionNamespace setVariable ["altis%20major%20power%20base_bargate",[[_item9,_item10],[]]];};
if (_layer4) then {missionNamespace setVariable ["altis%20major%20power%20base_Repair Station",[[_item5,_item6],[]]];};
if (_layer0) then {missionNamespace setVariable ["altis%20major%20power%20base_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item7,_item9,_item10],[]]];};
if (_layer11) then {missionNamespace setVariable ["altis%20major%20power%20base_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item7,_item9,_item10],[]]];};


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
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
