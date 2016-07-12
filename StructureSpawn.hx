package;

extern class StructureSpawn extends OwnedStructure {
    public var energy:          Int;
    public var energyCapacity:  Int;
    public var memory:          Dynamic;
    public var name:            String;
    public var spawning:        SpawningStatus;

    public function canCreateCreep(body: Array<String>, ?name: String): Int;
    public function createCreep(body: Array<String>, ?name: String, ?memory: Dynamic): Int;
    public function recycleCreep(target: Creep): Int;
    public function renewCreep(target: Creep): Int;
    public function transferEnergy(target: Creep): Int;
}

class SpawningStatus{
    public var name:            String;
    public var needTime:        Int;
    public var remainingTime:   Int;
}
