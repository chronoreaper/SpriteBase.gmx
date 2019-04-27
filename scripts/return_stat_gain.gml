var arg_wep=argument0
var arg_sel=argument1
switch floor(arg_wep){
    case 0: arg_sel.strg+=1 break;
    case 2:break;
    case 4: arg_sel.strg+=1 break;
    case 6: arg_sel.strg+=1 break;
    case 7: arg_sel.tecg+=1 break;
    case 8: arg_sel.strg+=1 break;
    case 9: arg_sel.strg+=1 break;
    case 11: arg_sel.intg+=0.5 arg_sel.tecg+=0.5 break
    case 12: arg_sel.strg+=1 break;
    case 13: arg_sel.tecg+=1 break;
    case 14: arg_sel.strg+=2 break;
    case 15: arg_sel.tecg+=2 break;
    case 16: arg_sel.tecg+=0.5 break;
    case 17: arg_sel.strg+=1 break;
    case 18: arg_sel.tecg+=1 break;
    case 19: arg_sel.strg+=1 break;
    case 20: arg_sel.strg+=1 arg_sel.tecg+=1 break;
    case 21: arg_sel.strg+=1 break;
}
