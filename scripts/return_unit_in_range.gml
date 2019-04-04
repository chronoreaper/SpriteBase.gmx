//returns a unit in range
var arg_source=argument0
var arg_range=argument1 //in 1 unit
var arg_targ_type=argument2
var targ=noone
for (var i=-arg_range;i<=arg_range;i++){
    for (var j=-arg_range;j<=arg_range;j++){
    if abs(i)+abs(j)<=arg_range
        //if i!=0||j!=0
        {
            var inst=instance_place(arg_source.x+i*15,arg_source.y+j*15,oUnit)
            if inst!=noone
            if inst!=arg_source
                switch arg_targ_type{
                    case 0://all targ
                        return inst
                        break
                }
        }
    }
}
return targ
