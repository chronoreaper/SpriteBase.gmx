var arg_unit=argument0

var toCheck=-1

switch (arg_unit.object_index){
    case oFighter:
        if lv=4
            toCheck=12
        break
    case oArcher:
        if lv=4
            toCheck=12
        break
    case oMage: 
        if lv%3=0
            toCheck=choose(8,15,16,17,19)
        break
    case oHealer: 
        if lv=5
            toCheck=5
        if lv=8
            toCheck=2
        break
    default: break
}
for (var k=0;k<array_length_1d(arg_unit.skill);k++){
    if floor(arg_unit.skill[k])=floor(toCheck)
        toCheck=-1
}
if toCheck>0//you dont have skill, so add it
    arg_unit.skill[array_length_1d(arg_unit.skill)]=toCheck
