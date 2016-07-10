package;

extern class StructureTerminal extends OwnedStructure {
    public var store:           Dynamic;
    public var storeCapacity:   Int;

    public function send(resourceType: String, amount: Int, destination: String, ?description: String): Int;
    public function transfer(target: Creep, resourceType: String, ?amount: Int): Int;
}
