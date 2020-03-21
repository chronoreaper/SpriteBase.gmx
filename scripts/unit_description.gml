var arg_object=argument0
var String
if !object_is_ancestor(arg_object,oObj){
    String = string(unit_default_values(arg_object,-2))+ " - "
       +"HP:"+string(unit_default_values(arg_object,0))
       +" POW:"+string(abs(unit_default_values(arg_object,1)))
       +" RANGE:"+string(unit_default_values(arg_object,2))
       +" MOV:"+string(unit_default_values(arg_object,3))
       +" "+string(unit_default_values(arg_object,-1))
}
else{
    String = unit_default_values(arg_object,-1)
}
return String
