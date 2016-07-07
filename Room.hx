package;

extern class Room {
    public var controller:              StructureController;
    public var energyAvailable:         Int;
    public var energyCapacityAvailable: Int;
    public var memory:                  Dynamic;
    public var mode:                    Dynamic;
    public var name:                    String;
    public var storage:                 StructureStorage;
    public var terminal:                StructureTerminal;


    public function serializePath(path: Path): String;
    public function deserializePath(path: String): Path;

    @:overload(function(x: Int, y: Int, structureType: String): Int{})
    public function createConstructionSite(pos: RoomPosition, structureType: String): Int;

    @:overload(function(x: Int, y: Int, ?name: String, ?color: String, ?secondaryColor: String): Int{})
    public function createFlag(pos: RoomPosition, ?name: String, ?color: String, ?secondaryColor: String): Int;

    public function find(type: Int, ?opts: PathfindOptions): Array<RoomObject>;

    @:overload(function(room: String): Int{})
    public function findExitTo(room: Room): Int;

    public function findPath(fromPos: RoomPosition, toPos: RoomPosition, ?opts: PathfindOptions): Path;
    public function getPositionAt(x: Int, y: Int): RoomPosition;

    @:overload(function(target: RoomObject): LookResults{})
    @:overload(function(x: Int, y: Int): LookResults{})
    public function lookAt(target: RoomPosition): LookResults;

    //TODO test
    public function lookAtArea(top: Int, left: Int, bottom: Int, right: Int, ?asArray: Bool): Array<Array<LookResults>>;

    @:overload(function(type: String, target: RoomObject): Array<RoomObject>{})
    @:overload(function(type: String, x: Int, y: Int): Array<RoomObject>{})
    public function lookForAt(type: String, target: RoomPosition): Array<RoomObject>;

    //TODO test
    public function lookForAtArew(top: Int, left: Int, bottom: Int, right: Int): Array<Array<RoomObject>>;

    //@:overload(function(): {})
    //public function (): ;
}

class LookResults{

}
