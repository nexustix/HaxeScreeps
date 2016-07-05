package;

extern class StructureSpawn extends OwnedStructure {
    public var energy:          Int;
    public var energyCapacity:  Int;
    public var memory:          Dynamic;
    public var name:            String;
    public var spawning:        SpawningStatus;

    public function createCreep (body: Array<String>, ?name: String, ?memory: Dynamic): Int;
}

class SpawningStatus{
    public var name:            String;
    public var needTime:        Int;
    public var remainingTime:   Int;
}
