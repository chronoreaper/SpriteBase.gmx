var arg_unit=argument0
var hit_miss=argument1
if ds_map_find_value(aiTurns, currentTurn)>=0{
with arg_unit{
    switch floor(item[wep]){
        case 2:
        if hit_miss=1
            item[wep]-=0.01
            if frac(item[wep])=0{
                with oControler
                    message_create("dagger broke")
                item[wep]=0
                wep=10
            }
        break;
        case 4:
        if hit_miss=1
            item[wep]-=0.01
            if frac(item[wep])=0{
                with oControler
                    message_create("screwdriver broke")
                item[wep]=0
                wep=10
            }
        break;
        case 6:
        if hit_miss=1
            item[wep]-=0.01
            if frac(item[wep])=0{
                with oControler
                    message_create("rock broke")
                item[wep]=0
                wep=10
            }
        break;
        case 7:
        item[wep]-=0.01
        if frac(item[wep])=0{
            with oControler
                message_create("bow broke")
            item[wep]=0
            wep=10
        }
        break;
        case 8:
        if hit_miss=1
            item[wep]-=0.01
        if frac(item[wep])=0{
            with oControler
                message_create("sword broke")
            item[wep]=0
            wep=10
        }
        break;
        case 9:
        if hit_miss=1
            item[wep]-=0.01
        if frac(item[wep])=0{
            with oControler
                message_create("club broke")
            item[wep]=0
            wep=10
        }
        break;
        case 10:
        if hit_miss=1
            item[wep]-=0.01
        if frac(item[wep])=0{
            with oControler
                message_create("stick broke")
            item[wep]=0
            wep=10
        }
        break;
        case 11:
            item[wep]-=0.01
        if frac(item[wep])=0{
            with oControler
                message_create("spirit bow broke")
            item[wep]=0
            wep=10
        }
        break;
        default: break
    }
}
}
