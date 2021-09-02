// Export of 'base_para.isladuala3' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer318 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer540 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};
private _layer294 = (_allWhitelisted || {"fence" in _layerWhiteList}) && {!("fence" in _layerBlackList)};
private _layer257 = (_allWhitelisted || {"floor" in _layerWhiteList}) && {!("floor" in _layerBlackList)};
private _layer220 = (_allWhitelisted || {"wall" in _layerWhiteList}) && {!("wall" in _layerBlackList)};
private _layer213 = (_allWhitelisted || {"mortar_shelter" in _layerWhiteList}) && {!("mortar_shelter" in _layerBlackList)};
private _layer206 = (_allWhitelisted || {"decor" in _layerWhiteList}) && {!("decor" in _layerBlackList)};
private _layer148 = (_allWhitelisted || {"objects" in _layerWhiteList}) && {!("objects" in _layerBlackList)};
private _layer141 = (_allWhitelisted || {"timber" in _layerWhiteList}) && {!("timber" in _layerBlackList)};
private _layer134 = (_allWhitelisted || {"light" in _layerWhiteList}) && {!("light" in _layerBlackList)};
private _layer129 = (_allWhitelisted || {"concret" in _layerWhiteList}) && {!("concret" in _layerBlackList)};
private _layer77 = (_allWhitelisted || {"decal" in _layerWhiteList}) && {!("decal" in _layerBlackList)};
private _layer66 = (_allWhitelisted || {"barrier" in _layerWhiteList}) && {!("barrier" in _layerBlackList)};
private _layer39 = (_allWhitelisted || {"sandbag" in _layerWhiteList}) && {!("sandbag" in _layerBlackList)};
private _layer28 = (_allWhitelisted || {"03" in _layerWhiteList}) && {!("03" in _layerBlackList)};
private _layer19 = (_allWhitelisted || {"01" in _layerWhiteList}) && {!("01" in _layerBlackList)};
private _layer4 = (_allWhitelisted || {"02" in _layerWhiteList}) && {!("02" in _layerBlackList)};
private _layer3 = (_allWhitelisted || {"shell_crater" in _layerWhiteList}) && {!("shell_crater" in _layerBlackList)};
private _layer1 = (_allWhitelisted || {"tent" in _layerWhiteList}) && {!("tent" in _layerBlackList)};
private _layer0 = (_allWhitelisted || {"hq_tent" in _layerWhiteList}) && {!("hq_tent" in _layerBlackList)};
private _layer307 = (_allWhitelisted || {"hq_tent" in _layerWhiteList}) && {!("hq_tent" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item563 = "";
if (_layerRoot) then {
	_item563 = createMarker ["marker_0",[8048.7,8833.01,0]];
	_this = _item563;
	_markers pushback _this;
	_markerIDs pushback 563;
	_this setMarkerType "n_hq";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorYellow";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item564 = grpNull;
if (_layerRoot) then {
	_item564 = createGroup west;
	_this = _item564;
	_groups pushback _this;
	_groupIDs pushback 564;
};

private _item568 = grpNull;
if (_layerRoot) then {
	_item568 = createGroup west;
	_this = _item568;
	_groups pushback _this;
	_groupIDs pushback 568;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item310 = objNull;
if (_layer1 && _layer0 && _layer307) then {
	_item310 = createVehicle ["CampEast_EP1",[8048.5,8832.86,0.91244],[],0,"CAN_COLLIDE"];
	_this = _item310;
	_objects pushback _this;
	_objectIDs pushback 310;
	_this setPosWorld [8048.5,8832.86,7.25436];
	_this setVectorDirAndUp [[-0.902397,0.430905,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item5 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item5 = createVehicle ["Land_ShellCrater_02_large_F",[8044.81,8827.29,-0.349676],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [8044.81,8827.29,2.9972];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item6 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item6 = createVehicle ["Land_ShellCrater_02_large_F",[8050.35,8824.5,-0.418501],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [8050.35,8824.5,2.92838];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item7 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item7 = createVehicle ["Land_ShellCrater_02_large_F",[8055.55,8829.37,-0.31422],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [8055.55,8829.37,3.03266];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item8 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item8 = createVehicle ["Land_ShellCrater_02_large_F",[8056.22,8835.62,-0.203084],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [8056.22,8835.62,3.14379];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item9 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item9 = createVehicle ["Land_ShellCrater_02_large_F",[8050.72,8839.09,-0.289477],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [8050.72,8839.09,3.0574];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item10 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item10 = createVehicle ["Land_ShellCrater_02_large_F",[8045.69,8841.05,-0.303835],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [8045.69,8841.05,3.04304];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item11 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item11 = createVehicle ["Land_ShellCrater_02_large_F",[8042.06,8837.99,-0.297317],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [8042.06,8837.99,3.04956];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item12 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item12 = createVehicle ["Land_ShellCrater_02_large_F",[8039.68,8834.4,-0.299722],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [8039.68,8834.4,3.04716];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item13 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item13 = createVehicle ["Land_ShellCrater_02_large_F",[8053.08,8824.17,-0.446242],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [8053.08,8824.17,2.90064];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item14 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item14 = createVehicle ["Land_ShellCrater_02_large_F",[8047.99,8824.77,-0.380053],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [8047.99,8824.77,2.96683];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item15 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item15 = createVehicle ["Land_ShellCrater_02_large_F",[8054.84,8824.71,-0.323086],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [8054.84,8824.71,3.02379];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item16 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item16 = createVehicle ["Land_ShellCrater_02_large_F",[8058.45,8832.8,-0.288468],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [8058.45,8832.8,3.05841];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item17 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item17 = createVehicle ["Land_ShellCrater_02_large_F",[8037.98,8831.83,-0.266798],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [8037.98,8831.83,3.08008];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item18 = objNull;
if (_layer4 && _layer3 && _layer0 && _layer307) then {
	_item18 = createVehicle ["Land_ShellCrater_02_large_F",[8040.24,8830.88,-0.336389],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [8040.24,8830.88,3.01049];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item20 = objNull;
if (_layer19 && _layer3 && _layer0 && _layer307) then {
	_item20 = createVehicle ["Land_ShellCrater_02_large_F",[8044.97,8838.76,-0.32127],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [8044.97,8838.76,3.02561];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item21 = objNull;
if (_layer19 && _layer3 && _layer0 && _layer307) then {
	_item21 = createVehicle ["Land_ShellCrater_02_large_F",[8050.47,8836.13,-0.32127],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [8050.47,8836.13,3.02561];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item22 = objNull;
if (_layer19 && _layer3 && _layer0 && _layer307) then {
	_item22 = createVehicle ["Land_ShellCrater_02_large_F",[8054.72,8833.88,-0.387479],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [8054.72,8833.88,2.9594];
	_this setVectorDirAndUp [[-0.983176,0.182661,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item23 = objNull;
if (_layer19 && _layer3 && _layer0 && _layer307) then {
	_item23 = createVehicle ["Land_ShellCrater_02_large_F",[8042.37,8833.56,-0.42558],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [8042.37,8833.56,2.9213];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item24 = objNull;
if (_layer19 && _layer3 && _layer0 && _layer307) then {
	_item24 = createVehicle ["Land_ShellCrater_02_large_F",[8042.01,8832.5,-0.404708],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [8042.01,8832.5,2.94217];
	_this setVectorDirAndUp [[-0.56605,0.824371,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item25 = objNull;
if (_layer19 && _layer3 && _layer0 && _layer307) then {
	_item25 = createVehicle ["Land_ShellCrater_02_large_F",[8046.66,8829.67,-0.503477],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [8046.66,8829.67,2.8434];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item26 = objNull;
if (_layer19 && _layer3 && _layer0 && _layer307) then {
	_item26 = createVehicle ["Land_ShellCrater_02_large_F",[8051.77,8827.89,-0.376713],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [8051.77,8827.89,2.97017];
	_this setVectorDirAndUp [[0.942786,0.333399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item27 = objNull;
if (_layer19 && _layer3 && _layer0 && _layer307) then {
	_item27 = createVehicle ["Land_ShellCrater_02_large_F",[8051.5,8827.26,-0.368583],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [8051.5,8827.26,2.9783];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item29 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item29 = createVehicle ["Land_ShellCrater_01_F",[8054.35,8843.78,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [8054.35,8843.78,4.98837];
	_this setVectorDirAndUp [[-0.963705,-0.266969,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item30 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item30 = createVehicle ["Land_ShellCrater_01_F",[8060.84,8840.62,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [8060.84,8840.62,4.98837];
	_this setVectorDirAndUp [[0.905852,0.423594,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item31 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item31 = createVehicle ["Land_ShellCrater_01_F",[8065.16,8837.11,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [8065.16,8837.11,4.98837];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item32 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item32 = createVehicle ["Land_ShellCrater_01_F",[8056.49,8817.6,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [8056.49,8817.6,4.98837];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item33 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item33 = createVehicle ["Land_ShellCrater_01_F",[8050.33,8818.58,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [8050.33,8818.58,4.98837];
	_this setVectorDirAndUp [[0.395139,-0.918622,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item34 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item34 = createVehicle ["Land_ShellCrater_01_F",[8042.81,8821.81,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [8042.81,8821.81,4.98837];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item35 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item35 = createVehicle ["Land_ShellCrater_01_F",[8036.9,8824.78,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [8036.9,8824.78,4.98837];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item36 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item36 = createVehicle ["Land_ShellCrater_01_F",[8032.69,8828.87,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [8032.69,8828.87,4.98837];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item37 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item37 = createVehicle ["Land_ShellCrater_01_F",[8042.09,8847.68,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [8042.09,8847.68,4.98837];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item38 = objNull;
if (_layer28 && _layer3 && _layer0 && _layer307) then {
	_item38 = createVehicle ["Land_ShellCrater_01_F",[8047.48,8846.79,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [8047.48,8846.79,4.98837];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item40 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item40 = createVehicle ["Land_SandbagBarricade_01_F",[8053.06,8823.35,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [8053.06,8823.35,5.8641];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item41 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item41 = createVehicle ["Land_SandbagBarricade_01_F",[8051.33,8824.17,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [8051.33,8824.17,5.8641];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item42 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item42 = createVehicle ["Land_SandbagBarricade_01_F",[8049.59,8825,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [8049.59,8825,5.8641];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item43 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item43 = createVehicle ["Land_SandbagBarricade_01_F",[8047.85,8825.84,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [8047.85,8825.84,5.8641];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item44 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item44 = createVehicle ["Land_SandbagBarricade_01_F",[8046.11,8826.67,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [8046.11,8826.67,5.8641];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item45 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item45 = createVehicle ["Land_SandbagBarricade_01_F",[8044.36,8827.5,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [8044.36,8827.5,5.8641];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item46 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item46 = createVehicle ["Land_SandbagBarricade_01_F",[8042.63,8828.33,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [8042.63,8828.33,5.8641];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item47 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item47 = createVehicle ["Land_SandbagBarricade_01_F",[8040.89,8829.16,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [8040.89,8829.16,5.8641];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item48 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item48 = createVehicle ["Land_SandbagBarricade_01_F",[8039.15,8829.99,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [8039.15,8829.99,5.8641];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item49 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item49 = createVehicle ["Land_SandbagBarricade_01_F",[8054.21,8823.94,-0.45018],[],0,"CAN_COLLIDE"];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [8054.21,8823.94,5.82555];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item50 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item50 = createVehicle ["Land_SandbagBarricade_01_F",[8054.76,8825.14,-0.45018],[],0,"CAN_COLLIDE"];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [8054.76,8825.14,5.82555];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item51 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item51 = createVehicle ["Land_SandbagBarricade_01_F",[8038.33,8831.27,-0.45018],[],0,"CAN_COLLIDE"];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [8038.33,8831.27,5.82555];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item52 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item52 = createVehicle ["Land_SandbagBarricade_01_F",[8038.87,8832.47,-0.45018],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [8038.87,8832.47,5.82555];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item53 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item53 = createVehicle ["Land_SandbagBarricade_01_F",[8044.46,8842.46,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [8044.46,8842.46,5.8641];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item54 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item54 = createVehicle ["Land_SandbagBarricade_01_F",[8046.19,8841.63,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [8046.19,8841.63,5.8641];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item55 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item55 = createVehicle ["Land_SandbagBarricade_01_F",[8047.92,8840.8,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [8047.92,8840.8,5.8641];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item56 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item56 = createVehicle ["Land_SandbagBarricade_01_F",[8049.67,8839.97,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [8049.67,8839.97,5.8641];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item57 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item57 = createVehicle ["Land_SandbagBarricade_01_F",[8051.41,8839.14,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [8051.41,8839.14,5.8641];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item58 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item58 = createVehicle ["Land_SandbagBarricade_01_F",[8053.15,8838.3,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [8053.15,8838.3,5.8641];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item59 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item59 = createVehicle ["Land_SandbagBarricade_01_F",[8054.89,8837.48,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [8054.89,8837.48,5.8641];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item60 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item60 = createVehicle ["Land_SandbagBarricade_01_F",[8056.63,8836.65,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [8056.63,8836.65,5.8641];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item61 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item61 = createVehicle ["Land_SandbagBarricade_01_F",[8058.36,8835.82,-0.411626],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [8058.36,8835.82,5.8641];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item62 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item62 = createVehicle ["Land_SandbagBarricade_01_F",[8043.37,8841.83,-0.45018],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [8043.37,8841.83,5.82555];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item63 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item63 = createVehicle ["Land_SandbagBarricade_01_F",[8042.76,8840.66,-0.45018],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [8042.76,8840.66,5.82555];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item64 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item64 = createVehicle ["Land_SandbagBarricade_01_F",[8059.19,8834.53,-0.45018],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [8059.19,8834.53,5.82555];
	_this setVectorDirAndUp [[0.902399,-0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item65 = objNull;
if (_layer39 && _layer0 && _layer307) then {
	_item65 = createVehicle ["Land_SandbagBarricade_01_F",[8058.64,8833.33,-0.45018],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [8058.64,8833.33,5.82555];
	_this setVectorDirAndUp [[0.902399,-0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item67 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item67 = createVehicle ["Land_HBarrierTower_F",[8038.21,8836.22,-3.69476],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [8038.21,8836.22,3.48026];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item68 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item68 = createVehicle ["Land_HBarrierTower_F",[8059.03,8829.6,-3.69476],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [8059.03,8829.6,3.48026];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item69 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item69 = createVehicle ["Land_HBarrierWall6_F",[8057.14,8840.6,0.023232],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [8057.14,8840.6,5.77664];
	_this setVectorDirAndUp [[0.430018,0.902821,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item70 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item70 = createVehicle ["Land_HBarrierWall6_F",[8040.52,8824.96,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [8040.52,8824.96,5.82765];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item71 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item71 = createVehicle ["Land_HBarrierWall6_F",[8047.97,8821.4,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [8047.97,8821.4,5.82765];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item72 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item72 = createVehicle ["Land_HBarrierWall6_F",[8040.79,8844.76,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [8040.79,8844.76,5.82765];
	_this setVectorDirAndUp [[-0.901938,0.431865,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item73 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item73 = createVehicle ["Land_HBarrierWall6_F",[8034.64,8831.88,0.0364718],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [8034.64,8831.88,5.78988];
	_this setVectorDirAndUp [[-0.902823,0.430012,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item74 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item74 = createVehicle ["Land_HBarrierWall6_F",[8062.97,8834.17,0.00516558],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [8062.97,8834.17,5.75857];
	_this setVectorDirAndUp [[0.902721,-0.430226,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item75 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item75 = createVehicle ["Land_HBarrierWall6_F",[8056.82,8821.28,0.0170484],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [8056.82,8821.28,5.77046];
	_this setVectorDirAndUp [[0.902369,-0.430964,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item76 = objNull;
if (_layer66 && _layer0 && _layer307) then {
	_item76 = createVehicle ["Land_HBarrierWall6_F",[8049.69,8844.16,0.105739],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [8049.69,8844.16,5.85915];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item78 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item78 = createVehicle ["Land_DirtPatch_05_F",[8061.88,8838.64,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [8061.88,8838.64,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item79 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item79 = createVehicle ["Land_DirtPatch_05_F",[8059.38,8842.22,0.0742421],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [8059.38,8842.22,5.06424];
	_this setVectorDirAndUp [[-0.649777,-0.760125,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item80 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item80 = createVehicle ["Land_DirtPatch_05_F",[8054.77,8844.49,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [8054.77,8844.49,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item81 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item81 = createVehicle ["Land_DirtPatch_05_F",[8050.49,8846.86,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [8050.49,8846.86,5.06424];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item82 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item82 = createVehicle ["Land_DirtPatch_05_F",[8045.53,8847.84,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [8045.53,8847.84,5.06424];
	_this setVectorDirAndUp [[0.0780276,-0.996951,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item83 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item83 = createVehicle ["Land_DirtPatch_05_F",[8042.3,8846.22,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [8042.3,8846.22,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item84 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item84 = createVehicle ["Land_DirtPatch_05_F",[8039.56,8842.12,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [8039.56,8842.12,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item85 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item85 = createVehicle ["Land_DirtPatch_05_F",[8035.84,8839.76,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [8035.84,8839.76,5.06424];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item86 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item86 = createVehicle ["Land_DirtPatch_05_F",[8033.31,8835.58,0.178426],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [8033.31,8835.58,5.16843];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item87 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item87 = createVehicle ["Land_DirtPatch_05_F",[8031.91,8829.96,1.3359],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [8031.91,8829.96,6.3259];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item88 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item88 = createVehicle ["Land_DirtPatch_05_F",[8034.3,8826.15,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [8034.3,8826.15,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item89 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item89 = createVehicle ["Land_DirtPatch_05_F",[8038.31,8823.63,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [8038.31,8823.63,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item90 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item90 = createVehicle ["Land_DirtPatch_05_F",[8042.88,8821.34,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [8042.88,8821.34,5.06424];
	_this setVectorDirAndUp [[0.182661,0.983176,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item91 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item91 = createVehicle ["Land_DirtPatch_05_F",[8046.7,8820.11,0.0742421],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [8046.7,8820.11,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item92 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item92 = createVehicle ["Land_DirtPatch_05_F",[8051.7,8818.52,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [8051.7,8818.52,5.06424];
	_this setVectorDirAndUp [[0.824371,0.56605,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item93 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item93 = createVehicle ["Land_DirtPatch_05_F",[8056.02,8819.02,2.72366],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [8056.02,8819.02,7.71366];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item94 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item94 = createVehicle ["Land_DirtPatch_05_F",[8058.9,8821.97,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [8058.9,8821.97,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item95 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item95 = createVehicle ["Land_DirtPatch_05_F",[8060.08,8825.37,0.254999],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [8060.08,8825.37,5.245];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item96 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item96 = createVehicle ["Land_DirtPatch_05_F",[8063.41,8827.47,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [8063.41,8827.47,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item97 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item97 = createVehicle ["Land_DirtPatch_05_F",[8063.71,8831.89,0.215481],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [8063.71,8831.89,5.20548];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item98 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item98 = createVehicle ["Land_DirtPatch_05_F",[8065.36,8836.23,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [8065.36,8836.23,5.06424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item99 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item99 = createVehicle ["WaterSpill_01_Small_New_F",[8054.06,8819.64,2.51124],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [8054.06,8819.64,7.50864];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item100 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item100 = createVehicle ["Land_Graffiti_01_F",[8044.5,8845.46,1.43124],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [8044.5,8845.46,6.42134];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item101 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item101 = createVehicle ["Land_Leaflet_01_F",[8052.78,8819.77,1.91086],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [8052.78,8819.77,6.90586];
	_this setVectorDirAndUp [[0.902398,-0.430903,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item102 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item102 = createVehicle ["Land_Leaflet_01_F",[8055.73,8820.37,2.34924],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [8055.73,8820.37,7.34424];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item103 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item103 = createVehicle ["WaterTrail_01_New_F",[8040.46,8830.2,0.956243],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [8040.46,8830.2,5.95124];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item104 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item104 = createVehicle ["WaterTrail_01_New_F",[8052.58,8824.44,0.961759],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [8052.58,8824.44,5.95676];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item105 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item105 = createVehicle ["WaterTrail_01_New_F",[8049.09,8826.02,0.956219],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [8049.09,8826.02,5.95122];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item106 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item106 = createVehicle ["WaterTrail_01_New_F",[8045.84,8827.66,1.00115],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [8045.84,8827.66,5.99615];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item107 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item107 = createVehicle ["WaterTrail_01_New_F",[8043.05,8828.97,0.956445],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [8043.05,8828.97,5.95145];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item108 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item108 = createVehicle ["WaterTrail_01_New_F",[8045.63,8841.04,0.956243],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [8045.63,8841.04,5.95124];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item109 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item109 = createVehicle ["WaterTrail_01_New_F",[8057.76,8835.27,0.961759],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [8057.76,8835.27,5.95676];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item110 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item110 = createVehicle ["WaterTrail_01_New_F",[8054.26,8836.86,0.956219],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [8054.26,8836.86,5.95122];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item111 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item111 = createVehicle ["WaterTrail_01_New_F",[8051.01,8838.49,1.00115],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [8051.01,8838.49,5.99615];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item112 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item112 = createVehicle ["WaterTrail_01_New_F",[8048.22,8839.8,0.956445],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [8048.22,8839.8,5.95145];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item113 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item113 = createVehicle ["WaterTrail_01_New_F",[8054.12,8825.78,0.952717],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [8054.12,8825.78,5.94772];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item114 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item114 = createVehicle ["WaterTrail_01_New_F",[8057.67,8833.29,0.960025],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [8057.67,8833.29,5.95503];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item115 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item115 = createVehicle ["WaterTrail_01_New_F",[8043.41,8840.11,0.979903],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [8043.41,8840.11,5.9749];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item116 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item116 = createVehicle ["WaterTrail_01_New_F",[8039.66,8832.3,0.956219],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [8039.66,8832.3,5.95122];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item117 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item117 = createVehicle ["WaterTrail_01_New_F",[8041.86,8836.23,0.95622],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [8041.86,8836.23,5.95122];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item118 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item118 = createVehicle ["WaterTrail_01_New_F",[8055.36,8829.66,0.96107],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [8055.36,8829.66,5.95607];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item119 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item119 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8042.22,8846.31,0.998466],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [8042.22,8846.31,5.99097];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item120 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item120 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8043.7,8843.8,1.00824],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [8043.7,8843.8,6.00074];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item121 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item121 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8055.15,8819.11,0.979641],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [8055.15,8819.11,5.97214];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item122 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item122 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8053.62,8821.56,0.842562],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [8053.62,8821.56,5.83506];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item123 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item123 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8043.31,8845.88,2.49268],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [8043.31,8845.88,7.48518];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item124 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item124 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8032.12,8838.59,0.299339],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [8032.12,8838.59,5.29184];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item125 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item125 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8033.37,8841.13,0.299339],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [8033.37,8841.13,5.29184];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item126 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item126 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8064.87,8826.88,0.285409],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [8064.87,8826.88,5.27791];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item127 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item127 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8064.36,8826.39,0.247593],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [8064.36,8826.39,5.24009];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item128 = objNull;
if (_layer77 && _layer0 && _layer307) then {
	_item128 = createVehicle ["Land_Decal_BulletHoles_Small_02_F",[8034.1,8842.21,0.443902],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [8034.1,8842.21,5.4364];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item130 = objNull;
if (_layer129 && _layer0 && _layer307) then {
	_item130 = createVehicle ["Land_CncBarrierMedium4_F",[8055.52,8846.75,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [8055.52,8846.75,5.91044];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item131 = objNull;
if (_layer129 && _layer0 && _layer307) then {
	_item131 = createVehicle ["Land_CncBarrierMedium4_F",[8033.15,8840.53,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [8033.15,8840.53,5.91044];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item132 = objNull;
if (_layer129 && _layer0 && _layer307) then {
	_item132 = createVehicle ["Land_CncBarrierMedium4_F",[8041.91,8818.83,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [8041.91,8818.83,5.91044];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item133 = objNull;
if (_layer129 && _layer0 && _layer307) then {
	_item133 = createVehicle ["Land_CncBarrierMedium4_F",[8064.23,8825.83,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [8064.23,8825.83,5.91044];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item135 = objNull;
if (_layer134 && _layer0 && _layer307) then {
	_item135 = createVehicle ["Land_LampShabby_F",[8054.94,8844.72,-3.15758],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [8054.94,8844.72,5.60445];
	_this setVectorDirAndUp [[0.42836,0.903608,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item136 = objNull;
if (_layer134 && _layer0 && _layer307) then {
	_item136 = createVehicle ["Land_LampShabby_F",[8036.81,8841.9,-3.15758],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [8036.81,8841.9,5.60445];
	_this setVectorDirAndUp [[-0.90452,0.42643,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item137 = objNull;
if (_layer134 && _layer0 && _layer307) then {
	_item137 = createVehicle ["Land_LampShabby_F",[8043,8820.89,-3.15758],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [8043,8820.89,5.60445];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item138 = objNull;
if (_layer134 && _layer0 && _layer307) then {
	_item138 = createVehicle ["Land_LampShabby_F",[8060.96,8823.87,-3.15758],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [8060.96,8823.87,5.60445];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item139 = objNull;
if (_layer134 && _layer0 && _layer307) then {
	_item139 = createVehicle ["Land_TentLamp_01_suspended_red_F",[8055.79,8837.29,2.74286],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [8055.79,8837.29,7.77686];
	_this setVectorDirAndUp [[0.90415,-0.427216,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this,1] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item140 = objNull;
if (_layer134 && _layer0 && _layer307) then {
	_item140 = createVehicle ["Land_TentLamp_01_suspended_red_F",[8041.44,8828.5,2.85624],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [8041.44,8828.5,7.89025];
	_this setVectorDirAndUp [[-0.903763,0.428033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this,1] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item142 = objNull;
if (_layer141 && _layer0 && _layer307) then {
	_item142 = createVehicle ["Land_TimberPile_02_F",[8047.48,8843.27,-0.324235],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [8047.48,8843.27,5.44499];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item143 = objNull;
if (_layer141 && _layer0 && _layer307) then {
	_item143 = createVehicle ["Land_TimberPile_02_F",[8052.72,8840.76,-0.324235],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [8052.72,8840.76,5.44499];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item144 = objNull;
if (_layer141 && _layer0 && _layer307) then {
	_item144 = createVehicle ["Land_TimberPile_02_F",[8058.17,8838.16,-0.324235],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [8058.17,8838.16,5.44499];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item145 = objNull;
if (_layer141 && _layer0 && _layer307) then {
	_item145 = createVehicle ["Land_TimberPile_02_F",[8039.78,8827.59,-0.324235],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [8039.78,8827.59,5.44499];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item146 = objNull;
if (_layer141 && _layer0 && _layer307) then {
	_item146 = createVehicle ["Land_TimberPile_02_F",[8045.2,8825,-0.324235],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [8045.2,8825,5.44499];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item147 = objNull;
if (_layer141 && _layer0 && _layer307) then {
	_item147 = createVehicle ["Land_TimberPile_02_F",[8050.59,8822.43,-0.324235],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [8050.59,8822.43,5.44499];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item151 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item151 = createSimpleObject ["Land_GarbageContainer_open_F",[8030.73,8830.3,5.06424]];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [8030.73,8830.3,5.80274];
	_this setVectorDirAndUp [[-0.955006,0.296588,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item152 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item152 = createSimpleObject ["Land_TacticalBacon_F",[8055.34,8820.17,7.50724]];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [8055.34,8820.17,7.54882];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item153 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item153 = createSimpleObject ["Land_TinContainer_F",[8057.47,8819.78,7.44889]];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [8057.47,8819.78,7.54826];
	_this setVectorDirAndUp [[0.957954,-0.286922,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item154 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item154 = createSimpleObject ["Land_Canteen_F",[8057.11,8819.38,7.40965]];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [8057.11,8819.38,7.53994];
	_this setVectorDirAndUp [[-0.903726,0.428112,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item155 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item155 = createSimpleObject ["Land_Orange_01_F",[8055.28,8820.15,7.51278]];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [8055.28,8820.15,7.55398];
	_this setVectorDirAndUp [[0.930736,0.365693,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item156 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item156 = createSimpleObject ["Land_PaperBox_01_small_destroyed_brown_IDAP_F",[8031.19,8831.38,5.06424]];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [8031.19,8831.38,5.28455];
	_this setVectorDirAndUp [[0.0780276,-0.996951,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item158 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item158 = createSimpleObject ["SatelliteAntenna_01_Small_Black_F",[8042.91,8842.92,7.49324]];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [8042.91,8842.92,7.99827];
	_this setVectorDirAndUp [[-0.433898,0.900962,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item159 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item159 = createVehicle ["PowerCable_01_CurveShort_F",[8043.07,8842.59,2.47409],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [8043.07,8842.59,7.49038];
	_this setVectorDirAndUp [[-0.879389,-0.476103,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item160 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item160 = createVehicle ["PowerCable_01_CurveShort_F",[8042.95,8842.17,0.899071],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [8042.95,8842.17,5.91536];
	_this setVectorDirAndUp [[0.848536,0.529138,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item161 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item161 = createVehicle ["PowerCable_01_Roll_F",[8043.07,8842.31,0.531243],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [8043.07,8842.31,5.6144];
	_this setVectorDirAndUp [[0.973975,0.226655,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item162 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item162 = createVehicle ["PowerCable_01_Step_F",[8042.61,8841.59,0.538855],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [8042.61,8841.59,5.77424];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item163 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item163 = createVehicle ["PowerCable_01_CurveShort_F",[8042.35,8839.53,0.91399],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [8042.35,8839.53,5.93028];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item164 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item164 = createVehicle ["PowerCable_01_Corner_F",[8043.47,8839.02,0.976243],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [8043.47,8839.02,5.99001];
	_this setVectorDirAndUp [[0.875795,-0.482683,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item165 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item165 = createVehicle ["PowerCable_01_SBend_F",[8047.92,8839.39,0.946243],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [8047.92,8839.39,5.96345];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item166 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item166 = createVehicle ["PowerCable_01_CurveShort_F",[8044.73,8839.7,0.941105],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [8044.73,8839.7,5.95739];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item167 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item167 = createVehicle ["PowerCable_01_CurveShort_F",[8054.97,8834.71,0.954243],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [8054.97,8834.71,5.97053];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item168 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item168 = createVehicle ["PowerCable_01_StraightLong_F",[8052.57,8837.63,0.945242],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [8052.57,8837.63,5.96245];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item169 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item169 = createVehicle ["PowerCable_01_CurveShort_F",[8055.24,8835.9,0.954243],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [8055.24,8835.9,5.97053];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this animateSource ['Cap_1_hide',1,true];
	_this animateSource ['Cap_2_hide',1,true];
};

private _item170 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item170 = createVehicle ["Land_Tyre_01_line_x5_F",[8043,8817.4,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [8043,8817.4,5.18348];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item171 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item171 = createVehicle ["Land_Tyre_01_line_x5_F",[8054.19,8848.16,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [8054.19,8848.16,5.18348];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item172 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item172 = createVehicle ["Land_Tyre_01_line_x5_F",[8057.32,8846.66,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [8057.32,8846.66,5.18348];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item173 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item173 = createVehicle ["Land_Tyre_01_line_x5_F",[8039.87,8818.9,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [8039.87,8818.9,5.18348];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item174 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item174 = createSimpleObject ["Land_Tyre_01_F",[8042.57,8842.95,7.24113]];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [8042.57,8842.95,7.59038];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item175 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item175 = createVehicle ["Land_PoleWall_01_pole_F",[8042.1,8825.41,0.810004],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [8042.1,8825.41,5.9999];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item176 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item176 = createVehicle ["Land_PoleWall_01_pole_F",[8047.39,8822.83,0.776244],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [8047.39,8822.83,5.96614];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item177 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item177 = createVehicle ["Land_PoleWall_01_pole_F",[8052.83,8820.22,0.661864],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [8052.83,8820.22,5.85176];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item178 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item178 = createVehicle ["Land_PoleWall_01_pole_F",[8061.22,8838.02,0.476843],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [8061.22,8838.02,5.66674];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item179 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item179 = createVehicle ["Land_PoleWall_01_pole_F",[8055.95,8840.37,0.436557],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [8055.95,8840.37,5.62645];
	_this setVectorDirAndUp [[-0.908662,0.417532,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item180 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item180 = createVehicle ["Land_PoleWall_01_pole_F",[8050.53,8842.95,0.61847],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [8050.53,8842.95,5.80836];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item181 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item181 = createVehicle ["Land_PoleWall_01_pole_F",[8045.27,8845.48,0.362222],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [8045.27,8845.48,5.55212];
	_this setVectorDirAndUp [[-0.899294,0.437344,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item182 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item182 = createVehicle ["Land_PoleWall_01_pole_F",[8036.86,8827.85,0.834243],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [8036.86,8827.85,6.02414];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item183 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item183 = createSimpleObject ["Land_FieldToilet_F",[8060.17,8843.05,5.27779]];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [8060.17,8843.05,6.49785];
	_this setVectorDirAndUp [[-0.350564,-0.936539,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item184 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item184 = createSimpleObject ["Land_Pallet_F",[8059.43,8843.09,5.09499]];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [8059.43,8843.09,5.19603];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item185 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item185 = createSimpleObject ["Land_Pallet_F",[8037.85,8822.96,5.02701]];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [8037.85,8822.96,5.12805];
	_this setVectorDirAndUp [[0.96037,-0.278727,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item186 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item186 = createSimpleObject ["Land_FieldToilet_F",[8037.75,8822.34,5.20982]];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [8037.75,8822.34,6.42988];
	_this setVectorDirAndUp [[0.193913,0.981019,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item187 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item187 = createSimpleObject ["Land_Tyre_01_F",[8055.62,8826.05,5.25924]];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [8055.62,8826.05,5.60849];
	_this setVectorDirAndUp [[-0.298978,0.95426,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item188 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item188 = createVehicle ["Land_WoodenWall_01_m_pole_F",[8055.79,8837.11,1.27577],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [8055.79,8837.11,7.06577];
	_this setVectorDirAndUp [[-0.89343,0.449203,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item189 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item189 = createVehicle ["Land_WoodenWall_01_m_pole_F",[8041.68,8828.67,1.43124],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [8041.68,8828.67,7.22124];
	_this setVectorDirAndUp [[-0.89396,0.448146,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item190 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item190 = createVehicle ["Land_WaterTank_04_F",[8053.27,8824.55,0.760083],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [8053.27,8824.55,6.70984];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item191 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item191 = createVehicle ["Land_WaterTank_03_F",[8039.99,8832.38,0.895243],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [8039.99,8832.38,6.67979];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item192 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item192 = createSimpleObject ["Land_Wrench_F",[8042.19,8843.15,7.53824]];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [8042.19,8843.15,7.54074];
	_this setVectorDirAndUp [[0.0780276,-0.996951,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item193 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item193 = createSimpleObject ["Land_DuctTape_F",[8042.19,8843.14,7.48802]];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [8042.19,8843.14,7.51302];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item194 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item194 = createSimpleObject ["Land_Shovel_F",[8038.94,8833.53,6.00894]];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [8038.94,8833.53,6.03006];
	_this setVectorDirAndUp [[-0.796838,0.604193,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item195 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item195 = createSimpleObject ["Land_MetalWire_F",[8042.14,8843.19,7.50124]];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [8042.14,8843.19,7.50386];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item196 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item196 = createSimpleObject ["Land_Pliers_F",[8041.99,8843.37,7.49224]];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [8041.99,8843.37,7.4961];
	_this setVectorDirAndUp [[0.999895,0.0144723,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item197 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item197 = createSimpleObject ["Land_Bucket_painted_F",[8056.61,8830.77,5.93524]];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [8056.61,8830.77,6.07361];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item198 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item198 = createSimpleObject ["Land_Matches_F",[8040,8832.44,7.12562]];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [8040,8832.44,7.13672];
	_this setVectorDirAndUp [[-0.942786,-0.333399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item199 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item199 = createSimpleObject ["Land_CanisterPlastic_F",[8042.15,8837.43,5.92924]];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [8042.15,8837.43,6.27707];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item200 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item200 = createSimpleObject ["Land_Pallet_vertical_F",[8047.37,8819.24,5.07424]];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [8047.37,8819.24,5.80962];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item201 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item201 = createVehicle ["Land_WoodenCrate_01_stack_x3_F",[8047.91,8817.78,0.223243],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [8047.91,8817.78,5.92112];
	_this setVectorDirAndUp [[-0.983176,0.182661,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item202 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item202 = createSimpleObject ["Land_Pallet_F",[8047.79,8817.66,5.06424]];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [8047.79,8817.66,5.16528];
	_this setVectorDirAndUp [[0.182661,0.983176,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item203 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item203 = createSimpleObject ["Land_WoodenCrate_01_F",[8057.86,8833.68,5.92124]];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [8057.86,8833.68,6.26943];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 3] call ace_cargo_fnc_setSize;;
};

private _item204 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item204 = createVehicle ["Land_Bench_05_F",[8055.12,8829.89,0.915244],[],0,"CAN_COLLIDE"];
	_this = _item204;
	_objects pushback _this;
	_objectIDs pushback 204;
	_this setPosWorld [8055.12,8829.89,6.09599];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item205 = objNull;
if (_layer148 && _layer0 && _layer307) then {
	_item205 = createVehicle ["Land_Bench_05_F",[8042.02,8836.09,0.915244],[],0,"CAN_COLLIDE"];
	_this = _item205;
	_objects pushback _this;
	_objectIDs pushback 205;
	_this setPosWorld [8042.02,8836.09,6.09599];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item207 = objNull;
if (_layer206 && _layer0 && _layer307) then {
	_item207 = createVehicle ["Land_ShellCrater_02_debris_F",[8033.09,8832.46,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [8033.09,8832.46,5.09361];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item208 = objNull;
if (_layer206 && _layer0 && _layer307) then {
	_item208 = createVehicle ["Land_ShellCrater_02_debris_F",[8035.87,8826.41,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [8035.87,8826.41,5.09361];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item209 = objNull;
if (_layer206 && _layer0 && _layer307) then {
	_item209 = createVehicle ["Land_ShellCrater_02_debris_F",[8054.38,8817.72,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [8054.38,8817.72,5.09361];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item210 = objNull;
if (_layer206 && _layer0 && _layer307) then {
	_item210 = createVehicle ["Land_ShellCrater_02_debris_F",[8065.68,8835.88,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [8065.68,8835.88,5.09361];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item211 = objNull;
if (_layer206 && _layer0 && _layer307) then {
	_item211 = createVehicle ["Land_Garbage_line_F",[8030.63,8830.56,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [8030.63,8830.56,5.11439];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item212 = objNull;
if (_layer206 && _layer0 && _layer307) then {
	_item212 = createVehicle ["Land_Garbage_square5_F",[8034.58,8828.56,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [8034.58,8828.56,5.10368];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item214 = objNull;
if (_layer213 && _layer0 && _layer307) then {
	_item214 = createVehicle ["Land_CncShelter_F",[8042.97,8845.06,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [8042.97,8845.06,6.2324];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item215 = objNull;
if (_layer213 && _layer0 && _layer307) then {
	_item215 = createVehicle ["Land_CncShelter_F",[8042.31,8843.67,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [8042.31,8843.67,6.2324];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item216 = objNull;
if (_layer213 && _layer0 && _layer307) then {
	_item216 = createVehicle ["Land_CncShelter_F",[8043.64,8846.45,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [8043.64,8846.45,6.2324];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item217 = objNull;
if (_layer213 && _layer0 && _layer307) then {
	_item217 = createVehicle ["Land_CncShelter_F",[8055.05,8821.71,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [8055.05,8821.71,6.2324];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item218 = objNull;
if (_layer213 && _layer0 && _layer307) then {
	_item218 = createVehicle ["Land_CncShelter_F",[8054.39,8820.32,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [8054.39,8820.32,6.2324];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item219 = objNull;
if (_layer213 && _layer0 && _layer307) then {
	_item219 = createVehicle ["Land_CncShelter_F",[8053.72,8818.94,0.0742431],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [8053.72,8818.94,6.2324];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item221 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item221 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8041.69,8837.1,5.94424]];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [8041.69,8837.1,6.16073];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item222 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item222 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8041.32,8836.26,5.94424]];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [8041.32,8836.26,6.16073];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item223 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item223 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8040.97,8835.49,5.94424]];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [8040.97,8835.49,6.16073];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item224 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item224 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8041.69,8836.99,6.34059]];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [8041.69,8836.99,6.55708];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item225 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item225 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8041.29,8836.31,6.34059]];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [8041.29,8836.31,6.55708];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item226 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item226 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8040.96,8835.45,6.34059]];
	_this = _item226;
	_objects pushback _this;
	_objectIDs pushback 226;
	_this setPosWorld [8040.96,8835.45,6.55708];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item227 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item227 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8041.69,8836.99,6.67031]];
	_this = _item227;
	_objects pushback _this;
	_objectIDs pushback 227;
	_this setPosWorld [8041.69,8836.99,6.8868];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item228 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item228 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8041.29,8836.31,6.67031]];
	_this = _item228;
	_objects pushback _this;
	_objectIDs pushback 228;
	_this setPosWorld [8041.29,8836.31,6.8868];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item229 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item229 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8040.96,8835.45,6.67031]];
	_this = _item229;
	_objects pushback _this;
	_objectIDs pushback 229;
	_this setPosWorld [8040.96,8835.45,6.8868];
	_this setVectorDirAndUp [[0.902399,-0.430901,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item230 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item230 = createVehicle ["Land_Plank_01_4m_F",[8041.37,8835.39,0.0973144],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [8041.37,8835.39,5.13103];
	_this setVectorDirAndUp [[-0.902398,0.430903,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item231 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item231 = createVehicle ["Land_Plank_01_4m_F",[8041.68,8836.04,0.0973144],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [8041.68,8836.04,5.13103];
	_this setVectorDirAndUp [[0.902398,-0.430904,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item232 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item232 = createVehicle ["Land_Plank_01_4m_F",[8042.01,8836.74,0.0973144],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [8042.01,8836.74,5.13103];
	_this setVectorDirAndUp [[-0.902398,0.430903,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item233 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item233 = createVehicle ["Land_BambooFence_01_s_d_F",[8039.51,8835.96,0.712244],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [8039.51,8835.96,6.18556];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item234 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item234 = createVehicle ["Land_Plank_01_4m_F",[8040.59,8835.74,-0.230552],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [8040.59,8835.74,4.80316];
	_this setVectorDirAndUp [[-0.902398,0.430903,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item235 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item235 = createVehicle ["Land_Plank_01_4m_F",[8040.89,8836.36,-0.230552],[],0,"CAN_COLLIDE"];
	_this = _item235;
	_objects pushback _this;
	_objectIDs pushback 235;
	_this setPosWorld [8040.89,8836.36,4.80316];
	_this setVectorDirAndUp [[0.902398,-0.430904,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item236 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item236 = createVehicle ["Land_Plank_01_4m_F",[8041.25,8837.11,-0.230552],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [8041.25,8837.11,4.80316];
	_this setVectorDirAndUp [[-0.902398,0.430903,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item237 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item237 = createVehicle ["Land_BambooFence_01_s_d_F",[8040.41,8837.79,0.712244],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [8040.41,8837.79,6.18556];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item238 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item238 = createVehicle ["Land_BambooFence_01_s_d_F",[8039.95,8836.83,0.712244],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [8039.95,8836.83,6.18556];
	_this setVectorDirAndUp [[-0.430902,-0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item239 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item239 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8055.4,8828.77,5.94424]];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [8055.4,8828.77,6.16073];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item240 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item240 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8055.82,8829.45,5.94424]];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [8055.82,8829.45,6.16073];
	_this setVectorDirAndUp [[0.902399,-0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item241 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item241 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8056.17,8830.39,5.94424]];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [8056.17,8830.39,6.16073];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item242 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item242 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8055.46,8828.84,6.34059]];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [8055.46,8828.84,6.55708];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item243 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item243 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8055.75,8829.47,6.34059]];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [8055.75,8829.47,6.55708];
	_this setVectorDirAndUp [[0.902399,-0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item244 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item244 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8056.19,8830.38,6.34059]];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [8056.19,8830.38,6.55708];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item245 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item245 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8055.46,8828.84,6.67031]];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [8055.46,8828.84,6.8868];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item246 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item246 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8055.75,8829.47,6.67031]];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [8055.75,8829.47,6.8868];
	_this setVectorDirAndUp [[0.902399,-0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item247 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item247 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[8056.19,8830.38,6.67031]];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [8056.19,8830.38,6.8868];
	_this setVectorDirAndUp [[-0.902399,0.430902,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item248 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item248 = createVehicle ["Land_Plank_01_4m_F",[8055.72,8830.41,0.0973144],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [8055.72,8830.41,5.13103];
	_this setVectorDirAndUp [[0.902398,-0.430904,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item249 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item249 = createVehicle ["Land_Plank_01_4m_F",[8055.41,8829.77,0.0973144],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [8055.41,8829.77,5.13103];
	_this setVectorDirAndUp [[-0.902397,0.430905,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item250 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item250 = createVehicle ["Land_Plank_01_4m_F",[8055.08,8829.07,0.0973144],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [8055.08,8829.07,5.13103];
	_this setVectorDirAndUp [[0.902398,-0.430904,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item251 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item251 = createVehicle ["Land_BambooFence_01_s_d_F",[8057.58,8829.84,0.712244],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [8057.58,8829.84,6.18556];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item252 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item252 = createVehicle ["Land_Plank_01_4m_F",[8056.5,8830.07,-0.230552],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [8056.5,8830.07,4.80316];
	_this setVectorDirAndUp [[0.902398,-0.430904,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item253 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item253 = createVehicle ["Land_Plank_01_4m_F",[8056.2,8829.44,-0.230552],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [8056.2,8829.44,4.80316];
	_this setVectorDirAndUp [[-0.902397,0.430906,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item254 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item254 = createVehicle ["Land_Plank_01_4m_F",[8055.84,8828.7,-0.230552],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [8055.84,8828.7,4.80316];
	_this setVectorDirAndUp [[0.902398,-0.430904,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item255 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item255 = createVehicle ["Land_BambooFence_01_s_d_F",[8056.68,8828.02,0.712244],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [8056.68,8828.02,6.18556];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item256 = objNull;
if (_layer220 && _layer0 && _layer307) then {
	_item256 = createVehicle ["Land_BambooFence_01_s_d_F",[8057.14,8828.97,0.712244],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [8057.14,8828.97,6.18556];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item258 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item258 = createVehicle ["Land_PicnicTable_01_F",[8054.38,8830.15,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [8054.38,8830.15,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item259 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item259 = createVehicle ["Land_PicnicTable_01_F",[8055.68,8832.88,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [8055.68,8832.88,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item260 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item260 = createVehicle ["Land_PicnicTable_01_F",[8055.03,8831.52,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [8055.03,8831.52,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item261 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item261 = createVehicle ["Land_PicnicTable_01_F",[8056.98,8835.6,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [8056.98,8835.6,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item262 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item262 = createVehicle ["Land_PicnicTable_01_F",[8056.34,8834.24,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [8056.34,8834.24,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item263 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item263 = createVehicle ["Land_PicnicTable_01_F",[8050.55,8831.98,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [8050.55,8831.98,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item264 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item264 = createVehicle ["Land_PicnicTable_01_F",[8051.85,8834.71,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [8051.85,8834.71,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item265 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item265 = createVehicle ["Land_PicnicTable_01_F",[8051.2,8833.35,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [8051.2,8833.35,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item266 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item266 = createVehicle ["Land_PicnicTable_01_F",[8053.15,8837.43,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [8053.15,8837.43,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item267 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item267 = createVehicle ["Land_PicnicTable_01_F",[8052.5,8836.08,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [8052.5,8836.08,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item268 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item268 = createVehicle ["Land_PicnicTable_01_F",[8053.08,8827.43,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [8053.08,8827.43,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item269 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item269 = createVehicle ["Land_PicnicTable_01_F",[8053.73,8828.79,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [8053.73,8828.79,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item270 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item270 = createVehicle ["Land_PicnicTable_01_F",[8049.25,8829.26,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [8049.25,8829.26,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item271 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item271 = createVehicle ["Land_PicnicTable_01_F",[8049.9,8830.63,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [8049.9,8830.63,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item272 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item272 = createVehicle ["Land_PicnicTable_01_F",[8051.78,8824.7,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [8051.78,8824.7,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item273 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item273 = createVehicle ["Land_PicnicTable_01_F",[8052.43,8826.07,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [8052.43,8826.07,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item274 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item274 = createVehicle ["Land_PicnicTable_01_F",[8047.95,8826.54,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [8047.95,8826.54,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item275 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item275 = createVehicle ["Land_PicnicTable_01_F",[8048.6,8827.9,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [8048.6,8827.9,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item276 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item276 = createVehicle ["Land_PicnicTable_01_F",[8046.72,8833.81,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [8046.72,8833.81,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item277 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item277 = createVehicle ["Land_PicnicTable_01_F",[8048.02,8836.54,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [8048.02,8836.54,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item278 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item278 = createVehicle ["Land_PicnicTable_01_F",[8047.37,8835.18,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [8047.37,8835.18,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item279 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item279 = createVehicle ["Land_PicnicTable_01_F",[8049.32,8839.26,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item279;
	_objects pushback _this;
	_objectIDs pushback 279;
	_this setPosWorld [8049.32,8839.26,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item280 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item280 = createVehicle ["Land_PicnicTable_01_F",[8048.67,8837.91,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item280;
	_objects pushback _this;
	_objectIDs pushback 280;
	_this setPosWorld [8048.67,8837.91,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item281 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item281 = createVehicle ["Land_PicnicTable_01_F",[8042.88,8835.65,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item281;
	_objects pushback _this;
	_objectIDs pushback 281;
	_this setPosWorld [8042.88,8835.65,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item282 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item282 = createVehicle ["Land_PicnicTable_01_F",[8044.18,8838.37,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [8044.18,8838.37,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item283 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item283 = createVehicle ["Land_PicnicTable_01_F",[8043.53,8837.01,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item283;
	_objects pushback _this;
	_objectIDs pushback 283;
	_this setPosWorld [8043.53,8837.01,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item284 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item284 = createVehicle ["Land_PicnicTable_01_F",[8045.48,8841.09,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item284;
	_objects pushback _this;
	_objectIDs pushback 284;
	_this setPosWorld [8045.48,8841.09,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item285 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item285 = createVehicle ["Land_PicnicTable_01_F",[8044.83,8839.74,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item285;
	_objects pushback _this;
	_objectIDs pushback 285;
	_this setPosWorld [8044.83,8839.74,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item286 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item286 = createVehicle ["Land_PicnicTable_01_F",[8045.41,8831.09,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item286;
	_objects pushback _this;
	_objectIDs pushback 286;
	_this setPosWorld [8045.41,8831.09,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item287 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item287 = createVehicle ["Land_PicnicTable_01_F",[8046.07,8832.46,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item287;
	_objects pushback _this;
	_objectIDs pushback 287;
	_this setPosWorld [8046.07,8832.46,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item288 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item288 = createVehicle ["Land_PicnicTable_01_F",[8041.58,8832.92,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item288;
	_objects pushback _this;
	_objectIDs pushback 288;
	_this setPosWorld [8041.58,8832.92,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item289 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item289 = createVehicle ["Land_PicnicTable_01_F",[8042.23,8834.29,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [8042.23,8834.29,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item290 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item290 = createVehicle ["Land_PicnicTable_01_F",[8044.11,8828.37,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item290;
	_objects pushback _this;
	_objectIDs pushback 290;
	_this setPosWorld [8044.11,8828.37,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item291 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item291 = createVehicle ["Land_PicnicTable_01_F",[8044.77,8829.73,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item291;
	_objects pushback _this;
	_objectIDs pushback 291;
	_this setPosWorld [8044.77,8829.73,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item292 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item292 = createVehicle ["Land_PicnicTable_01_F",[8040.28,8830.2,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item292;
	_objects pushback _this;
	_objectIDs pushback 292;
	_this setPosWorld [8040.28,8830.2,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item293 = objNull;
if (_layer257 && _layer0 && _layer307) then {
	_item293 = createVehicle ["Land_PicnicTable_01_F",[8040.93,8831.56,0.0490823],[],0,"CAN_COLLIDE"];
	_this = _item293;
	_objects pushback _this;
	_objectIDs pushback 293;
	_this setPosWorld [8040.93,8831.56,5.29922];
	_this setVectorDirAndUp [[0.430902,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item295 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item295 = createVehicle ["Land_New_WiredFence_5m_F",[8047.97,8819.26,0.46841],[],0,"CAN_COLLIDE"];
	_this = _item295;
	_objects pushback _this;
	_objectIDs pushback 295;
	_this setPosWorld [8047.97,8819.26,6.55086];
	_this setVectorDirAndUp [[-0.296855,-0.954923,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item296 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item296 = createVehicle ["Land_New_WiredFence_10m_F",[8051.67,8845.39,0.619816],[],0,"CAN_COLLIDE"];
	_this = _item296;
	_objects pushback _this;
	_objectIDs pushback 296;
	_this setPosWorld [8051.67,8845.39,6.82367];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item297 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item297 = createVehicle ["Land_New_WiredFence_5m_F",[8058.21,8841.43,0.655735],[],0,"CAN_COLLIDE"];
	_this = _item297;
	_objects pushback _this;
	_objectIDs pushback 297;
	_this setPosWorld [8058.21,8841.43,6.73819];
	_this setVectorDirAndUp [[-0.411675,-0.911331,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item298 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item298 = createVehicle ["Land_New_WiredFence_5m_F",[8039.92,8845.47,0.583584],[],0,"CAN_COLLIDE"];
	_this = _item298;
	_objects pushback _this;
	_objectIDs pushback 298;
	_this setPosWorld [8039.92,8845.47,6.66604];
	_this setVectorDirAndUp [[0.926162,-0.377125,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item299 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item299 = createVehicle ["Land_New_WiredFence_pole_F",[8038.54,8843.24,0.731175],[],0,"CAN_COLLIDE"];
	_this = _item299;
	_objects pushback _this;
	_objectIDs pushback 299;
	_this setPosWorld [8038.54,8843.24,6.8065];
	_this setVectorDirAndUp [[-0.914616,0.404324,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item300 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item300 = createVehicle ["Land_New_WiredFence_5m_F",[8033.47,8832.47,0.37356],[],0,"CAN_COLLIDE"];
	_this = _item300;
	_objects pushback _this;
	_objectIDs pushback 300;
	_this setPosWorld [8033.47,8832.47,6.45601];
	_this setVectorDirAndUp [[0.926162,-0.377125,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item301 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item301 = createVehicle ["Land_New_WiredFence_pole_F",[8032.09,8830.24,0.521152],[],0,"CAN_COLLIDE"];
	_this = _item301;
	_objects pushback _this;
	_objectIDs pushback 301;
	_this setPosWorld [8032.09,8830.24,6.59647];
	_this setVectorDirAndUp [[-0.914616,0.404324,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item302 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item302 = createVehicle ["Land_New_WiredFence_5m_F",[8058.57,8820.13,0.44072],[],0,"CAN_COLLIDE"];
	_this = _item302;
	_objects pushback _this;
	_objectIDs pushback 302;
	_this setPosWorld [8058.57,8820.13,6.52317];
	_this setVectorDirAndUp [[0.926162,-0.377125,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item303 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item303 = createVehicle ["Land_New_WiredFence_pole_F",[8057.19,8817.89,0.588312],[],0,"CAN_COLLIDE"];
	_this = _item303;
	_objects pushback _this;
	_objectIDs pushback 303;
	_this setPosWorld [8057.19,8817.89,6.66363];
	_this setVectorDirAndUp [[-0.914616,0.404324,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item304 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item304 = createVehicle ["Land_New_WiredFence_5m_F",[8064.78,8833.4,0.41587],[],0,"CAN_COLLIDE"];
	_this = _item304;
	_objects pushback _this;
	_objectIDs pushback 304;
	_this setPosWorld [8064.78,8833.4,6.49832];
	_this setVectorDirAndUp [[0.926174,-0.377097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item305 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item305 = createVehicle ["Land_New_WiredFence_pole_F",[8063.4,8831.17,0.445586],[],0,"CAN_COLLIDE"];
	_this = _item305;
	_objects pushback _this;
	_objectIDs pushback 305;
	_this setPosWorld [8063.4,8831.17,6.52091];
	_this setVectorDirAndUp [[-0.914625,0.404303,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item306 = objNull;
if (_layer294 && _layer0 && _layer307) then {
	_item306 = createVehicle ["Land_New_WiredFence_10m_F",[8041.24,8822.93,0.476243],[],0,"CAN_COLLIDE"];
	_this = _item306;
	_objects pushback _this;
	_objectIDs pushback 306;
	_this setPosWorld [8041.24,8822.93,6.6801];
	_this setVectorDirAndUp [[0.430901,0.902399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item311 = objNull;
if (_layer540) then {
	_item311 = createVehicle ["Land_InfoStand_V1_F",[8051.72,8829.67,0.956219],[],0,"CAN_COLLIDE"];
	_this = _item311;
	_objects pushback _this;
	_objectIDs pushback 311;
	_this setPosWorld [8051.72,8829.67,6.52158];
	_this setVectorDirAndUp [[-0.945466,0.32572,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item541 = objNull;
if (_layer318 && _layer540) then {
	_item541 = createVehicle ["Land_Workbench_01_F",[8055.17,8849.3,0],[],0,"CAN_COLLIDE"];
	_this = _item541;
	_objects pushback _this;
	_objectIDs pushback 541;
	_this setPosWorld [8055.17,8849.3,5.48674];
	_this setVectorDirAndUp [[-0.478378,-0.878154,0],[0,0,1]];
	repStation = _this;
	_this setVehicleVarName "repStation";
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
};

private _item542 = objNull;
if (_layer540) then {
	_item542 = createVehicle ["Gunrack1",[8051.33,8826.24,0.956219],[],0,"CAN_COLLIDE"];
	_this = _item542;
	_objects pushback _this;
	_objectIDs pushback 542;
	_this setPosWorld [8051.33,8826.24,6.451];
	_this setVectorDirAndUp [[0.41524,0.909712,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item543 = objNull;
if (_layer540) then {
	_item543 = createVehicle ["Gunrack1",[8041.88,8830.65,0.956219],[],0,"CAN_COLLIDE"];
	_this = _item543;
	_objects pushback _this;
	_objectIDs pushback 543;
	_this setPosWorld [8041.88,8830.65,6.451];
	_this setVectorDirAndUp [[0.41524,0.909712,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item544 = objNull;
if (_layer540) then {
	_item544 = createVehicle ["Gunrack1",[8055.59,8834.96,0.956219],[],0,"CAN_COLLIDE"];
	_this = _item544;
	_objects pushback _this;
	_objectIDs pushback 544;
	_this setPosWorld [8055.59,8834.96,6.451];
	_this setVectorDirAndUp [[0.41524,0.909712,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item545 = objNull;
if (_layer540) then {
	_item545 = createVehicle ["Gunrack1",[8044.97,8839.99,0.956219],[],0,"CAN_COLLIDE"];
	_this = _item545;
	_objects pushback _this;
	_objectIDs pushback 545;
	_this setPosWorld [8044.97,8839.99,6.451];
	_this setVectorDirAndUp [[0.41524,0.909712,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item546 = objNull;
if (_layerRoot) then {
	_item546 = createVehicle ["Land_MapBoard_F",[8047.06,8834.83,0.808],[],0,"CAN_COLLIDE"];
	_this = _item546;
	_objects pushback _this;
	_objectIDs pushback 546;
	_this setPosWorld [8046.7,8834.73,6.69238];
	_this setVectorDirAndUp [[-0.784884,0.619642,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
};

private _item547 = objNull;
if (_layerRoot) then {
	_item547 = createVehicle ["Land_CampingChair_V2_F",[8050.05,8834.46,0.961082],[],0,"CAN_COLLIDE"];
	_this = _item547;
	_objects pushback _this;
	_objectIDs pushback 547;
	_this setPosWorld [8050.05,8834.46,6.45757];
	_this setVectorDirAndUp [[0.929528,-0.368752,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item548 = objNull;
if (_layerRoot) then {
	_item548 = createVehicle ["Land_CampingChair_V2_F",[8049.67,8833.52,0.961082],[],0,"CAN_COLLIDE"];
	_this = _item548;
	_objects pushback _this;
	_objectIDs pushback 548;
	_this setPosWorld [8049.67,8833.52,6.45757];
	_this setVectorDirAndUp [[0.929528,-0.368752,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item549 = objNull;
if (_layerRoot) then {
	_item549 = createVehicle ["Land_CampingChair_V2_F",[8048.89,8831.44,0.961082],[],0,"CAN_COLLIDE"];
	_this = _item549;
	_objects pushback _this;
	_objectIDs pushback 549;
	_this setPosWorld [8048.89,8831.44,6.45757];
	_this setVectorDirAndUp [[0.929528,-0.368752,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item550 = objNull;
if (_layerRoot) then {
	_item550 = createVehicle ["Land_CampingChair_V2_F",[8048.52,8830.49,0.961082],[],0,"CAN_COLLIDE"];
	_this = _item550;
	_objects pushback _this;
	_objectIDs pushback 550;
	_this setPosWorld [8048.52,8830.49,6.45757];
	_this setVectorDirAndUp [[0.813386,-0.581725,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item551 = objNull;
if (_layerRoot) then {
	_item551 = createVehicle ["Land_CampingChair_V2_F",[8051.91,8833.72,0.961082],[],0,"CAN_COLLIDE"];
	_this = _item551;
	_objects pushback _this;
	_objectIDs pushback 551;
	_this setPosWorld [8051.91,8833.72,6.45757];
	_this setVectorDirAndUp [[0.929528,-0.368752,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item552 = objNull;
if (_layerRoot) then {
	_item552 = createVehicle ["Land_CampingChair_V2_F",[8051.53,8832.78,0.961082],[],0,"CAN_COLLIDE"];
	_this = _item552;
	_objects pushback _this;
	_objectIDs pushback 552;
	_this setPosWorld [8051.53,8832.78,6.45757];
	_this setVectorDirAndUp [[0.929528,-0.368752,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item553 = objNull;
if (_layerRoot) then {
	_item553 = createVehicle ["Land_CampingChair_V2_F",[8050.75,8830.7,0.961082],[],0,"CAN_COLLIDE"];
	_this = _item553;
	_objects pushback _this;
	_objectIDs pushback 553;
	_this setPosWorld [8050.75,8830.7,6.45757];
	_this setVectorDirAndUp [[0.929528,-0.368752,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item554 = objNull;
if (_layerRoot) then {
	_item554 = createVehicle ["Land_CampingChair_V2_F",[8050.37,8829.75,0.961082],[],0,"CAN_COLLIDE"];
	_this = _item554;
	_objects pushback _this;
	_objectIDs pushback 554;
	_this setPosWorld [8050.37,8829.75,6.45757];
	_this setVectorDirAndUp [[0.929528,-0.368752,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item555 = objNull;
if (_layerRoot) then {
	_item555 = createSimpleObject ["Land_CampingChair_V2_F",[8045.62,8832.01,5.89433]];
	_this = _item555;
	_objects pushback _this;
	_objectIDs pushback 555;
	_this setPosWorld [8045.62,8832.01,6.40081];
	_this setVectorDirAndUp [[-0.999769,0.021497,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item556 = objNull;
if (_layerRoot) then {
	_item556 = createVehicle ["MASH_EP1",[8029.62,8861.58,0],[],0,"CAN_COLLIDE"];
	_this = _item556;
	_objects pushback _this;
	_objectIDs pushback 556;
	_this setPosWorld [8029.62,8861.58,6.1695];
	_this setVectorDirAndUp [[0.985742,-0.168264,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item557 = objNull;
if (_layerRoot) then {
	_item557 = createVehicle ["Land_CamoNetVar_EAST",[8066.8,8860.19,0],[],0,"CAN_COLLIDE"];
	_this = _item557;
	_objects pushback _this;
	_objectIDs pushback 557;
	_this setPosWorld [8066.8,8860.19,6.11267];
	_this setVectorDirAndUp [[-0.358172,-0.933655,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item558 = objNull;
if (_layerRoot) then {
	_item558 = createSimpleObject ["Land_WoodenTable_02_large_F",[8068.9,8859.18,4.99]];
	_this = _item558;
	_objects pushback _this;
	_objectIDs pushback 558;
	_this setPosWorld [8068.9,8859.18,5.46836];
	_this setVectorDirAndUp [[-0.895653,0.444754,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item559 = objNull;
if (_layerRoot) then {
	_item559 = createSimpleObject ["Land_WoodenTable_02_large_F",[8062.54,8861.39,4.99]];
	_this = _item559;
	_objects pushback _this;
	_objectIDs pushback 559;
	_this setPosWorld [8062.54,8861.39,5.46836];
	_this setVectorDirAndUp [[0.964377,-0.26453,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item561 = objNull;
if (_layerRoot) then {
	_item561 = createVehicle ["Land_BagBunker_Small_F",[8080.24,8869.82,0],[],0,"CAN_COLLIDE"];
	_this = _item561;
	_objects pushback _this;
	_objectIDs pushback 561;
	_this setPosWorld [8080.24,8869.82,5.95563];
	_this setVectorDirAndUp [[-0.711829,-0.702353,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item562 = objNull;
if (_layerRoot) then {
	_item562 = createVehicle ["Land_BagBunker_Small_F",[8030.91,8761.89,0],[],0,"CAN_COLLIDE"];
	_this = _item562;
	_objects pushback _this;
	_objectIDs pushback 562;
	_this setPosWorld [8030.91,8761.89,5.95563];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item569 = objNull;
if (_layerRoot) then {
	_item569 = _item568 createUnit ["B_Soldier_F",[8030.76,8762.66,0],[],0,"CAN_COLLIDE"];
	_item568 selectLeader _item569;
	_this = _item569;
	_objects pushback _this;
	_objectIDs pushback 569;
	_this setPosWorld [8030.76,8762.71,4.99144];
	_this setVectorDirAndUp [[0.169851,-0.98547,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Kyle Hall";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male10ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH2",["inbasemoves_patrolling2"],false,false] # 0 isEqualTo '') then      {        ["WATCH2",["inbasemoves_patrolling2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item570 = objNull;
if (_layerRoot) then {
	_item570 = _item568 createUnit ["B_Soldier_F",[8068.73,8858.28,0],[],0,"CAN_COLLIDE"];
	_this = _item570;
	_objects pushback _this;
	_objectIDs pushback 570;
	_this setPosWorld [8068.73,8858.33,4.99144];
	_this setVectorDirAndUp [[0.428667,0.903462,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Fred Halliwell";;
	_this setface "WhiteHead_08";;
	_this setspeaker "Male06ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,false] # 0 isEqualTo '') then      {        ["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item572 = objNull;
if (_layerRoot) then {
	_item572 = _item568 createUnit ["B_Soldier_F",[8080.4,8870.01,0],[],0,"CAN_COLLIDE"];
	_this = _item572;
	_objects pushback _this;
	_objectIDs pushback 572;
	_this setPosWorld [8080.4,8870.06,4.99144];
	_this setVectorDirAndUp [[0.610063,0.792353,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "David Robinson";;
	_this setface "WhiteHead_08";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.03;;
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

private _item573 = objNull;
if (_layerRoot) then {
	_item573 = _item568 createUnit ["B_Soldier_F",[8045.63,8831.95,0.95244],[],0,"CAN_COLLIDE"];
	_this = _item573;
	_objects pushback _this;
	_objectIDs pushback 573;
	_this setPosWorld [8045.63,8832,5.94388];
	_this setVectorDirAndUp [[0.996455,0.0841229,0],[0,0,1]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "William Kelly";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
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

private _item567 = objNull;
if (_layerRoot) then {
	_item567 = _item568 createUnit ["B_Soldier_F",[8069.33,8859.85,0],[],0,"CAN_COLLIDE"];
	_this = _item567;
	_objects pushback _this;
	_objectIDs pushback 567;
	_this setPosWorld [8069.33,8859.9,4.99144];
	_this setVectorDirAndUp [[-0.54382,-0.839202,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Kyle Santorum";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male07ENG";;
	_this setpitch 0.95;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item313 = objNull;
if (_layer540) then {
	_item313 = createTrigger ["EmptyDetectorArea10x10",[8030.15,8861.67,1.11045],false];
	_this = _item313;
	_triggers pushback _this;
	_triggerIDs pushback 313;
	_item313 setPosATL [8030.15,8861.67,1.11045];
	_this setTriggerArea [6,6,195.06,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item564;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["Alpha 1-1"];                            } else {                                [_this, "Alpha 1-1"] call CBA_fnc_setCallsign;                            };                        ;
	   //   if (!is3DEN && (["","ColorWEST","Alpha 1-1",true] # 0 != '') then      {        [_this, ["","ColorWEST","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-1",true]'];          ["","ColorWEST","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item568;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["HQ"];                            } else {                                [_this, "HQ"] call CBA_fnc_setCallsign;                            };                        ;
	_this setBehaviour "CARELESS";
	     // if (!is3DEN && (["","ColorWEST","Alpha 1-2",true] # 0 != '') then      {        [_this, ["","ColorWEST","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-2",true]'];          ["","ColorWEST","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item314 = objNull;
if (_layer540) then {
	_item314 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8062.37,8854.07,0],[],0,"CAN_COLLIDE"];
	_this = _item314;
	_logics pushback _this;
	_logicIDs pushback 314;
	_this setPosWorld [8062.37,8854.07,4.99];
	_this setVectorDirAndUp [[0.804026,0.594595,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer318) then {missionNamespace setVariable ["base_para_Repair Station",[[_item541],[]]];};
if (_layer540) then {missionNamespace setVariable ["base_para_SIA ZGM Essentials",[[_item311,_item313,_item314,_item541,_item542,_item543,_item544,_item545],[]]];};
if (_layer294) then {missionNamespace setVariable ["base_para_fence",[[_item295,_item296,_item297,_item298,_item299,_item300,_item301,_item302,_item303,_item304,_item305,_item306],[]]];};
if (_layer257) then {missionNamespace setVariable ["base_para_floor",[[_item258,_item259,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item279,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293],[]]];};
if (_layer220) then {missionNamespace setVariable ["base_para_wall",[[_item221,_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item236,_item237,_item238,_item239,_item240,_item241,_item242,_item243,_item244,_item245,_item246,_item247,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256],[]]];};
if (_layer213) then {missionNamespace setVariable ["base_para_mortar_shelter",[[_item214,_item215,_item216,_item217,_item218,_item219],[]]];};
if (_layer206) then {missionNamespace setVariable ["base_para_decor",[[_item207,_item208,_item209,_item210,_item211,_item212],[]]];};
if (_layer148) then {missionNamespace setVariable ["base_para_objects",[[_item151,_item152,_item153,_item154,_item155,_item156,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205],[]]];};
if (_layer141) then {missionNamespace setVariable ["base_para_timber",[[_item142,_item143,_item144,_item145,_item146,_item147],[]]];};
if (_layer134) then {missionNamespace setVariable ["base_para_light",[[_item135,_item136,_item137,_item138,_item139,_item140],[]]];};
if (_layer129) then {missionNamespace setVariable ["base_para_concret",[[_item130,_item131,_item132,_item133],[]]];};
if (_layer77) then {missionNamespace setVariable ["base_para_decal",[[_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128],[]]];};
if (_layer66) then {missionNamespace setVariable ["base_para_barrier",[[_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76],[]]];};
if (_layer39) then {missionNamespace setVariable ["base_para_sandbag",[[_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65],[]]];};
if (_layer28) then {missionNamespace setVariable ["base_para_03",[[_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38],[]]];};
if (_layer19) then {missionNamespace setVariable ["base_para_01",[[_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27],[]]];};
if (_layer4) then {missionNamespace setVariable ["base_para_02",[[_item5,_item6,_item7,_item8,_item9,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18],[]]];};
if (_layer3) then {missionNamespace setVariable ["base_para_shell_crater",[[_item5,_item6,_item7,_item8,_item9,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38],[]]];};
if (_layer1) then {missionNamespace setVariable ["base_para_tent",[[_item310],[]]];};
if (_layer0) then {missionNamespace setVariable ["base_para_hq_tent",[[_item310,_item5,_item6,_item7,_item8,_item9,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item130,_item131,_item132,_item133,_item135,_item136,_item137,_item138,_item139,_item140,_item142,_item143,_item144,_item145,_item146,_item147,_item151,_item152,_item153,_item154,_item155,_item156,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item214,_item215,_item216,_item217,_item218,_item219,_item221,_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item236,_item237,_item238,_item239,_item240,_item241,_item242,_item243,_item244,_item245,_item246,_item247,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item258,_item259,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item279,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293,_item295,_item296,_item297,_item298,_item299,_item300,_item301,_item302,_item303,_item304,_item305,_item306],[]]];};
if (_layer307) then {missionNamespace setVariable ["base_para_hq_tent",[[_item310,_item5,_item6,_item7,_item8,_item9,_item10,_item11,_item12,_item13,_item14,_item15,_item16,_item17,_item18,_item20,_item21,_item22,_item23,_item24,_item25,_item26,_item27,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item78,_item79,_item80,_item81,_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96,_item97,_item98,_item99,_item100,_item101,_item102,_item103,_item104,_item105,_item106,_item107,_item108,_item109,_item110,_item111,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item130,_item131,_item132,_item133,_item135,_item136,_item137,_item138,_item139,_item140,_item142,_item143,_item144,_item145,_item146,_item147,_item151,_item152,_item153,_item154,_item155,_item156,_item158,_item159,_item160,_item161,_item162,_item163,_item164,_item165,_item166,_item167,_item168,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item207,_item208,_item209,_item210,_item211,_item212,_item214,_item215,_item216,_item217,_item218,_item219,_item221,_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item236,_item237,_item238,_item239,_item240,_item241,_item242,_item243,_item244,_item245,_item246,_item247,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item258,_item259,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item279,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293,_item295,_item296,_item297,_item298,_item299,_item300,_item301,_item302,_item303,_item304,_item305,_item306],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item542) then {
		this = _item542;
		call{arsenals pushBack this};
	};
	if !(isnull _item543) then {
		this = _item543;
		call{arsenals pushBack this};
	};
	if !(isnull _item544) then {
		this = _item544;
		call{arsenals pushBack this};
	};
	if !(isnull _item545) then {
		this = _item545;
		call{arsenals pushBack this};
	};
	if !(isnull _item546) then {
		this = _item546;
		this setObjectTextureGlobal [0, "\ibr\IslaDuala3\data\pictureMap_ca.paa"];;
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
