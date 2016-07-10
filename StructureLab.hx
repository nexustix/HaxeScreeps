package;

extern class StructureLab extends OwnedStructure {
    public var cooldown:        Int;
    public var energy:          Int;
    public var energyCapacity:  Int;
    public var mineralAmount:   Int;
    public var mineralType:     String;
    public var mineralCapacity: Int;

    public function boostCreep(creep: Creep, ?bodyPartsCount: Int): Int;
    //XXX using StructureLab instead of Structure
    public function runReaction(lab1: StructureLab, lab2: StructureLab): Int;
    public function transfer(target: Creep, resourceType: String, ?amount: Int): Int;
}
