package;

extern class StructureExtension extends OwnedStructure {
    public var energy:          Int;
    public var energyCapacity:  Int;

    public function transferEnergy(target: Creep, ?amount: Int): Int;

    //@:overload(function(): {})
    //public function (): ;
}
