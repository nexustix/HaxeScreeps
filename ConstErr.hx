package;

@:enum
abstract ConstErr(Int) {
    var OK                          =   0;
    var ERR_NOT_OWNER               =  -1;
    var ERR_NO_PATH                 =  -2;
    var ERR_NAME_EXISTS             =  -3;
    var ERR_BUSY                    =  -4;
    var ERR_NOT_FOUND               =  -5;
    var ERR_NOT_ENOUGH_ENERGY       =  -6;
    var ERR_NOT_ENOUGH_RESOURCES    =  -6;
    var ERR_INVALID_TARGET          =  -7;
    var ERR_FULL                    =  -8;
    var ERR_NOT_IN_RANGE            =  -9;
    var ERR_INVALID_ARGS            = -10;
    var ERR_TIRED                   = -11;
    var ERR_NO_BODYPART             = -12;
    var ERR_NOT_ENOUGH_EXTENSIONS   =  -6;
    var ERR_RCL_NOT_ENOUGH          = -14;
    var ERR_GCL_NOT_ENOUGH          = -15;
}
