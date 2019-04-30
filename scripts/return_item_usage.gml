var arg_item=argument0
var arg_equip=argument1
switch floor(arg_item){
    case 1: return "USE"
    case 3: return "USE"
    case 5: return "USE"
    case 22: return "USE"
    default:
        if arg_equip=0 return "EQUIP"
        else return "UNEQUIP"
}
