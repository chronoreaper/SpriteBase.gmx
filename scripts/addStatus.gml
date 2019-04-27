var arg_stack=argument0
var arg_targ=argument1
var arg_status=argument2
var arg_dur=argument3
var arg_str=argument4

var index=findStatus(arg_targ,arg_status)
//returns the str value

if index=-1{//not in the list yet
    for (var i=0;i<array_length_1d(arg_targ.status);i++){
        if arg_targ.status[i]=0{
            arg_targ.status[i]=arg_status+arg_dur
            arg_targ.statusStr[i]=arg_str
            index=i
        }
    }
    if index=-1//nospace
    {
        var i=array_length_1d(arg_targ.status);
        arg_targ.status[i]=arg_status+arg_dur
        arg_targ.statusStr[i]=arg_str
    }
}
else{
    if frac(arg_targ.status[index])<arg_dur
        arg_targ.status[index]=floor(arg_targ.status[index])+arg_dur
    if arg_stack=0{
    if arg_targ.statusStr[index]<arg_str{
        var toReturn=arg_targ.statusStr[index];
        arg_targ.statusStr[index]=arg_str
        return arg_str-toReturn//returns the diffrence to change
    }
    else//strength was not changed
        return 0
    }else{//add more to current effect
        arg_targ.statusStr[index]+=arg_str
        return arg_str//returns the diffrence to change
    }
}
return arg_str
