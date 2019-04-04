var arg_unit=argument0
//returns number of skills
var skills=0
for (var i=0;i<array_length_1d(arg_unit.skill);i++){
    if arg_unit.skill[i]>0
        skills++
}
return skills
