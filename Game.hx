package;

//XXX map throws "Invalid number of type parameters for Map" -> investigate

extern class Game {
    public static var time: Int;

    //public static var spawns: Array<StructureSpawn>;
    public static var spawns: PolyObj<StructureSpawn>;
}
