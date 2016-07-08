package;

extern class Structure extends RoomObject {
    public var hits:            Int;
    public var hitsMax:         Int;
    public var id:              String;
    public var structureType:   String;

    public function destroy(): Int;
    public function isActive(): Bool;
    public function notifyWhenAttacked(enabled: Bool): Int;

    //@:overload(function(): {})
    //public function (): ;
}
