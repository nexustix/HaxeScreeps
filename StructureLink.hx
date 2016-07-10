package;

extern class StructureLink extends OwnedStructure {
    public var cooldown:        Int;
    public var energy:          Int;
    public var energyCapacity:  Int;

    @:overload(function(target: Structure, ?amount: Int): Int{})
    public function transferEnergy(target: Creep, ?amount: Int): Int;
}
