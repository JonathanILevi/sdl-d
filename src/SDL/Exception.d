module SDL.Exception;

import derelict.sdl2.sdl;
import std.string;
import std.exception;

void sdlEnforce0(int errorCode) {
	if (errorCode != 0) {
		throw new SDLException(fromStringz(SDL_GetError()).idup);
	}
}
T sdlEnforceNull(T)(T value) {
	if (!value) {
		throw new SDLException(fromStringz(SDL_GetError()).idup);
	}
	return value;
}

class SDLException : Exception {
	this(string msg, string file=__FILE__,size_t line=__LINE__) {
		super(msg,file,line);
	}
}
