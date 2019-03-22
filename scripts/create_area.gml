var arg_type=argument0
var arg_dir=argument1
var arg_x=argument2
var arg_y=argument3
var dep=argument4
switch arg_type{

    case 0://forest/plains
        switch arg_dir{
            case 0://top left corner
                tile_add(tilesprite2,15*5,15*1,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 1://vertical
                tile_add(tilesprite2,15*1,15*1,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 2://horizontal
                tile_add(tilesprite2,15*3,15*3,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 3://bottom left corner
                tile_add(tilesprite2,15*1,15*3,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 4://top right corner
                tile_add(tilesprite2,15*7,15*1,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 5://bottom right corner
                tile_add(tilesprite2,15*5,15*3,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 6://center
                tile_add(tilesprite2,15*7,15*3,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 7://none
                //tile_add(tilesprite2,15*3,15*1,30,30,arg_x+15*0,arg_y+15*0,dep)
                if irandom(4)=0
                    tile_add(tilesprite2,15*(1+irandom(9)),15*0,15,15,arg_x+15*irandom(1),arg_y+15*irandom(1),dep)
                break;
            case 8://upside down T
                tile_add(tilesprite2,60*2,60*2,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 9://T
                tile_add(tilesprite2,60*3,60*0,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 10://T with right in
                tile_add(tilesprite2,60*3,60*1,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 11://T left in
                tile_add(tilesprite2,60*3,60*2,30,30,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 12://right in
                tile_add(tilesprite2,60*0,60*3,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 13://left in 
                tile_add(tilesprite2,60*1,60*3,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 14://bottom in
                tile_add(tilesprite2,60*2,60*3,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 15://top in
                tile_add(tilesprite2,60*3,60*3,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
        }
    break;
    case 1://city
    switch arg_dir{
            case 0://top left corner
                tile_add(cityruinsBackground,60*0,60*0,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 1://vertical
                tile_add(cityruinsBackground,60*2,60*1,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 2://horizontal
                tile_add(cityruinsBackground,60*1,60*0,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 3://bottom left corner
                tile_add(cityruinsBackground,60*0,60*2,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 4://top right corner
                tile_add(cityruinsBackground,60*2,60*0,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 5://bottom right corner
                tile_add(cityruinsBackground,60*1,60*1,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 6://center
                tile_add(cityruinsBackground,60*0,60*1,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 7://none
                tile_add(cityruinsBackground,60*1,60*2,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 8://upside down T
                tile_add(cityruinsBackground,60*2,60*2,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 9://T
                tile_add(cityruinsBackground,60*3,60*0,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 10://T with right in
                tile_add(cityruinsBackground,60*3,60*1,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 11://T left in
                tile_add(cityruinsBackground,60*3,60*2,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 12://right in
                tile_add(cityruinsBackground,60*0,60*3,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 13://left in 
                tile_add(tilesprite2,60*1,60*3,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 14://bottom in
                tile_add(cityruinsBackground,60*2,60*3,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
            case 15://top in
                tile_add(cityruinsBackground,60*3,60*3,60,60,arg_x+15*0,arg_y+15*0,dep)
                break;
        }
    break;

}
