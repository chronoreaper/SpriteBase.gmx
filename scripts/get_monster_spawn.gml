var arg_level = argument0
var arg_area = argument1
switch arg_area{
    case 0://forest area
        if arg_level<=1
            return choose(oSlime,oShroom)
        else if arg_level<=2
            return choose(oSlime,oShroom,oBoar,oFrog)
        else if arg_level<= 4
            return choose(oSlime,oShroom,oBoar,oFrog,oTurt,oEyebat,oPrant)
        else if arg_level<=6
            return choose(oSlime,oShroom,oBoar,oFrog,oTurt,oEyebat,oPrant,oCyclops)
        else if arg_level<=8
            return choose(oBoar,oFrog,oTurt,oEyebat,oPrant,oCyclops)
        else if arg_level<=11
            return choose(oBoar,oTurt,oEyebat,oPrant,oCyclops,oAlgertle)
        else if arg_level<= 13
            return choose(oEyebat,oPrant,oCyclops,oAlgertle)
        else if arg_level <= 16
            return choose(oEyebat,oCyclops,oAlgertle)
        else
            return choose(oCyclops,oAlgertle)
}
