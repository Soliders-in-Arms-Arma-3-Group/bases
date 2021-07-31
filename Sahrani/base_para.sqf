// Export of 'Sahrani%20Paramilitary%20base.sara' by Jibcraneknight on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer686 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer666 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer469 = (_allWhitelisted || {"shoothouse pit" in _layerWhiteList}) && {!("shoothouse pit" in _layerBlackList)};
private _layer467 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer464 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer689 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item692 = grpNull;
if (_layerRoot) then {
	_item692 = createGroup west;
	_this = _item692;
	_groups pushback _this;
	_groupIDs pushback 692;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item460 = objNull;
if (_layer689) then {
	_item460 = createVehicle ["Land_InfoStand_V1_F",[14564.6,10636.4,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item460;
	_objects pushback _this;
	_objectIDs pushback 460;
	_this setPosWorld [14564.6,10636.4,44.5469];
	_this setVectorDirAndUp [[-0.617955,0.786213,0.00113523],[-0.00674814,-0.00674782,0.999954]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item468 = objNull;
if (_layer467 && _layer689) then {
	_item468 = createVehicle ["Land_RepairDepot_01_tan_F",[14699.2,10521.7,-0.00400925],[],0,"CAN_COLLIDE"];
	_this = _item468;
	_objects pushback _this;
	_objectIDs pushback 468;
	_this setPosWorld [14699.1,10521.8,49.8846];
	_this setVectorDirAndUp [[-0.906588,0.418132,-0.0571268],[-0.0494401,0.029203,0.99835]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item470 = objNull;
if (_layer469 && _layer689) then {
	_item470 = createVehicle ["Land_InfoStand_V1_F",[14201.4,10935.6,-0.00069046],[],0,"CAN_COLLIDE"];
	_this = _item470;
	_objects pushback _this;
	_objectIDs pushback 470;
	_this setPosWorld [14201.4,10935.6,36.8924];
	_this setVectorDirAndUp [[0.0423957,0.998298,0.0400371],[-0.0281084,-0.0388655,0.998849]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item471 = objNull;
if (_layer469 && _layer689) then {
	_item471 = createVehicle ["Land_Scaffolding_New_F",[14183,10957.8,0],[],0,"CAN_COLLIDE"];
	_this = _item471;
	_objects pushback _this;
	_objectIDs pushback 471;
	_this setPosWorld [14183,10957.8,39.7142];
	_this setVectorDirAndUp [[-0.04254,-0.999095,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item472 = objNull;
if (_layer469 && _layer689) then {
	_item472 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14215.4,10955.7,0],[],0,"CAN_COLLIDE"];
	_this = _item472;
	_objects pushback _this;
	_objectIDs pushback 472;
	_this setPosWorld [14215.4,10955.7,38.8819];
	_this setVectorDirAndUp [[-0.0529532,-0.99604,-0.0714093],[0.00706745,-0.0718816,0.997388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item473 = objNull;
if (_layer469 && _layer689) then {
	_item473 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14207.4,10956.1,0],[],0,"CAN_COLLIDE"];
	_this = _item473;
	_objects pushback _this;
	_objectIDs pushback 473;
	_this setPosWorld [14207.4,10956.1,38.9162];
	_this setVectorDirAndUp [[-0.0529314,-0.996608,-0.0630184],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item474 = objNull;
if (_layer469 && _layer689) then {
	_item474 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14217,10948.6,0],[],0,"CAN_COLLIDE"];
	_this = _item474;
	_objects pushback _this;
	_objectIDs pushback 474;
	_this setPosWorld [14217,10948.6,38.4224];
	_this setVectorDirAndUp [[0.0529456,0.997425,0.0483764],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item475 = objNull;
if (_layer469 && _layer689) then {
	_item475 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14209,10949,0],[],0,"CAN_COLLIDE"];
	_this = _item475;
	_objects pushback _this;
	_objectIDs pushback 475;
	_this setPosWorld [14209,10949,38.5443];
	_this setVectorDirAndUp [[0.0529522,0.995572,0.0776647],[0.00767349,-0.0781771,0.99691]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item476 = objNull;
if (_layer469 && _layer689) then {
	_item476 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14200.2,10953.5,0],[],0,"CAN_COLLIDE"];
	_this = _item476;
	_objects pushback _this;
	_objectIDs pushback 476;
	_this setPosWorld [14200.2,10953.5,38.7745];
	_this setVectorDirAndUp [[0.998568,-0.0527512,-0.00894553],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item477 = objNull;
if (_layer469 && _layer689) then {
	_item477 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14208.4,10955.1,0],[],0,"CAN_COLLIDE"];
	_this = _item477;
	_objects pushback _this;
	_objectIDs pushback 477;
	_this setPosWorld [14208.4,10955.1,38.8802];
	_this setVectorDirAndUp [[-0.998161,0.0546713,-0.0262005],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item478 = objNull;
if (_layer469 && _layer689) then {
	_item478 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14204.1,10953.2,0],[],0,"CAN_COLLIDE"];
	_this = _item478;
	_objects pushback _this;
	_objectIDs pushback 478;
	_this setPosWorld [14204.1,10953.2,38.7392];
	_this setVectorDirAndUp [[-0.999686,0.0236535,0.00824357],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item479 = objNull;
if (_layer469 && _layer689) then {
	_item479 = createVehicle ["Land_Shoot_House_Wall_F",[14215.9,10965.7,0],[],0,"CAN_COLLIDE"];
	_this = _item479;
	_objects pushback _this;
	_objectIDs pushback 479;
	_this setPosWorld [14215.9,10965.7,39.3623];
	_this setVectorDirAndUp [[-0.0529453,-0.997338,-0.0501304],[-0.0186979,-0.0492019,0.998614]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item480 = objNull;
if (_layer469 && _layer689) then {
	_item480 = createVehicle ["Land_Shoot_House_Wall_F",[14206.7,10963.1,0],[],0,"CAN_COLLIDE"];
	_this = _item480;
	_objects pushback _this;
	_objectIDs pushback 480;
	_this setPosWorld [14206.7,10963.1,39.2039];
	_this setVectorDirAndUp [[-0.998161,0.0535902,-0.0283483],[-0.029559,-0.0219344,0.999322]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item481 = objNull;
if (_layer469 && _layer689) then {
	_item481 = createVehicle ["Land_Shoot_House_Wall_F",[14206.5,10959.2,0],[],0,"CAN_COLLIDE"];
	_this = _item481;
	_objects pushback _this;
	_objectIDs pushback 481;
	_this setPosWorld [14206.5,10959.2,39.0763];
	_this setVectorDirAndUp [[-0.998161,0.0546713,-0.0262005],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item482 = objNull;
if (_layer469 && _layer689) then {
	_item482 = createVehicle ["Land_Shoot_House_Wall_F",[14207.9,10966.1,0],[],0,"CAN_COLLIDE"];
	_this = _item482;
	_objects pushback _this;
	_objectIDs pushback 482;
	_this setPosWorld [14207.9,10966.1,39.3087];
	_this setVectorDirAndUp [[-0.0529289,-0.998283,-0.025108],[-0.0311048,-0.0234829,0.99924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item483 = objNull;
if (_layer469 && _layer689) then {
	_item483 = createVehicle ["Land_Shoot_House_Wall_F",[14220.8,10964.4,0],[],0,"CAN_COLLIDE"];
	_this = _item483;
	_objects pushback _this;
	_objectIDs pushback 483;
	_this setPosWorld [14220.8,10964.4,39.3855];
	_this setVectorDirAndUp [[-0.998543,0.0534017,-0.00775928],[-0.0103923,-0.0492069,0.998735]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item484 = objNull;
if (_layer469 && _layer689) then {
	_item484 = createVehicle ["Land_Shoot_House_Wall_F",[14220.5,10958.4,0],[],0,"CAN_COLLIDE"];
	_this = _item484;
	_objects pushback _this;
	_objectIDs pushback 484;
	_this setPosWorld [14220.5,10958.4,39.064];
	_this setVectorDirAndUp [[-0.997955,0.0553907,-0.0318877],[-0.0358372,-0.0718373,0.996772]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item485 = objNull;
if (_layer469 && _layer689) then {
	_item485 = createVehicle ["Land_Shoot_House_Wall_F",[14220.6,10960.4,0],[],0,"CAN_COLLIDE"];
	_this = _item485;
	_objects pushback _this;
	_objectIDs pushback 485;
	_this setPosWorld [14220.6,10960.4,39.1871];
	_this setVectorDirAndUp [[-0.998543,0.0534017,-0.00775928],[-0.0103923,-0.0492069,0.998735]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item486 = objNull;
if (_layer469 && _layer689) then {
	_item486 = createVehicle ["Land_Shoot_House_Wall_F",[14213.9,10965.8,0],[],0,"CAN_COLLIDE"];
	_this = _item486;
	_objects pushback _this;
	_objectIDs pushback 486;
	_this setPosWorld [14213.9,10965.8,39.3391];
	_this setVectorDirAndUp [[-0.0529532,-0.99833,-0.0230872],[0.00706745,-0.0234937,0.999699]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item487 = objNull;
if (_layer469 && _layer689) then {
	_item487 = createVehicle ["Land_Shoot_House_Wall_F",[14209.9,10966,0],[],0,"CAN_COLLIDE"];
	_this = _item487;
	_objects pushback _this;
	_objectIDs pushback 487;
	_this setPosWorld [14209.9,10966,39.3684];
	_this setVectorDirAndUp [[-0.0529289,-0.998283,-0.025108],[-0.0311048,-0.0234829,0.99924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item488 = objNull;
if (_layer469 && _layer689) then {
	_item488 = createVehicle ["Land_Shoot_House_Wall_F",[14209.4,10956,0],[],0,"CAN_COLLIDE"];
	_this = _item488;
	_objects pushback _this;
	_objectIDs pushback 488;
	_this setPosWorld [14209.4,10956,38.966];
	_this setVectorDirAndUp [[-0.0529314,-0.996608,-0.0630184],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item489 = objNull;
if (_layer469 && _layer689) then {
	_item489 = createVehicle ["Land_Shoot_House_Wall_F",[14206.8,10965.1,0],[],0,"CAN_COLLIDE"];
	_this = _item489;
	_objects pushback _this;
	_objectIDs pushback 489;
	_this setPosWorld [14206.8,10965.1,39.2538];
	_this setVectorDirAndUp [[-0.998114,0.0536703,-0.0298084],[-0.0311048,-0.0234829,0.99924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item490 = objNull;
if (_layer469 && _layer689) then {
	_item490 = createVehicle ["Land_Shoot_House_Wall_F",[14211.9,10965.9,0],[],0,"CAN_COLLIDE"];
	_this = _item490;
	_objects pushback _this;
	_objectIDs pushback 490;
	_this setPosWorld [14211.9,10965.9,39.3558];
	_this setVectorDirAndUp [[-0.0529532,-0.99833,-0.0230872],[0.00706745,-0.0234937,0.999699]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item491 = objNull;
if (_layer469 && _layer689) then {
	_item491 = createVehicle ["Land_Shoot_House_Wall_F",[14219.9,10965.4,0],[],0,"CAN_COLLIDE"];
	_this = _item491;
	_objects pushback _this;
	_objectIDs pushback 491;
	_this setPosWorld [14219.9,10965.4,39.4265];
	_this setVectorDirAndUp [[-0.0529453,-0.997338,-0.0501304],[-0.0186979,-0.0492019,0.998614]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item492 = objNull;
if (_layer469 && _layer689) then {
	_item492 = createVehicle ["Land_Shoot_House_Wall_F",[14219.4,10955.5,0],[],0,"CAN_COLLIDE"];
	_this = _item492;
	_objects pushback _this;
	_objectIDs pushback 492;
	_this setPosWorld [14219.4,10955.5,38.8386];
	_this setVectorDirAndUp [[-0.0529532,-0.99604,-0.0714093],[0.00706745,-0.0718816,0.997388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item493 = objNull;
if (_layer469 && _layer689) then {
	_item493 = createVehicle ["Land_Shoot_House_Wall_F",[14220.7,10962.4,0],[],0,"CAN_COLLIDE"];
	_this = _item493;
	_objects pushback _this;
	_objectIDs pushback 493;
	_this setPosWorld [14220.7,10962.4,39.2861];
	_this setVectorDirAndUp [[-0.998543,0.0534017,-0.00775928],[-0.0103923,-0.0492069,0.998735]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item494 = objNull;
if (_layer469 && _layer689) then {
	_item494 = createVehicle ["Land_Shoot_House_Wall_F",[14205.7,10962.2,0],[],0,"CAN_COLLIDE"];
	_this = _item494;
	_objects pushback _this;
	_objectIDs pushback 494;
	_this setPosWorld [14205.7,10962.2,39.1521];
	_this setVectorDirAndUp [[-0.0529314,-0.998322,-0.0234781],[-0.029559,-0.0219344,0.999322]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item495 = objNull;
if (_layer469 && _layer689) then {
	_item495 = createVehicle ["Land_Shoot_House_Wall_F",[14203.5,10959.3,0],[],0,"CAN_COLLIDE"];
	_this = _item495;
	_objects pushback _this;
	_objectIDs pushback 495;
	_this setPosWorld [14203.5,10959.3,38.9975];
	_this setVectorDirAndUp [[-0.0529314,-0.996608,-0.0630184],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item496 = objNull;
if (_layer469 && _layer689) then {
	_item496 = createVehicle ["Land_Shoot_House_Wall_F",[14205.5,10959.2,0],[],0,"CAN_COLLIDE"];
	_this = _item496;
	_objects pushback _this;
	_objectIDs pushback 496;
	_this setPosWorld [14205.5,10959.2,39.0501];
	_this setVectorDirAndUp [[-0.0529314,-0.996608,-0.0630184],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item497 = objNull;
if (_layer469 && _layer689) then {
	_item497 = createVehicle ["Land_Shoot_House_Wall_F",[14201.5,10959.4,0],[],0,"CAN_COLLIDE"];
	_this = _item497;
	_objects pushback _this;
	_objectIDs pushback 497;
	_this setPosWorld [14201.5,10959.4,38.945];
	_this setVectorDirAndUp [[-0.0529314,-0.996608,-0.0630184],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item498 = objNull;
if (_layer469 && _layer689) then {
	_item498 = createVehicle ["Land_Shoot_House_Wall_F",[14201.7,10962.4,0],[],0,"CAN_COLLIDE"];
	_this = _item498;
	_objects pushback _this;
	_objectIDs pushback 498;
	_this setPosWorld [14201.7,10962.4,39.0385];
	_this setVectorDirAndUp [[-0.0529314,-0.998322,-0.0234781],[-0.029559,-0.0219344,0.999322]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item499 = objNull;
if (_layer469 && _layer689) then {
	_item499 = createVehicle ["Land_Shoot_House_Wall_F",[14220.4,10956.4,0],[],0,"CAN_COLLIDE"];
	_this = _item499;
	_objects pushback _this;
	_objectIDs pushback 499;
	_this setPosWorld [14220.4,10956.4,38.9165];
	_this setVectorDirAndUp [[-0.997955,0.0553907,-0.0318877],[-0.0358372,-0.0718373,0.996772]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item500 = objNull;
if (_layer469 && _layer689) then {
	_item500 = createVehicle ["Land_Shoot_House_Wall_F",[14217.4,10955.6,0],[],0,"CAN_COLLIDE"];
	_this = _item500;
	_objects pushback _this;
	_objectIDs pushback 500;
	_this setPosWorld [14217.4,10955.6,38.8603];
	_this setVectorDirAndUp [[-0.0529532,-0.99604,-0.0714093],[0.00706745,-0.0718816,0.997388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item501 = objNull;
if (_layer469 && _layer689) then {
	_item501 = createVehicle ["Land_Shoot_House_Wall_F",[14201.3,10954.4,0],[],0,"CAN_COLLIDE"];
	_this = _item501;
	_objects pushback _this;
	_objectIDs pushback 501;
	_this setPosWorld [14201.3,10954.4,38.7895];
	_this setVectorDirAndUp [[0.0529522,0.998309,0.0239719],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item502 = objNull;
if (_layer469 && _layer689) then {
	_item502 = createVehicle ["Land_Shoot_House_Wall_F",[14203.3,10954.3,0],[],0,"CAN_COLLIDE"];
	_this = _item502;
	_objects pushback _this;
	_objectIDs pushback 502;
	_this setPosWorld [14203.3,10954.3,38.7716];
	_this setVectorDirAndUp [[0.0529522,0.998309,0.0239719],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item503 = objNull;
if (_layer469 && _layer689) then {
	_item503 = createVehicle ["Land_Shoot_House_Wall_F",[14216.2,10952.6,0],[],0,"CAN_COLLIDE"];
	_this = _item503;
	_objects pushback _this;
	_objectIDs pushback 503;
	_this setPosWorld [14216.2,10952.6,38.6684];
	_this setVectorDirAndUp [[-0.998444,0.0517808,0.0206769],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item504 = objNull;
if (_layer469 && _layer689) then {
	_item504 = createVehicle ["Land_Shoot_House_Wall_F",[14217.2,10952.6,0],[],0,"CAN_COLLIDE"];
	_this = _item504;
	_objects pushback _this;
	_objectIDs pushback 504;
	_this setPosWorld [14217.2,10952.6,38.6479];
	_this setVectorDirAndUp [[-0.0529465,-0.996761,-0.0605325],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item505 = objNull;
if (_layer469 && _layer689) then {
	_item505 = createVehicle ["Land_Shoot_House_Wall_F",[14214.3,10954.7,0],[],0,"CAN_COLLIDE"];
	_this = _item505;
	_objects pushback _this;
	_objectIDs pushback 505;
	_this setPosWorld [14214.3,10954.7,38.8313];
	_this setVectorDirAndUp [[0.998444,-0.0517795,-0.0206768],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item506 = objNull;
if (_layer469 && _layer689) then {
	_item506 = createVehicle ["Land_Shoot_House_Wall_F",[14216.3,10954.6,0],[],0,"CAN_COLLIDE"];
	_this = _item506;
	_objects pushback _this;
	_objectIDs pushback 506;
	_this setPosWorld [14216.3,10954.6,38.7994];
	_this setVectorDirAndUp [[0.998572,-0.0523096,-0.0108458],[0.00706745,-0.0718816,0.997388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item507 = objNull;
if (_layer469 && _layer689) then {
	_item507 = createVehicle ["Land_Shoot_House_Wall_F",[14214.2,10952.7,0],[],0,"CAN_COLLIDE"];
	_this = _item507;
	_objects pushback _this;
	_objectIDs pushback 507;
	_this setPosWorld [14214.2,10952.7,38.7099];
	_this setVectorDirAndUp [[0.998444,-0.0517795,-0.0206768],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item508 = objNull;
if (_layer469 && _layer689) then {
	_item508 = createVehicle ["Land_Shoot_House_Wall_F",[14211.4,10955.9,0],[],0,"CAN_COLLIDE"];
	_this = _item508;
	_objects pushback _this;
	_objectIDs pushback 508;
	_this setPosWorld [14211.4,10955.9,38.954];
	_this setVectorDirAndUp [[-0.0529465,-0.996761,-0.0605325],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item509 = objNull;
if (_layer469 && _layer689) then {
	_item509 = createVehicle ["Land_Shoot_House_Wall_F",[14206.3,10955.2,0],[],0,"CAN_COLLIDE"];
	_this = _item509;
	_objects pushback _this;
	_objectIDs pushback 509;
	_this setPosWorld [14206.3,10955.2,38.8255];
	_this setVectorDirAndUp [[0.998161,-0.05467,0.0262006],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item510 = objNull;
if (_layer469 && _layer689) then {
	_item510 = createVehicle ["Land_Shoot_House_Wall_F",[14206.2,10953.2,0],[],0,"CAN_COLLIDE"];
	_this = _item510;
	_objects pushback _this;
	_objectIDs pushback 510;
	_this setPosWorld [14206.2,10953.2,38.7209];
	_this setVectorDirAndUp [[0.998568,-0.0527512,-0.00894553],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item511 = objNull;
if (_layer469 && _layer689) then {
	_item511 = createVehicle ["Land_Shoot_House_Wall_F",[14208.2,10953.1,0],[],0,"CAN_COLLIDE"];
	_this = _item511;
	_objects pushback _this;
	_objectIDs pushback 511;
	_this setPosWorld [14208.2,10953.1,38.7515];
	_this setVectorDirAndUp [[0.998161,-0.05467,0.0262006],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item512 = objNull;
if (_layer469 && _layer689) then {
	_item512 = createVehicle ["Land_Shoot_House_Wall_F",[14203.7,10962.3,0],[],0,"CAN_COLLIDE"];
	_this = _item512;
	_objects pushback _this;
	_objectIDs pushback 512;
	_this setPosWorld [14203.7,10962.3,39.0954];
	_this setVectorDirAndUp [[-0.0529314,-0.998322,-0.0234781],[-0.029559,-0.0219344,0.999322]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item513 = objNull;
if (_layer469 && _layer689) then {
	_item513 = createVehicle ["Land_Shoot_House_Wall_F",[14219.6,10959.5,0],[],0,"CAN_COLLIDE"];
	_this = _item513;
	_objects pushback _this;
	_objectIDs pushback 513;
	_this setPosWorld [14219.6,10959.5,39.1248];
	_this setVectorDirAndUp [[-0.0529532,-0.99604,-0.0714093],[0.00706745,-0.0718816,0.997388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item514 = objNull;
if (_layer469 && _layer689) then {
	_item514 = createVehicle ["Land_Shoot_House_Wall_F",[14215.6,10959.7,0],[],0,"CAN_COLLIDE"];
	_this = _item514;
	_objects pushback _this;
	_objectIDs pushback 514;
	_this setPosWorld [14215.6,10959.7,39.1682];
	_this setVectorDirAndUp [[-0.0529532,-0.99604,-0.0714093],[0.00706745,-0.0718816,0.997388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item515 = objNull;
if (_layer469 && _layer689) then {
	_item515 = createVehicle ["Land_Shoot_House_Wall_F",[14212.4,10956.8,0],[],0,"CAN_COLLIDE"];
	_this = _item515;
	_objects pushback _this;
	_objectIDs pushback 515;
	_this setPosWorld [14212.4,10956.8,38.9939];
	_this setVectorDirAndUp [[0.998444,-0.0517795,-0.0206768],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item516 = objNull;
if (_layer469 && _layer689) then {
	_item516 = createVehicle ["Land_Shoot_House_Wall_F",[14212.5,10958.8,0],[],0,"CAN_COLLIDE"];
	_this = _item516;
	_objects pushback _this;
	_objectIDs pushback 516;
	_this setPosWorld [14212.5,10958.8,39.1293];
	_this setVectorDirAndUp [[0.998572,-0.0523096,-0.0108458],[0.00706745,-0.0718816,0.997388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item517 = objNull;
if (_layer469 && _layer689) then {
	_item517 = createVehicle ["Land_Shoot_House_Wall_F",[14213.6,10959.8,0],[],0,"CAN_COLLIDE"];
	_this = _item517;
	_objects pushback _this;
	_objectIDs pushback 517;
	_this setPosWorld [14213.6,10959.8,39.1899];
	_this setVectorDirAndUp [[-0.0529532,-0.99604,-0.0714093],[0.00706745,-0.0718816,0.997388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item518 = objNull;
if (_layer469 && _layer689) then {
	_item518 = createVehicle ["Land_Shoot_House_Wall_F",[14207.7,10962.1,0],[],0,"CAN_COLLIDE"];
	_this = _item518;
	_objects pushback _this;
	_objectIDs pushback 518;
	_this setPosWorld [14207.7,10962.1,39.2089];
	_this setVectorDirAndUp [[0.0529306,0.998322,0.0234781],[-0.029559,-0.0219344,0.999322]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item519 = objNull;
if (_layer469 && _layer689) then {
	_item519 = createVehicle ["Land_Shoot_House_Wall_F",[14209.7,10962,0],[],0,"CAN_COLLIDE"];
	_this = _item519;
	_objects pushback _this;
	_objectIDs pushback 519;
	_this setPosWorld [14209.7,10962,39.2682];
	_this setVectorDirAndUp [[0.0529281,0.998283,0.025108],[-0.0311048,-0.0234829,0.99924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item520 = objNull;
if (_layer469 && _layer689) then {
	_item520 = createVehicle ["Land_Shoot_House_Wall_F",[14210.7,10962.9,0],[],0,"CAN_COLLIDE"];
	_this = _item520;
	_objects pushback _this;
	_objectIDs pushback 520;
	_this setPosWorld [14210.7,10962.9,39.2948];
	_this setVectorDirAndUp [[-0.998572,0.0527747,0.00829973],[0.00706745,-0.0234937,0.999699]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item521 = objNull;
if (_layer469 && _layer689) then {
	_item521 = createVehicle ["Land_Shoot_House_Wall_F",[14213.7,10961.8,0],[],0,"CAN_COLLIDE"];
	_this = _item521;
	_objects pushback _this;
	_objectIDs pushback 521;
	_this setPosWorld [14213.7,10961.8,39.2468];
	_this setVectorDirAndUp [[0.0529524,0.99833,0.0230872],[0.00706745,-0.0234937,0.999699]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item522 = objNull;
if (_layer469 && _layer689) then {
	_item522 = createVehicle ["Land_Shoot_House_Wall_F",[14214.7,10962.7,0],[],0,"CAN_COLLIDE"];
	_this = _item522;
	_objects pushback _this;
	_objectIDs pushback 522;
	_this setPosWorld [14214.7,10962.7,39.2615];
	_this setVectorDirAndUp [[-0.998572,0.0527747,0.00829973],[0.00706745,-0.0234937,0.999699]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item523 = objNull;
if (_layer469 && _layer689) then {
	_item523 = createVehicle ["Land_Shoot_House_Wall_F",[14214.8,10964.7,0],[],0,"CAN_COLLIDE"];
	_this = _item523;
	_objects pushback _this;
	_objectIDs pushback 523;
	_this setPosWorld [14214.8,10964.7,39.3077];
	_this setVectorDirAndUp [[-0.998572,0.0527747,0.00829973],[0.00706745,-0.0234937,0.999699]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item524 = objNull;
if (_layer469 && _layer689) then {
	_item524 = createVehicle ["Land_Shoot_House_Wall_F",[14212.7,10962.8,0],[],0,"CAN_COLLIDE"];
	_this = _item524;
	_objects pushback _this;
	_objectIDs pushback 524;
	_this setPosWorld [14212.7,10962.8,39.2782];
	_this setVectorDirAndUp [[-0.998572,0.0527747,0.00829973],[0.00706745,-0.0234937,0.999699]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item525 = objNull;
if (_layer469 && _layer689) then {
	_item525 = createVehicle ["Land_Shoot_House_Wall_F",[14211.6,10959.9,0],[],0,"CAN_COLLIDE"];
	_this = _item525;
	_objects pushback _this;
	_objectIDs pushback 525;
	_this setPosWorld [14211.6,10959.9,39.2117];
	_this setVectorDirAndUp [[0.0529524,0.996041,0.0714093],[0.00706745,-0.0718816,0.997388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item526 = objNull;
if (_layer469 && _layer689) then {
	_item526 = createVehicle ["Land_Shoot_House_Wall_F",[14207.6,10960.1,0],[],0,"CAN_COLLIDE"];
	_this = _item526;
	_objects pushback _this;
	_objectIDs pushback 526;
	_this setPosWorld [14207.6,10960.1,39.1619];
	_this setVectorDirAndUp [[0.0529306,0.998322,0.0234781],[-0.029559,-0.0219344,0.999322]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item527 = objNull;
if (_layer469 && _layer689) then {
	_item527 = createVehicle ["Land_Shoot_House_Wall_F",[14206,10948.2,0],[],0,"CAN_COLLIDE"];
	_this = _item527;
	_objects pushback _this;
	_objectIDs pushback 527;
	_this setPosWorld [14206,10948.2,38.502];
	_this setVectorDirAndUp [[-0.998568,0.052194,0.0117793],[0.00767349,-0.0781771,0.99691]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item528 = objNull;
if (_layer469 && _layer689) then {
	_item528 = createVehicle ["Land_Shoot_House_Wall_F",[14219,10948.5,0],[],0,"CAN_COLLIDE"];
	_this = _item528;
	_objects pushback _this;
	_objectIDs pushback 528;
	_this setPosWorld [14219,10948.5,38.3823];
	_this setVectorDirAndUp [[-0.0529464,-0.997425,-0.0483763],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item529 = objNull;
if (_layer469 && _layer689) then {
	_item529 = createVehicle ["Land_Shoot_House_Wall_F",[14212.5,10938.8,0],[],0,"CAN_COLLIDE"];
	_this = _item529;
	_objects pushback _this;
	_objectIDs pushback 529;
	_this setPosWorld [14212.5,10938.8,37.8764];
	_this setVectorDirAndUp [[-0.052951,-0.998498,0.0140992],[-0.0115081,0.0147282,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item530 = objNull;
if (_layer469 && _layer689) then {
	_item530 = createVehicle ["Land_Shoot_House_Wall_F",[14219.9,10947.4,0],[],0,"CAN_COLLIDE"];
	_this = _item530;
	_objects pushback _this;
	_objectIDs pushback 530;
	_this setPosWorld [14219.9,10947.4,38.3138];
	_this setVectorDirAndUp [[-0.998444,0.0520289,0.0200474],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item531 = objNull;
if (_layer469 && _layer689) then {
	_item531 = createVehicle ["Land_Shoot_House_Wall_F",[14205.7,10944.2,0],[],0,"CAN_COLLIDE"];
	_this = _item531;
	_objects pushback _this;
	_objectIDs pushback 531;
	_this setPosWorld [14205.7,10944.2,38.1922];
	_this setVectorDirAndUp [[-0.998162,0.0512066,0.0324014],[0.0294984,-0.0564647,0.997969]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item532 = objNull;
if (_layer469 && _layer689) then {
	_item532 = createVehicle ["Land_Shoot_House_Wall_F",[14215,10948.7,0],[],0,"CAN_COLLIDE"];
	_this = _item532;
	_objects pushback _this;
	_objectIDs pushback 532;
	_this setPosWorld [14215,10948.7,38.4626];
	_this setVectorDirAndUp [[-0.0529464,-0.997425,-0.0483763],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item533 = objNull;
if (_layer469 && _layer689) then {
	_item533 = createVehicle ["Land_Shoot_House_Wall_F",[14207,10949.1,0],[],0,"CAN_COLLIDE"];
	_this = _item533;
	_objects pushback _this;
	_objectIDs pushback 533;
	_this setPosWorld [14207,10949.1,38.5679];
	_this setVectorDirAndUp [[-0.052953,-0.995572,-0.0776646],[0.00767349,-0.0781771,0.99691]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item534 = objNull;
if (_layer469 && _layer689) then {
	_item534 = createVehicle ["Land_Shoot_House_Wall_F",[14219.7,10943.4,0],[],0,"CAN_COLLIDE"];
	_this = _item534;
	_objects pushback _this;
	_objectIDs pushback 534;
	_this setPosWorld [14219.7,10943.4,38.12];
	_this setVectorDirAndUp [[-0.998444,0.0520289,0.0200474],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item535 = objNull;
if (_layer469 && _layer689) then {
	_item535 = createVehicle ["Land_Shoot_House_Wall_F",[14219.6,10941.4,0],[],0,"CAN_COLLIDE"];
	_this = _item535;
	_objects pushback _this;
	_objectIDs pushback 535;
	_this setPosWorld [14219.6,10941.4,38.023];
	_this setVectorDirAndUp [[-0.998444,0.0520289,0.0200474],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item536 = objNull;
if (_layer469 && _layer689) then {
	_item536 = createVehicle ["Land_Shoot_House_Wall_F",[14219.5,10939.4,0],[],0,"CAN_COLLIDE"];
	_this = _item536;
	_objects pushback _this;
	_objectIDs pushback 536;
	_this setPosWorld [14219.5,10939.4,37.9482];
	_this setVectorDirAndUp [[-0.998531,0.0527802,-0.0122707],[-0.0115081,0.0147282,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item537 = objNull;
if (_layer469 && _layer689) then {
	_item537 = createVehicle ["Land_Shoot_House_Wall_F",[14218.5,10938.5,0],[],0,"CAN_COLLIDE"];
	_this = _item537;
	_objects pushback _this;
	_objectIDs pushback 537;
	_this setPosWorld [14218.5,10938.5,37.95];
	_this setVectorDirAndUp [[-0.052951,-0.998498,0.0140992],[-0.0115081,0.0147282,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item538 = objNull;
if (_layer469 && _layer689) then {
	_item538 = createVehicle ["Land_Shoot_House_Wall_F",[14216.5,10938.6,0],[],0,"CAN_COLLIDE"];
	_this = _item538;
	_objects pushback _this;
	_objectIDs pushback 538;
	_this setPosWorld [14216.5,10938.6,37.9255];
	_this setVectorDirAndUp [[-0.052951,-0.998498,0.0140992],[-0.0115081,0.0147282,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item539 = objNull;
if (_layer469 && _layer689) then {
	_item539 = createVehicle ["Land_Shoot_House_Wall_F",[14214.5,10938.7,0],[],0,"CAN_COLLIDE"];
	_this = _item539;
	_objects pushback _this;
	_objectIDs pushback 539;
	_this setPosWorld [14214.5,10938.7,37.9009];
	_this setVectorDirAndUp [[-0.052951,-0.998498,0.0140992],[-0.0115081,0.0147282,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item540 = objNull;
if (_layer469 && _layer689) then {
	_item540 = createVehicle ["Land_Shoot_House_Wall_F",[14205.5,10940.2,0],[],0,"CAN_COLLIDE"];
	_this = _item540;
	_objects pushback _this;
	_objectIDs pushback 540;
	_this setPosWorld [14205.5,10940.2,37.9723];
	_this setVectorDirAndUp [[-0.998162,0.0512066,0.0324014],[0.0294984,-0.0564647,0.997969]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item541 = objNull;
if (_layer469 && _layer689) then {
	_item541 = createVehicle ["Land_Shoot_House_Wall_F",[14210.5,10938.9,0],[],0,"CAN_COLLIDE"];
	_this = _item541;
	_objects pushback _this;
	_objectIDs pushback 541;
	_this setPosWorld [14210.5,10938.9,37.8543];
	_this setVectorDirAndUp [[-0.052953,-0.998429,0.0182927],[-0.00751694,0.0187165,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item542 = objNull;
if (_layer469 && _layer689) then {
	_item542 = createVehicle ["Land_Shoot_House_Wall_F",[14211,10948.9,0],[],0,"CAN_COLLIDE"];
	_this = _item542;
	_objects pushback _this;
	_objectIDs pushback 542;
	_this setPosWorld [14211,10948.9,38.5398];
	_this setVectorDirAndUp [[-0.052951,-0.995493,-0.0786773],[-0.0115081,-0.0781743,0.996873]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item543 = objNull;
if (_layer469 && _layer689) then {
	_item543 = createVehicle ["Land_Shoot_House_Wall_F",[14201,10948.4,0],[],0,"CAN_COLLIDE"];
	_this = _item543;
	_objects pushback _this;
	_objectIDs pushback 543;
	_this setPosWorld [14201,10948.4,38.5744];
	_this setVectorDirAndUp [[-0.0529315,-0.997091,-0.0548504],[0.0294984,-0.0564647,0.997969]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item544 = objNull;
if (_layer469 && _layer689) then {
	_item544 = createVehicle ["Land_Shoot_House_Wall_F",[14203,10948.3,0],[],0,"CAN_COLLIDE"];
	_this = _item544;
	_objects pushback _this;
	_objectIDs pushback 544;
	_this setPosWorld [14203,10948.3,38.5374];
	_this setVectorDirAndUp [[-0.052953,-0.995572,-0.0776646],[0.00767349,-0.0781771,0.99691]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item545 = objNull;
if (_layer469 && _layer689) then {
	_item545 = createVehicle ["Land_Shoot_House_Wall_F",[14204.9,10948.2,0],[],0,"CAN_COLLIDE"];
	_this = _item545;
	_objects pushback _this;
	_objectIDs pushback 545;
	_this setPosWorld [14204.9,10948.2,38.5137];
	_this setVectorDirAndUp [[-0.052953,-0.995572,-0.0776646],[0.00767349,-0.0781771,0.99691]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item546 = objNull;
if (_layer469 && _layer689) then {
	_item546 = createVehicle ["Land_Shoot_House_Wall_F",[14204.8,10945.2,0],[],0,"CAN_COLLIDE"];
	_this = _item546;
	_objects pushback _this;
	_objectIDs pushback 546;
	_this setPosWorld [14204.8,10945.2,38.28];
	_this setVectorDirAndUp [[-0.052953,-0.995572,-0.0776646],[0.00767349,-0.0781771,0.99691]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item547 = objNull;
if (_layer469 && _layer689) then {
	_item547 = createVehicle ["Land_Shoot_House_Wall_F",[14202.8,10945.3,0],[],0,"CAN_COLLIDE"];
	_this = _item547;
	_objects pushback _this;
	_objectIDs pushback 547;
	_this setPosWorld [14202.8,10945.3,38.3446];
	_this setVectorDirAndUp [[-0.0529315,-0.997091,-0.0548504],[0.0294984,-0.0564647,0.997969]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item548 = objNull;
if (_layer469 && _layer689) then {
	_item548 = createVehicle ["Land_Shoot_House_Wall_F",[14200.8,10945.4,0],[],0,"CAN_COLLIDE"];
	_this = _item548;
	_objects pushback _this;
	_objectIDs pushback 548;
	_this setPosWorld [14200.8,10945.4,38.4095];
	_this setVectorDirAndUp [[-0.0529315,-0.997091,-0.0548504],[0.0294984,-0.0564647,0.997969]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item549 = objNull;
if (_layer469 && _layer689) then {
	_item549 = createVehicle ["Land_Shoot_House_Wall_F",[14201.2,10952.4,0],[],0,"CAN_COLLIDE"];
	_this = _item549;
	_objects pushback _this;
	_objectIDs pushback 549;
	_this setPosWorld [14201.2,10952.4,38.7416];
	_this setVectorDirAndUp [[0.0529522,0.998309,0.0239719],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item550 = objNull;
if (_layer469 && _layer689) then {
	_item550 = createVehicle ["Land_Shoot_House_Wall_F",[14203.2,10952.3,0],[],0,"CAN_COLLIDE"];
	_this = _item550;
	_objects pushback _this;
	_objectIDs pushback 550;
	_this setPosWorld [14203.2,10952.3,38.7237];
	_this setVectorDirAndUp [[0.0529522,0.998309,0.0239719],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item551 = objNull;
if (_layer469 && _layer689) then {
	_item551 = createVehicle ["Land_Shoot_House_Wall_F",[14210,10950,0],[],0,"CAN_COLLIDE"];
	_this = _item551;
	_objects pushback _this;
	_objectIDs pushback 551;
	_this setPosWorld [14210,10950,38.6112];
	_this setVectorDirAndUp [[-0.998531,0.0536915,-0.00731681],[-0.0115081,-0.0781743,0.996873]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item552 = objNull;
if (_layer469 && _layer689) then {
	_item552 = createVehicle ["Land_Shoot_House_Wall_F",[14210.2,10951.9,0],[],0,"CAN_COLLIDE"];
	_this = _item552;
	_objects pushback _this;
	_objectIDs pushback 552;
	_this setPosWorld [14210.2,10951.9,38.7319];
	_this setVectorDirAndUp [[-0.998444,0.0517808,0.0206769],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item553 = objNull;
if (_layer469 && _layer689) then {
	_item553 = createVehicle ["Land_Shoot_House_Wall_F",[14219.8,10945.4,0],[],0,"CAN_COLLIDE"];
	_this = _item553;
	_objects pushback _this;
	_objectIDs pushback 553;
	_this setPosWorld [14219.8,10945.4,38.2169];
	_this setVectorDirAndUp [[-0.998444,0.0520289,0.0200474],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item554 = objNull;
if (_layer469 && _layer689) then {
	_item554 = createVehicle ["Land_Shoot_House_Wall_F",[14208.2,10952.1,0],[],0,"CAN_COLLIDE"];
	_this = _item554;
	_objects pushback _this;
	_objectIDs pushback 554;
	_this setPosWorld [14208.2,10952.1,38.6868];
	_this setVectorDirAndUp [[-0.998161,0.0546713,-0.0262005],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item555 = objNull;
if (_layer469 && _layer689) then {
	_item555 = createVehicle ["Land_Shoot_House_Wall_F",[14218,10949.5,0],[],0,"CAN_COLLIDE"];
	_this = _item555;
	_objects pushback _this;
	_objectIDs pushback 555;
	_this setPosWorld [14218,10949.5,38.4508];
	_this setVectorDirAndUp [[-0.998444,0.0520289,0.0200474],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item556 = objNull;
if (_layer469 && _layer689) then {
	_item556 = createVehicle ["Land_Shoot_House_Wall_F",[14216,10949.6,0],[],0,"CAN_COLLIDE"];
	_this = _item556;
	_objects pushback _this;
	_objectIDs pushback 556;
	_this setPosWorld [14216,10949.6,38.4908];
	_this setVectorDirAndUp [[-0.998444,0.0520289,0.0200474],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item557 = objNull;
if (_layer469 && _layer689) then {
	_item557 = createVehicle ["Land_Shoot_House_Wall_F",[14218.1,10951.5,0],[],0,"CAN_COLLIDE"];
	_this = _item557;
	_objects pushback _this;
	_objectIDs pushback 557;
	_this setPosWorld [14218.1,10951.5,38.5663];
	_this setVectorDirAndUp [[-0.998444,0.0517808,0.0206769],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item558 = objNull;
if (_layer469 && _layer689) then {
	_item558 = createVehicle ["Land_Shoot_House_Wall_F",[14206.5,10939.1,0],[],0,"CAN_COLLIDE"];
	_this = _item558;
	_objects pushback _this;
	_objectIDs pushback 558;
	_this setPosWorld [14206.5,10939.1,37.9509];
	_this setVectorDirAndUp [[-0.0529315,-0.998393,0.0202492],[0.029496,0.0187057,0.99939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item559 = objNull;
if (_layer469 && _layer689) then {
	_item559 = createVehicle ["Land_Shoot_House_Wall_F",[14215.1,10951.7,0],[],0,"CAN_COLLIDE"];
	_this = _item559;
	_objects pushback _this;
	_objectIDs pushback 559;
	_this setPosWorld [14215.1,10951.7,38.6284];
	_this setVectorDirAndUp [[0.0529456,0.996761,0.0605325],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item560 = objNull;
if (_layer469 && _layer689) then {
	_item560 = createVehicle ["Land_Shoot_House_Wall_F",[14209.2,10952.9,0],[],0,"CAN_COLLIDE"];
	_this = _item560;
	_objects pushback _this;
	_objectIDs pushback 560;
	_this setPosWorld [14209.2,10952.9,38.7707];
	_this setVectorDirAndUp [[0.0529306,0.996608,0.0630184],[-0.0295569,-0.0615156,0.997668]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item561 = objNull;
if (_layer469 && _layer689) then {
	_item561 = createVehicle ["Land_Shoot_House_Wall_F",[14216.1,10951.6,0],[],0,"CAN_COLLIDE"];
	_this = _item561;
	_objects pushback _this;
	_objectIDs pushback 561;
	_this setPosWorld [14216.1,10951.6,38.6076];
	_this setVectorDirAndUp [[-0.998444,0.0517808,0.0206769],[0.0174755,-0.0615331,0.997952]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item562 = objNull;
if (_layer469 && _layer689) then {
	_item562 = createVehicle ["Land_Shoot_House_Wall_F",[14205.6,10942.2,0],[],0,"CAN_COLLIDE"];
	_this = _item562;
	_objects pushback _this;
	_objectIDs pushback 562;
	_this setPosWorld [14205.6,10942.2,38.0821];
	_this setVectorDirAndUp [[-0.998162,0.0512066,0.0324014],[0.0294984,-0.0564647,0.997969]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item563 = objNull;
if (_layer469 && _layer689) then {
	_item563 = createVehicle ["Land_Shoot_House_Wall_F",[14206.7,10944.1,0],[],0,"CAN_COLLIDE"];
	_this = _item563;
	_objects pushback _this;
	_objectIDs pushback 563;
	_this setPosWorld [14206.7,10944.1,38.1785];
	_this setVectorDirAndUp [[-0.052953,-0.995572,-0.0776646],[0.00767349,-0.0781771,0.99691]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item564 = objNull;
if (_layer469 && _layer689) then {
	_item564 = createVehicle ["Land_Shoot_House_Wall_F",[14208.7,10944,0],[],0,"CAN_COLLIDE"];
	_this = _item564;
	_objects pushback _this;
	_objectIDs pushback 564;
	_this setPosWorld [14208.7,10944,38.1548];
	_this setVectorDirAndUp [[-0.052953,-0.995572,-0.0776646],[0.00767349,-0.0781771,0.99691]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item565 = objNull;
if (_layer469 && _layer689) then {
	_item565 = createVehicle ["Land_Shoot_House_Wall_F",[14210.7,10943.9,0],[],0,"CAN_COLLIDE"];
	_this = _item565;
	_objects pushback _this;
	_objectIDs pushback 565;
	_this setPosWorld [14210.7,10943.9,38.1452];
	_this setVectorDirAndUp [[-0.052951,-0.995493,-0.0786773],[-0.0115081,-0.0781743,0.996873]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item566 = objNull;
if (_layer469 && _layer689) then {
	_item566 = createVehicle ["Land_Shoot_House_Wall_F",[14211.7,10942.9,0],[],0,"CAN_COLLIDE"];
	_this = _item566;
	_objects pushback _this;
	_objectIDs pushback 566;
	_this setPosWorld [14211.7,10942.9,38.0736];
	_this setVectorDirAndUp [[-0.998531,0.0536915,-0.00731681],[-0.0115081,-0.0781743,0.996873]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item567 = objNull;
if (_layer469 && _layer689) then {
	_item567 = createVehicle ["Land_Shoot_House_Wall_F",[14216.8,10944.7,0],[],0,"CAN_COLLIDE"];
	_this = _item567;
	_objects pushback _this;
	_objectIDs pushback 567;
	_this setPosWorld [14216.8,10944.7,38.2354];
	_this setVectorDirAndUp [[0.0529456,0.997425,0.0483764],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item568 = objNull;
if (_layer469 && _layer689) then {
	_item568 = createVehicle ["Land_Shoot_House_Wall_F",[14215.7,10943.8,0],[],0,"CAN_COLLIDE"];
	_this = _item568;
	_objects pushback _this;
	_objectIDs pushback 568;
	_this setPosWorld [14215.7,10943.8,38.1925];
	_this setVectorDirAndUp [[0.998531,-0.0536903,0.00731691],[-0.0115081,-0.0781743,0.996873]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item569 = objNull;
if (_layer469 && _layer689) then {
	_item569 = createVehicle ["Land_Shoot_House_Wall_F",[14215.6,10941.8,0],[],0,"CAN_COLLIDE"];
	_this = _item569;
	_objects pushback _this;
	_objectIDs pushback 569;
	_this setPosWorld [14215.6,10941.8,38.0343];
	_this setVectorDirAndUp [[0.998531,-0.0536903,0.00731691],[-0.0115081,-0.0781743,0.996873]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item570 = objNull;
if (_layer469 && _layer689) then {
	_item570 = createVehicle ["Land_Shoot_House_Wall_F",[14214.6,10940.8,0],[],0,"CAN_COLLIDE"];
	_this = _item570;
	_objects pushback _this;
	_objectIDs pushback 570;
	_this setPosWorld [14214.6,10940.8,37.9481];
	_this setVectorDirAndUp [[0.0529502,0.995493,0.0786773],[-0.0115081,-0.0781743,0.996873]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item571 = objNull;
if (_layer469 && _layer689) then {
	_item571 = createVehicle ["Land_Shoot_House_Wall_F",[14213.5,10939.9,0],[],0,"CAN_COLLIDE"];
	_this = _item571;
	_objects pushback _this;
	_objectIDs pushback 571;
	_this setPosWorld [14213.5,10939.9,37.8724];
	_this setVectorDirAndUp [[0.998531,-0.0527789,0.0122707],[-0.0115081,0.0147282,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item572 = objNull;
if (_layer469 && _layer689) then {
	_item572 = createVehicle ["Land_Shoot_House_Wall_F",[14208.1,10950.1,0],[],0,"CAN_COLLIDE"];
	_this = _item572;
	_objects pushback _this;
	_objectIDs pushback 572;
	_this setPosWorld [14208.1,10950.1,38.6309];
	_this setVectorDirAndUp [[-0.998568,0.0527525,0.00894556],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item573 = objNull;
if (_layer469 && _layer689) then {
	_item573 = createVehicle ["Land_Shoot_House_Wall_F",[14184.5,10958.3,0],[],0,"CAN_COLLIDE"];
	_this = _item573;
	_objects pushback _this;
	_objectIDs pushback 573;
	_this setPosWorld [14184.5,10958.3,38.6758];
	_this setVectorDirAndUp [[-0.998506,0.0533301,-0.0118873],[-0.0134784,-0.0295744,0.999472]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item574 = objNull;
if (_layer469 && _layer689) then {
	_item574 = createVehicle ["Land_Shoot_House_Wall_F",[14194.4,10957.8,0],[],0,"CAN_COLLIDE"];
	_this = _item574;
	_objects pushback _this;
	_objectIDs pushback 574;
	_this setPosWorld [14194.4,10957.8,38.8063];
	_this setVectorDirAndUp [[-0.998506,0.0532689,-0.0122024],[-0.0135181,-0.0244097,0.999611]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item575 = objNull;
if (_layer469 && _layer689) then {
	_item575 = createVehicle ["Land_Shoot_House_Wall_F",[14190.2,10954,0],[],0,"CAN_COLLIDE"];
	_this = _item575;
	_objects pushback _this;
	_objectIDs pushback 575;
	_this setPosWorld [14190.2,10954,38.6275];
	_this setVectorDirAndUp [[-0.998423,0.0534839,-0.0170845],[-0.0186851,-0.0295719,0.999388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item576 = objNull;
if (_layer469 && _layer689) then {
	_item576 = createVehicle ["Land_Shoot_House_Wall_F",[14200.3,10955.5,0],[],0,"CAN_COLLIDE"];
	_this = _item576;
	_objects pushback _this;
	_objectIDs pushback 576;
	_this setPosWorld [14200.3,10955.5,38.8225];
	_this setVectorDirAndUp [[-0.998568,0.0527525,0.00894556],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item577 = objNull;
if (_layer469 && _layer689) then {
	_item577 = createVehicle ["Land_Shoot_House_Wall_F",[14184.3,10956.3,0],[],0,"CAN_COLLIDE"];
	_this = _item577;
	_objects pushback _this;
	_objectIDs pushback 577;
	_this setPosWorld [14184.3,10956.3,38.6153];
	_this setVectorDirAndUp [[-0.998506,0.0533301,-0.0118873],[-0.0134784,-0.0295744,0.999472]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item578 = objNull;
if (_layer469 && _layer689) then {
	_item578 = createVehicle ["Land_Shoot_House_Wall_F",[14200.9,10965.5,0],[],0,"CAN_COLLIDE"];
	_this = _item578;
	_objects pushback _this;
	_objectIDs pushback 578;
	_this setPosWorld [14200.9,10965.5,39.0807];
	_this setVectorDirAndUp [[-0.998161,0.0535902,-0.0283483],[-0.029559,-0.0219344,0.999322]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item579 = objNull;
if (_layer469 && _layer689) then {
	_item579 = createVehicle ["Land_Shoot_House_Wall_F",[14200.8,10963.5,0],[],0,"CAN_COLLIDE"];
	_this = _item579;
	_objects pushback _this;
	_objectIDs pushback 579;
	_this setPosWorld [14200.8,10963.5,39.0337];
	_this setVectorDirAndUp [[-0.998161,0.0535902,-0.0283483],[-0.029559,-0.0219344,0.999322]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item580 = objNull;
if (_layer469 && _layer689) then {
	_item580 = createVehicle ["Land_Shoot_House_Wall_F",[14184.2,10954.3,0],[],0,"CAN_COLLIDE"];
	_this = _item580;
	_objects pushback _this;
	_objectIDs pushback 580;
	_this setPosWorld [14184.2,10954.3,38.5898];
	_this setVectorDirAndUp [[-0.998536,0.0528985,0.0112697],[0.011016,-0.00508544,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item581 = objNull;
if (_layer469 && _layer689) then {
	_item581 = createVehicle ["Land_Shoot_House_Wall_F",[14184.2,10954.3,0],[],0,"CAN_COLLIDE"];
	_this = _item581;
	_objects pushback _this;
	_objectIDs pushback 581;
	_this setPosWorld [14184.2,10954.3,38.5898];
	_this setVectorDirAndUp [[-0.998536,0.0528985,0.0112697],[0.011016,-0.00508544,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item582 = objNull;
if (_layer469 && _layer689) then {
	_item582 = createVehicle ["Land_Shoot_House_Wall_F",[14197.9,10966.6,0],[],0,"CAN_COLLIDE"];
	_this = _item582;
	_objects pushback _this;
	_objectIDs pushback 582;
	_this setPosWorld [14197.9,10966.6,39.09];
	_this setVectorDirAndUp [[-0.052954,-0.998362,-0.0216763],[0.00447493,-0.0219438,0.999749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item583 = objNull;
if (_layer469 && _layer689) then {
	_item583 = createVehicle ["Land_Shoot_House_Wall_F",[14194.3,10955.8,0],[],0,"CAN_COLLIDE"];
	_this = _item583;
	_objects pushback _this;
	_objectIDs pushback 583;
	_this setPosWorld [14194.3,10955.8,38.7562];
	_this setVectorDirAndUp [[-0.998506,0.0532689,-0.0122024],[-0.0135181,-0.0244097,0.999611]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item584 = objNull;
if (_layer469 && _layer689) then {
	_item584 = createVehicle ["Land_Shoot_House_Wall_F",[14184.8,10964.3,0],[],0,"CAN_COLLIDE"];
	_this = _item584;
	_objects pushback _this;
	_objectIDs pushback 584;
	_this setPosWorld [14184.8,10964.3,38.7787];
	_this setVectorDirAndUp [[-0.998506,0.0531042,-0.0128589],[-0.0134784,-0.0113244,0.999845]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item585 = objNull;
if (_layer469 && _layer689) then {
	_item585 = createVehicle ["Land_Shoot_House_Wall_F",[14195.9,10966.7,0],[],0,"CAN_COLLIDE"];
	_this = _item585;
	_objects pushback _this;
	_objectIDs pushback 585;
	_this setPosWorld [14195.9,10966.7,39.1013];
	_this setVectorDirAndUp [[-0.052954,-0.998362,-0.0216763],[0.00447493,-0.0219438,0.999749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item586 = objNull;
if (_layer469 && _layer689) then {
	_item586 = createVehicle ["Land_Shoot_House_Wall_F",[14189.9,10967,0],[],0,"CAN_COLLIDE"];
	_this = _item586;
	_objects pushback _this;
	_objectIDs pushback 586;
	_this setPosWorld [14189.9,10967,39.0784];
	_this setVectorDirAndUp [[-0.0529077,-0.997713,-0.0420763],[-0.0420538,-0.0398719,0.998319]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item587 = objNull;
if (_layer469 && _layer689) then {
	_item587 = createVehicle ["Land_Shoot_House_Wall_F",[14187.9,10967.1,0],[],0,"CAN_COLLIDE"];
	_this = _item587;
	_objects pushback _this;
	_objectIDs pushback 587;
	_this setPosWorld [14187.9,10967.1,38.9987];
	_this setVectorDirAndUp [[-0.0529077,-0.997713,-0.0420763],[-0.0420538,-0.0398719,0.998319]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item588 = objNull;
if (_layer469 && _layer689) then {
	_item588 = createVehicle ["Land_Shoot_House_Wall_F",[14200.4,10957.5,0],[],0,"CAN_COLLIDE"];
	_this = _item588;
	_objects pushback _this;
	_objectIDs pushback 588;
	_this setPosWorld [14200.4,10957.5,38.8704];
	_this setVectorDirAndUp [[-0.998568,0.0527525,0.00894556],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item589 = objNull;
if (_layer469 && _layer689) then {
	_item589 = createVehicle ["Land_Shoot_House_Wall_F",[14200.5,10958.5,0],[],0,"CAN_COLLIDE"];
	_this = _item589;
	_objects pushback _this;
	_objectIDs pushback 589;
	_this setPosWorld [14200.5,10958.5,38.8944];
	_this setVectorDirAndUp [[-0.998568,0.0527525,0.00894556],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item590 = objNull;
if (_layer469 && _layer689) then {
	_item590 = createVehicle ["Land_Shoot_House_Wall_F",[14199.9,10966.5,0],[],0,"CAN_COLLIDE"];
	_this = _item590;
	_objects pushback _this;
	_objectIDs pushback 590;
	_this setPosWorld [14199.9,10966.5,39.0788];
	_this setVectorDirAndUp [[-0.052954,-0.998362,-0.0216763],[0.00447493,-0.0219438,0.999749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item591 = objNull;
if (_layer469 && _layer689) then {
	_item591 = createVehicle ["Land_Shoot_House_Wall_F",[14190.4,10958,0],[],0,"CAN_COLLIDE"];
	_this = _item591;
	_objects pushback _this;
	_objectIDs pushback 591;
	_this setPosWorld [14190.4,10958,38.7495];
	_this setVectorDirAndUp [[-0.998423,0.0534839,-0.0170845],[-0.0186851,-0.0295719,0.999388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item592 = objNull;
if (_layer469 && _layer689) then {
	_item592 = createVehicle ["Land_Shoot_House_Wall_F",[14184.3,10956.3,0],[],0,"CAN_COLLIDE"];
	_this = _item592;
	_objects pushback _this;
	_objectIDs pushback 592;
	_this setPosWorld [14184.3,10956.3,38.6153];
	_this setVectorDirAndUp [[-0.998506,0.0533301,-0.0118873],[-0.0134784,-0.0295744,0.999472]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item593 = objNull;
if (_layer469 && _layer689) then {
	_item593 = createVehicle ["Land_Shoot_House_Wall_F",[14184.9,10966.3,0],[],0,"CAN_COLLIDE"];
	_this = _item593;
	_objects pushback _this;
	_objectIDs pushback 593;
	_this setPosWorld [14184.9,10966.3,38.8367];
	_this setVectorDirAndUp [[-0.997714,0.0545889,-0.039848],[-0.0420538,-0.0398719,0.998319]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item594 = objNull;
if (_layer469 && _layer689) then {
	_item594 = createVehicle ["Land_Shoot_House_Wall_F",[14194.5,10959.8,0],[],0,"CAN_COLLIDE"];
	_this = _item594;
	_objects pushback _this;
	_objectIDs pushback 594;
	_this setPosWorld [14194.5,10959.8,38.8565];
	_this setVectorDirAndUp [[-0.998506,0.0532689,-0.0122024],[-0.0135181,-0.0244097,0.999611]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item595 = objNull;
if (_layer469 && _layer689) then {
	_item595 = createVehicle ["Land_Shoot_House_Wall_F",[14186.3,10960.2,0],[],0,"CAN_COLLIDE"];
	_this = _item595;
	_objects pushback _this;
	_objectIDs pushback 595;
	_this setPosWorld [14186.3,10960.2,38.7535];
	_this setVectorDirAndUp [[-0.998506,0.0531042,-0.0128589],[-0.0134784,-0.0113244,0.999845]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item596 = objNull;
if (_layer469 && _layer689) then {
	_item596 = createVehicle ["Land_Shoot_House_Wall_F",[14190.6,10960,0],[],0,"CAN_COLLIDE"];
	_this = _item596;
	_objects pushback _this;
	_objectIDs pushback 596;
	_this setPosWorld [14190.6,10960,38.8077];
	_this setVectorDirAndUp [[-0.998506,0.0532689,-0.0122024],[-0.0135181,-0.0244097,0.999611]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item597 = objNull;
if (_layer469 && _layer689) then {
	_item597 = createVehicle ["Land_Shoot_House_Wall_F",[14190.8,10964,0],[],0,"CAN_COLLIDE"];
	_this = _item597;
	_objects pushback _this;
	_objectIDs pushback 597;
	_this setPosWorld [14190.8,10964,38.9701];
	_this setVectorDirAndUp [[-0.998506,0.0534517,-0.0113751],[-0.0135181,-0.0399035,0.999112]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item598 = objNull;
if (_layer469 && _layer689) then {
	_item598 = createVehicle ["Land_Shoot_House_Wall_F",[14194.9,10965.8,0],[],0,"CAN_COLLIDE"];
	_this = _item598;
	_objects pushback _this;
	_objectIDs pushback 598;
	_this setPosWorld [14194.9,10965.8,39.0852];
	_this setVectorDirAndUp [[-0.998587,0.0528444,0.00562962],[0.00447493,-0.0219438,0.999749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item599 = objNull;
if (_layer469 && _layer689) then {
	_item599 = createVehicle ["Land_Shoot_House_Wall_F",[14190.9,10966,0],[],0,"CAN_COLLIDE"];
	_this = _item599;
	_objects pushback _this;
	_objectIDs pushback 599;
	_this setPosWorld [14190.9,10966,39.0513];
	_this setVectorDirAndUp [[-0.998506,0.0534517,-0.0113751],[-0.0135181,-0.0399035,0.999112]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item600 = objNull;
if (_layer469 && _layer689) then {
	_item600 = createVehicle ["Land_Shoot_House_Wall_F",[14190.3,10956,0],[],0,"CAN_COLLIDE"];
	_this = _item600;
	_objects pushback _this;
	_objectIDs pushback 600;
	_this setPosWorld [14190.3,10956,38.6885];
	_this setVectorDirAndUp [[-0.998423,0.0534839,-0.0170845],[-0.0186851,-0.0295719,0.999388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item601 = objNull;
if (_layer469 && _layer689) then {
	_item601 = createVehicle ["Land_Shoot_House_Wall_F",[14199.4,10957.5,0],[],0,"CAN_COLLIDE"];
	_this = _item601;
	_objects pushback _this;
	_objectIDs pushback 601;
	_this setPosWorld [14199.4,10957.5,38.8674];
	_this setVectorDirAndUp [[-0.0529497,-0.998282,-0.0250933],[-0.0135181,-0.0244097,0.999611]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item602 = objNull;
if (_layer469 && _layer689) then {
	_item602 = createVehicle ["Land_Shoot_House_Wall_F",[14197.4,10957.6,0],[],0,"CAN_COLLIDE"];
	_this = _item602;
	_objects pushback _this;
	_objectIDs pushback 602;
	_this setPosWorld [14197.4,10957.6,38.843];
	_this setVectorDirAndUp [[-0.0529497,-0.998282,-0.0250933],[-0.0135181,-0.0244097,0.999611]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item603 = objNull;
if (_layer469 && _layer689) then {
	_item603 = createVehicle ["Land_Shoot_House_Wall_F",[14195.4,10957.7,0],[],0,"CAN_COLLIDE"];
	_this = _item603;
	_objects pushback _this;
	_objectIDs pushback 603;
	_this setPosWorld [14195.4,10957.7,38.8186];
	_this setVectorDirAndUp [[-0.0529497,-0.998282,-0.0250933],[-0.0135181,-0.0244097,0.999611]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item604 = objNull;
if (_layer469 && _layer689) then {
	_item604 = createVehicle ["Land_Shoot_House_Wall_F",[14189.3,10955.1,0],[],0,"CAN_COLLIDE"];
	_this = _item604;
	_objects pushback _this;
	_objectIDs pushback 604;
	_this setPosWorld [14189.3,10955.1,38.6446];
	_this setVectorDirAndUp [[-0.0529497,-0.998139,-0.030249],[-0.0134784,-0.0295744,0.999472]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item605 = objNull;
if (_layer469 && _layer689) then {
	_item605 = createVehicle ["Land_Shoot_House_Wall_F",[14189.1,10951,0],[],0,"CAN_COLLIDE"];
	_this = _item605;
	_objects pushback _this;
	_objectIDs pushback 605;
	_this setPosWorld [14189.1,10951,38.5235];
	_this setVectorDirAndUp [[-0.0529497,-0.998139,-0.030249],[-0.0134784,-0.0295744,0.999472]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item606 = objNull;
if (_layer469 && _layer689) then {
	_item606 = createVehicle ["Land_Shoot_House_Wall_F",[14185.3,10955.3,0],[],0,"CAN_COLLIDE"];
	_this = _item606;
	_objects pushback _this;
	_objectIDs pushback 606;
	_this setPosWorld [14185.3,10955.3,38.597];
	_this setVectorDirAndUp [[-0.0529497,-0.998139,-0.030249],[-0.0134784,-0.0295744,0.999472]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item607 = objNull;
if (_layer469 && _layer689) then {
	_item607 = createVehicle ["Land_Shoot_House_Wall_F",[14185.9,10967.3,0],[],0,"CAN_COLLIDE"];
	_this = _item607;
	_objects pushback _this;
	_objectIDs pushback 607;
	_this setPosWorld [14185.9,10967.3,38.9188];
	_this setVectorDirAndUp [[-0.0529077,-0.997713,-0.0420763],[-0.0420538,-0.0398719,0.998319]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item608 = objNull;
if (_layer469 && _layer689) then {
	_item608 = createVehicle ["Land_Shoot_House_Wall_F",[14189.6,10961,0],[],0,"CAN_COLLIDE"];
	_this = _item608;
	_objects pushback _this;
	_objectIDs pushback 608;
	_this setPosWorld [14189.6,10961,38.8256];
	_this setVectorDirAndUp [[-0.0529077,-0.997713,-0.0420763],[-0.0420538,-0.0398719,0.998319]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item609 = objNull;
if (_layer469 && _layer689) then {
	_item609 = createVehicle ["Land_Shoot_House_Wall_F",[14200.3,10955.5,0],[],0,"CAN_COLLIDE"];
	_this = _item609;
	_objects pushback _this;
	_objectIDs pushback 609;
	_this setPosWorld [14200.3,10955.5,38.8225];
	_this setVectorDirAndUp [[-0.998568,0.0527525,0.00894556],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item610 = objNull;
if (_layer469 && _layer689) then {
	_item610 = createVehicle ["Land_Shoot_House_Wall_F",[14191.9,10966.9,0],[],0,"CAN_COLLIDE"];
	_this = _item610;
	_objects pushback _this;
	_objectIDs pushback 610;
	_this setPosWorld [14191.9,10966.9,39.1033];
	_this setVectorDirAndUp [[-0.0529497,-0.997773,-0.0405665],[-0.0135181,-0.0399035,0.999112]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item611 = objNull;
if (_layer469 && _layer689) then {
	_item611 = createVehicle ["Land_Shoot_House_Wall_F",[14194.8,10963.8,0],[],0,"CAN_COLLIDE"];
	_this = _item611;
	_objects pushback _this;
	_objectIDs pushback 611;
	_this setPosWorld [14194.8,10963.8,39.0156];
	_this setVectorDirAndUp [[-0.998506,0.0534517,-0.0113751],[-0.0135181,-0.0399035,0.999112]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item612 = objNull;
if (_layer469 && _layer689) then {
	_item612 = createVehicle ["Land_Shoot_House_Wall_F",[14184,10950.3,0],[],0,"CAN_COLLIDE"];
	_this = _item612;
	_objects pushback _this;
	_objectIDs pushback 612;
	_this setPosWorld [14184,10950.3,38.5718];
	_this setVectorDirAndUp [[-0.998536,0.0528985,0.0112697],[0.011016,-0.00508544,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item613 = objNull;
if (_layer469 && _layer689) then {
	_item613 = createVehicle ["Land_Shoot_House_Wall_F",[14192.5,10940,0],[],0,"CAN_COLLIDE"];
	_this = _item613;
	_objects pushback _this;
	_objectIDs pushback 613;
	_this setPosWorld [14192.5,10940,38.0883];
	_this setVectorDirAndUp [[-0.0529539,-0.997666,-0.0431177],[-0.00506259,-0.0429095,0.999066]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item614 = objNull;
if (_layer469 && _layer689) then {
	_item614 = createVehicle ["Land_Shoot_House_Wall_F",[14200.1,10951.5,0],[],0,"CAN_COLLIDE"];
	_this = _item614;
	_objects pushback _this;
	_objectIDs pushback 614;
	_this setPosWorld [14200.1,10951.5,38.7265];
	_this setVectorDirAndUp [[-0.998568,0.0527525,0.00894556],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item615 = objNull;
if (_layer469 && _layer689) then {
	_item615 = createVehicle ["Land_Shoot_House_Wall_F",[14183.8,10946.4,0],[],0,"CAN_COLLIDE"];
	_this = _item615;
	_objects pushback _this;
	_objectIDs pushback 615;
	_this setPosWorld [14183.8,10946.4,38.4165];
	_this setVectorDirAndUp [[-0.998536,0.0524344,0.0132627],[0.011016,-0.0429075,0.999018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item616 = objNull;
if (_layer469 && _layer689) then {
	_item616 = createVehicle ["Land_Shoot_House_Wall_F",[14199.7,10944.5,0],[],0,"CAN_COLLIDE"];
	_this = _item616;
	_objects pushback _this;
	_objectIDs pushback 616;
	_this setPosWorld [14199.7,10944.5,38.3747];
	_this setVectorDirAndUp [[-0.998423,0.0539248,-0.0156408],[-0.0186883,-0.0564803,0.998229]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item617 = objNull;
if (_layer469 && _layer689) then {
	_item617 = createVehicle ["Land_Shoot_House_Wall_F",[14194.1,10951.8,0],[],0,"CAN_COLLIDE"];
	_this = _item617;
	_objects pushback _this;
	_objectIDs pushback 617;
	_this setPosWorld [14194.1,10951.8,38.6347];
	_this setVectorDirAndUp [[-0.998423,0.0534839,-0.0170845],[-0.0186851,-0.0295719,0.999388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item618 = objNull;
if (_layer469 && _layer689) then {
	_item618 = createVehicle ["Land_Shoot_House_Wall_F",[14185.8,10948.2,0],[],0,"CAN_COLLIDE"];
	_this = _item618;
	_objects pushback _this;
	_objectIDs pushback 618;
	_this setPosWorld [14185.8,10948.2,38.4728];
	_this setVectorDirAndUp [[-0.998536,0.0524344,0.0132627],[0.011016,-0.0429075,0.999018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item619 = objNull;
if (_layer469 && _layer689) then {
	_item619 = createVehicle ["Land_Shoot_House_Wall_F",[14194.5,10939.9,0],[],0,"CAN_COLLIDE"];
	_this = _item619;
	_objects pushback _this;
	_objectIDs pushback 619;
	_this setPosWorld [14194.5,10939.9,38.0942];
	_this setVectorDirAndUp [[-0.0529539,-0.997831,-0.0390923],[-0.00506259,-0.0388785,0.999231]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item620 = objNull;
if (_layer469 && _layer689) then {
	_item620 = createVehicle ["Land_Shoot_House_Wall_F",[14183.6,10941.5,0],[],0,"CAN_COLLIDE"];
	_this = _item620;
	_objects pushback _this;
	_objectIDs pushback 620;
	_this setPosWorld [14183.6,10941.5,38.225];
	_this setVectorDirAndUp [[-0.998498,0.0523532,0.0161392],[0.0140584,-0.0398732,0.999106]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item621 = objNull;
if (_layer469 && _layer689) then {
	_item621 = createVehicle ["Land_Shoot_House_Wall_F",[14188.5,10940.2,0],[],0,"CAN_COLLIDE"];
	_this = _item621;
	_objects pushback _this;
	_objectIDs pushback 621;
	_this setPosWorld [14188.5,10940.2,38.1051];
	_this setVectorDirAndUp [[-0.0529493,-0.997832,-0.0390773],[0.0140584,-0.0398732,0.999106]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item622 = objNull;
if (_layer469 && _layer689) then {
	_item622 = createVehicle ["Land_Shoot_House_Wall_F",[14186.5,10940.3,0],[],0,"CAN_COLLIDE"];
	_this = _item622;
	_objects pushback _this;
	_objectIDs pushback 622;
	_this setPosWorld [14186.5,10940.3,38.1375];
	_this setVectorDirAndUp [[-0.0529493,-0.997832,-0.0390773],[0.0140584,-0.0398732,0.999106]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item623 = objNull;
if (_layer469 && _layer689) then {
	_item623 = createVehicle ["Land_Shoot_House_Wall_F",[14194,10949.8,0],[],0,"CAN_COLLIDE"];
	_this = _item623;
	_objects pushback _this;
	_objectIDs pushback 623;
	_this setPosWorld [14194,10949.8,38.5681];
	_this setVectorDirAndUp [[-0.998423,0.0539248,-0.0156408],[-0.0186883,-0.0564803,0.998229]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item624 = objNull;
if (_layer469 && _layer689) then {
	_item624 = createVehicle ["Land_Shoot_House_Wall_F",[14190,10950,0],[],0,"CAN_COLLIDE"];
	_this = _item624;
	_objects pushback _this;
	_objectIDs pushback 624;
	_this setPosWorld [14190,10950,38.5052];
	_this setVectorDirAndUp [[-0.998423,0.0534839,-0.0170845],[-0.0186851,-0.0295719,0.999388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item625 = objNull;
if (_layer469 && _layer689) then {
	_item625 = createVehicle ["Land_Shoot_House_Wall_F",[14199.6,10942.5,0],[],0,"CAN_COLLIDE"];
	_this = _item625;
	_objects pushback _this;
	_objectIDs pushback 625;
	_this setPosWorld [14199.6,10942.5,38.2597];
	_this setVectorDirAndUp [[-0.998423,0.0539248,-0.0156408],[-0.0186883,-0.0564803,0.998229]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item626 = objNull;
if (_layer469 && _layer689) then {
	_item626 = createVehicle ["Land_Shoot_House_Wall_F",[14193.8,10945.8,0],[],0,"CAN_COLLIDE"];
	_this = _item626;
	_objects pushback _this;
	_objectIDs pushback 626;
	_this setPosWorld [14193.8,10945.8,38.3412];
	_this setVectorDirAndUp [[-0.998584,0.0531233,-0.00277852],[-0.00506259,-0.0429095,0.999066]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item627 = objNull;
if (_layer469 && _layer689) then {
	_item627 = createVehicle ["Land_Shoot_House_Wall_F",[14193.5,10941,0],[],0,"CAN_COLLIDE"];
	_this = _item627;
	_objects pushback _this;
	_objectIDs pushback 627;
	_this setPosWorld [14193.5,10941,38.1343];
	_this setVectorDirAndUp [[-0.998584,0.0531233,-0.00277852],[-0.00506259,-0.0429095,0.999066]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item628 = objNull;
if (_layer469 && _layer689) then {
	_item628 = createVehicle ["Land_Shoot_House_Wall_F",[14199.5,10940.6,0],[],0,"CAN_COLLIDE"];
	_this = _item628;
	_objects pushback _this;
	_objectIDs pushback 628;
	_this setPosWorld [14199.5,10940.6,38.1535];
	_this setVectorDirAndUp [[-0.998423,0.0539248,-0.0156408],[-0.0186883,-0.0564803,0.998229]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item629 = objNull;
if (_layer469 && _layer689) then {
	_item629 = createVehicle ["Land_Shoot_House_Wall_F",[14189.6,10941.2,0],[],0,"CAN_COLLIDE"];
	_this = _item629;
	_objects pushback _this;
	_objectIDs pushback 629;
	_this setPosWorld [14189.6,10941.2,38.1303];
	_this setVectorDirAndUp [[-0.998536,0.0524344,0.0132627],[0.011016,-0.0429075,0.999018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item630 = objNull;
if (_layer469 && _layer689) then {
	_item630 = createVehicle ["Land_Shoot_House_Wall_F",[14189.9,10948,0],[],0,"CAN_COLLIDE"];
	_this = _item630;
	_objects pushback _this;
	_objectIDs pushback 630;
	_this setPosWorld [14189.9,10948,38.4199];
	_this setVectorDirAndUp [[-0.998536,0.0524344,0.0132627],[0.011016,-0.0429075,0.999018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item631 = objNull;
if (_layer469 && _layer689) then {
	_item631 = createVehicle ["Land_Shoot_House_Wall_F",[14198.5,10939.7,0],[],0,"CAN_COLLIDE"];
	_this = _item631;
	_objects pushback _this;
	_objectIDs pushback 631;
	_this setPosWorld [14198.5,10939.7,38.1062];
	_this setVectorDirAndUp [[-0.0529539,-0.997831,-0.0390923],[-0.00506259,-0.0388785,0.999231]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item632 = objNull;
if (_layer469 && _layer689) then {
	_item632 = createVehicle ["Land_Shoot_House_Wall_F",[14199.1,10950.5,0],[],0,"CAN_COLLIDE"];
	_this = _item632;
	_objects pushback _this;
	_objectIDs pushback 632;
	_this setPosWorld [14199.1,10950.5,38.6897];
	_this setVectorDirAndUp [[-0.0529453,-0.998131,-0.0305246],[-0.0186851,-0.0295719,0.999388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item633 = objNull;
if (_layer469 && _layer689) then {
	_item633 = createVehicle ["Land_Shoot_House_Wall_F",[14195.1,10950.7,0],[],0,"CAN_COLLIDE"];
	_this = _item633;
	_objects pushback _this;
	_objectIDs pushback 633;
	_this setPosWorld [14195.1,10950.7,38.6212];
	_this setVectorDirAndUp [[-0.0529453,-0.998131,-0.0305246],[-0.0186851,-0.0295719,0.999388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item634 = objNull;
if (_layer469 && _layer689) then {
	_item634 = createVehicle ["Land_Shoot_House_Wall_F",[14189,10949.1,0],[],0,"CAN_COLLIDE"];
	_this = _item634;
	_objects pushback _this;
	_objectIDs pushback 634;
	_this setPosWorld [14189,10949.1,38.4757];
	_this setVectorDirAndUp [[-0.0529513,-0.997702,-0.0422671],[0.011016,-0.0429075,0.999018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item635 = objNull;
if (_layer469 && _layer689) then {
	_item635 = createVehicle ["Land_Shoot_House_Wall_F",[14187,10949.2,0],[],0,"CAN_COLLIDE"];
	_this = _item635;
	_objects pushback _this;
	_objectIDs pushback 635;
	_this setPosWorld [14187,10949.2,38.5021];
	_this setVectorDirAndUp [[-0.0529513,-0.997702,-0.0422671],[0.011016,-0.0429075,0.999018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item636 = objNull;
if (_layer469 && _layer689) then {
	_item636 = createVehicle ["Land_Shoot_House_Wall_F",[14184.8,10947.2,0],[],0,"CAN_COLLIDE"];
	_this = _item636;
	_objects pushback _this;
	_objectIDs pushback 636;
	_this setPosWorld [14184.8,10947.2,38.4411];
	_this setVectorDirAndUp [[-0.0529513,-0.997702,-0.0422671],[0.011016,-0.0429075,0.999018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item637 = objNull;
if (_layer469 && _layer689) then {
	_item637 = createVehicle ["Land_Shoot_House_Wall_F",[14184.5,10940.4,0],[],0,"CAN_COLLIDE"];
	_this = _item637;
	_objects pushback _this;
	_objectIDs pushback 637;
	_this setPosWorld [14184.5,10940.4,38.1698];
	_this setVectorDirAndUp [[-0.0529493,-0.997832,-0.0390773],[0.0140584,-0.0398732,0.999106]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item638 = objNull;
if (_layer469 && _layer689) then {
	_item638 = createVehicle ["Land_Shoot_House_Wall_F",[14200.1,10951.5,0],[],0,"CAN_COLLIDE"];
	_this = _item638;
	_objects pushback _this;
	_objectIDs pushback 638;
	_this setPosWorld [14200.1,10951.5,38.7265];
	_this setVectorDirAndUp [[-0.998568,0.0527525,0.00894556],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item639 = objNull;
if (_layer469 && _layer689) then {
	_item639 = createVehicle ["Land_Shoot_House_Wall_F",[14184.2,10952.3,0],[],0,"CAN_COLLIDE"];
	_this = _item639;
	_objects pushback _this;
	_objectIDs pushback 639;
	_this setPosWorld [14184.2,10952.3,38.5805];
	_this setVectorDirAndUp [[0.998536,-0.0528973,-0.0112697],[0.011016,-0.00508544,0.999926]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item640 = objNull;
if (_layer469 && _layer689) then {
	_item640 = createVehicle ["Land_Shoot_House_Wall_F",[14189.6,10943.2,0],[],0,"CAN_COLLIDE"];
	_this = _item640;
	_objects pushback _this;
	_objectIDs pushback 640;
	_this setPosWorld [14189.6,10943.2,38.2166];
	_this setVectorDirAndUp [[-0.998536,0.0524344,0.0132627],[0.011016,-0.0429075,0.999018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item641 = objNull;
if (_layer469 && _layer689) then {
	_item641 = createVehicle ["Land_Shoot_House_Wall_F",[14183.8,10944.3,0],[],0,"CAN_COLLIDE"];
	_this = _item641;
	_objects pushback _this;
	_objectIDs pushback 641;
	_this setPosWorld [14183.8,10944.3,38.3359];
	_this setVectorDirAndUp [[0.998498,-0.052352,-0.0161392],[0.0140584,-0.0398732,0.999106]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item642 = objNull;
if (_layer469 && _layer689) then {
	_item642 = createVehicle ["Land_Shoot_House_Wall_F",[14193.9,10947.8,0],[],0,"CAN_COLLIDE"];
	_this = _item642;
	_objects pushback _this;
	_objectIDs pushback 642;
	_this setPosWorld [14193.9,10947.8,38.4532];
	_this setVectorDirAndUp [[-0.998423,0.0539248,-0.0156408],[-0.0186883,-0.0564803,0.998229]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item643 = objNull;
if (_layer469 && _layer689) then {
	_item643 = createVehicle ["Land_Shoot_House_Wall_F",[14197.1,10950.6,0],[],0,"CAN_COLLIDE"];
	_this = _item643;
	_objects pushback _this;
	_objectIDs pushback 643;
	_this setPosWorld [14197.1,10950.6,38.6554];
	_this setVectorDirAndUp [[-0.0529453,-0.998131,-0.0305246],[-0.0186851,-0.0295719,0.999388]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item644 = objNull;
if (_layer469 && _layer689) then {
	_item644 = createVehicle ["Land_Shoot_House_Wall_F",[14208.5,10939,0],[],0,"CAN_COLLIDE"];
	_this = _item644;
	_objects pushback _this;
	_objectIDs pushback 644;
	_this setPosWorld [14208.5,10939,37.8938];
	_this setVectorDirAndUp [[-0.0529315,-0.998393,0.0202492],[0.029496,0.0187057,0.99939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item645 = objNull;
if (_layer469 && _layer689) then {
	_item645 = createVehicle ["Land_Shoot_House_Wall_F",[14217.9,10965.5,0],[],0,"CAN_COLLIDE"];
	_this = _item645;
	_objects pushback _this;
	_objectIDs pushback 645;
	_this setPosWorld [14217.9,10965.5,39.3942];
	_this setVectorDirAndUp [[-0.0529453,-0.997338,-0.0501304],[-0.0186979,-0.0492019,0.998614]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item646 = objNull;
if (_layer469 && _layer689) then {
	_item646 = createVehicle ["Land_Shoot_House_Wall_F",[14213,10948.8,0],[],0,"CAN_COLLIDE"];
	_this = _item646;
	_objects pushback _this;
	_objectIDs pushback 646;
	_this setPosWorld [14213,10948.8,38.5019];
	_this setVectorDirAndUp [[-0.0529464,-0.997425,-0.0483763],[0.0174788,-0.0493625,0.998628]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item647 = objNull;
if (_layer469 && _layer689) then {
	_item647 = createVehicle ["Land_Shoot_House_Wall_F",[14207.1,10952.1,0],[],0,"CAN_COLLIDE"];
	_this = _item647;
	_objects pushback _this;
	_objectIDs pushback 647;
	_this setPosWorld [14207.1,10952.1,38.688];
	_this setVectorDirAndUp [[0.0529522,0.998309,0.0239719],[0.00766586,-0.0244112,0.999673]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item648 = objNull;
if (_layer469 && _layer689) then {
	_item648 = createVehicle ["Land_Shoot_House_Wall_F",[14188.3,10952.1,0],[],0,"CAN_COLLIDE"];
	_this = _item648;
	_objects pushback _this;
	_objectIDs pushback 648;
	_this setPosWorld [14188.3,10952.1,38.5439];
	_this setVectorDirAndUp [[-0.998506,0.0533301,-0.0118873],[-0.0134784,-0.0295744,0.999472]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item649 = objNull;
if (_layer469 && _layer689) then {
	_item649 = createVehicle ["Land_Shoot_House_Wall_F",[14190.5,10940.1,0],[],0,"CAN_COLLIDE"];
	_this = _item649;
	_objects pushback _this;
	_objectIDs pushback 649;
	_this setPosWorld [14190.5,10940.1,38.0824];
	_this setVectorDirAndUp [[-0.0529539,-0.997666,-0.0431177],[-0.00506259,-0.0429095,0.999066]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item650 = objNull;
if (_layer469 && _layer689) then {
	_item650 = createVehicle ["Land_Shoot_House_Wall_F",[14196.5,10939.8,0],[],0,"CAN_COLLIDE"];
	_this = _item650;
	_objects pushback _this;
	_objectIDs pushback 650;
	_this setPosWorld [14196.5,10939.8,38.1013];
	_this setVectorDirAndUp [[-0.0529539,-0.997831,-0.0390923],[-0.00506259,-0.0388785,0.999231]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item651 = objNull;
if (_layer469 && _layer689) then {
	_item651 = createVehicle ["Land_Shoot_House_Wall_F",[14193.9,10966.8,0],[],0,"CAN_COLLIDE"];
	_this = _item651;
	_objects pushback _this;
	_objectIDs pushback 651;
	_this setPosWorld [14193.9,10966.8,39.1123];
	_this setVectorDirAndUp [[-0.052954,-0.998362,-0.0216763],[0.00447493,-0.0219438,0.999749]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item652 = objNull;
if (_layer469 && _layer689) then {
	_item652 = createVehicle ["Land_Shoot_House_Wall_F",[14184.7,10962.3,0],[],0,"CAN_COLLIDE"];
	_this = _item652;
	_objects pushback _this;
	_objectIDs pushback 652;
	_this setPosWorld [14184.7,10962.3,38.7549];
	_this setVectorDirAndUp [[-0.998506,0.0531042,-0.0128589],[-0.0134784,-0.0113244,0.999845]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item653 = objNull;
if (_layer469 && _layer689) then {
	_item653 = createVehicle ["Land_Shoot_House_Wall_F",[14185,10949.3,0],[],0,"CAN_COLLIDE"];
	_this = _item653;
	_objects pushback _this;
	_objectIDs pushback 653;
	_this setPosWorld [14185,10949.3,38.5285];
	_this setVectorDirAndUp [[-0.0529513,-0.997702,-0.0422671],[0.011016,-0.0429075,0.999018]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item654 = objNull;
if (_layer469 && _layer689) then {
	_item654 = createVehicle ["Land_Shoot_House_Wall_F",[14185.5,10961.3,0],[],0,"CAN_COLLIDE"];
	_this = _item654;
	_objects pushback _this;
	_objectIDs pushback 654;
	_this setPosWorld [14185.5,10961.3,38.7551];
	_this setVectorDirAndUp [[-0.0529497,-0.998525,-0.0120232],[-0.0134784,-0.0113244,0.999845]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item655 = objNull;
if (_layer469 && _layer689) then {
	_item655 = createVehicle ["Land_Shoot_House_Wall_F",[14185.4,10959.2,0],[],0,"CAN_COLLIDE"];
	_this = _item655;
	_objects pushback _this;
	_objectIDs pushback 655;
	_this setPosWorld [14185.4,10959.2,38.7139];
	_this setVectorDirAndUp [[-0.0529497,-0.998139,-0.030249],[-0.0134784,-0.0295744,0.999472]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item656 = objNull;
if (_layer469 && _layer689) then {
	_item656 = createVehicle ["Land_Shoot_House_Wall_F",[14205.9,10966.2,0],[],0,"CAN_COLLIDE"];
	_this = _item656;
	_objects pushback _this;
	_objectIDs pushback 656;
	_this setPosWorld [14205.9,10966.2,39.2491];
	_this setVectorDirAndUp [[-0.0529289,-0.998283,-0.025108],[-0.0311048,-0.0234829,0.99924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item657 = objNull;
if (_layer469 && _layer689) then {
	_item657 = createVehicle ["Land_Shoot_House_Wall_F",[14201.9,10966.4,0],[],0,"CAN_COLLIDE"];
	_this = _item657;
	_objects pushback _this;
	_objectIDs pushback 657;
	_this setPosWorld [14201.9,10966.4,39.1324];
	_this setVectorDirAndUp [[-0.0529314,-0.998322,-0.0234781],[-0.029559,-0.0219344,0.999322]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item658 = objNull;
if (_layer469 && _layer689) then {
	_item658 = createVehicle ["Land_Shoot_House_Wall_F",[14203.9,10966.3,0],[],0,"CAN_COLLIDE"];
	_this = _item658;
	_objects pushback _this;
	_objectIDs pushback 658;
	_this setPosWorld [14203.9,10966.3,39.1895];
	_this setVectorDirAndUp [[-0.0529289,-0.998283,-0.025108],[-0.0311048,-0.0234829,0.99924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item659 = objNull;
if (_layer469 && _layer689) then {
	_item659 = createVehicle ["Land_Shoot_House_Wall_F",[14183.7,10942.9,0],[],0,"CAN_COLLIDE"];
	_this = _item659;
	_objects pushback _this;
	_objectIDs pushback 659;
	_this setPosWorld [14183.7,10942.9,38.2802];
	_this setVectorDirAndUp [[0.998498,-0.052352,-0.0161392],[0.0140584,-0.0398732,0.999106]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item660 = objNull;
if (_layer469 && _layer689) then {
	_item660 = createVehicle ["Land_Shoot_House_Wall_F",[14204.5,10939.3,0],[],0,"CAN_COLLIDE"];
	_this = _item660;
	_objects pushback _this;
	_objectIDs pushback 660;
	_this setPosWorld [14204.5,10939.3,38.007];
	_this setVectorDirAndUp [[-0.0529315,-0.998393,0.0202492],[0.029496,0.0187057,0.99939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item661 = objNull;
if (_layer469 && _layer689) then {
	_item661 = createVehicle ["Land_Shoot_House_Wall_F",[14202.5,10939.4,0],[],0,"CAN_COLLIDE"];
	_this = _item661;
	_objects pushback _this;
	_objectIDs pushback 661;
	_this setPosWorld [14202.5,10939.4,38.0639];
	_this setVectorDirAndUp [[-0.0529315,-0.998393,0.0202492],[0.029496,0.0187057,0.99939]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item662 = objNull;
if (_layer469 && _layer689) then {
	_item662 = createVehicle ["Land_Shoot_House_Wall_F",[14200.5,10939.5,0],[],0,"CAN_COLLIDE"];
	_this = _item662;
	_objects pushback _this;
	_objectIDs pushback 662;
	_this setPosWorld [14200.5,10939.5,38.1198];
	_this setVectorDirAndUp [[-0.0529336,-0.997784,-0.0403136],[-0.0281084,-0.0388655,0.998849]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item663 = objNull;
if (_layer469 && _layer689) then {
	_item663 = createVehicle ["VR_Area_01_circle_4_yellow_F",[14201.3,10934.4,0],[],0,"CAN_COLLIDE"];
	_this = _item663;
	_objects pushback _this;
	_objectIDs pushback 663;
	_this setPosWorld [14201.3,10934.4,36.2703];
	_this setVectorDirAndUp [[0.0562523,0.998417,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item667 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item667 = createVehicle ["Sign_Arrow_F",[14201.8,10958.1,0],[],0,"CAN_COLLIDE"];
	_this = _item667;
	_objects pushback _this;
	_objectIDs pushback 667;
	_this setPosWorld [14201.8,10958.1,37.574];
	_this setVectorDirAndUp [[0.999256,-0.0376013,-0.00858086],[0.00766586,-0.0244112,0.999673]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item668 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item668 = createVehicle ["Sign_Arrow_F",[14193.5,10964.7,0],[],0,"CAN_COLLIDE"];
	_this = _item668;
	_objects pushback _this;
	_objectIDs pushback 668;
	_this setPosWorld [14193.5,10964.7,37.7341];
	_this setVectorDirAndUp [[-0.0577684,-0.997503,-0.0406209],[-0.0135181,-0.0399035,0.999112]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item669 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item669 = createVehicle ["Sign_Arrow_F",[14185.2,10953.7,0],[],0,"CAN_COLLIDE"];
	_this = _item669;
	_objects pushback _this;
	_objectIDs pushback 669;
	_this setPosWorld [14185.2,10953.7,37.2736];
	_this setVectorDirAndUp [[0.998525,-0.0531177,-0.0112707],[0.011016,-0.00508544,0.999926]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item670 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item670 = createVehicle ["Sign_Arrow_F",[14197.6,10943.4,0],[],0,"CAN_COLLIDE"];
	_this = _item670;
	_objects pushback _this;
	_objectIDs pushback 670;
	_this setPosWorld [14197.6,10943.4,36.9711];
	_this setVectorDirAndUp [[0.088049,0.994431,0.0579139],[-0.0186883,-0.0564803,0.998229]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item671 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item671 = createVehicle ["Sign_Arrow_F",[14186.8,10942.8,0],[],0,"CAN_COLLIDE"];
	_this = _item671;
	_objects pushback _this;
	_objectIDs pushback 671;
	_this setPosWorld [14186.8,10942.8,36.9301];
	_this setVectorDirAndUp [[0.0983484,0.994415,0.0383021],[0.0140584,-0.0398732,0.999106]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item672 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item672 = createVehicle ["Sign_Arrow_F",[14217.3,10950.5,0],[],0,"CAN_COLLIDE"];
	_this = _item672;
	_objects pushback _this;
	_objectIDs pushback 672;
	_this setPosWorld [14217.3,10950.5,37.2182];
	_this setVectorDirAndUp [[0.00611843,-0.998079,-0.0616481],[0.0174755,-0.0615331,0.997952]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item673 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item673 = createVehicle ["Sign_Arrow_F",[14215.3,10953.9,0],[],0,"CAN_COLLIDE"];
	_this = _item673;
	_objects pushback _this;
	_objectIDs pushback 673;
	_this setPosWorld [14215.3,10953.9,37.4593];
	_this setVectorDirAndUp [[0.0345871,0.997544,0.0609023],[0.0174755,-0.0615331,0.997952]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item674 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item674 = createVehicle ["Sign_Arrow_F",[14207.6,10955,0],[],0,"CAN_COLLIDE"];
	_this = _item674;
	_objects pushback _this;
	_objectIDs pushback 674;
	_this setPosWorld [14207.6,10955,37.5486];
	_this setVectorDirAndUp [[0.0235795,0.997784,0.0622213],[-0.0295569,-0.0615156,0.997668]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item675 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item675 = createVehicle ["Sign_Arrow_F",[14209.3,10950.9,0],[],0,"CAN_COLLIDE"];
	_this = _item675;
	_objects pushback _this;
	_objectIDs pushback 675;
	_this setPosWorld [14209.3,10950.9,37.3495];
	_this setVectorDirAndUp [[-0.0498031,-0.996774,-0.062936],[-0.0295569,-0.0615156,0.997668]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item676 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item676 = createVehicle ["Sign_Arrow_F",[14202.3,10953.5,0],[],0,"CAN_COLLIDE"];
	_this = _item676;
	_objects pushback _this;
	_objectIDs pushback 676;
	_this setPosWorld [14202.3,10953.5,37.4564];
	_this setVectorDirAndUp [[0.725381,0.688256,0.0112442],[0.00766586,-0.0244112,0.999673]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item677 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item677 = createVehicle ["Sign_Arrow_F",[14208.9,10963.7,0],[],0,"CAN_COLLIDE"];
	_this = _item677;
	_objects pushback _this;
	_objectIDs pushback 677;
	_this setPosWorld [14208.9,10963.7,37.9809];
	_this setVectorDirAndUp [[0.998249,-0.0510622,0.0298739],[-0.0311048,-0.0234829,0.99924]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item678 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item678 = createVehicle ["Sign_Arrow_F",[14189.2,10949.9,0],[],0,"CAN_COLLIDE"];
	_this = _item678;
	_objects pushback _this;
	_objectIDs pushback 678;
	_this setPosWorld [14189.2,10949.9,37.2057];
	_this setVectorDirAndUp [[0.998525,-0.0526534,-0.013272],[0.011016,-0.0429075,0.999018]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item679 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item679 = createVehicle ["Sign_Arrow_F",[14213.3,10949.9,0],[],0,"CAN_COLLIDE"];
	_this = _item679;
	_objects pushback _this;
	_objectIDs pushback 679;
	_this setPosWorld [14213.3,10949.9,37.2488];
	_this setVectorDirAndUp [[0.998433,-0.0522478,-0.020058],[0.0174788,-0.0493625,0.998628]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item680 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item680 = createVehicle ["Sign_Arrow_F",[14214,10963.3,0],[],0,"CAN_COLLIDE"];
	_this = _item680;
	_objects pushback _this;
	_objectIDs pushback 680;
	_this setPosWorld [14214,10963.3,37.977];
	_this setVectorDirAndUp [[0.99856,-0.0529939,-0.00830479],[0.00706745,-0.0234937,0.999699]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item681 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item681 = createVehicle ["Sign_Arrow_F",[14196,10964.7,0],[],0,"CAN_COLLIDE"];
	_this = _item681;
	_objects pushback _this;
	_objectIDs pushback 681;
	_this setPosWorld [14196,10964.7,37.7537];
	_this setVectorDirAndUp [[-0.998646,0.0517227,0.00560527],[0.00447493,-0.0219438,0.999749]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item682 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item682 = createVehicle ["Sign_Arrow_F",[14197,10958.7,0],[],0,"CAN_COLLIDE"];
	_this = _item682;
	_objects pushback _this;
	_objectIDs pushback 682;
	_this setPosWorld [14197,10958.7,37.562];
	_this setVectorDirAndUp [[-0.998564,0.0521474,-0.0122306],[-0.0135181,-0.0244097,0.999611]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item683 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item683 = createVehicle ["Sign_Arrow_F",[14217.2,10941.6,0],[],0,"CAN_COLLIDE"];
	_this = _item683;
	_objects pushback _this;
	_objectIDs pushback 683;
	_this setPosWorld [14217.2,10941.6,36.7326];
	_this setVectorDirAndUp [[-0.99859,0.0525731,-0.00740519],[-0.0115081,-0.0781743,0.996873]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item684 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item684 = createVehicle ["Sign_Arrow_F",[14187.5,10965.7,0],[],0,"CAN_COLLIDE"];
	_this = _item684;
	_objects pushback _this;
	_objectIDs pushback 684;
	_this setPosWorld [14187.5,10965.7,37.6189];
	_this setVectorDirAndUp [[0.998401,-0.0394465,0.0404818],[-0.0420538,-0.0398719,0.998319]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item685 = objNull;
if (_layer666 && _layer469 && _layer689) then {
	_item685 = createVehicle ["Sign_Arrow_F",[14217.4,10957.7,0],[],0,"CAN_COLLIDE"];
	_this = _item685;
	_objects pushback _this;
	_objectIDs pushback 685;
	_this setPosWorld [14217.4,10957.7,37.7106];
	_this setVectorDirAndUp [[0.99856,-0.0525295,-0.0108615],[0.00706745,-0.0718816,0.997388]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item690 = objNull;
if (_layer689) then {
	_item690 = createVehicle ["Gunrack1",[14566.5,10638,0],[],0,"CAN_COLLIDE"];
	_this = _item690;
	_objects pushback _this;
	_objectIDs pushback 690;
	_this setPosWorld [14566.5,10638,44.4996];
	_this setVectorDirAndUp [[0.660116,0.751103,0.0095233],[-0.00674814,-0.00674782,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item691 = objNull;
if (_layer689) then {
	_item691 = createVehicle ["Gunrack1",[14562.7,10633.5,0],[],0,"CAN_COLLIDE"];
	_this = _item691;
	_objects pushback _this;
	_objectIDs pushback 691;
	_this setPosWorld [14562.7,10633.5,44.4698];
	_this setVectorDirAndUp [[0.652296,0.757964,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item693 = objNull;
if (_layerRoot) then {
	_item693 = _item692 createUnit ["rhsusf_army_ocp_rifleman_10th",[14667.1,10556.8,0],[],0,"CAN_COLLIDE"];
	_item692 selectLeader _item693;
	_this = _item693;
	_objects pushback _this;
	_objectIDs pushback 693;
	_this setPosWorld [14667.1,10556.9,45.3506];
	_this setVectorDirAndUp [[0.408267,-0.912863,0],[0,0,1]];
	selectPlayer _this;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Charlie Thompson";;
	_this setface "WhiteHead_08";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.05;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["IDLE_1",["Acts_CivilIdle_1"],false,false] # 0 isEqualTo '') then      {        ["IDLE_1",["Acts_CivilIdle_1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item709 = objNull;
if (_layerRoot) then {
	_item709 = _item692 createUnit ["rhsusf_army_ocp_rifleman_10th",[14543,10632.3,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item709;
	_objects pushback _this;
	_objectIDs pushback 709;
	_this setPosWorld [14543,10632.4,43.9664];
	_this setVectorDirAndUp [[0.992278,0.124035,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "James Miller";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.05;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["IDLE_1",["Acts_CivilIdle_1"],false,false] # 0 isEqualTo '') then      {        ["IDLE_1",["Acts_CivilIdle_1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item707 = objNull;
if (_layerRoot) then {
	_item707 = _item692 createUnit ["rhsusf_army_ocp_rifleman_10th",[14549.9,10640.6,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item707;
	_objects pushback _this;
	_objectIDs pushback 707;
	_this setPosWorld [14549.9,10640.6,43.9664];
	_this setVectorDirAndUp [[0.408274,-0.912859,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Jake Phillips";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.05;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["IDLE_1",["Acts_CivilIdle_1"],false,false] # 0 isEqualTo '') then      {        ["IDLE_1",["Acts_CivilIdle_1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item705 = objNull;
if (_layerRoot) then {
	_item705 = _item692 createUnit ["rhsusf_army_ocp_rifleman_10th",[14641.3,10571.6,0.28458],[],0,"CAN_COLLIDE"];
	_this = _item705;
	_objects pushback _this;
	_objectIDs pushback 705;
	_this setPosWorld [14641.3,10571.6,45.286];
	_this setVectorDirAndUp [[-0.79201,0.610508,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Michael Blackburn";;
	_this setface "WhiteHead_01";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.05;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item703 = objNull;
if (_layerRoot) then {
	_item703 = _item692 createUnit ["rhsusf_army_ocp_rifleman_10th",[14564,10635.3,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item703;
	_objects pushback _this;
	_objectIDs pushback 703;
	_this setPosWorld [14564,10635.4,43.9664];
	_this setVectorDirAndUp [[0.751415,-0.65983,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ryan Young";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U1",["hubstandingua_idle1","hubstandingua_idle2","hubstandingua_idle3","hubstandingua_move1","hubstandingua_move2"],false,false] # 0 isEqualTo '') then      {        ["STAND_U1",["hubstandingua_idle1","hubstandingua_idle2","hubstandingua_idle3","hubstandingua_move1","hubstandingua_move2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item701 = objNull;
if (_layerRoot) then {
	_item701 = _item692 createUnit ["rhsusf_army_ocp_rifleman_10th",[14698.5,10520.8,0.320572],[],0,"CAN_COLLIDE"];
	_this = _item701;
	_objects pushback _this;
	_objectIDs pushback 701;
	_this setPosWorld [14698.5,10520.8,47.834];
	_this setVectorDirAndUp [[0.407472,0.913218,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Daniel Walker";;
	_this setface "WhiteHead_01";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item699 = objNull;
if (_layerRoot) then {
	_item699 = _item692 createUnit ["rhsusf_army_ocp_rifleman_10th",[14680.2,10538.3,0],[],0,"CAN_COLLIDE"];
	_this = _item699;
	_objects pushback _this;
	_objectIDs pushback 699;
	_this setPosWorld [14680.2,10538.4,46.1439];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Henry Parker";;
	_this setface "WhiteHead_14";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["LISTENING_2",["Acts_CivilListening_2"],false,false] # 0 isEqualTo '') then      {        ["LISTENING_2",["Acts_CivilListening_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item697 = objNull;
if (_layerRoot) then {
	_item697 = _item692 createUnit ["rhsusf_army_ocp_rifleman_10th",[14570.1,10663.9,4.88203],[],0,"CAN_COLLIDE"];
	_this = _item697;
	_objects pushback _this;
	_objectIDs pushback 697;
	_this setPosWorld [14570.1,10663.9,49.4371];
	_this setVectorDirAndUp [[-0.0116811,0.999932,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Dixon Smith";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.03;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["ACCESSING_COMPUTER",["Acts_Accessing_Computer_Loop"],false,false] # 0 isEqualTo '') then      {        ["ACCESSING_COMPUTER",["Acts_Accessing_Computer_Loop"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item695 = objNull;
if (_layerRoot) then {
	_item695 = _item692 createUnit ["rhsusf_army_ocp_rifleman_10th",[14566.4,10604.2,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item695;
	_objects pushback _this;
	_objectIDs pushback 695;
	_this setPosWorld [14566.4,10604.3,44.1984];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Adam MacDonald";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male07ENG";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item462 = objNull;
if (_layer689) then {
	_item462 = createTrigger ["EmptyDetectorArea10x10",[14560.7,10638.2,0],false];
	_this = _item462;
	_triggers pushback _this;
	_triggerIDs pushback 462;
	_item462 setPosATL [14560.7,10638.2,0];
	_this setTriggerArea [6,6,220.805,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};

private _item465 = objNull;
if (_layer464 && _layer689) then {
	_item465 = createTrigger ["EmptyDetectorArea10x10",[14532.7,10647.2,0],true];
	_this = _item465;
	_triggers pushback _this;
	_triggerIDs pushback 465;
	_item465 setPosATL [14532.7,10647.2,0];
	_this setTriggerArea [5,20,311.077,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item664 = objNull;
if (_layer469 && _layer689) then {
	_item664 = createTrigger ["EmptyDetectorAreaR50",[14201.3,10934.3,0],false];
	_this = _item664;
	_triggers pushback _this;
	_triggerIDs pushback 664;
	_item664 setPosATL [14201.3,10934.3,0];
	_this setTriggerArea [50,50,206.29,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{[_x, false] remoteExec [""allowDamage""]; 
[_x, true] remoteExec [""setCaptive""];}","call{[_x, true] remoteExec [""allowDamage""]; 
[_x, false] remoteExec [""setCaptive""];}"];
	_this setTriggerTimeout [0.1,0.1,0.1,true];
};

private _item665 = objNull;
if (_layer469 && _layer689) then {
	_item665 = createTrigger ["EmptyDetectorArea10x10",[14202.9,10953.5,0],true];
	_this = _item665;
	_triggers pushback _this;
	_triggerIDs pushback 665;
	_item665 setPosATL [14202.9,10953.5,0];
	_this setTriggerArea [18,13.5,1.23583,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item692;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["HQ"];                            } else {                                [_this, "HQ"] call CBA_fnc_setCallsign;                            };                        ;
	_this setCombatMode "BLUE";
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      if (!is3DEN && (["","ColorWEST","HQ",true] # 0 != '') then      {        [_this, ["","ColorWEST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ",true]'];          ["","ColorWEST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item463 = objNull;
if (_layer689) then {
	_item463 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[14572.5,10629.5,0],[],0,"CAN_COLLIDE"];
	_this = _item463;
	_logics pushback _this;
	_logicIDs pushback 463;
	_this setPosWorld [14572.5,10629.5,43.9786];
	_this setVectorDirAndUp [[0.880958,-0.473186,0.00275199],[-0.00674814,-0.00674782,0.999954]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item687 = objNull;
if (_layer686 && _layer469 && _layer689) then {
	_item687 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[14208.9,10941.7,0],[],0,"CAN_COLLIDE"];
	_this = _item687;
	_logics pushback _this;
	_logicIDs pushback 687;
	_this setPosWorld [14208.9,10941.7,36.2957];
	_this setVectorDirAndUp [[0.265662,0.961273,0.0733376],[0.00767349,-0.0781771,0.99691]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item688 = objNull;
if (_layer686 && _layer469 && _layer689) then {
	_item688 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[14205,10934.4,0],[],0,"CAN_COLLIDE"];
	_this = _item688;
	_logics pushback _this;
	_logicIDs pushback 688;
	_this setPosWorld [14205,10934.4,36.3754];
	_this setVectorDirAndUp [[0.26557,0.963043,0.0449456],[-0.0281084,-0.0388655,0.998849]];
	sh_END = _this;
	_this setVehicleVarName "sh_END";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer686) then {missionNamespace setVariable ["Sahrani%20Paramilitary%20base_Spawns",[[_item687,_item688],[]]];};
if (_layer666) then {missionNamespace setVariable ["Sahrani%20Paramilitary%20base_Shoothouse Targets",[[_item667,_item668,_item669,_item670,_item671,_item672,_item673,_item674,_item675,_item676,_item677,_item678,_item679,_item680,_item681,_item682,_item683,_item684,_item685],[]]];};
if (_layer469) then {missionNamespace setVariable ["Sahrani%20Paramilitary%20base_Shoothouse Pit",[[_item470,_item471,_item472,_item473,_item474,_item475,_item476,_item477,_item478,_item479,_item480,_item481,_item482,_item483,_item484,_item485,_item486,_item487,_item488,_item489,_item490,_item491,_item492,_item493,_item494,_item495,_item496,_item497,_item498,_item499,_item500,_item501,_item502,_item503,_item504,_item505,_item506,_item507,_item508,_item509,_item510,_item511,_item512,_item513,_item514,_item515,_item516,_item517,_item518,_item519,_item520,_item521,_item522,_item523,_item524,_item525,_item526,_item527,_item528,_item529,_item530,_item531,_item532,_item533,_item534,_item535,_item536,_item537,_item538,_item539,_item540,_item541,_item542,_item543,_item544,_item545,_item546,_item547,_item548,_item549,_item550,_item551,_item552,_item553,_item554,_item555,_item556,_item557,_item558,_item559,_item560,_item561,_item562,_item563,_item564,_item565,_item566,_item567,_item568,_item569,_item570,_item571,_item572,_item573,_item574,_item575,_item576,_item577,_item578,_item579,_item580,_item581,_item582,_item583,_item584,_item585,_item586,_item587,_item588,_item589,_item590,_item591,_item592,_item593,_item594,_item595,_item596,_item597,_item598,_item599,_item600,_item601,_item602,_item603,_item604,_item605,_item606,_item607,_item608,_item609,_item610,_item611,_item612,_item613,_item614,_item615,_item616,_item617,_item618,_item619,_item620,_item621,_item622,_item623,_item624,_item625,_item626,_item627,_item628,_item629,_item630,_item631,_item632,_item633,_item634,_item635,_item636,_item637,_item638,_item639,_item640,_item641,_item642,_item643,_item644,_item645,_item646,_item647,_item648,_item649,_item650,_item651,_item652,_item653,_item654,_item655,_item656,_item657,_item658,_item659,_item660,_item661,_item662,_item663,_item664,_item665,_item667,_item668,_item669,_item670,_item671,_item672,_item673,_item674,_item675,_item676,_item677,_item678,_item679,_item680,_item681,_item682,_item683,_item684,_item685,_item687,_item688],[]]];};
if (_layer467) then {missionNamespace setVariable ["Sahrani%20Paramilitary%20base_Repair Station",[[_item468],[]]];};
if (_layer464) then {missionNamespace setVariable ["Sahrani%20Paramilitary%20base_bargate",[[_item465],[]]];};
if (_layer689) then {missionNamespace setVariable ["Sahrani%20Paramilitary%20base_SIA ZGM Essentials",[[_item460,_item462,_item463,_item465,_item468,_item470,_item471,_item472,_item473,_item474,_item475,_item476,_item477,_item478,_item479,_item480,_item481,_item482,_item483,_item484,_item485,_item486,_item487,_item488,_item489,_item490,_item491,_item492,_item493,_item494,_item495,_item496,_item497,_item498,_item499,_item500,_item501,_item502,_item503,_item504,_item505,_item506,_item507,_item508,_item509,_item510,_item511,_item512,_item513,_item514,_item515,_item516,_item517,_item518,_item519,_item520,_item521,_item522,_item523,_item524,_item525,_item526,_item527,_item528,_item529,_item530,_item531,_item532,_item533,_item534,_item535,_item536,_item537,_item538,_item539,_item540,_item541,_item542,_item543,_item544,_item545,_item546,_item547,_item548,_item549,_item550,_item551,_item552,_item553,_item554,_item555,_item556,_item557,_item558,_item559,_item560,_item561,_item562,_item563,_item564,_item565,_item566,_item567,_item568,_item569,_item570,_item571,_item572,_item573,_item574,_item575,_item576,_item577,_item578,_item579,_item580,_item581,_item582,_item583,_item584,_item585,_item586,_item587,_item588,_item589,_item590,_item591,_item592,_item593,_item594,_item595,_item596,_item597,_item598,_item599,_item600,_item601,_item602,_item603,_item604,_item605,_item606,_item607,_item608,_item609,_item610,_item611,_item612,_item613,_item614,_item615,_item616,_item617,_item618,_item619,_item620,_item621,_item622,_item623,_item624,_item625,_item626,_item627,_item628,_item629,_item630,_item631,_item632,_item633,_item634,_item635,_item636,_item637,_item638,_item639,_item640,_item641,_item642,_item643,_item644,_item645,_item646,_item647,_item648,_item649,_item650,_item651,_item652,_item653,_item654,_item655,_item656,_item657,_item658,_item659,_item660,_item661,_item662,_item663,_item664,_item665,_item667,_item668,_item669,_item670,_item671,_item672,_item673,_item674,_item675,_item676,_item677,_item678,_item679,_item680,_item681,_item682,_item683,_item684,_item685,_item687,_item688,_item690,_item691],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item690) then {
		this = _item690;
		call{arsenals pushBack this};
	};
	if !(isnull _item691) then {
		this = _item691;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
