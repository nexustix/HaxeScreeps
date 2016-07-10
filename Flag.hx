package;

extern class Flag extends RoomObject {
    public var color:           Int;
    public var memory:          Dynamic;
    public var name:            String;
    public var secondaryColor:  Int;

    public function remove(): Void;
    public function setColor(color: Int, ?secondaryColor: Int): Int;

    @:overload(function(x: Int, y: Int): Int{})
    public function setPosition(pos: RoomPosition): Int;
}
