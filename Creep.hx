package;

extern class Creep extends RoomObject{
    public static var body:             BodyPart;
    //public static var carry: ???;
    public static var carryCapacity:    Int;
    public static var fatigue:          Int;
    public static var hits:             Int;
    public static var hitsMax:          Int;
    public static var id:               String;
    public static var memory:           Dynamic;
    public static var my:               Bool;
    public static var name:             String;
    //public static var owner: ???;
    public static var spawning:         Bool;
    public static var ticksToLive:      Int;


    //TODO use function overloading to make functions less broad ?

    @:overload(function(target: Spawn): Int{})
    @:overload(function(target: Structure): Int{})
    public function attack(target: Creep): Int;

    //XXX StructureController istead of Structure
    public function attackController(target: StructureController): Int;
    public function build(target: ConstructionSite): Int;
    public function cancelOrder(methodName: String): Int;
    //XXX StructureController istead of Structure
    public function claimController(target: StructureController): Int;
    public function dismantle(target: Structure): Int;
    public function drop(resourceType: String, ?amount: Int): Int;
    public function getActiveBodyparts(type: String): Int;
    //XXX RoomObject istead of Source or Mineral

    //public function harvest(target: RoomObject): Int;
    @:overload(function(target: Mineral): Int{})
    public function harvest(target: Source): Int;
    //public function harvest(target: Mineral): Int;

    public function heal(target: Creep): Int;
    public function move(direction: Int): Int;
    //??? public function moveByPath(): Int;
    //FIXME add otions
    //public function moveTo(x: Int,y: Int): Int;
    @:overload(function(x: Int,y: Int): Int{})
    @:overload(function(target: RoomObject): Int{})
    public function moveTo(target: RoomPosition): Int;
    //public function moveTo(target: RoomObject): Int;
    //@:overload(function():)
    //public function (): ;
}


extern class BodyPart{
    //FIXME could have no boost
    public static var boost:    String;
    public static var tpe:      String;
    public static var hits:     Int;
}
