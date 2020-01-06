var arg_char = argument0
with oControler
for (var i=0;i<ds_list_size(unitList);i++){
    var char=ds_list_find_value(unitList,i)
    if instance_exists(char){
        instance_activate_object(char)
        if char.object_index = arg_char
            return true
        }
    }
return false
