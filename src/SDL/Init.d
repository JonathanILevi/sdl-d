module SDL.Init;

import derelict.sdl2.sdl;
import SDL.Exception;

void init(Init flags=Init.everything) {
	DerelictSDL2.load();
	sdlEnforce0(cast(uint)SDL_Init(flags));
}
static this() {
	////DerelictSDL2.load();
}

enum Init : uint {
	timer	= SDL_INIT_TIMER	,
	audio	= SDL_INIT_AUDIO	,
	video	= SDL_INIT_VIDEO	,
	joystick	= SDL_INIT_JOYSTICK	,
	haptic	= SDL_INIT_HAPTIC	,
	gameController	= SDL_INIT_GAMECONTROLLER	,
	events	= SDL_INIT_EVENTS	,
	noparachute	= SDL_INIT_NOPARACHUTE	,
	everything	= SDL_INIT_EVERYTHING	,
}
