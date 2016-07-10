package;

extern class StructurePowerSpawn extends OwnedStructure {
    public var energy:          Int
    public var energyCapacity:  Int;
    public var power:           Int;
    public var powerCapacity:   Int;

    //FIXME under development
    public function createPowerCreep(name: String): Int;
    public function processPower(): Int;
    public function transferEnergy(target:Creep, ?amount: Int): Int;
}
