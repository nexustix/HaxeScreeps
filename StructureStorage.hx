package;

extern class StructureStorage extends OwnedStructure {
    //TODO make store class
    public var store:           Dynamic;
    public var storeCapacity:   Int;

    public function transfer(target: Creep, resourceType: String, ?amount: Int): Int;
}
