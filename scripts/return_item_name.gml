var arg_item=argument0
switch floor(arg_item){
    case 1: return "juice box "+string(round(frac(arg_item)*100))+"" 
    case 2: return "dagger "+string(round(frac(arg_item)*100))+"" 
    case 3: return "first aid "+string(round(frac(arg_item)*100))+"" 
    case 4: return "screwdriver "+string(round(frac(arg_item)*100))+"" 
    case 5: return "hotdog "+string(round(frac(arg_item)*100))+"" 
    case 6: return "rock "+string(round(frac(arg_item)*100))+"" 
    default:return""
}
