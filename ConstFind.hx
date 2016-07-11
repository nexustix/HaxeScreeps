package;

@:enum
abstract ConstFind(Int) {
    var FIND_EXIT_TOP                       =   1;
    var FIND_EXIT_RIGHT                     =   3;
    var FIND_EXIT_BOTTOM                    =   5;
    var FIND_EXIT_LEFT                      =   7;
    var FIND_EXIT                           =  10;
    var FIND_CREEPS                         = 101;
    var FIND_MY_CREEPS                      = 102;
    var FIND_HOSTILE_CREEPS                 = 103;
    var FIND_SOURCES_ACTIVE                 = 104;
    var FIND_SOURCES                        = 105;
    var FIND_DROPPED_ENERGY                 = 106;
    var FIND_DROPPED_RESOURCES              = 106;
    var FIND_STRUCTURES                     = 107;
    var FIND_MY_STRUCTURES                  = 108;
    var FIND_HOSTILE_STRUCTURES             = 109;
    var FIND_FLAGS                          = 110;
    var FIND_CONSTRUCTION_SITES             = 111;
    var FIND_MY_SPAWNS                      = 112;
    var FIND_HOSTILE_SPAWNS                 = 113;
    var FIND_MY_CONSTRUCTION_SITES          = 114;
    var FIND_HOSTILE_CONSTRUCTION_SITES     = 115;
    var FIND_MINERALS                       = 116;
    var FIND_NUKES                          = 117;
}
