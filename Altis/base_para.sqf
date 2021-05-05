// Export of 'altis%20minor%20power.Altis' by Pvt.Heart on v0.9

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
	_item1 = createVehicle ["Land_InfoStand_V1_F",[17428.9,13138.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [17428.9,13138.2,15.2145];
	_this setVectorDirAndUp [[-0.682258,-0.731111,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item5 = objNull;
if (_layer4 && _layer0 && _layer11) then {
	_item5 = createVehicle ["Land_RepairDepot_01_tan_F",[17389.5,13193.3,0.565926],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [17389.5,13193.3,17.2542];
	_this setVectorDirAndUp [[-0.797794,-0.60293,0],[0,0,1]];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item7 = objNull;
if (_layer0 && _layer11) then {
	_item7 = createVehicle ["B_supplyCrate_F",[17425,13147.2,0],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [17425,13147.2,15.531];
	_this setVectorDirAndUp [[0.796794,0.604252,0],[0,0,1]];
	_this enableSimulation false;
	[_this,"[[[[""arifle_MXC_F"",""arifle_MXM_F"",""arifle_MX_F"",""arifle_MX_GL_F"",""arifle_MX_SW_F"",""arifle_SDAR_F"",""hgun_P07_F"",""hgun_Pistol_heavy_01_F"",""launch_NLAW_F"",""launch_Titan_F"",""launch_Titan_short_F"",""SMG_01_F"",""srifle_EBR_F"",""srifle_LRR_camo_F"",""srifle_LRR_F"",""FirstAidKit"",""Medikit""],[4,2,8,4,4,2,2,2,2,2,2,2,2,2,2,10,1]],[[""100Rnd_65x39_caseless_mag_Tracer"",""11Rnd_45ACP_Mag"",""16Rnd_9x21_Mag"",""1Rnd_HE_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokePurple_Grenade_shell"",""1Rnd_SmokeRed_Grenade_shell"",""1Rnd_SmokeYellow_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""20Rnd_556x45_UW_mag"",""20Rnd_762x51_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""30Rnd_556x45_Stanag_red"",""30Rnd_65x39_caseless_mag"",""3Rnd_HE_Grenade_shell"",""7Rnd_408_Mag"",""APERSBoundingMine_Range_Mag"",""APERSMine_Range_Mag"",""APERSTripMine_Wire_Mag"",""ATMine_Range_Mag"",""B_IR_Grenade"",""ClaymoreDirectionalMine_Remote_Mag"",""DemoCharge_Remote_Mag"",""HandGrenade"",""Laserbatteries"",""MiniGrenade"",""NLAW_F"",""SatchelCharge_Remote_Mag"",""SLAMDirectionalMine_Wire_Mag"",""SmokeShell"",""SmokeShellBlue"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellPurple"",""SmokeShellRed"",""SmokeShellYellow"",""Titan_AA"",""Titan_AP"",""Titan_AT"",""UGL_FlareGreen_F"",""UGL_FlareWhite_F""],[16,14,14,15,2,2,2,2,2,2,2,6,24,14,6,52,3,12,5,5,5,5,8,5,5,24,5,24,8,5,5,2,2,2,2,2,2,2,6,6,6,2,2]],[[""Binocular"",""Laserdesignator"",""Rangefinder"",""acc_flashlight"",""acc_pointer_IR"",""ItemGPS"",""MineDetector"",""muzzle_snds_acp"",""muzzle_snds_B"",""muzzle_snds_H"",""muzzle_snds_H_SW"",""muzzle_snds_L"",""optic_Aco"",""optic_Aco_smg"",""optic_dms"",""optic_Hamr"",""optic_Holosight"",""optic_lrps"",""optic_MRD"",""optic_NVS"",""optic_SOS"",""optic_tws"",""optic_tws_mg"",""ToolKit""],[1,1,1,5,5,5,1,5,5,5,1,5,2,2,2,2,2,2,2,2,2,2,2,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item10 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item10 = createVehicle ["Land_BarGate_F",[17501.3,13196.2,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [17501.3,13196.2,17.3954];
	_this setVectorDirAndUp [[-0.717209,-0.696852,-0.00288843],[-0.0053265,0.00133719,0.999985]];
	gate = _this;
	_this setVehicleVarName "gate";
};

private _item13 = objNull;
if (_layerRoot) then {
	_item13 = createVehicle ["Land_HBarrier_3_F",[17496.1,13201,0],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [17496.1,13201,14.1152];
	_this setVectorDirAndUp [[-0.781842,-0.623476,-0.000211771],[-0.00133721,0.00133721,0.999998]];
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createVehicle ["Land_HBarrier_3_F",[17505.6,13191.7,0],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [17505.6,13191.7,14.1832];
	_this setVectorDirAndUp [[0.727305,0.686295,0.00518088],[-0.0146643,0.00799259,0.999861]];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item3 = objNull;
if (_layer0 && _layer11) then {
	_item3 = createTrigger ["EmptyDetectorArea10x10",[17459.6,13123.1,9.53674e-007],true];
	_this = _item3;
	_triggers pushback _this;
	_triggerIDs pushback 3;
	_item3 setPosATL [17459.6,13123.1,9.53674e-007];
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
	_item6 = createTrigger ["EmptyDetectorArea10x10",[17388.4,13191.6,0],true];
	_this = _item6;
	_triggers pushback _this;
	_triggerIDs pushback 6;
	_item6 setPosATL [17388.4,13191.6,0];
	_this setTriggerArea [10,10,230.457,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};

private _item9 = objNull;
if (_layer8 && _layer0 && _layer11) then {
	_item9 = createTrigger ["EmptyDetectorArea10x10",[17500.5,13195.5,0],true];
	_this = _item9;
	_triggers pushback _this;
	_triggerIDs pushback 9;
	_item9 setPosATL [17500.5,13195.5,0];
	_this setTriggerArea [5,20,317.068,true,5];
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
	_item2 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[17434.6,13140.1,0],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_logics pushback _this;
	_logicIDs pushback 2;
	_this setPosWorld [17434.6,13140.1,14.64];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer8) then {missionNamespace setVariable ["altis%20minor%20power_bargate",[[_item9,_item10],[]]];};
if (_layer4) then {missionNamespace setVariable ["altis%20minor%20power_Repair Station",[[_item5,_item6],[]]];};
if (_layer0) then {missionNamespace setVariable ["altis%20minor%20power_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item7,_item9,_item10],[]]];};
if (_layer11) then {missionNamespace setVariable ["altis%20minor%20power_SIA ZGM Essentials",[[_item1,_item2,_item3,_item5,_item6,_item7,_item9,_item10],[]]];};


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
