var eff_timing = argument0
var arg_eff = argument1
/*
timings
0 on hit
1 def eff
2 end of turn
*/
//effects are in get eff
var str = "."
switch arg_eff{
    case 0: return "";
    case 1: str+= "Ignight"break;
    case 2: str+= "Pushes" break;
    case 3: str+= "Freeze" break;
    case 4: str+= "Shields" break;
    case 5: str+= "Shocks" break;
    case 6: str+= "Heals" break;
}

switch eff_timing{
    case 0:str += " Target" break;
    case 1: str+= " Attacker" break;
    case 2: str+= " End Of Turn" break;
}
return str
