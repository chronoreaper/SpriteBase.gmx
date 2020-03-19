var bonus = argument0
var return_type = argument1
/**
-1- description
0 - Effect before room creation
1 - Name
2 - Cost
3 - sprite
4 - eff after room creation
5 - imageIndex of box
*/
var tax = ds_list_size(oControler.unitList)-1

with oControler
switch floor(bonus){
    case -9: //add barrier mage to party
        switch return_type{
        case -1:return unit_description(oBarrier_Mage)
        case 0:
            var inst=instance_create(x,y,oBarrier_Mage);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "barrier mage"
        case 2:
            return 1+floor(tax/2)
        case 3:
            return barrier_mage001_0
        case 5:
            return 0;
        }
    break;
    case -8: //add thunder mage to party
        switch return_type{
        case -1:return unit_description(oThunderMage)
        case 0:
            var inst=instance_create(x,y,oThunderMage);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "ThuNder mage"
        case 2:
            return 1+floor(tax/2)
        case 3:
            return thunder_mage001_0
        case 5:
            return 0;
        }
    break;
    case -7: //add ice mage to party
        switch return_type{
        case -1:return unit_description(oIceMage)
        case 0:
            var inst=instance_create(x,y,oIceMage);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "ice mage"
        case 2:
            return 1+floor(tax/2)
        case 3:
            return ice_mage001_0
        case 5:
            return 0;
        }
    break;
    case -6: //add defender to party
        switch return_type{
        case -1:return unit_description(oDefender)
        case 0:
            var inst=instance_create(x,y,oDefender);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "defeNder"
        case 2:
            return 1+floor(tax/2)
        case 3:
            return defender001_0
        case 5:
            return 0;
        }
    break;
    case -5: //add hero to party
        switch return_type{
        case -1:return unit_description(oHero)
        case 0:
            var inst=instance_create(x,y,oHero);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "hero"
        case 2:
            return 3+floor(tax/2)
        case 3:
            return hero001_0
        case 5:
            return 0;
        }
    break;
    case -4: //add healer to party
        switch return_type{
        case -1:return unit_description(oHealer)
        case 0:
            var inst=instance_create(x,y,oHealer);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "healer"
        case 2:
            return 1+floor(tax/2)
        case 3:
            return healer001_0
        case 5:
            return 0;
        }
    break;
    case -3: //add mage to party
        switch return_type{
        case -1:return unit_description(oMage)
        case 0:
            var inst=instance_create(x,y,oMage);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "mage"
        case 2:
            return 1+floor(tax/2)
        case 3:
            return mage001_0
        case 5:
            return 0;
        }
    break;
    case -2: //add archer to party
        switch return_type{
        case -1:return unit_description(oArcher)
        case 0:
            var inst=instance_create(x,y,oArcher);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "archer"
        case 2:
            return 1+floor(tax/2)
        case 3:
            return archer001_0
        case 5:
            return 0;
        }
    break;
    case -1: //add fighter to party
        switch return_type{
        case -1:return unit_description(oFighter)
        case 0:
            var inst=instance_create(x,y,oFighter);
            ds_list_add(unitList,inst)
            break
        case 1:
            return "fighter"
        case 2:
            return 1+floor(tax/2)
        case 3:
            return fighter001_0
        case 5:
            return 0;
        }
    break;
    case 1: //heal party for 1
        switch return_type{
        case -1:return "heals party for 1 hp"
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
            return 1
        case 3:
            return multiHealSprite
        case 5:
            return 0;
        }
    break;
    case 2: //shield party for 2
        switch return_type{
        case -1: return "gives party shield equal to each hp"
        case 0:
            return 1
            break
        case 1:
            return "shield"
        case 2:
            return 1
        case 3:
            return shieldSprite
        case 4:           
            for (var i=0;i<ds_list_size(unitList);i++){
                var char=ds_list_find_value(unitList,i)
                if instance_exists(char){
                    instance_activate_object(char)
                    addStatus(1,char,3,char.hp)
                }
            }
            break;
        case 5:
            return 0;
        }
    break;
    case 3: //increase max hp for one unit
        var index = floor(frac(bonus)*100)
        switch return_type{
        case -1: return "INCREASES max Hp"
        case 0:   
            var inst = ds_list_find_value(unitList,index);
            inst.hp+=1
            inst.mhp+=1        
            break;
        case 1:
            return "Hp Up"
        case 2:
            return 2+floor(tax/2)
        case 3:
            return ds_list_find_value(unitList,index).unit
        case 5:
            return 2;
        }
    break;
    case 4: //increase pow for one unit
        var index = floor(frac(bonus)*100)
        switch return_type{
        case -1: return "INCREASES Pow"
        case 0:   
            var inst = ds_list_find_value(unitList,index);
            inst.pow+=1     
            break;
        case 1:
            return "Pow Up"
        case 2:
            return 2+floor(tax/2)
        case 3:
            return ds_list_find_value(unitList,index).unit
        case 5:
            return 1;
        }
    break;
    case 5: //increase move for one unit
        var index = floor(frac(bonus)*100)
        switch return_type{
        case -1: return "INCREASES move"
        case 0:   
            var inst = ds_list_find_value(unitList,index);
            inst.mov+=1      
            break;
        case 1:
            return "Move Up"
        case 2:
            return 2+floor(tax/2)
        case 3:
            return ds_list_find_value(unitList,index).unit
        case 5:
            return 3;
        }
    break;
    case 6: //increase range for one unit
        var index = floor(frac(bonus)*100)
        switch return_type{
        case -1: return "INCREASES RaNge"
        case 0:   
            var inst = ds_list_find_value(unitList,index);
            inst.range+=1      
            break;
        case 1:
            return "RANGE Up"
        case 2:
            return 2+floor(tax/2)
        case 3:
            return ds_list_find_value(unitList,index).unit
        case 5:
            return 4;
        }
    break;
    default: 
        return 0   
}
return 0
