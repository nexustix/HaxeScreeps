package;

extern class ConstructionSite extends RoomObject {
    public var id:              Int;
    public var my:              Bool;
    public var owner:           Owner;
    public var progress:        Int;
    public var progressTotal:   Int;
    public var structureType:   String;

    public function remove(): Int;
}
