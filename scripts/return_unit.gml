var index=argument0
var returnType=argument1
var playerIndex=argument2
/*
return type
0 - name
1 - sprite
2 - stats
3 - Unit
*/
switch index{
    case 0:
        switch returnType{
            case 0:return "fighter"
            case 1:return fighter001_0
            case 2:
                hp[playerIndex]=15
                sp[playerIndex]=8
                a[playerIndex]=3
              int[playerIndex]=3
                d[playerIndex]=3
                t[playerIndex]=3
                l[playerIndex]=3
                break;
            case 3:return oFighter break;
        }
    break
    case 1:
        switch returnType{
            case 0:return "archer"
            case 1:return archer001_0
            case 2:
                hp[playerIndex]=12
                sp[playerIndex]=10
                a[playerIndex]=3
              int[playerIndex]=2
                d[playerIndex]=2
                t[playerIndex]=3
                l[playerIndex]=3
                break;
            case 3:return oArcher break;
        }
    break
    case 2:
        switch returnType{
            case 0:return "mage"
            case 1:return mage001_0
            case 2:
                hp[playerIndex]=10
                sp[playerIndex]=14
                a[playerIndex]=2
              int[playerIndex]=4
                d[playerIndex]=2
                t[playerIndex]=2
                l[playerIndex]=3
                break;
            case 3:return oMage break;
        }
    break
    case 3:
        switch returnType{
            case 0:return "healer"
            case 1:return healer001_0
            case 2:
                hp[playerIndex]=9
                sp[playerIndex]=13
                a[playerIndex]=1
              int[playerIndex]=3
                d[playerIndex]=2
                t[playerIndex]=2
                l[playerIndex]=5
                break;
            case 3:return oHealer break;
        }
    break
}
