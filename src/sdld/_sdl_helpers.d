module sdld._sdl_helpers;
abstract class Refer(T) {
	T* __refer;
	alias __refer this;
}
Refer!T makeRefer(alias deconstruct, T)(T t) {
	class MakeRefer : Refer!T {
		this(T refer) {
			this.__refer = refer;
		}
		~this() {
			deconstruct(__refer);
		}
	}
	return new MakeRefer(t);
}
