package;

extern class StructureTower extends OwnedStructure {
    public var energy:          Int;
    public var energyCapacity:  Int;

    public var function attack(target: Creep): Int;
    public var function heal(target: Creep): Int;
    //XXX using structure (no special case for StructureSpawn)
    public var function repair(target: Structure): Int;
    public var function transferEnergy(target: Creep): Int;
}
