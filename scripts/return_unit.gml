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
            case 0:return "Fighter"
            case 1:return fighter001_0
            case 2:
                hp[playerIndex]=5
                break;
            case 3:return oFighter break;
        }
    break
    case 1:
        switch returnType{
            case 0:return "Archer"
            case 1:return archer001_0
            case 2:
                hp[playerIndex]=3
                break;
            case 3:return oArcher break;
        }
    break
    case 2:
        switch returnType{
            case 0:return "Fire Mage"
            case 1:return mage001_0
            case 2:
                hp[playerIndex]=3
                break;
            case 3:return oMage break;
        }
    break
    case 3:
        switch returnType{
            case 0:return "Healer"
            case 1:return healer001_0
            case 2:
                hp[playerIndex]=3
                break;
            case 3:return oHealer break;
        }
    break
    case 4:
        switch returnType{
            case 0:return "Defender"
            case 1:return defender001_0
            case 2:
                hp[playerIndex]=6
                break;
            case 3:return oDefender break;
        }
    break
    case 5:
        switch returnType{
            case 0:return "Ice Mage"
            case 1:return ice_mage001_0
            case 2:
                hp[playerIndex]=3
                break;
            case 3:return oIceMage break;
        }
    break
    case 6:
        switch returnType{
            case 0:return "Thunder Mage"
            case 1:return thunder_mage001_0
            case 2:
                hp[playerIndex]=3
                break;
            case 3:return oThunderMage break;
        }
    case 7:
        switch returnType{
            case 0:return "Barrier Mage"
            case 1:return barrier_mage001_0
            case 2:
                hp[playerIndex]=3
                break;
            case 3:return oBarrier_Mage break;
        }
    break
}
return -1
