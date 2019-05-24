var arg_unit=argument0
var hit_miss=argument1
//if ds_map_find_value(aiTurns, currentTurn)>=0
{
with arg_unit{
    switch floor(item[wep]){
        case 50:
            item[wep]-=0.01
        if frac(item[wep])=0{
            //with oControler
                //message_create("spirit bow broke")
            //item[wep]=0
            wep=0
        }
        break;
        default:
        //if hit_miss=1||return_wep_range(item[wep])>1
        if item[wep]!=0{
            item[wep]-=0.01
            if (frac(item[wep]))=0||frac(item[wep])=1{
                    with oControler
                        if ds_map_find_value(aiTurns, currentTurn)>=0
                            message_create(arg_unit.name+"'s weapon broke")
                item[wep]=0
                wep=0
            }
        }
        break;
    }
}
}
