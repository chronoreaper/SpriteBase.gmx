var c=argument0
switch floor(c.unit){
    case fighter001_0: return slashsweep;
    case archer001_0: return stab;
    case hero001_0: return windSlash;
    case mage001_0: return magicBurnEff;
    case ice_mage001_0: return freezeEff;
    case thunder_mage001_0: return shockEff;
    case healer001_0: return healEff;
    case Dragon001_0: return water_breath;
    case eyebat001_0: return fluxEff;
    case shroom001_0: return poison_splash;
    case wurm001_0:
        if c.wepAOE=2
            return laser_beam_full
        else return blank
    default: return blank;//no wep
}

