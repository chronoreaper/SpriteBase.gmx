var arg_source=argument0
var arg_status=argument1
//returns the pos of the status
//returns -1 if not found
for (var i=0;i<array_length_1d(arg_source.status);i++){
    if floor(arg_source.status[i])=arg_status
        return i
}
return -1
