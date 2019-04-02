var arg_item=argument0
var ex=argument1
var ey=argument2
var str_sep=6
var str=""
var htg=0
switch floor(arg_item){
    case 1:
        str="restores 4 hp#wt: "+string(return_item_wt(arg_item))
        break;
    case 2://dagger
        str="Basic weapoN#mt: 0#wt: "+string(return_item_wt(arg_item))+"#2 hits"
        break;
    case 3:
        str="restores 10 hp#wt: "+string(return_item_wt(arg_item))
        break;
    case 4:
        str="screws thiNgs#mt: 1#wt: "+string(return_item_wt(arg_item))
        break;
    case 5:
        str="restores 5 hp#wt: "+string(return_item_wt(arg_item))
        break;
    case 6:
        str="It's a rock#mt: 2#wt: "+string(return_item_wt(arg_item))
        break;
    case 7://bow
        draw_set_colour(c_olive)
        str="raNged weapoN#mt: 2 [tec]#wt: "+string(return_item_wt(arg_item))
            +"#raNge 3"
        break;
    case 8://sword
        str="Basic weapoN#mt: 3#wt: "+string(return_item_wt(arg_item))
        break;
    case 9://club
        str="very big stick#mt: 4#wt: "+string(return_item_wt(arg_item))
        break;
    case 10://stick
        str="a stick#mt: 0#wt: "+string(return_item_wt(arg_item))
        break;
    case 50://excalabur
        str="LegeNdary Sword wielded#by the hero#mt: ???#wt: ???#raNge 2"
        break;
    case 51://aegis
        str="LegeNdary Shield#reduce dmg by 50%#wt: ???"
        break;
    default:return""
}
//drawing
hgt=string_height(str)*8/6
draw_set_colour(c_olive)
draw_rectangle(ex-2,ey-3-hgt,358+ex-273,ey-4,false)
draw_set_colour(c_black)
draw_text_ext(ex,ey-2-hgt,str,str_sep,358-(ex)-2)
