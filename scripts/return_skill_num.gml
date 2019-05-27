var arg_source=argument0
var arg_targ=argument1
var arg_slot=oControler.menuSel
var arg_skill=arg_source.skill[arg_slot]
/* 1 = usable
 0 = cant use
*/
switch floor(arg_skill){
    case 1:
        return ceil(arg_source.lv/2)+2
    case 2:
        return return_dmg(8+arg_source.lv,0,return_skill_type(arg_skill),arg_source,arg_targ);
    case 3:
        return return_dmg(8+arg_source.lv,0,return_skill_type(arg_skill),arg_source,arg_targ);
    case 4:
        return return_dmg(arg_source.stats[2,0],0,return_skill_type(arg_skill),arg_source,arg_targ);
    case 5:
        return arg_source.lv*2+5
    case 7:
        return arg_source.stats[2,0]+7
    case 8:
        return return_dmg(arg_source.stats[2,1]+2,0,return_skill_type(arg_skill),arg_source,arg_targ);
    case 9:
        return floor(arg_source.stats[2,4]/2)+2;
    case 10:
        return return_dmg(return_wep_dmg(arg_source.item[arg_source.wep],arg_source,abs(arg_source.x-arg_targ.x)+abs(arg_source.y-arg_targ.y))*2
                                ,arg_source.stats[2,3],return_skill_type(arg_skill),arg_source,arg_targ);
    case 11:
        return return_dmg(return_wep_dmg(arg_source.item[arg_source.wep],arg_source,abs(arg_source.x-arg_targ.x)+abs(arg_source.y-arg_targ.y))+2
                                ,arg_source.stats[2,3],return_skill_type(arg_skill),arg_source,arg_targ);
    case 13://shield
        return floor(arg_source.stats[2,4])
    case 15://freeze
        return return_dmg(arg_source.stats[2,1]+2,0,return_skill_type(arg_skill),arg_source,arg_targ);
    case 16://shock
        return return_dmg(arg_source.stats[2,1]+2,0,return_skill_type(arg_skill),arg_source,arg_targ); 
    case 17://wind
        return return_dmg(arg_source.stats[2,1]+2,0,return_skill_type(arg_skill),arg_source,arg_targ);
   case 19://flux
        return return_dmg(arg_source.stats[2,1],0,return_skill_type(arg_skill),arg_source,arg_targ);
   case 21://blessing
        return ceil(arg_source.lv/2)     
}
return -1
