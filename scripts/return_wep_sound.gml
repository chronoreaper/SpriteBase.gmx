var c=argument0
switch floor(c.unit){
    case mage001_0: return sFire
    case ice_mage001_0: return sHitSlash
    case thunder_mage001_0: return sThunder
    case hero001_0: return sWindDmg
    case healer001_0: return sHeal
    case barrier_mage001_0: return sHeal
    case Dragon001_0: return sWindDmg
    case eyebat001_0: return sWindDmg
    case wurm001_0:
        if c.wepAOE=2
            return sThunder
        else return sHitSlash
    default: return sHitSlash;
}
