package;

extern class Creep extends RoomObject{
    public var body:            Array<BodyPart>;    //TODO test
    public var carry:           Carry;              //TODO revisit
    public var carryCapacity:   Int;
    public var fatigue:         Int;
    public var hits:            Int;
    public var hitsMax:         Int;
    public var id:              String;
    public var memory:          Dynamic;
    public var my:              Bool;
    public var name:            String;
    public var owner:           Owner;              //TODO revisit
    public var spawning:        Bool;
    public var ticksToLive:     Int;

    //@:overload(function(target: StructureSpawn): Int{})
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

    @:overload(function(target: Mineral): Int{})
    public function harvest(target: Source): Int;

    public function heal(target: Creep): Int;
    public function move(direction: Int): Int;
    public function moveByPath(path: Path): Int;

    @:overload(function(x: Int,y: Int, ?opts: PathfindOptions): Int{})
    @:overload(function(target: RoomObject, ?opts: PathfindOptions): Int{})
    public function moveTo(target: RoomPosition, ?opts: PathfindOptions): Int;

    public function notifyWhenAttacked(enabled: Bool): Int;
    public function pickup(target: Resource): Int;

    //@:overload(function(target: StructureSpawn): Int{})
    @:overload(function(target: Structure): Int{})
    public function rangedAttack(target: Creep): Int;

    public function rangedHeal(target: Creep): Int;
    public function rangedMassAttack(): Int;
    public function repair(target: Structure): Int;
    //XXX StructureController istead of Structure
    public function reserveController(target: StructureController): Int;
    public function say(message: String): Int;
    public function suicide(): Int;

    @:overload(function(target: Structure, resourceType: String, ?amount: Int): Int{})
    public function transfer(target: Creep, resourceType: String, ?amount: Int): Int;

    //XXX StructureController istead of Structure
    public function upgradeController(target: StructureController): Int;
}


extern class BodyPart{
    //FIXME could have no boost
    public var boost:    String;
    //TODO check if "type" is reserved in Haxe (or in JS)
    public var type:      String;
    public var hits:     Int;
}

/*
extern class Owner{
    public var name: String;
}
*/

//TODO implement
extern class Carry{

}
