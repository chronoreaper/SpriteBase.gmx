var arg_level = argument0
var arg_area = argument1
var list = ds_list_create()
switch arg_area{
    case 0://forest area
        //basic units
        if arg_level<6  - difficulty{
            ds_list_add(list,oSlime)
            ds_list_add(list,oShroom)
            }
        if arg_level >=2 && arg_level <=8
            ds_list_add(list,oBoar)
        if arg_level >=2 && arg_level <= 8
            ds_list_add(list,oFrog)
        if arg_level >=3 && arg_level <= 11
            ds_list_add(list,oTurt)
        if arg_level >=4 && arg_level <=16
            ds_list_add(list,oEyebat)
        if arg_level >=4 && arg_level <=13
            ds_list_add(list,oPrant)
        if arg_level >=6
            ds_list_add(list,oCyclops)
        if arg_level >= 8
            ds_list_add(list,oAlgertle)
        
        // advance units
        
        if arg_level >=6 - difficulty && arg_level <= 10 - difficulty
            ds_list_add(list,oSlimey)
            
        //elite units
        
        if arg_level >= 11 - difficulty * 2
            ds_list_add(list,oAslimey)
}
choice = list[|irandom(ds_list_size(list)-1)]
ds_list_clear(list)
ds_list_destroy(list)
return choice
