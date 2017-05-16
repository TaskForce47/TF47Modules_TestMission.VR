#include "TF47Modules\TF47UMenu\TF47UMenuMacros.hpp"

// variables outside of config pls
_airCallsigns = ["RAVEN-01","RAVEN-02","DUSTOFF","BUTTERFLY-01","BUTTERFLY-02",
    "PELICAN","GRIFFIN","GOOSE","ALBATROS"];

_defaultColor = "ColorBLUFOR";

UMENU_CONFIG_BEGIN

["CMD", "b_hq", "ColorGreen", "Headquarters", ["GODFATHER","TOPMAN","TOWER"]],
["INF", "b_inf", _defaultColor, "Infantry", []],
["INF", "b_mortar", _defaultColor, "Mortar", []],
["INF", "b_support", _defaultColor, "Support", []],
["INF", "b_med", _defaultColor, "Medical Support", []],
["REC", "b_recon", _defaultColor, "Recon", []],
["MEC", "b_mech_inf", "IFV", "ColorOrange", ["TIGER-01","TIGER-02","TIGER-03",
    "GATOR-01","GATOR-02"]],
["ARM", "b_armor", "Tank", "ColorOrange", ["RHINO-01","RHINO-02","LION-01",
    "LION-02", "FROG-01"]],
["HELO", "b_air", "Helicopter (Trans.)", "ColorBrown", _airCallsigns],
["PLN", "b_plane", "Plane (Trans.)", "ColorBrown", _airCallsigns],
["AHELO", "b_air", "Helicopter (Attack)", "ColorOrange", ["MANTICORE",
    "FIREFLY"]],
["APLN", "b_plane", "Plane (Attack)", "ColorGreen", ["THUNDERBIRD","WASP",
    "EAGLE"]]

UMENU_CONFIG_END
