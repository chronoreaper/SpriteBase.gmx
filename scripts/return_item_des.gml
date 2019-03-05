var arg_item=argument0
var ex=argument1
var ey=argument2
switch floor(arg_item){
    case 1:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17,340,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-16,"restores 4 hp",0,100)
        draw_text_ext(ex,ey-9,"wt: 1",0,100)
        break;
    case 2://dagger
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17-7*2,340,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-30,"Basic weapoN",0,100)
        draw_text_ext(ex,ey-23,"mt: 2",0,100)
        draw_text_ext(ex,ey-16,"wt: 5",0,100)
        draw_text_ext(ex,ey-9,"2 hits",0,100)
        break;
    case 3:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17,340,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-16,"restores 10 hp",0,100)
        draw_text_ext(ex,ey-9,"wt: 7",0,100)
        break;
    case 4:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17-7,340,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-23,"screws thiNgs.",0,100)
        draw_text_ext(ex,ey-16,"mt: 1",0,100)
        draw_text_ext(ex,ey-9,"wt: 3",0,100)
        break;
    case 5:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17,340,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-16,"restores 5 hp",0,100)
        draw_text_ext(ex,ey-9,"wt: 2",0,100)
        break;
    case 6:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17-7,340,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-23,"It's a rock.",0,100)
        draw_text_ext(ex,ey-16,"mt: 2",0,100)
        draw_text_ext(ex,ey-9,"wt: 8",0,100)
        break;
    case 7://bow
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17-7*2,340,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-30,"Basic raNged weapoN",0,100)
        draw_text_ext(ex,ey-23,"mt: 2",0,100)
        draw_text_ext(ex,ey-16,"wt: 5",0,100)
        draw_text_ext(ex,ey-9,"raNge 3",0,100)
        break;
    case 50://excalabur
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17-7*3,340,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-37,"LegeNdary Sword",0,100)
        draw_text_ext(ex,ey-30,"wielded by the hero",0,100)
        draw_text_ext(ex,ey-23,"mt: ???",0,100)
        draw_text_ext(ex,ey-16,"wt: ???",0,100)
        draw_text_ext(ex,ey-9,"raNge 2",0,100)
        break;
    case 51://aegis
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17-7*1,340,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-23,"LegeNdary Shield",0,100)
        draw_text_ext(ex,ey-16,"reduce dmg by 50%",0,100)
        draw_text_ext(ex,ey-9,"wt: ???",0,100)
        break;
    default:return""
}
