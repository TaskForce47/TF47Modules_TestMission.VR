/**
 *  @author Willard
 *  @description
 *  Shows the sp/vs
 *  @params none
 *  @return nothing
 */
// wait for the config
waitUntil{ !isNil "tf47_modules_sp_markers"; };
waitUntil{ !isNil "tf47_modules_vs_config_allMarkers"; };

// get the nearest markers
_nearestVehicleSpawner = [tf47_modules_vs_config_allMarkers, player] call 
	BIS_fnc_nearestPosition;

_nearestServicePoint = [tf47_modules_sp_markers, player] call 
	BIS_fnc_nearestPosition;

// show the dialog dependeing on the player pos
_distanceVs = (getMarkerPos  _nearestVehicleSpawner) distance (getpos player);
_distanceSp = (getMarkerPos  _nearestServicePoint) distance (getpos player);
if(_distanceVs < 5 && _distanceVs < _distanceSp) then {
	createDialog "tf47_modules_vs_main_dialog";
} else {
	if(_distanceSp < 5 && (vehicle player) != player) then {
		createDialog "tf47_modules_sp_main_dialog";
	};
};