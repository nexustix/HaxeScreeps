package;

abstract PolyObj<T>(Dynamic<T>) {

    public inline function new( v : Type ) {
        this = v;
    }

    @:arrayAccess
    public inline function set(key: String, value: T): Void {
        Reflect.setField(this, key, value);
    }

    @:arrayAccess
    public inline function get(key: String): Null<T> {
        #if js
        return untyped this[key];
        #else
        return Reflect.field(this, key);
        #end
    }

    public inline function delete(key: String): Bool {
        return Reflect.deleteField(this, key);
    }

    public inline function has(key: String): Bool {
        return Reflect.hasField(this, key);
    }

    public inline function getKeys(): Array<String> {
        return Reflect.fields(this);
    }

    public inline function iterator(){
        return new PolyObjIterator<T> (cast this);
    }
}

class PolyObjIterator<T> {
    var keys:   Array<String>;
    var obj:    PolyObj<T>;
    var i:      Int = 0;

    public function new(obj: PolyObj<T>) {
        this.keys = obj.getKeys;
        this.obj = obj;
    }

    public function hasNext() {
        return i < keys.length;
    }

    public function next() {
        return obj[keys[i++]];
    }
}
