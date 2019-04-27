var arg_sel=argument0
var arg_targ=argument1
for (var i=0;i<array_length_1d(arg_sel.skill);i++){
switch floor(arg_sel.skill[i]){
    case 18:
        if arg_targ.hp<=0{
            for (var j=0;j<array_length_1d(arg_targ.skill);j++){
                var toCheck=arg_targ.skill[j]
                for (var k=0;k<array_length_1d(arg_sel.skill);k++){
                    if floor(arg_sel.skill[k])=floor(toCheck)
                        toCheck=-1
                }
                if toCheck>0//so you cant steal boss exclusive skills
                    arg_sel.skill[array_length_1d(arg_sel.skill)]=toCheck
            }
        }  
    break
}
}
