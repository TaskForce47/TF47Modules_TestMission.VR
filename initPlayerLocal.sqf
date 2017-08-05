
waitUntil{ time > 2 };
[] call tf47_modules_umenu_fnc_initPlayer;

(findDisplay 46) displayAddEventHandler 
    ["KeyDown", "if((_this select 4) && (_this select 1) == 22 && 
        !dialog) then { _nul = [] spawn tf47_modules_core_fnc_initMenu;
    };"]; 