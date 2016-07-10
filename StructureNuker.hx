package;

extern class StructureNuker extends OwnedStructure {
    public var energy:          Int;
    public var energyCapacity:  Int;
    public var ghodium:         Int;
    public var ghodiumCapacity: Int;
    public var cooldown:        Int;

    public function launchNuke(pos: RoomPosition): Int;
}
