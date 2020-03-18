var arg_unit=argument0
var arg_value = argument1
/*
0 hp
1 pow
2 range
3 mov
*/
switch arg_unit{
    case oFighter:
        switch arg_value{
            case 0:return 5;//Hp
            case 1:return 1;//pow
            case 2:return 1;//range
            case 3:return 3;//mov
        }
    case oArcher:return      "HP:4 POW:1 RANGE:3 MOV:3"
    case oMage:return        "HP:3 POW:1 RANGE:2 MOV:3 CREATES FIRE ON ATTACK"
    case oHealer:return      "HP:3 POW:1 RANGE:2 MOV:3 HEALS TARGET HP EQUAL TO POW"
    case oHero:return        "HP:6 POW:2 RANGE:2 MOV:3"
    case oDefender:return    "HP:6 POW:2 RANGE:1 MOV:2 PUSHES TARGET"
    case oIceMage:return     "HP:3 POW:1 RANGE:2 MOV:3 CREATES ICE BLOCK ON ATTACK"
    case oThunderMage:return "HP:3 POW:1 RANGE:2 MOV:3"  
    
    //monsters
    case oSlime:return       "HP:2 POW:1 RANGE:1 MOV:1"  
    case oShroom:return      "HP:2 POW:1 RANGE:2 MOV:1"  
    case oBoar:return        "HP:3 POW:1 RANGE:1 MOV:2"
    case oFrog:return        "HP:2 POW:1 RANGE:1 MOV:2"  
    case oTurt:return        "HP:3 POW:1 RANGE:1 MOV:1"  
    case oCyclops:return     "HP:6 POW:2 RANGE:1 MOV:1"  
    case oEyebat:return      "HP:2 POW:1 RANGE:2 MOV:1"  
    case oMimic:return       "HP:6 POW:2 RANGE:1 MOV:1"  
    case oWurm:return        "HP:6 POW:2 RANGE:1 MOV:1"  
    case oDragon1:return     "HP:10POW:1 RANGE:2 MOV:1 BREATHS WATER ON ATTACK"    
    
    //objects
    case oCoin:return       "USE TO SPEND ON BONUSES"
    case oChest:return      "USE A KEY TO UNLOCK"
    case oStairs:return     "END YOUR TURN ON THIS TO GO TO THE NEXT FLOOR"
    case oFire:return       "UNITS ON THIS TAKES 1 DAMAGE AT START OF TURN"
    case oIceBlock:return   "HP:1"
    case oTeleporter:return "TELEPORTS UNITS ON THIS AT END OF TURN"
    default: return " "
}
