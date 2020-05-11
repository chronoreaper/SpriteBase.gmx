var arg_object=argument0
switch arg_object{    
    //objects
    case oCoin:return       "USE TO SPEND ON BONUSES"
    case oChest:return      "USE A KEY TO UNLOCK"
    case oStairs:return     "END YOUR TURN ON THIS TO GO TO THE NEXT FLOOR"
    case oFire:return       "UNITS ON THIS TAKES 1 DAMAGE AT START OF TURN"
    case oIceBlock:return   "HP:1"
    case oTeleporter:return "TELEPORTS UNITS ON THIS AT END OF TURN"
    case oHealthPack:return "HEALS 1 HP"
    default:
        if object_is_ancestor(arg_object,oChar){
            var list = ds_map_find_value(oControler.defUnits,arg_object)
            var str= "";
            str += string_upper(list[|0]) + " - "
            str += "HP:"+string(list[|2]) + " "
            str += "POW:"+string(abs(list[|3])) + " "
            str += "RANGE:"+string(list[|4]) + " "
            str += "MOVE:"+string(list[|5]) + " "
            str += eff_name_builder(0,list[|7])
            str += eff_name_builder(1,list[|8])
            str += eff_name_builder(2,list[|9])
            str += aoe_name_builder(list[|10])
            return str
        }
        else return ""
}
