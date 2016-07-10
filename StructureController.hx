package;

extern class StructureController extends OwnedStructure {
    public var level:               Int;
    public var progress:            Int;
    public var progressTotal:       Int;
    public var reservation:         Reservation;
    public var ticksToDowngrade:    Int;
    public var upgradeBlocked:      Int;

    public function unclaim(): Int;
}

extern class Reservation{
    public var username:    String;
    public var ticksToEnd:  Int;
}
