package;

typedef PathfindOptions = {
    /* Creep */
    ?reusePath:         Int,
    ?serializeMemory:   Bool,
    ?noPathFinding:     Bool,

    /* Room */
    ?ignoreCreeps:                  Bool,
    ?ignoreDestructibleStructures:  Bool,
    ?ignoreRoads:                   Bool,
    ?costCallback:                  function(string: String, costMatrix: Dynamic), //TODO Test
    //FIXME allow RoomObject
    ?ignore:                        Array<RoomPosition>,
    ?avoid:                         Array<RoomPosition>,
    ?maxOps:                        Int,
    ?heuristicWeight:               Int,
    ?serialize:                     Bool,
    ?maxRooms:                      Int
}
