var arg_attack = argument0
//sets the sprite to always be in the same direction
switch arg_attack{
    case magicBurnEff: return 1
    case freezeEff: return 1
    case shockEff: return 1
    case healEff: return 1
    default: return 0
}
