var arg_x=argument0
var arg_y=argument1
var map=array_create(5);
/*
key is the same is create_area
*/
map[0] ="02924"
map[1] ="17173"
map[2] ="32624"
map[3] ="47171"
map[4] ="32825"
//create the area 
for (var my=0;my<array_length_1d(map);my++){
    for(var mx=0;mx<string_length(map[my]);mx++){
        create_area(1,real(string_char_at(map[my],mx+1)),arg_x+mx*60-15,arg_y+my*60-15,10000)
    }
}
var inst=instance_create(arg_x+60*2+15*0,arg_y+2*60+15*0,oGreatTree);
inst.team=-1
inst.ai=6
inst.marker=1
