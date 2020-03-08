//clear ally and self
var c = argument0
add_all_to_map()
mp_grid_clear_cell(grid,c.x/15,c.y/15)

for (var i=0;i<ds_list_size(unitList);i++){
    var char=ds_list_find_value(unitList,i)
        if instance_exists(char){
            mp_grid_clear_cell(grid,char.x/15,char.y/15)
        }
    }
