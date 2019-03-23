var arg_x=argument0
var arg_y=argument1
var map=array_create(5);
var map2=array_create(20);
/*
key is the same is create_area
*/
map[0] ="02924"
map[1] ="17173"
map[2] ="32624"
map[3] ="47171"
map[4] ="32825"
//x means there is a road there
map2[0]= "--------------------"
map2[1]= "-xxxxxxxxxxxxxxxxxx-"
map2[2]= "-xxxxxxxxxxxxxxxxxx-"
map2[3]= "-xx------xx------xx-"
map2[4]= "-xx------xx------xx-"
map2[5]= "-xx------xx------xxx"
map2[6]= "-xx------xx------xxx"
map2[7]= "-xx------xx---------"
map2[8]= "-xx------xx---------"
map2[9]= "-xxxxxxxxxxxxxxxxxx-"
map2[10]="-xxxxxxxxxxxxxxxxxx-"
map2[11]="---------xx------xx-"
map2[12]="---------xx------xx-"
map2[13]="xxx------xx------xx-"
map2[14]="xxx------xx------xx-"
map2[15]="-xx------xx------xx-"
map2[16]="-xx------xx------xx-"
map2[17]="-xxxxxxxxxxxxxxxxxx-"
map2[18]="-xxxxxxxxxxxxxxxxxx-"
map2[19]="--------------------"
//create the area 
for (var my=0;my<array_length_1d(map);my++){
    for(var mx=0;mx<string_length(map[my]);mx++){
        create_area(1,real(string_char_at(map[my],mx+1)),arg_x+mx*60-15,arg_y+my*60-15,10000)
    }
}
repeat(100){
    var r1=irandom(19);
    var r2=irandom(19);
    if !place_meeting(arg_x+r1*15,arg_y+r2*15,oUnit)
    if string_char_at(map2[r1],r2)="-"
    {
        instance_create(arg_x+r1*15,arg_y+r2*15,oBuilding)
    }
}
var inst=instance_create(arg_x+60*2+15*0,arg_y+2*60+15*0,oGreatTree);
inst.team=-1
inst.ai=6
inst.marker=1
