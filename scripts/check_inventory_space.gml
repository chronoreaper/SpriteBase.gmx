var arg_unit=argument0
//returns number of items in the inventory
var items=0
for (var i=0;i<array_length_1d(arg_unit.item);i++){
    if arg_unit.item[i]>0
        items++
}
return items
