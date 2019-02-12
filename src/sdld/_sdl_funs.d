module sdld._sdl_funs;
import derelict.sdl2.sdl
import sdld._sdl_err;
void init(Uint32 a) {
	if (SDL_Init(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void initSubSystem(Uint32 a) {
	if (SDL_InitSubSystem(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void quitSubSystem(Uint32 a) {
	return SDL_QuitSubSystem(a);
}
Uint32 wasInit(Uint32 a) {
	return SDL_WasInit(a);
}
void quit() {
	return SDL_Quit();
}
void free(void* mem a) {
	return SDL_free(a);
}
void setAssertionHandler(SDL_AssertionHandler a,void* b) {
	return SDL_SetAssertionHandler(a,b);
}
SDL_AssertionHandler getDefaultAssertionHandler() {
	return SDL_GetDefaultAssertionHandler();
}
SDL_AssertionHandler getAssertionHandler(void** a) {
	return SDL_GetAssertionHandler(a);
}
const(SDL_assert_data)* getAssertionReport() {
	return SDL_GetAssertionReport();
}
void resetAssertionReport() {
	return SDL_ResetAssertionReport();
}
void getNumAudioDrivers() {
	if (SDL_GetNumAudioDrivers() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
const(char)* getAudioDriver(int a) {
	return SDL_GetAudioDriver(a);
}
void audioInit(const(char)* a) {
	if (SDL_AudioInit(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void audioQuit() {
	return SDL_AudioQuit();
}
const(char)* getCurrentAudioDriver() {
	return SDL_GetCurrentAudioDriver();
}
void openAudio(SDL_AudioSpec* a,SDL_AudioSpec* b) {
	if (SDL_OpenAudio(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getNumAudioDevices(int a) {
	if (SDL_GetNumAudioDevices(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
const(char)* getAudioDeviceName(int a,int b) {
	return SDL_GetAudioDeviceName(a,b);
}
SDL_AudioDeviceID openAudioDevice(const(char)* a,int b,const(SDL_AudioSpec)* c,SDL_AudioSpec* d,int e) {
	return SDL_OpenAudioDevice(a,b,c,d,e);
}
SDL_AudioStatus getAudioStatus() {
	return SDL_GetAudioStatus();
}
SDL_AudioStatus getAudioDeviceStatus(SDL_AudioDeviceID a) {
	return SDL_GetAudioDeviceStatus(a);
}
void pauseAudio(int a) {
	return SDL_PauseAudio(a);
}
void pauseAudioDevice(SDL_AudioDeviceID a,int b) {
	return SDL_PauseAudioDevice(a,b);
}
SDL_AudioSpec* loadWAVRW(SDL_RWops* a,int b,SDL_AudioSpec* c,Uint8** d,Uint32* e) {
	return SDL_LoadWAV_RW(a,b,c,d,e);
}
void freeWAV(Uint8* a) {
	return SDL_FreeWAV(a);
}
void buildAudioCVT(SDL_AudioCVT* a,SDL_AudioFormat b,Uint8 c,int d,SDL_AudioFormat e,Uint8 f,int g) {
	if (SDL_BuildAudioCVT(a,b,c,d,e,f,g) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void convertAudio(SDL_AudioCVT* a) {
	if (SDL_ConvertAudio(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void mixAudio(Uint8* a,const(Uint8)* b,Uint32 c,int d) {
	return SDL_MixAudio(a,b,c,d);
}
void mixAudioFormat(Uint8* a,const(Uint8)* b,SDL_AudioFormat c,Uint32 d,int e) {
	return SDL_MixAudioFormat(a,b,c,d,e);
}
void queueAudio(SDL_AudioDeviceID a,const(void)* b,Uint32 c) {
	if (SDL_QueueAudio(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
Uint32 dequeueAudio(SDL_AudioDeviceID a,void* b,Uint32 c) {
	return SDL_DequeueAudio(a,b,c);
}
void getQueuedAudioSize(SDL_AudioDeviceID a) {
	if (SDL_GetQueuedAudioSize(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void clearQueuedAudio(SDL_AudioDeviceID a) {
	if (SDL_ClearQueuedAudio(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void lockAudio() {
	return SDL_LockAudio();
}
void lockAudioDevice(SDL_AudioDeviceID a) {
	return SDL_LockAudioDevice(a);
}
void unlockAudio() {
	return SDL_UnlockAudio();
}
void unlockAudioDevice(SDL_AudioDeviceID a) {
	return SDL_UnlockAudioDevice(a);
}
void closeAudio() {
	return SDL_CloseAudio();
}
void closeAudioDevice(SDL_AudioDeviceID a) {
	return SDL_CloseAudioDevice(a);
}
void audioDeviceConnected(SDL_AudioDeviceID a) {
	if (SDL_AudioDeviceConnected(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setClipboardText(const(char)* a) {
	if (SDL_SetClipboardText(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
char* getClipboardText() {
	return SDL_GetClipboardText();
}
SDL_bool hasClipboardText() {
	return SDL_HasClipboardText();
}
void getCPUCount() {
	if (SDL_GetCPUCount() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getCPUCacheLineSize() {
	if (SDL_GetCPUCacheLineSize() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_bool hasRDTSC() {
	return SDL_HasRDTSC();
}
SDL_bool hasAltiVec() {
	return SDL_HasAltiVec();
}
SDL_bool hasMMX() {
	return SDL_HasMMX();
}
SDL_bool has3DNow() {
	return SDL_Has3DNow();
}
SDL_bool hasSSE() {
	return SDL_HasSSE();
}
SDL_bool hasSSE2() {
	return SDL_HasSSE2();
}
SDL_bool hasSSE3() {
	return SDL_HasSSE3();
}
SDL_bool hasSSE41() {
	return SDL_HasSSE41();
}
SDL_bool hasSSE42() {
	return SDL_HasSSE42();
}
SDL_bool hasAVX() {
	return SDL_HasAVX();
}
SDL_bool hasAVX2() {
	return SDL_HasAVX2();
}
void getSystemRAM() {
	if (SDL_GetSystemRAM() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setError(const(char)* a,... b) {
	return SDL_SetError(a,b);
}
const(char)* getError() {
	return SDL_GetError();
}
void clearError() {
	return SDL_ClearError();
}
void pumpEvents() {
	return SDL_PumpEvents();
}
void peepEvents(SDL_Event* a,int b,SDL_eventaction c,Uint32 d,Uint32 e) {
	if (SDL_PeepEvents(a,b,c,d,e) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_bool hasEvent(Uint32 a) {
	return SDL_HasEvent(a);
}
SDL_bool hasEvents(Uint32 a,Uint32 b) {
	return SDL_HasEvents(a,b);
}
void flushEvent(Uint32 a) {
	return SDL_FlushEvent(a);
}
void flushEvents(Uint32 a,Uint32 b) {
	return SDL_FlushEvents(a,b);
}
void pollEvent(SDL_Event* a) {
	if (SDL_PollEvent(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void waitEvent(SDL_Event* a) {
	if (SDL_WaitEvent(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void waitEventTimeout(SDL_Event* a,int b) {
	if (SDL_WaitEventTimeout(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void pushEvent(SDL_Event* a) {
	if (SDL_PushEvent(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setEventFilter(SDL_EventFilter a,void* b) {
	return SDL_SetEventFilter(a,b);
}
SDL_bool getEventFilter(SDL_EventFilter* a,void** b) {
	return SDL_GetEventFilter(a,b);
}
void addEventWatch(SDL_EventFilter a,void* b) {
	return SDL_AddEventWatch(a,b);
}
void delEventWatch(SDL_EventFilter a,void* b) {
	return SDL_DelEventWatch(a,b);
}
void filterEvents(SDL_EventFilter a,void* b) {
	return SDL_FilterEvents(a,b);
}
Uint8 eventState(Uint32 a,int b) {
	return SDL_EventState(a,b);
}
Uint32 registerEvents(int a) {
	return SDL_RegisterEvents(a);
}
char* getBasePath() {
	return SDL_GetBasePath();
}
char* getPrefPath(const(char)* org a,const(char)* app b) {
	return SDL_GetPrefPath(a,b);
}
void gameControllerAddMappingsFromRW(SDL_RWops* a,int b) {
	if (SDL_GameControllerAddMappingsFromRW(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void gameControllerAddMapping(const(char)* a) {
	if (SDL_GameControllerAddMapping(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
char* gameControllerMappingForGUID(SDL_JoystickGUID a) {
	return SDL_GameControllerMappingForGUID(a);
}
char* gameControllerMapping(SDL_GameController* a) {
	return SDL_GameControllerMapping(a);
}
SDL_bool isGameController(int a) {
	return SDL_IsGameController(a);
}
const(char)* gameControllerNameForIndex(int a) {
	return SDL_GameControllerNameForIndex(a);
}
SDL_GameController* gameControllerOpen(int a) {
	return SDL_GameControllerOpen(a);
}
SDL_GameController* gameControllerFromInstanceID(SDL_JoystickID a) {
	return SDL_GameControllerFromInstanceID(a);
}
const(char)* gameControllerName(SDL_GameController* a) {
	return SDL_GameControllerName(a);
}
SDL_bool gameControllerGetAttached(SDL_GameController* a) {
	return SDL_GameControllerGetAttached(a);
}
SDL_Joystick* gameControllerGetJoystick(SDL_GameController* a) {
	return SDL_GameControllerGetJoystick(a);
}
void gameControllerEventState(int a) {
	if (SDL_GameControllerEventState(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void gameControllerUpdate() {
	return SDL_GameControllerUpdate();
}
SDL_GameControllerAxis gameControllerGetAxisFromString(const(char)* a) {
	return SDL_GameControllerGetAxisFromString(a);
}
const(char)* gameControllerGetStringForAxis(SDL_GameControllerAxis a) {
	return SDL_GameControllerGetStringForAxis(a);
}
SDL_GameControllerButtonBind gameControllerGetBindForAxis(SDL_GameController* a,SDL_GameControllerAxis b) {
	return SDL_GameControllerGetBindForAxis(a,b);
}
Sint16 gameControllerGetAxis(SDL_GameController* a,SDL_GameControllerAxis b) {
	return SDL_GameControllerGetAxis(a,b);
}
SDL_GameControllerButton gameControllerGetButtonFromString(const(char*) a) {
	return SDL_GameControllerGetButtonFromString(a);
}
const(char)* gameControllerGetStringForButton(SDL_GameControllerButton a) {
	return SDL_GameControllerGetStringForButton(a);
}
SDL_GameControllerButtonBind gameControllerGetBindForButton(SDL_GameController* a,SDL_GameControllerButton b) {
	return SDL_GameControllerGetBindForButton(a,b);
}
Uint8 gameControllerGetButton(SDL_GameController* a,SDL_GameControllerButton b) {
	return SDL_GameControllerGetButton(a,b);
}
void gameControllerClose(SDL_GameController* a) {
	return SDL_GameControllerClose(a);
}
void recordGesture(SDL_TouchID a) {
	if (SDL_RecordGesture(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void saveAllDollarTemplates(SDL_RWops* a) {
	if (SDL_SaveAllDollarTemplates(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void saveDollarTemplate(SDL_GestureID a,SDL_RWops* b) {
	if (SDL_SaveDollarTemplate(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void loadDollarTemplates(SDL_TouchID a,SDL_RWops* b) {
	if (SDL_LoadDollarTemplates(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void numHaptics() {
	if (SDL_NumHaptics() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
const(char)* hapticName(int a) {
	return SDL_HapticName(a);
}
SDL_Haptic* hapticOpen(int a) {
	return SDL_HapticOpen(a);
}
void hapticOpened(int a) {
	if (SDL_HapticOpened(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticIndex(SDL_Haptic* a) {
	if (SDL_HapticIndex(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void mouseIsHaptic() {
	if (SDL_MouseIsHaptic() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_Haptic* hapticOpenFromMouse() {
	return SDL_HapticOpenFromMouse();
}
void joystickIsHaptic(SDL_Joystick* a) {
	if (SDL_JoystickIsHaptic(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_Haptic* hapticOpenFromJoystick(SDL_Joystick* a) {
	return SDL_HapticOpenFromJoystick(a);
}
void hapticClose(SDL_Haptic* a) {
	if (SDL_HapticClose(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticNumEffects(SDL_Haptic* a) {
	if (SDL_HapticNumEffects(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticNumEffectsPlaying(SDL_Haptic* a) {
	if (SDL_HapticNumEffectsPlaying(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
uint hapticQuery(SDL_Haptic* a) {
	return SDL_HapticQuery(a);
}
void hapticNumAxes(SDL_Haptic* a) {
	if (SDL_HapticNumAxes(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticEffectSupported(SDL_Haptic* a,SDL_HapticEffect* b) {
	if (SDL_HapticEffectSupported(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticNewEffect(SDL_Haptic* a,SDL_HapticEffect* b) {
	if (SDL_HapticNewEffect(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticUpdateEffect(SDL_Haptic* a,int b,SDL_HapticEffect* c) {
	if (SDL_HapticUpdateEffect(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticRunEffect(SDL_Haptic* a,int b,Uint32 c) {
	if (SDL_HapticRunEffect(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticStopEffect(SDL_Haptic* a,int b) {
	if (SDL_HapticStopEffect(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticDestroyEffect(SDL_Haptic* a,int b) {
	if (SDL_HapticDestroyEffect(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticGetEffectStatus(SDL_Haptic* a,int b) {
	if (SDL_HapticGetEffectStatus(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticSetGain(SDL_Haptic* a,int b) {
	if (SDL_HapticSetGain(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticSetAutocenter(SDL_Haptic* a,int b) {
	if (SDL_HapticSetAutocenter(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticPause(SDL_Haptic* a) {
	if (SDL_HapticPause(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticUnpause(SDL_Haptic* a) {
	if (SDL_HapticUnpause(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticStopAll(SDL_Haptic* a) {
	if (SDL_HapticStopAll(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticRumbleSupported(SDL_Haptic* a) {
	if (SDL_HapticRumbleSupported(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticRumbleInit(SDL_Haptic* a) {
	if (SDL_HapticRumbleInit(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticRumblePlay(SDL_Haptic* a,float b,Uint32 c) {
	if (SDL_HapticRumblePlay(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void hapticRumbleStop(SDL_Haptic* a) {
	if (SDL_HapticRumbleStop(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_bool setHintWithPriority(const(char)* a,const(char)* b,SDL_HintPriority c) {
	return SDL_SetHintWithPriority(a,b,c);
}
SDL_bool setHint(const(char)* a,const(char)* b) {
	return SDL_SetHint(a,b);
}
const(char)* getHint(const(char)* a) {
	return SDL_GetHint(a);
}
SDL_bool getHintBoolean(const(char)* a,SDL_bool b) {
	return SDL_GetHintBoolean(a,b);
}
void addHintCallback(const(char)* a,SDL_HintCallback b,void* c) {
	return SDL_AddHintCallback(a,b,c);
}
void delHintCallback(const(char)* a,SDL_HintCallback b,void* c) {
	return SDL_DelHintCallback(a,b,c);
}
void clearHints() {
	return SDL_ClearHints();
}
void numJoysticks() {
	if (SDL_NumJoysticks() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
const(char)* joystickNameForIndex(int a) {
	return SDL_JoystickNameForIndex(a);
}
SDL_Joystick* joystickOpen(int a) {
	return SDL_JoystickOpen(a);
}
SDL_Joystick* joystickFromInstanceID(SDL_JoystickID a) {
	return SDL_JoystickFromInstanceID(a);
}
const(char)* joystickName(SDL_Joystick* a) {
	return SDL_JoystickName(a);
}
SDL_JoystickGUID joystickGetDeviceGUID(int a) {
	return SDL_JoystickGetDeviceGUID(a);
}
SDL_JoystickGUID joystickGetGUID(SDL_Joystick* a) {
	return SDL_JoystickGetGUID(a);
}
char* joystickGetGUIDString(SDL_JoystickGUID a) {
	return SDL_JoystickGetGUIDString(a);
}
SDL_JoystickGUID joystickGetGUIDFromString(const(char)* a) {
	return SDL_JoystickGetGUIDFromString(a);
}
SDL_bool joystickGetAttached(SDL_Joystick* a) {
	return SDL_JoystickGetAttached(a);
}
SDL_JoystickID joystickInstanceID(SDL_Joystick* a) {
	return SDL_JoystickInstanceID(a);
}
void joystickNumAxes(SDL_Joystick* a) {
	if (SDL_JoystickNumAxes(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void joystickNumBalls(SDL_Joystick* a) {
	if (SDL_JoystickNumBalls(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void joystickNumHats(SDL_Joystick* a) {
	if (SDL_JoystickNumHats(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void joystickNumButtons(SDL_Joystick* a) {
	if (SDL_JoystickNumButtons(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void joystickUpdate() {
	return SDL_JoystickUpdate();
}
void joystickEventState(int a) {
	if (SDL_JoystickEventState(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
Sint16 joystickGetAxis(SDL_Joystick* a,int b) {
	return SDL_JoystickGetAxis(a,b);
}
Uint8 joystickGetHat(SDL_Joystick* a,int b) {
	return SDL_JoystickGetHat(a,b);
}
void joystickGetBall(SDL_Joystick* a,int b,int* c,int* d) {
	if (SDL_JoystickGetBall(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
Uint8 joystickGetButton(SDL_Joystick* a,int b) {
	return SDL_JoystickGetButton(a,b);
}
void joystickClose(SDL_Joystick* a) {
	return SDL_JoystickClose(a);
}
SDL_JoystickPowerLevel joystickCurrentPowerLevel(SDL_Joystick* a) {
	return SDL_JoystickCurrentPowerLevel(a);
}
SDL_Window* getKeyboardFocus() {
	return SDL_GetKeyboardFocus();
}
Uint8* getKeyboardState(int* a) {
	return SDL_GetKeyboardState(a);
}
SDL_Keymod getModState() {
	return SDL_GetModState();
}
void setModState(SDL_Keymod a) {
	return SDL_SetModState(a);
}
SDL_Keycode getKeyFromScancode(SDL_Scancode a) {
	return SDL_GetKeyFromScancode(a);
}
SDL_Scancode getScancodeFromKey(SDL_Keycode a) {
	return SDL_GetScancodeFromKey(a);
}
const(char)* getScancodeName(SDL_Scancode a) {
	return SDL_GetScancodeName(a);
}
SDL_Scancode getScancodeFromName(const(char)* a) {
	return SDL_GetScancodeFromName(a);
}
const(char)* getKeyName(SDL_Keycode a) {
	return SDL_GetKeyName(a);
}
SDL_Keycode getKeyFromName(const(char)* a) {
	return SDL_GetKeyFromName(a);
}
void startTextInput() {
	return SDL_StartTextInput();
}
SDL_bool isTextInputActive() {
	return SDL_IsTextInputActive();
}
void stopTextInput() {
	return SDL_StopTextInput();
}
void setTextInputRect(SDL_Rect* a) {
	return SDL_SetTextInputRect(a);
}
SDL_bool hasScreenKeyboardSupport() {
	return SDL_HasScreenKeyboardSupport();
}
SDL_bool isScreenKeyboardShown(SDL_Window* a) {
	return SDL_IsScreenKeyboardShown(a);
}
void* loadObject(const(char)* a) {
	return SDL_LoadObject(a);
}
void* loadFunction(void* a,const(char*) b) {
	return SDL_LoadFunction(a,b);
}
void unloadObject(void* a) {
	return SDL_UnloadObject(a);
}
void logSetAllPriority(SDL_LogPriority a) {
	return SDL_LogSetAllPriority(a);
}
void logSetPriority(int a,SDL_LogPriority b) {
	return SDL_LogSetPriority(a,b);
}
SDL_LogPriority logGetPriority(int a) {
	return SDL_LogGetPriority(a);
}
void logResetPriorities() {
	return SDL_LogResetPriorities();
}
void log(const(char)* a,... b) {
	return SDL_Log(a,b);
}
void logVerbose(int a,const(char)* b,... c) {
	return SDL_LogVerbose(a,b,c);
}
void logDebug(int a,const(char)* b,... c) {
	return SDL_LogDebug(a,b,c);
}
void logInfo(int a,const(char)* b,... c) {
	return SDL_LogInfo(a,b,c);
}
void logWarn(int a,const(char)* b,... c) {
	return SDL_LogWarn(a,b,c);
}
void logError(int a,const(char)* b,... c) {
	return SDL_LogError(a,b,c);
}
void logCritical(int a,const(char)* b,... c) {
	return SDL_LogCritical(a,b,c);
}
void logMessage(int a,SDL_LogPriority b,const(char)* c,... d) {
	return SDL_LogMessage(a,b,c,d);
}
void logMessageV(int a,SDL_LogPriority b,const(char)* c,va_list d) {
	return SDL_LogMessageV(a,b,c,d);
}
void logGetOutputFunction(SDL_LogOutputFunction a,void** b) {
	return SDL_LogGetOutputFunction(a,b);
}
void logSetOutputFunction(SDL_LogOutputFunction a,void* b) {
	return SDL_LogSetOutputFunction(a,b);
}
void showMessageBox(const(SDL_MessageBoxData)* a,int* b) {
	if (SDL_ShowMessageBox(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void showSimpleMessageBox(Uint32 a,const(char)* b,const(char)* c,SDL_Window* d) {
	if (SDL_ShowSimpleMessageBox(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_Window* getMouseFocus() {
	return SDL_GetMouseFocus();
}
Uint32 getMouseState(int* a,int* b) {
	return SDL_GetMouseState(a,b);
}
Uint32 getGlobalMouseState(int* a,int* b) {
	return SDL_GetGlobalMouseState(a,b);
}
Uint32 getRelativeMouseState(int* a,int* b) {
	return SDL_GetRelativeMouseState(a,b);
}
void warpMouseInWindow(SDL_Window* a,int b,int c) {
	return SDL_WarpMouseInWindow(a,b,c);
}
void warpMouseGlobal(int a,int b) {
	return SDL_WarpMouseGlobal(a,b);
}
void setRelativeMouseMode(SDL_bool a) {
	if (SDL_SetRelativeMouseMode(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void captureMouse(SDL_bool a) {
	if (SDL_CaptureMouse(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_bool getRelativeMouseMode() {
	return SDL_GetRelativeMouseMode();
}
Refer!SDL_Cursor* createCursor(const(Uint8)* a,const(Uint8)* b,int c,int d,int e,int f) {
	auto ptr = SDL_CreateCursor(a,b,c,d,e,f);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyCursor)(ptr);
	}
}
Refer!SDL_Cursor* createColorCursor(SDL_Surface* a,int b,int c) {
	auto ptr = SDL_CreateColorCursor(a,b,c);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyCursor)(ptr);
	}
}
Refer!SDL_Cursor* createSystemCursor(SDL_SystemCursor a) {
	auto ptr = SDL_CreateSystemCursor(a);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyCursor)(ptr);
	}
}
void setCursor(SDL_Cursor* a) {
	return SDL_SetCursor(a);
}
SDL_Cursor* getCursor() {
	return SDL_GetCursor();
}
SDL_Cursor* getDefaultCursor() {
	return SDL_GetDefaultCursor();
}
void freeCursor(SDL_Cursor* a) {
	return SDL_FreeCursor(a);
}
void showCursor(int a) {
	if (SDL_ShowCursor(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
const(char)* getPixelFormatName(Uint32 a) {
	return SDL_GetPixelFormatName(a);
}
SDL_bool pixelFormatEnumToMasks(Uint32 a,int* b,Uint32* c,Uint32* d,Uint32* e,Uint32* f) {
	return SDL_PixelFormatEnumToMasks(a,b,c,d,e,f);
}
Uint32 masksToPixelFormatEnum(int a,Uint32 b,Uint32 c,Uint32 d,Uint32 e) {
	return SDL_MasksToPixelFormatEnum(a,b,c,d,e);
}
SDL_PixelFormat* allocFormat(Uint32 a) {
	return SDL_AllocFormat(a);
}
void freeFormat(SDL_PixelFormat* a) {
	return SDL_FreeFormat(a);
}
SDL_Palette* allocPalette(int a) {
	return SDL_AllocPalette(a);
}
void setPixelFormatPalette(SDL_PixelFormat* a,SDL_Palette* b) {
	if (SDL_SetPixelFormatPalette(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setPaletteColors(SDL_Palette* a,const(SDL_Color)* b,int c,int d) {
	if (SDL_SetPaletteColors(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void freePalette(SDL_Palette* a) {
	return SDL_FreePalette(a);
}
Uint32 mapRGB(const(SDL_PixelFormat)* a,Uint8 b,Uint8 c,Uint8 d) {
	return SDL_MapRGB(a,b,c,d);
}
Uint32 mapRGBA(const(SDL_PixelFormat)* a,Uint8 b,Uint8 c,Uint8 d,Uint8 e) {
	return SDL_MapRGBA(a,b,c,d,e);
}
void getRGB(Uint32 a,const(SDL_PixelFormat)* b,Uint8* c,Uint8* d,Uint8* e) {
	return SDL_GetRGB(a,b,c,d,e);
}
void getRGBA(Uint32 a,const(SDL_PixelFormat)* b,Uint8* c,Uint8* d,Uint8* e,Uint8* f) {
	return SDL_GetRGBA(a,b,c,d,e,f);
}
void calculateGammaRamp(float a,Uint16* b) {
	return SDL_CalculateGammaRamp(a,b);
}
const(char)* getPlatform() {
	return SDL_GetPlatform();
}
SDL_PowerState getPowerInfo(int* a,int* b) {
	return SDL_GetPowerInfo(a,b);
}
SDL_bool hasIntersection(const(SDL_Rect)* a,const(SDL_Rect)* b) {
	return SDL_HasIntersection(a,b);
}
SDL_bool intersectRect(const(SDL_Rect)* a,const(SDL_Rect)* b,SDL_Rect* c) {
	return SDL_IntersectRect(a,b,c);
}
void unionRect(const(SDL_Rect)* a,const(SDL_Rect)* b,SDL_Rect* c) {
	return SDL_UnionRect(a,b,c);
}
SDL_bool enclosePoints(const(SDL_Point)* a,int b,const(SDL_Rect)* c,SDL_Rect* d) {
	return SDL_EnclosePoints(a,b,c,d);
}
SDL_bool intersectRectAndLine(const(SDL_Rect)* a,int* b,int* c,int* d,int* e) {
	return SDL_IntersectRectAndLine(a,b,c,d,e);
}
void getNumRenderDrivers() {
	if (SDL_GetNumRenderDrivers() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getRenderDriverInfo(int a,SDL_RendererInfo* b) {
	if (SDL_GetRenderDriverInfo(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void createWindowAndRenderer(int a,int b,Uint32 c,SDL_Window** d,SDL_Renderer** e) {
	if (SDL_CreateWindowAndRenderer(a,b,c,d,e) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
Refer!SDL_Renderer* createRenderer(SDL_Window* a,int b,SDL_RendererFlags c) {
	auto ptr = SDL_CreateRenderer(a,b,c);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyRenderer)(ptr);
	}
}
Refer!SDL_Renderer* createSoftwareRenderer(SDL_Surface* a) {
	auto ptr = SDL_CreateSoftwareRenderer(a);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyRenderer)(ptr);
	}
}
SDL_Renderer* getRenderer(SDL_Window* a) {
	return SDL_GetRenderer(a);
}
void getRendererInfo(SDL_Renderer* a,SDL_RendererInfo* b) {
	if (SDL_GetRendererInfo(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getRendererOutputSize(SDL_Renderer* a,int* b,int* c) {
	if (SDL_GetRendererOutputSize(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
Refer!SDL_Texture* createTexture(SDL_Renderer* a,Uint32 b,SDL_TextureAccess c,int d,int e) {
	auto ptr = SDL_CreateTexture(a,b,c,d,e);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyTexture)(ptr);
	}
}
Refer!SDL_Texture* createTextureFromSurface(SDL_Renderer* a,SDL_Surface* b) {
	auto ptr = SDL_CreateTextureFromSurface(a,b);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyTexture)(ptr);
	}
}
void queryTexture(SDL_Texture* a,Uint32* b,int* c,int* d,int* e) {
	if (SDL_QueryTexture(a,b,c,d,e) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setTextureColorMod(SDL_Texture* a,Uint8 b,Uint8 c,Uint8 d) {
	if (SDL_SetTextureColorMod(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getTextureColorMod(SDL_Texture* a,Uint8* b,Uint8* c,Uint8* d) {
	if (SDL_GetTextureColorMod(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setTextureAlphaMod(SDL_Texture* a,Uint8 b) {
	if (SDL_SetTextureAlphaMod(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getTextureAlphaMod(SDL_Texture* a,Uint8* b) {
	if (SDL_GetTextureAlphaMod(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setTextureBlendMode(SDL_Texture* a,SDL_BlendMode b) {
	if (SDL_SetTextureBlendMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getTextureBlendMode(SDL_Texture* a,SDL_BlendMode* b) {
	if (SDL_GetTextureBlendMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void updateTexture(SDL_Texture* a,const(SDL_Rect)* b,const(void)* c,int d) {
	if (SDL_UpdateTexture(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void updateYUVTexture(SDL_Texture* a,const(SDL_Rect)* b,const(Uint8)* c,int d,const(Uint8)* e,int f,const(Uint8)* g,int h) {
	if (SDL_UpdateYUVTexture(a,b,c,d,e,f,g,h) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void lockTexture(SDL_Texture* a,const(SDL_Rect)* b,void** c,int* d) {
	if (SDL_LockTexture(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void unlockTexture(SDL_Texture* a) {
	return SDL_UnlockTexture(a);
}
SDL_bool renderTargetSupported(SDL_Renderer* a) {
	return SDL_RenderTargetSupported(a);
}
void setRenderTarget(SDL_Renderer* a,SDL_Texture* b) {
	if (SDL_SetRenderTarget(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_Texture* getRenderTarget(SDL_Renderer* a) {
	return SDL_GetRenderTarget(a);
}
void renderSetClipRect(SDL_Renderer* a,const(SDL_Rect)* b) {
	if (SDL_RenderSetClipRect(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderGetClipRect(SDL_Renderer* renderer a,SDL_Rect* b) {
	return SDL_RenderGetClipRect(a,b);
}
void renderSetLogicalSize(SDL_Renderer* a,int b,int c) {
	if (SDL_RenderSetLogicalSize(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderGetLogicalSize(SDL_Renderer* a,int* b,int* c) {
	return SDL_RenderGetLogicalSize(a,b,c);
}
void renderSetIntegerScale(SDL_Renderer* a,SDL_bool b) {
	if (SDL_RenderSetIntegerScale(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_bool renderGetIntegerScale(SDL_Renderer* a) {
	return SDL_RenderGetIntegerScale(a);
}
void renderSetViewport(SDL_Renderer* a,const(SDL_Rect)* b) {
	if (SDL_RenderSetViewport(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderGetViewport(SDL_Renderer* a,SDL_Rect* b) {
	return SDL_RenderGetViewport(a,b);
}
SDL_bool renderIsClipEnabled(SDL_Renderer* a) {
	return SDL_RenderIsClipEnabled(a);
}
void renderSetScale(SDL_Renderer* a,float b,float c) {
	if (SDL_RenderSetScale(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderGetScale(SDL_Renderer* a,float* b,float* c) {
	if (SDL_RenderGetScale(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setRenderDrawColor(SDL_Renderer* a,Uint8 b,Uint8 c,Uint8 d,Uint8 e) {
	if (SDL_SetRenderDrawColor(a,b,c,d,e) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getRenderDrawColor(SDL_Renderer* a,Uint8* b,Uint8* c,Uint8* d,Uint8* e) {
	if (SDL_GetRenderDrawColor(a,b,c,d,e) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setRenderDrawBlendMode(SDL_Renderer* a,SDL_BlendMode b) {
	if (SDL_SetRenderDrawBlendMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getRenderDrawBlendMode(SDL_Renderer* a,SDL_BlendMode* b) {
	if (SDL_GetRenderDrawBlendMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderClear(SDL_Renderer* a) {
	if (SDL_RenderClear(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderDrawPoint(SDL_Renderer* a,int b,int c) {
	if (SDL_RenderDrawPoint(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderDrawPoints(SDL_Renderer* a,const(SDL_Point)* b,int c) {
	if (SDL_RenderDrawPoints(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderDrawLine(SDL_Renderer* a,int b,int c,int d,int e) {
	if (SDL_RenderDrawLine(a,b,c,d,e) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderDrawLines(SDL_Renderer* a,const(SDL_Point)* b,int c) {
	if (SDL_RenderDrawLines(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderDrawRect(SDL_Renderer* a,const(SDL_Rect)* b) {
	if (SDL_RenderDrawRect(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderDrawRects(SDL_Renderer* a,const(SDL_Rect)* b,int c) {
	if (SDL_RenderDrawRects(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderFillRect(SDL_Renderer* a,const(SDL_Rect)* b) {
	if (SDL_RenderFillRect(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderFillRects(SDL_Renderer* a,const(SDL_Rect)* b,int c) {
	if (SDL_RenderFillRects(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderCopy(SDL_Renderer* a,SDL_Texture* b,const(SDL_Rect)* c,const(SDL_Rect*) d) {
	if (SDL_RenderCopy(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderCopyEx(SDL_Renderer* a,SDL_Texture* b,const(SDL_Rect)* c,const(SDL_Rect)* d,const(double) e,const(SDL_Point)* f,const(SDL_RendererFlip) g) {
	if (SDL_RenderCopyEx(a,b,c,d,e,f,g) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderReadPixels(SDL_Renderer* a,const(SDL_Rect)* b,Uint32 c,void* d,int e) {
	if (SDL_RenderReadPixels(a,b,c,d,e) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void renderPresent(SDL_Renderer* a) {
	return SDL_RenderPresent(a);
}


void gLBindTexture(SDL_Texture* a,float* b,float* c) {
	if (SDL_GL_BindTexture(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void gLUnbindTexture(SDL_Texture* a) {
	if (SDL_GL_UnbindTexture(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_RWops* rWFromFile(const(char)* a,const(char)* b) {
	return SDL_RWFromFile(a,b);
}
SDL_RWops* rWFromFP(FILE* a,SDL_bool b) {
	return SDL_RWFromFP(a,b);
}
SDL_RWops* rWFromMem(void* a,int b) {
	return SDL_RWFromMem(a,b);
}
SDL_RWops* rWFromConstMem(const(void)* a,int b) {
	return SDL_RWFromConstMem(a,b);
}
SDL_RWops* allocRW() {
	return SDL_AllocRW();
}
void freeRW(SDL_RWops* a) {
	return SDL_FreeRW(a);
}
Uint8 readU8(SDL_RWops* a) {
	return SDL_ReadU8(a);
}
Uint16 readLE16(SDL_RWops* a) {
	return SDL_ReadLE16(a);
}
Uint16 readBE16(SDL_RWops* a) {
	return SDL_ReadBE16(a);
}
Uint32 readLE32(SDL_RWops* a) {
	return SDL_ReadLE32(a);
}
Uint32 readBE32(SDL_RWops* a) {
	return SDL_ReadBE32(a);
}
Uint64 readLE64(SDL_RWops* a) {
	return SDL_ReadLE64(a);
}
Uint64 readBE64(SDL_RWops* a) {
	return SDL_ReadBE64(a);
}
size_t writeU8(SDL_RWops* a,Uint8 b) {
	return SDL_WriteU8(a,b);
}
size_t writeLE16(SDL_RWops* a,Uint16 b) {
	return SDL_WriteLE16(a,b);
}
size_t writeBE16(SDL_RWops* a,Uint16 b) {
	return SDL_WriteBE16(a,b);
}
size_t writeLE32(SDL_RWops* a,Uint32 b) {
	return SDL_WriteLE32(a,b);
}
size_t writeBE32(SDL_RWops* a,Uint32 b) {
	return SDL_WriteBE32(a,b);
}
size_t writeLE64(SDL_RWops* a,Uint64 b) {
	return SDL_WriteLE64(a,b);
}
size_t writeBE64(SDL_RWops* a,Uint64 b) {
	return SDL_WriteBE64(a,b);
}
Refer!SDL_Window* createShapedWindow(const(char)* a,uint b,uint c,uint d,uint e,Uint32 f) {
	auto ptr = SDL_CreateShapedWindow(a,b,c,d,e,f);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyWindow)(ptr);
	}
}
SDL_bool isShapedWindow(const(SDL_Window)* a) {
	return SDL_IsShapedWindow(a);
}
void setWindowShape(SDL_Window* a,SDL_Surface* b,SDL_WindowShapeMode* c) {
	if (SDL_SetWindowShape(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getShapedWindowMode(SDL_Window* a,SDL_WindowShapeMode* b) {
	if (SDL_GetShapedWindowMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
Refer!SDL_Surface* createRGBSurface(Uint32 a,int b,int c,int d,Uint32 e,Uint32 f,Uint32 g,Uint32 h) {
	auto ptr = SDL_CreateRGBSurface(a,b,c,d,e,f,g,h);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroySurface)(ptr);
	}
}
Refer!SDL_Surface* createRGBSurfaceWithFormat(Uint32 a,int b,int c,int d,Uint32 e) {
	auto ptr = SDL_CreateRGBSurfaceWithFormat(a,b,c,d,e);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroySurface)(ptr);
	}
}
Refer!SDL_Surface* createRGBSurfaceFrom(void* a,int b,int c,int d,int e,Uint32 f,Uint32 g,Uint32 h,Uint32 i) {
	auto ptr = SDL_CreateRGBSurfaceFrom(a,b,c,d,e,f,g,h,i);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroySurface)(ptr);
	}
}
Refer!SDL_Surface* createRGBSurfaceWithFormatFrom(void* a,int b,int c,int d,int e,Uint32 f) {
	auto ptr = SDL_CreateRGBSurfaceWithFormatFrom(a,b,c,d,e,f);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroySurface)(ptr);
	}
}
void freeSurface(SDL_Surface* a) {
	return SDL_FreeSurface(a);
}
void setSurfacePalette(SDL_Surface* a,SDL_Palette* b) {
	if (SDL_SetSurfacePalette(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void lockSurface(SDL_Surface* a) {
	if (SDL_LockSurface(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void unlockSurface(SDL_Surface* a) {
	if (SDL_UnlockSurface(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_Surface* loadBMPRW(SDL_RWops* a,int b) {
	return SDL_LoadBMP_RW(a,b);
}
void saveBMPRW(SDL_Surface* a,SDL_RWops* b,int c) {
	if (SDL_SaveBMP_RW(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setSurfaceRLE(SDL_Surface* a,int b) {
	if (SDL_SetSurfaceRLE(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setColorKey(SDL_Surface* a,int b,Uint32 c) {
	if (SDL_SetColorKey(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getColorKey(SDL_Surface* a,Uint32* b) {
	if (SDL_GetColorKey(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setSurfaceColorMod(SDL_Surface* a,Uint8 b,Uint8 c,Uint8 d) {
	if (SDL_SetSurfaceColorMod(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getSurfaceColorMod(SDL_Surface* a,Uint8* b,Uint8* c,Uint8* d) {
	if (SDL_GetSurfaceColorMod(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setSurfaceAlphaMod(SDL_Surface* a,Uint8 b) {
	if (SDL_SetSurfaceAlphaMod(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getSurfaceAlphaMod(SDL_Surface* a,Uint8* b) {
	if (SDL_GetSurfaceAlphaMod(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setSurfaceBlendMode(SDL_Surface* a,SDL_BlendMode b) {
	if (SDL_SetSurfaceBlendMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getSurfaceBlendMode(SDL_Surface* a,SDL_BlendMode* b) {
	if (SDL_GetSurfaceBlendMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_bool setClipRect(SDL_Surface* a,const(SDL_Rect)* b) {
	return SDL_SetClipRect(a,b);
}
void getClipRect(SDL_Surface* a,SDL_Rect* b) {
	return SDL_GetClipRect(a,b);
}
SDL_Surface* convertSurface(SDL_Surface* a,const(SDL_PixelFormat)* b,Uint32 c) {
	return SDL_ConvertSurface(a,b,c);
}
SDL_Surface* convertSurfaceFormat(SDL_Surface* a,Uint32 b,Uint32 c) {
	return SDL_ConvertSurfaceFormat(a,b,c);
}
void convertPixels(int a,int b,Uint32 c,const(void)* d,int e,Uint32 f,void* g,int h) {
	if (SDL_ConvertPixels(a,b,c,d,e,f,g,h) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void fillRect(SDL_Surface* a,const(SDL_Rect)* b,Uint32 c) {
	if (SDL_FillRect(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void fillRects(SDL_Surface* a,const(SDL_Rect)* b,int c,Uint32 d) {
	if (SDL_FillRects(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void upperBlit(SDL_Surface* a,const(SDL_Rect)* b,SDL_Surface* c,SDL_Rect* d) {
	if (SDL_UpperBlit(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void lowerBlit(SDL_Surface* a,SDL_Rect* b,SDL_Surface* c,SDL_Rect* d) {
	if (SDL_LowerBlit(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void softStretch(SDL_Surface* a,const(SDL_Rect)* b,SDL_Surface* c,const(SDL_Rect)* d) {
	if (SDL_SoftStretch(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void upperBlitScaled(SDL_Surface* a,const(SDL_Rect)* b,SDL_Surface* c,SDL_Rect* d) {
	if (SDL_UpperBlitScaled(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void lowerBlitScaled(SDL_Surface* a,SDL_Rect* b,SDL_Surface* c,SDL_Rect* d) {
	if (SDL_LowerBlitScaled(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
static if(Derelict_OS_Windows) {
void direct3D9GetAdapterIndex(int a) {
	if (SDL_Direct3D9GetAdapterIndex(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
IDirect3DDevice9* renderGetD3D9Device(SDL_Renderer* a) {
	return SDL_RenderGetD3D9Device(a);
}
SDL_bool dXGIGetOutputInfo(int a,int* b,int* c) {
	return SDL_DXGIGetOutputInfo(a,b,c);
}
}
static if(Derelict_OS_iOS) {
void iPhoneSetAnimationCallback(SDL_Window* a,int b,SDL_iPhoneAnimationCallback c,void* d) {
	if (SDL_iPhoneSetAnimationCallback(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void iPhoneSetEventPump(SDL_bool a) {
	return SDL_iPhoneSetEventPump(a);
}
}
static if(Derelict_OS_Android) {
void* androidGetJNIEnv() {
	return SDL_AndroidGetJNIEnv();
}
void* androidGetActivity() {
	return SDL_AndroidGetActivity();
}
const(char)* androidGetInternalStoragePath() {
	return SDL_AndroidGetInternalStoragePath();
}
void androidGetInternalStorageState() {
	if (SDL_AndroidGetInternalStorageState() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
const(char)* androidGetExternalStoragePath() {
	return SDL_AndroidGetExternalStoragePath();
}
}
static if(Derelict_OS_WinRT) {
const(wchar_t)* winRTGetFSPathUNICODE(SDL_WinRT_Path a) {
	return SDL_WinRTGetFSPathUNICODE(a);
}
const(char)* winRTGetFSPathUTF8(SDL_WinRT_Path a) {
	return SDL_WinRTGetFSPathUTF8(a);
}
void winRTRunApp(int function(int a,char**) b,void* c) {
	if (SDL_WinRTRunApp(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
}
SDL_bool getWindowWMInfo(SDL_Window* window a,SDL_SysWMinfo * info b) {
	return SDL_GetWindowWMInfo(a,b);
}
Uint32 getTicks() {
	return SDL_GetTicks();
}
Uint64 getPerformanceCounter() {
	return SDL_GetPerformanceCounter();
}
Uint64 getPerformanceFrequency() {
	return SDL_GetPerformanceFrequency();
}
void delay(Uint32 a) {
	return SDL_Delay(a);
}
SDL_TimerID addTimer(Uint32 a,SDL_TimerCallback b,void* c) {
	return SDL_AddTimer(a,b,c);
}
SDL_bool removeTimer(SDL_TimerID a) {
	return SDL_RemoveTimer(a);
}
void getNumTouchDevices() {
	if (SDL_GetNumTouchDevices() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_TouchID getTouchDevice(int a) {
	return SDL_GetTouchDevice(a);
}
void getNumTouchFingers(SDL_TouchID a) {
	if (SDL_GetNumTouchFingers(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_Finger* getTouchFinger(SDL_TouchID a,int b) {
	return SDL_GetTouchFinger(a,b);
}
void getVersion(SDL_version* a) {
	return SDL_GetVersion(a);
}
const(char)* getRevision() {
	return SDL_GetRevision();
}
void getRevisionNumber() {
	if (SDL_GetRevisionNumber() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getNumVideoDrivers() {
	if (SDL_GetNumVideoDrivers() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
const(char)* getVideoDriver(int a) {
	return SDL_GetVideoDriver(a);
}
void videoInit(const(char)* a) {
	if (SDL_VideoInit(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void videoQuit() {
	return SDL_VideoQuit();
}
const(char)* getCurrentVideoDriver() {
	return SDL_GetCurrentVideoDriver();
}
void getNumVideoDisplays() {
	if (SDL_GetNumVideoDisplays() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
const(char)* getDisplayName(int a) {
	return SDL_GetDisplayName(a);
}
void getDisplayBounds(int a,SDL_Rect* b) {
	if (SDL_GetDisplayBounds(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getDisplayDPI(int a,float* b,float* c,float* d) {
	if (SDL_GetDisplayDPI(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getDisplayUsableBounds(int a,SDL_Rect* b) {
	if (SDL_GetDisplayUsableBounds(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getNumDisplayModes(int a) {
	if (SDL_GetNumDisplayModes(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getDisplayMode(int a,int b,SDL_DisplayMode* c) {
	if (SDL_GetDisplayMode(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getDesktopDisplayMode(int a,SDL_DisplayMode* b) {
	if (SDL_GetDesktopDisplayMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getCurrentDisplayMode(int a,SDL_DisplayMode* b) {
	if (SDL_GetCurrentDisplayMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_DisplayMode* getClosestDisplayMode(int a,const(SDL_DisplayMode)* b,SDL_DisplayMode* c) {
	return SDL_GetClosestDisplayMode(a,b,c);
}
void getWindowDisplayIndex(SDL_Window* a) {
	if (SDL_GetWindowDisplayIndex(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setWindowDisplayMode(SDL_Window* a,const(SDL_DisplayMode)* b) {
	if (SDL_SetWindowDisplayMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getWindowDisplayMode(SDL_Window* a,SDL_DisplayMode* b) {
	if (SDL_GetWindowDisplayMode(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
Uint32 getWindowPixelFormat(SDL_Window* a) {
	return SDL_GetWindowPixelFormat(a);
}
Refer!SDL_Window* createWindow(const(char)* a,int b,int c,int d,int e,SDL_WindowFlags f) {
	auto ptr = SDL_CreateWindow(a,b,c,d,e,f);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyWindow)(ptr);
	}
}
Refer!SDL_Window* createWindowFrom(const(void)* a) {
	auto ptr = SDL_CreateWindowFrom(a);
	if (ptr is null) {
		throw new SDLError(SDL_GetError());
	}
	else {
		return makeRefer!(SDL_DestroyWindow)(ptr);
	}
}
Uint32 getWindowID(SDL_Window* a) {
	return SDL_GetWindowID(a);
}
SDL_Window* getWindowFromID(Uint32 a) {
	return SDL_GetWindowFromID(a);
}
SDL_WindowFlags getWindowFlags(SDL_Window* a) {
	return SDL_GetWindowFlags(a);
}
void setWindowTitle(SDL_Window* a,const(char)* b) {
	return SDL_SetWindowTitle(a,b);
}
const(char)* getWindowTitle(SDL_Window* a) {
	return SDL_GetWindowTitle(a);
}
void setWindowIcon(SDL_Window* a,SDL_Surface* b) {
	return SDL_SetWindowIcon(a,b);
}
void* setWindowData(SDL_Window* a,const(char)* b,void* c) {
	return SDL_SetWindowData(a,b,c);
}
void* getWindowData(SDL_Window* a,const(char)* b) {
	return SDL_GetWindowData(a,b);
}
void setWindowPosition(SDL_Window* a,int b,int c) {
	return SDL_SetWindowPosition(a,b,c);
}
void getWindowPosition(SDL_Window* a,int* b,int* c) {
	return SDL_GetWindowPosition(a,b,c);
}
void setWindowSize(SDL_Window* a,int b,int c) {
	return SDL_SetWindowSize(a,b,c);
}
void getWindowSize(SDL_Window* a,int* b,int* c) {
	return SDL_GetWindowSize(a,b,c);
}
void getWindowBordersSize(SDL_Window* a,int* b,int* c,int* d,int* e) {
	if (SDL_GetWindowBordersSize(a,b,c,d,e) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setWindowMinimumSize(SDL_Window* a,int b,int c) {
	return SDL_SetWindowMinimumSize(a,b,c);
}
void getWindowMinimumSize(SDL_Window* a,int* b,int* c) {
	return SDL_GetWindowMinimumSize(a,b,c);
}
void setWindowMaximumSize(SDL_Window* a,int b,int c) {
	return SDL_SetWindowMaximumSize(a,b,c);
}
void getWindowMaximumSize(SDL_Window* a,int* b,int* c) {
	return SDL_GetWindowMaximumSize(a,b,c);
}
void setWindowBordered(SDL_Window* a,SDL_bool b) {
	return SDL_SetWindowBordered(a,b);
}
void setWindowResizable(SDL_Window* a,SDL_bool b) {
	return SDL_SetWindowResizable(a,b);
}
void showWindow(SDL_Window* a) {
	return SDL_ShowWindow(a);
}
void hideWindow(SDL_Window* a) {
	return SDL_HideWindow(a);
}
void raiseWindow(SDL_Window* a) {
	return SDL_RaiseWindow(a);
}
void maximizeWindow(SDL_Window* a) {
	return SDL_MaximizeWindow(a);
}
void minimizeWindow(SDL_Window* a) {
	return SDL_MinimizeWindow(a);
}
void restoreWindow(SDL_Window* a) {
	return SDL_RestoreWindow(a);
}
void setWindowFullscreen(SDL_Window* a,Uint32 b) {
	if (SDL_SetWindowFullscreen(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_Surface* getWindowSurface(SDL_Window* a) {
	return SDL_GetWindowSurface(a);
}
void updateWindowSurface(SDL_Window* a) {
	if (SDL_UpdateWindowSurface(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void updateWindowSurfaceRects(SDL_Window* a,SDL_Rect* b,int c) {
	if (SDL_UpdateWindowSurfaceRects(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setWindowGrab(SDL_Window* a,SDL_bool b) {
	return SDL_SetWindowGrab(a,b);
}
SDL_bool getWindowGrab(SDL_Window* a) {
	return SDL_GetWindowGrab(a);
}
SDL_Window* getGrabbedWindow() {
	return SDL_GetGrabbedWindow();
}
void setWindowBrightness(SDL_Window* a,float b) {
	if (SDL_SetWindowBrightness(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
float getWindowBrightness(SDL_Window* a) {
	return SDL_GetWindowBrightness(a);
}
void setWindowOpacity(SDL_Window* a,float b) {
	if (SDL_SetWindowOpacity(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getWindowOpacity(SDL_Window* a,float* b) {
	if (SDL_GetWindowOpacity(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setWindowModalFor(SDL_Window* a,SDL_Window* b) {
	if (SDL_SetWindowModalFor(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setWindowInputFocus(SDL_Window* a) {
	if (SDL_SetWindowInputFocus(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setWindowGammaRamp(SDL_Window* a,const(Uint16)* b,const(Uint16)* c,const(Uint16)* d) {
	if (SDL_SetWindowGammaRamp(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void getWindowGammaRamp(SDL_Window* a,Uint16* b,Uint16* c,Uint16* d) {
	if (SDL_GetWindowGammaRamp(a,b,c,d) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void setWindowHitTest(SDL_Window* a,SDL_HitTest b,void* c) {
	if (SDL_SetWindowHitTest(a,b,c) != 0) {
		throw new SDLError(SDL_GetError());
	}
}

SDL_bool isScreenSaverEnabled() {
	return SDL_IsScreenSaverEnabled();
}
void enableScreenSaver() {
	return SDL_EnableScreenSaver();
}
void disableScreenSaver() {
	return SDL_DisableScreenSaver();
}
void gLLoadLibrary(const(char)* a) {
	if (SDL_GL_LoadLibrary(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void* gLGetProcAddress(const(char)* a) {
	return SDL_GL_GetProcAddress(a);
}
void gLUnloadLibrary() {
	return SDL_GL_UnloadLibrary();
}
SDL_bool gLExtensionSupported(const(char)* a) {
	return SDL_GL_ExtensionSupported(a);
}
void gLResetAttributes() {
	return SDL_GL_ResetAttributes();
}
void gLSetAttribute(SDL_GLattr a,int b) {
	if (SDL_GL_SetAttribute(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void gLGetAttribute(SDL_GLattr a,int* b) {
	if (SDL_GL_GetAttribute(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_GLContext gLCreateContext(SDL_Window* a) {
	return SDL_GL_CreateContext(a);
}
void gLMakeCurrent(SDL_Window* a,SDL_GLContext b) {
	if (SDL_GL_MakeCurrent(a,b) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
SDL_Window* gLGetCurrentWindow() {
	return SDL_GL_GetCurrentWindow();
}
SDL_GLContext gLGetCurrentContext() {
	return SDL_GL_GetCurrentContext();
}
void gLGetDrawableSize(SDL_Window* a,int* b,int* c) {
	return SDL_GL_GetDrawableSize(a,b,c);
}
void gLSetSwapInterval(int a) {
	if (SDL_GL_SetSwapInterval(a) != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void gLGetSwapInterval() {
	if (SDL_GL_GetSwapInterval() != 0) {
		throw new SDLError(SDL_GetError());
	}
}
void gLSwapWindow(SDL_Window* a) {
	return SDL_GL_SwapWindow(a);
}
void gLDeleteContext(SDL_GLContext a) {
	return SDL_GL_DeleteContext(a);
}
