module SDL.Video;

import derelict.sdl2.sdl;
import SDL.Exception;
import std.string;

import math.linear.vector;
import math.linear.point;

class Window {
	this(string title, int x, int y, int w, int h, Flags flags=Flags.none) {
		sdlWindow = sdlEnforceNull(SDL_CreateWindow(toStringz(title), x, y, w, h, cast(SDL_WindowFlags)flags));
	}
	this(string title, Point!(Vec!(int,2)) pos, Vec!(int,2) size, Flags flags=Flags.none) {
		this (title, pos.vector.x, pos.vector.y, size.x, size.y, flags);
	}
	this(string title, WindowPos pos, Vec!(int,2) size, Flags flags=Flags.none) {
		this (title, cast(int)pos, cast(int)pos, size.x, size.y, flags);
	}
	this(string title, Vec!(int,2) size, Flags flags=Flags.none) {
		this (title, WindowPos.undefined, size.x, size.y, flags);
	}
	
	SDL_Window* sdlWindow;
}

enum Flags : SDL_WindowFlags {
	none	= cast(SDL_WindowFlags)0	,
	fullscreen	= SDL_WINDOW_FULLSCREEN	,
	fullscreenDesktop	= SDL_WINDOW_FULLSCREEN_DESKTOP	,
	opengl	= SDL_WINDOW_OPENGL	,
	shown	= SDL_WINDOW_SHOWN	,
	hidden	= SDL_WINDOW_HIDDEN	,
	borderless	= SDL_WINDOW_BORDERLESS	,
	resizable	= SDL_WINDOW_RESIZABLE	,
	minimized	= SDL_WINDOW_MINIMIZED	,
	maximized	= SDL_WINDOW_MAXIMIZED	,
	inputGrabbed	= SDL_WINDOW_INPUT_GRABBED	,
	inputFocus	= SDL_WINDOW_INPUT_FOCUS	,
	mouseFocus	= SDL_WINDOW_MOUSE_FOCUS	,
	foreign	= SDL_WINDOW_FOREIGN	,
	allowHighdpi	= SDL_WINDOW_ALLOW_HIGHDPI	,
	mouseCapture	= SDL_WINDOW_MOUSE_CAPTURE	,
	alwaysOnTop	= SDL_WINDOW_ALWAYS_ON_TOP	,
	skipTaskbar	= SDL_WINDOW_SKIP_TASKBAR	,
	utility	= SDL_WINDOW_UTILITY	,
	tooltip	= SDL_WINDOW_TOOLTIP	,
	popupMenu	= SDL_WINDOW_POPUP_MENU	,
}

enum WindowPos : int {
	undefined	= SDL_WINDOWPOS_UNDEFINED	,
	undefined_mask	= SDL_WINDOWPOS_UNDEFINED_MASK	,
	centered	= SDL_WINDOWPOS_CENTERED	,
	centered_mask	= SDL_WINDOWPOS_CENTERED_MASK	,
	
	whereever	= undefined	,
	whereever_mask	= undefined_mask	,
}

unittest {
	import std.stdio;
	
	Window window = new Window("test window", Vec!(int,2)(800,600), Flags.resizable);
	
	readln;
}
