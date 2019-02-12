module sdld._sdl_err;
import derelict.sdl2.sdl
class SDLError : Exception {
	this(string msg,string file=__FILE__,size_t line=__LINE__) {
		super(msg,file,line);
	}
}
