var bonus = argument0
var return_type = argument1
/**
-1- description
0 - Effect
1 - Name
2 - Cost
3 - sprite
*/
var tax = ds_list_size(oControler.unitList)-1

with oControler
switch floor(bonus){
    case -6: //add defender to party
        switch return_type{
        case 0:
            var inst=instance_create(x,y,oDefender);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "defeNder"
        case 2:
            return 1+tax
        case 3:
            return defender001_0
        }
    break;
    case -5: //add hero to party
        switch return_type{
        case 0:
            var inst=instance_create(x,y,oHero);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "hero"
        case 2:
            return 3+tax
        case 3:
            return hero001_0
        }
    break;
    case -4: //add healer to party
        switch return_type{
        case 0:
            var inst=instance_create(x,y,oHealer);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "healer"
        case 2:
            return 1+tax
        case 3:
            return healer001_0
        }
    break;
    case -3: //add mage to party
        switch return_type{
        case 0:
            var inst=instance_create(x,y,oMage);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "mage"
        case 2:
            return 1+tax
        case 3:
            return mage001_0
        }
    break;
    case -2: //add archer to party
        switch return_type{
        case 0:
            var inst=instance_create(x,y,oArcher);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "archer"
        case 2:
            return 1+tax
        case 3:
            return archer001_0
        }
    break;
    case -1: //add fighter to party
        switch return_type{
        case 0:
            var inst=instance_create(x,y,oFighter);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "fighter"
        case 2:
            return 1+tax
        case 3:
            return fighter001_0
        }
    break;
    case 1: //heal party for 1
        switch return_type{
        case 0:
            for (var i=0;i<ds_list_size(unitList);i++){
                var char=ds_list_find_value(unitList,i)
                if instance_exists(char){
                    instance_activate_object(char)
                    char.hp = min(char.mhp,char.hp+1)
                }
            }
            break
        case 1:
            return "heal"
        case 2:
            return 0+tax
        case 3:
            return multiHealSprite
        }
    break;
    case 2: //shield party for 2
        switch return_type{
        case 0:
            return 1
            break
        case 1:
            return "shield"
        case 2:
            return 0+tax
        case 3:
            return shieldSprite
        case 4:           
            for (var i=0;i<ds_list_size(unitList);i++){
                var char=ds_list_find_value(unitList,i)
                if instance_exists(char){
                    instance_activate_object(char)
                    addStatus(1,char,3,2)
                }
            }
            break;
        }
    break;
    default: 
        return 0   
}
return 0
