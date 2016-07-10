package;

extern class StructureContainer extends Structure {
    public var store:           Dynamic;
    public var storeCapacity:   Int;

    public function transfer(target: Creep, resourceType: String, ?amount: Int): Int;
}
