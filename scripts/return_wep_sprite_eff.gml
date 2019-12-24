var arg_unit=argument0
switch floor(arg_unit){
    case fighter001_0: return slashsweep;
    case archer001_0: return stab;
    case hero001_0: return windSlash;
    case mage001_0: return magicBurnEff;
    case healer001_0: return healEff;
    case Dragon001_0: return water_breath;
    case eyebat001_0: return fluxEff;
    case shroom001_0: return poison_splash;
    default: return blank;//no wep
}

