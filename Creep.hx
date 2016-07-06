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

    //XXX verry broad
    public static function attack(target: RoomObject): Int;
    //XXX StructureController istead of Structure
    public static function attackController(target: StructureController): Int;
    public static function build(target: ConstructionSite): Int;
    public static function cancelOrder(methodName: String): Int;
    //XXX StructureController istead of Structure
    public static function claimController(target: StructureController): Int;
    public static function dismantle(target: Structure): Int;
    public static function drop(resourceType: String, ?amount: Int): Int;
    public static function getActiveBodyparts(type: String): Int;
    //XXX RoomObject istead of Source or Mineral

    public static function harvest(target: RoomObject): Int;
    //public static function harvest(target: Source): Int;
    //public static function harvest(target: Mineral): Int;

    public static function heal(target: Creep): Int;
    public static function move(direction: Int): Int;
    //??? public static function moveByPath(): Int;
    //FIXME add otions
    //public static function moveTo(x: Int,y: Int): Int;
    public static function moveTo(target: RoomPosition): Int;
    //public static function moveTo(target: RoomObject): Int;
    //public static function (): ;
}


extern class BodyPart{
    //FIXME could have no boost
    public static var boost:    String;
    public static var tpe:      String;
    public static var hits:     Int;
}
