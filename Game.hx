package;

extern class Game {
    public static var constructionSites: PolyObj<ConstructionSite>;
    public static var cpu:          CPU;
    public static var creeps:       PolyObj<Creep>;
    public static var flags:        PolyObj<Flag>;
    public static var gcl:          GCL;
    public static var map:          ScreepsMap;
    public static var market:       Market;
    public static var rooms:        PolyObj<Room>;
    public static var spawns:       PolyObj<StructureSpawn>;
    public static var structures:   PolyObj<Structure>;
    public static var time:         Int;

    //public static var cpu: Dynamic;
    //public static var gcl: Dynamic;

    //XXX may fail to find Object
    public static function getObjectById(id: String): RoomObject;
    public static function notify(message: String, ?groupInterval: Int): Void;

}

extern class CPU{
    public static var limit:        Int;
    public static var tickLimit:    Int;
    public static var bucket:       Int;

    public static function getUsed(): Float;
}

extern class GCL{
    public static var level:            Int;
    public static var progress:         Int;
    public static var progressTotal:    Int;
}
