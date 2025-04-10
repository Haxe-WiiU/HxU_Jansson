package jansson;

@:cppInclude("jansson.h")
@:include("jansson.h")

@:include("jansson.h")
@:native("json_error_t")
@:valueType
extern class Json_error_t {
    @:include("jansson.h")
    public var line:Int;
    @:include("jansson.h")
    public var column:Int;
    @:include("jansson.h")
    public var position:Int;
    @:include("jansson.h")
    public var source:CArray<Char>;
    @:include("jansson.h")
    public var text:CArray<Char>;
}

@:include("jansson.h")
@:native("json_type")
extern enum Json_type {
    JSON_OBJECT;
    JSON_ARRAY;
    JSON_STRING;
    JSON_INTEGER;
    JSON_REAL;
    JSON_TRUE;
    JSON_FALSE;
    JSON_NULL;
}

@:include("jansson.h")
@:native("json_t")
@:structAccess
extern class Json_t {
    @:include("jansson.h")
    @:structAccess
    @:native("type")
    public var type:Json_type;
    @:include("jansson.h")
    @:structAccess
    @:native("refcount")
    public var refcount:SizeT;
}

@:include("jansson.h")
extern class Jansson {
    @:include("jansson.h")
    @:native("json_loads")
    extern public static function json_loads(input:ConstCharPtr, flags:SizeT, error:Ptr<Json_error_t>):Ptr<Json_t>;

    @:include("jansson.h")
    @:native("json_load_file")
    extern public static function json_load_file(filename:ConstCharPtr, flags:SizeT, error:Ptr<Json_error_t>):Ptr<Json_t>;

    @:include("jansson.h")
    @:native("json_decref")
    extern public static function json_decref(json:Ptr<Json_t>):Void;

    /////////

    @:include("jansson.h")
    @:native("json_object_get")
    extern public static function json_object_get(object:Ptr<Json_t>, key:ConstCharPtr):Ptr<Json_t>;

    @:include("jansson.h")
    @:native("json_array_get")
    extern public static function json_array_get(array:Ptr<Json_t>, index:Int):Ptr<Json_t>;

    @:include("jansson.h")
    @:native("json_string_value")
    extern public static function json_string_value(string:Ptr<Json_t>):ConstCharPtr;

    @:include("jansson.h")
    @:native("json_integer_value")
    extern public static function json_integer_value(integer:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_real_value")
    extern public static function json_real_value(real:Ptr<Json_t>):Float;

    @:include("jansson.h")
    @:native("json_number_value")
    extern public static function json_number_value(number:Ptr<Json_t>):ConstCharPtr;

    @:include("jansson.h")
    @:native("json_boolean_value")
    extern public static function json_boolean_value(boolean:Ptr<Json_t>):Int;

    /////////

    @:include("jansson.h")
    @:native("json_array_size")
    extern public static function json_array_size(array:Ptr<Json_t>):Int;

    /////////

    @:include("jansson.h")
    @:native("json_is_object")
    extern public static function json_is_object(json:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_is_array")
    extern public static function json_is_array(json:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_is_string")
    extern public static function json_is_string(json:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_is_integer")
    extern public static function json_is_integer(json:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_is_real")
    extern public static function json_is_real(json:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_is_number")
    extern public static function json_is_number(json:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_is_true")
    extern public static function json_is_true(json:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_is_false")
    extern public static function json_is_false(json:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_is_boolean")
    extern public static function json_is_boolean(json:Ptr<Json_t>):Int;

    @:include("jansson.h")
    @:native("json_is_null")
    extern public static function json_is_null(json:Ptr<Json_t>):Int;
}

