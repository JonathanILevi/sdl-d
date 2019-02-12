module sdld._sdl_types;
import derelict.sdl2.sdl
import sdld._sdl_err,sdld._sdl_helpers;
alias version	= SDL_version;
enum : Uint8 {
	SDL_MAJOR_VERSION = 2,
	SDL_MINOR_VERSION = 0,
	SDL_PATCHLEVEL = 5,
}

enum Bool : SDL_bool {
	false	= SDL_FALSE	,
	true	= SDL_TRUE	,
}
enum : Uint32 {
	SDL_INIT_TIMER = 0x00000001,
	SDL_INIT_AUDIO = 0x00000010,
	SDL_INIT_VIDEO = 0x00000020,
	SDL_INIT_JOYSTICK = 0x00000200,
	SDL_INIT_HAPTIC = 0x00001000,
	SDL_INIT_GAMECONTROLLER = 0x00002000,
	SDL_INIT_EVENTS = 0x00004000,
	SDL_INIT_NOPARACHUTE = 0x00100000,
	SDL_INIT_EVERYTHING =
	SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO |
	SDL_INIT_EVENTS | SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC |
	SDL_INIT_GAMECONTROLLER
}

enum AssertState : Uint32 {
	retry	= SDL_ASSERTION_RETRY	,
	break	= SDL_ASSERTION_BREAK	,
	abort	= SDL_ASSERTION_ABORT	,
	ignore	= SDL_ASSERTION_IGNORE	,
	alwaysIgnore	= SDL_ASSERTION_ALWAYS_IGNORE	,
}
alias AssertData	= SDL_AssertData;
enum AudioMask : Uint16 {
	bitsize	= SDL_AUDIO_MASK_BITSIZE	,
	datatype	= SDL_AUDIO_MASK_DATATYPE	,
	endian	= SDL_AUDIO_MASK_ENDIAN	,
	signed	= SDL_AUDIO_MASK_SIGNED	,
}
enum AudioFormat : Uint16 {
	u8	= AUDIO_U8	,
	s8	= AUDIO_S8	,
	u16lsb	= AUDIO_U16LSB	,
	s16lsb	= AUDIO_S16LSB	,
	u16msb	= AUDIO_U16MSB	,
	s16msb	= AUDIO_S16MSB	,
	u16	= AUDIO_U16	,
	s16	= AUDIO_S16	,
	s32lsb	= AUDIO_S32LSB	,
	s32msb	= AUDIO_S32MSB	,
	s32	= AUDIO_S32	,
	f32lsb	= AUDIO_F32LSB	,
	f32msb	= AUDIO_F32MSB	,
	f32	= AUDIO_F32	,
}
enum {
	SDL_AUDIO_ALLOW_FREQUENCY_CHANGE = 0x00000001,
	SDL_AUDIO_ALLOW_FORMAT_CHANGE = 0x00000002,
	SDL_AUDIO_ALLOW_CHANNELS_CHANGE = 0x00000004,
	SDL_AUDIO_ALLOW_ANY_CHANGE = (SDL_AUDIO_ALLOW_FREQUENCY_CHANGE|SDL_AUDIO_ALLOW_FORMAT_CHANGE|SDL_AUDIO_ALLOW_CHANNELS_CHANGE),
}

alias AudioSpec	= SDL_AudioSpec;
alias AudioCVT	= SDL_AudioCVT;
enum AudioStatus : SDL_AudioStatus {
	stopped	= SDL_AUDIO_STOPPED	,
	playing	= SDL_AUDIO_PLAYING	,
	paused	= SDL_AUDIO_PAUSED	,
}
enum BlendMode : SDL_BlendMode {
	none	= SDL_BLENDMODE_NONE	,
	blend	= SDL_BLENDMODE_BLEND	,
	add	= SDL_BLENDMODE_ADD	,
	mod	= SDL_BLENDMODE_MOD	,
}
enum {
	SDL_RELEASED = 0,
	SDL_PRESSED = 1,
}

enum EventType : SDL_EventType {
	firstevent	= SDL_FIRSTEVENT	,
	quit	= SDL_QUIT	,
	appTerminating	= SDL_APP_TERMINATING	,
	appLowmemory	= SDL_APP_LOWMEMORY	,
	appWillenterbackground	= SDL_APP_WILLENTERBACKGROUND	,
	appDidenterbackground	= SDL_APP_DIDENTERBACKGROUND	,
	appWillenterforeground	= SDL_APP_WILLENTERFOREGROUND	,
	appDidenterforeground	= SDL_APP_DIDENTERFOREGROUND	,
	windowevent	= SDL_WINDOWEVENT	,
	syswmevent	= SDL_SYSWMEVENT	,
	keydown	= SDL_KEYDOWN	,
	keyup	= SDL_KEYUP	,
	textediting	= SDL_TEXTEDITING	,
	textinput	= SDL_TEXTINPUT	,
	keymapchanged	= SDL_KEYMAPCHANGED	,
	mousemotion	= SDL_MOUSEMOTION	,
	mousebuttondown	= SDL_MOUSEBUTTONDOWN	,
	mousebuttonup	= SDL_MOUSEBUTTONUP	,
	mousewheel	= SDL_MOUSEWHEEL	,
	joyaxismotion	= SDL_JOYAXISMOTION	,
	joyballmotion	= SDL_JOYBALLMOTION	,
	joyhatmotion	= SDL_JOYHATMOTION	,
	joybuttondown	= SDL_JOYBUTTONDOWN	,
	joybuttonup	= SDL_JOYBUTTONUP	,
	joydeviceadded	= SDL_JOYDEVICEADDED	,
	joydeviceremoved	= SDL_JOYDEVICEREMOVED	,
	controlleraxismotion	= SDL_CONTROLLERAXISMOTION	,
	controllerbuttondown	= SDL_CONTROLLERBUTTONDOWN	,
	controllerbuttonup	= SDL_CONTROLLERBUTTONUP	,
	controllerdeviceadded	= SDL_CONTROLLERDEVICEADDED	,
	controllerdeviceremoved	= SDL_CONTROLLERDEVICEREMOVED	,
	controllerdeviceremapped	= SDL_CONTROLLERDEVICEREMAPPED	,
	fingerdown	= SDL_FINGERDOWN	,
	fingerup	= SDL_FINGERUP	,
	fingermotion	= SDL_FINGERMOTION	,
	dollargesture	= SDL_DOLLARGESTURE	,
	dollarrecord	= SDL_DOLLARRECORD	,
	multigesture	= SDL_MULTIGESTURE	,
	clipboardupdate	= SDL_CLIPBOARDUPDATE	,
	dropfile	= SDL_DROPFILE	,
	droptext	= SDL_DROPTEXT	,
	dropbegin	= SDL_DROPBEGIN	,
	dropcomplete	= SDL_DROPCOMPLETE	,
	audiodeviceadded	= SDL_AUDIODEVICEADDED	,
	audiodeviceremoved	= SDL_AUDIODEVICEREMOVED	,
	renderTargetsReset	= SDL_RENDER_TARGETS_RESET	,
	renderDeviceReset	= SDL_RENDER_DEVICE_RESET	,
	userevent	= SDL_USEREVENT	,
	lastevent	= SDL_LASTEVENT	,
}
alias CommonEvent	= SDL_CommonEvent;
alias WindowEvent	= SDL_WindowEvent;
alias KeyboardEvent	= SDL_KeyboardEvent;
alias TextEditingEvent	= SDL_TextEditingEvent;
alias TextInputEvent	= SDL_TextInputEvent;
alias MouseMotionEvent	= SDL_MouseMotionEvent;
alias MouseButtonEvent	= SDL_MouseButtonEvent;
alias MouseWheelEvent	= SDL_MouseWheelEvent;
alias JoyAxisEvent	= SDL_JoyAxisEvent;
alias JoyBallEvent	= SDL_JoyBallEvent;
alias JoyHatEvent	= SDL_JoyHatEvent;
alias JoyButtonEvent	= SDL_JoyButtonEvent;
alias JoyDeviceEvent	= SDL_JoyDeviceEvent;
alias ControllerAxisEvent	= SDL_ControllerAxisEvent;
alias ControllerButtonEvent	= SDL_ControllerButtonEvent;
alias ControllerDeviceEvent	= SDL_ControllerDeviceEvent;
alias AudioDeviceEvent	= SDL_AudioDeviceEvent;
alias TouchFingerEvent	= SDL_TouchFingerEvent;
alias MultiGestureEvent	= SDL_MultiGestureEvent;
alias DollarGestureEvent	= SDL_DollarGestureEvent;
alias DropEvent	= SDL_DropEvent;
alias QuitEvent	= SDL_QuitEvent;
alias OSEvent	= SDL_OSEvent;
alias UserEvent	= SDL_UserEvent;
alias SysWMEvent	= SDL_SysWMEvent;
enum Eventaction : SDL_eventaction {
	addevent	= SDL_ADDEVENT	,
	peekevent	= SDL_PEEKEVENT	,
	getevent	= SDL_GETEVENT	,
}
enum {
	SDL_QUERY = -1,
	SDL_IGNORE = 0,
	SDL_DISABLE = 0,
	SDL_ENABLE = 1,
}

alias GameController	= Refer!SDL_GameController;
enum GameControllerBindType : SDL_GameControllerBindType {
	none	= SDL_CONTROLLER_BINDTYPE_NONE	,
	button	= SDL_CONTROLLER_BINDTYPE_BUTTON	,
	axis	= SDL_CONTROLLER_BINDTYPE_AXIS	,
	hat	= SDL_CONTROLLER_BINDTYPE_HAT	,
}
alias GameControllerButtonBind	= SDL_GameControllerButtonBind;
alias hat	= hat;
enum GameControllerAxis : SDL_GameControllerAxis {
	invalid	= SDL_CONTROLLER_AXIS_INVALID	,
	leftx	= SDL_CONTROLLER_AXIS_LEFTX	,
	lefty	= SDL_CONTROLLER_AXIS_LEFTY	,
	rightx	= SDL_CONTROLLER_AXIS_RIGHTX	,
	righty	= SDL_CONTROLLER_AXIS_RIGHTY	,
	triggerleft	= SDL_CONTROLLER_AXIS_TRIGGERLEFT	,
	triggerright	= SDL_CONTROLLER_AXIS_TRIGGERRIGHT	,
	max	= SDL_CONTROLLER_AXIS_MAX	,
}
enum GameControllerButton : SDL_GameControllerButton {
	invalid	= SDL_CONTROLLER_BUTTON_INVALID	,
	a	= SDL_CONTROLLER_BUTTON_A	,
	b	= SDL_CONTROLLER_BUTTON_B	,
	x	= SDL_CONTROLLER_BUTTON_X	,
	y	= SDL_CONTROLLER_BUTTON_Y	,
	back	= SDL_CONTROLLER_BUTTON_BACK	,
	guide	= SDL_CONTROLLER_BUTTON_GUIDE	,
	start	= SDL_CONTROLLER_BUTTON_START	,
	leftstick	= SDL_CONTROLLER_BUTTON_LEFTSTICK	,
	rightstick	= SDL_CONTROLLER_BUTTON_RIGHTSTICK	,
	leftshoulder	= SDL_CONTROLLER_BUTTON_LEFTSHOULDER	,
	rightshoulder	= SDL_CONTROLLER_BUTTON_RIGHTSHOULDER	,
	dpadUp	= SDL_CONTROLLER_BUTTON_DPAD_UP	,
	dpadDown	= SDL_CONTROLLER_BUTTON_DPAD_DOWN	,
	dpadLeft	= SDL_CONTROLLER_BUTTON_DPAD_LEFT	,
	dpadRight	= SDL_CONTROLLER_BUTTON_DPAD_RIGHT	,
	max	= SDL_CONTROLLER_BUTTON_MAX	,
}
alias Haptic	= Refer!SDL_Haptic;
enum DHapticFlags : Uint16 {
	constant	= SDL_HAPTIC_CONSTANT	,
	sine	= SDL_HAPTIC_SINE	,
	leftright	= SDL_HAPTIC_LEFTRIGHT	,
	triangle	= SDL_HAPTIC_TRIANGLE	,
	sawtoothup	= SDL_HAPTIC_SAWTOOTHUP	,
	sawtoothdown	= SDL_HAPTIC_SAWTOOTHDOWN	,
	ramp	= SDL_HAPTIC_RAMP	,
	spring	= SDL_HAPTIC_SPRING	,
	damper	= SDL_HAPTIC_DAMPER	,
	inertia	= SDL_HAPTIC_INERTIA	,
	friction	= SDL_HAPTIC_FRICTION	,
	custom	= SDL_HAPTIC_CUSTOM	,
	gain	= SDL_HAPTIC_GAIN	,
	autocenter	= SDL_HAPTIC_AUTOCENTER	,
	status	= SDL_HAPTIC_STATUS	,
	pause	= SDL_HAPTIC_PAUSE	,
	polar	= SDL_HAPTIC_POLAR	,
	cartesian	= SDL_HAPTIC_CARTESIAN	,
	spherical	= SDL_HAPTIC_SPHERICAL	,
}
alias HapticDirection	= SDL_HapticDirection;
alias HapticConstant	= SDL_HapticConstant;
alias HapticPeriodic	= SDL_HapticPeriodic;
alias HapticCondition	= SDL_HapticCondition;
alias HapticRamp	= SDL_HapticRamp;
alias HapticLeftRight	= SDL_HapticLeftRight;
alias HapticCustom	= SDL_HapticCustom;
enum HintPriority : SDL_HintPriority {
	default	= SDL_HINT_DEFAULT	,
	normal	= SDL_HINT_NORMAL	,
	override	= SDL_HINT_OVERRIDE	,
}
alias Joystick	= Refer!SDL_Joystick;
alias JoystickGUID	= SDL_JoystickGUID;
enum JoystickPowerLevel : SDL_JoystickPowerLevel {
	unknown	= SDL_JOYSTICK_POWER_UNKNOWN	,
	empty	= SDL_JOYSTICK_POWER_EMPTY	,
	low	= SDL_JOYSTICK_POWER_LOW	,
	medium	= SDL_JOYSTICK_POWER_MEDIUM	,
	full	= SDL_JOYSTICK_POWER_FULL	,
	wired	= SDL_JOYSTICK_POWER_WIRED	,
	max	= SDL_JOYSTICK_POWER_MAX	,
}
enum : Uint8 {
	SDL_HAT_CENTERED = 0x00,
	SDL_HAT_UP = 0x01,
	SDL_HAT_RIGHT = 0x02,
	SDL_HAT_DOWN = 0x04,
	SDL_HAT_LEFT = 0x08,
	SDL_HAT_RIGHTUP = (SDL_HAT_RIGHT|SDL_HAT_UP),
	SDL_HAT_RIGHTDOWN = (SDL_HAT_RIGHT|SDL_HAT_DOWN),
	SDL_HAT_LEFTUP = (SDL_HAT_LEFT|SDL_HAT_UP),
	SDL_HAT_LEFTDOWN = (SDL_HAT_LEFT|SDL_HAT_DOWN),
}

alias Keysym	= SDL_Keysym;
enum MessageBoxFlags : SDL_MessageBoxFlags {
	error	= SDL_MESSAGEBOX_ERROR	,
	warning	= SDL_MESSAGEBOX_WARNING	,
	information	= SDL_MESSAGEBOX_INFORMATION	,
}
enum MessageBoxButtonFlags : SDL_MessageBoxButtonFlags {
	returnkeyDefault	= SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT	,
	escapekeyDefault	= SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT	,
}
alias MessageBoxButtonData	= SDL_MessageBoxButtonData;
alias MessageBoxColor	= SDL_MessageBoxColor;
enum MessageBoxColorType : SDL_MessageBoxColorType {
	background	= SDL_MESSAGEBOX_COLOR_BACKGROUND	,
	text	= SDL_MESSAGEBOX_COLOR_TEXT	,
	buttonBorder	= SDL_MESSAGEBOX_COLOR_BUTTON_BORDER	,
	buttonBackground	= SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND	,
	buttonSelected	= SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED	,
	max	= SDL_MESSAGEBOX_COLOR_MAX	,
}
alias MessageBoxColorScheme	= SDL_MessageBoxColorScheme;
alias MessageBoxData	= SDL_MessageBoxData;
enum Scancode : SDL_Scancode {
	scancodeUnknown	= SDL_SCANCODE_UNKNOWN	,
	scancodeA	= SDL_SCANCODE_A	,
	scancodeB	= SDL_SCANCODE_B	,
	scancodeC	= SDL_SCANCODE_C	,
	scancodeD	= SDL_SCANCODE_D	,
	scancodeE	= SDL_SCANCODE_E	,
	scancodeF	= SDL_SCANCODE_F	,
	scancodeG	= SDL_SCANCODE_G	,
	scancodeH	= SDL_SCANCODE_H	,
	scancodeI	= SDL_SCANCODE_I	,
	scancodeJ	= SDL_SCANCODE_J	,
	scancodeK	= SDL_SCANCODE_K	,
	scancodeL	= SDL_SCANCODE_L	,
	scancodeM	= SDL_SCANCODE_M	,
	scancodeN	= SDL_SCANCODE_N	,
	scancodeO	= SDL_SCANCODE_O	,
	scancodeP	= SDL_SCANCODE_P	,
	scancodeQ	= SDL_SCANCODE_Q	,
	scancodeR	= SDL_SCANCODE_R	,
	scancodeS	= SDL_SCANCODE_S	,
	scancodeT	= SDL_SCANCODE_T	,
	scancodeU	= SDL_SCANCODE_U	,
	scancodeV	= SDL_SCANCODE_V	,
	scancodeW	= SDL_SCANCODE_W	,
	scancodeX	= SDL_SCANCODE_X	,
	scancodeY	= SDL_SCANCODE_Y	,
	scancodeZ	= SDL_SCANCODE_Z	,
	scancode1	= SDL_SCANCODE_1	,
	scancode2	= SDL_SCANCODE_2	,
	scancode3	= SDL_SCANCODE_3	,
	scancode4	= SDL_SCANCODE_4	,
	scancode5	= SDL_SCANCODE_5	,
	scancode6	= SDL_SCANCODE_6	,
	scancode7	= SDL_SCANCODE_7	,
	scancode8	= SDL_SCANCODE_8	,
	scancode9	= SDL_SCANCODE_9	,
	scancode0	= SDL_SCANCODE_0	,
	scancodeReturn	= SDL_SCANCODE_RETURN	,
	scancodeEscape	= SDL_SCANCODE_ESCAPE	,
	scancodeBackspace	= SDL_SCANCODE_BACKSPACE	,
	scancodeTab	= SDL_SCANCODE_TAB	,
	scancodeSpace	= SDL_SCANCODE_SPACE	,
	scancodeMinus	= SDL_SCANCODE_MINUS	,
	scancodeEquals	= SDL_SCANCODE_EQUALS	,
	scancodeLeftbracket	= SDL_SCANCODE_LEFTBRACKET	,
	scancodeRightbracket	= SDL_SCANCODE_RIGHTBRACKET	,
	scancodeBackslash	= SDL_SCANCODE_BACKSLASH	,
	scancodeNonushash	= SDL_SCANCODE_NONUSHASH	,
	scancodeSemicolon	= SDL_SCANCODE_SEMICOLON	,
	scancodeApostrophe	= SDL_SCANCODE_APOSTROPHE	,
	scancodeGrave	= SDL_SCANCODE_GRAVE	,
	scancodeComma	= SDL_SCANCODE_COMMA	,
	scancodePeriod	= SDL_SCANCODE_PERIOD	,
	scancodeSlash	= SDL_SCANCODE_SLASH	,
	scancodeCapslock	= SDL_SCANCODE_CAPSLOCK	,
	scancodeF1	= SDL_SCANCODE_F1	,
	scancodeF2	= SDL_SCANCODE_F2	,
	scancodeF3	= SDL_SCANCODE_F3	,
	scancodeF4	= SDL_SCANCODE_F4	,
	scancodeF5	= SDL_SCANCODE_F5	,
	scancodeF6	= SDL_SCANCODE_F6	,
	scancodeF7	= SDL_SCANCODE_F7	,
	scancodeF8	= SDL_SCANCODE_F8	,
	scancodeF9	= SDL_SCANCODE_F9	,
	scancodeF10	= SDL_SCANCODE_F10	,
	scancodeF11	= SDL_SCANCODE_F11	,
	scancodeF12	= SDL_SCANCODE_F12	,
	scancodePrintscreen	= SDL_SCANCODE_PRINTSCREEN	,
	scancodeScrolllock	= SDL_SCANCODE_SCROLLLOCK	,
	scancodePause	= SDL_SCANCODE_PAUSE	,
	scancodeInsert	= SDL_SCANCODE_INSERT	,
	scancodeHome	= SDL_SCANCODE_HOME	,
	scancodePageup	= SDL_SCANCODE_PAGEUP	,
	scancodeDelete	= SDL_SCANCODE_DELETE	,
	scancodeEnd	= SDL_SCANCODE_END	,
	scancodePagedown	= SDL_SCANCODE_PAGEDOWN	,
	scancodeRight	= SDL_SCANCODE_RIGHT	,
	scancodeLeft	= SDL_SCANCODE_LEFT	,
	scancodeDown	= SDL_SCANCODE_DOWN	,
	scancodeUp	= SDL_SCANCODE_UP	,
	scancodeNumlockclear	= SDL_SCANCODE_NUMLOCKCLEAR	,
	scancodeKpDivide	= SDL_SCANCODE_KP_DIVIDE	,
	scancodeKpMultiply	= SDL_SCANCODE_KP_MULTIPLY	,
	scancodeKpMinus	= SDL_SCANCODE_KP_MINUS	,
	scancodeKpPlus	= SDL_SCANCODE_KP_PLUS	,
	scancodeKpEnter	= SDL_SCANCODE_KP_ENTER	,
	scancodeKp1	= SDL_SCANCODE_KP_1	,
	scancodeKp2	= SDL_SCANCODE_KP_2	,
	scancodeKp3	= SDL_SCANCODE_KP_3	,
	scancodeKp4	= SDL_SCANCODE_KP_4	,
	scancodeKp5	= SDL_SCANCODE_KP_5	,
	scancodeKp6	= SDL_SCANCODE_KP_6	,
	scancodeKp7	= SDL_SCANCODE_KP_7	,
	scancodeKp8	= SDL_SCANCODE_KP_8	,
	scancodeKp9	= SDL_SCANCODE_KP_9	,
	scancodeKp0	= SDL_SCANCODE_KP_0	,
	scancodeKpPeriod	= SDL_SCANCODE_KP_PERIOD	,
	scancodeNonusbackslash	= SDL_SCANCODE_NONUSBACKSLASH	,
	scancodeApplication	= SDL_SCANCODE_APPLICATION	,
	scancodePower	= SDL_SCANCODE_POWER	,
	scancodeKpEquals	= SDL_SCANCODE_KP_EQUALS	,
	scancodeF13	= SDL_SCANCODE_F13	,
	scancodeF14	= SDL_SCANCODE_F14	,
	scancodeF15	= SDL_SCANCODE_F15	,
	scancodeF16	= SDL_SCANCODE_F16	,
	scancodeF17	= SDL_SCANCODE_F17	,
	scancodeF18	= SDL_SCANCODE_F18	,
	scancodeF19	= SDL_SCANCODE_F19	,
	scancodeF20	= SDL_SCANCODE_F20	,
	scancodeF21	= SDL_SCANCODE_F21	,
	scancodeF22	= SDL_SCANCODE_F22	,
	scancodeF23	= SDL_SCANCODE_F23	,
	scancodeF24	= SDL_SCANCODE_F24	,
	scancodeExecute	= SDL_SCANCODE_EXECUTE	,
	scancodeHelp	= SDL_SCANCODE_HELP	,
	scancodeMenu	= SDL_SCANCODE_MENU	,
	scancodeSelect	= SDL_SCANCODE_SELECT	,
	scancodeStop	= SDL_SCANCODE_STOP	,
	scancodeAgain	= SDL_SCANCODE_AGAIN	,
	scancodeUndo	= SDL_SCANCODE_UNDO	,
	scancodeCut	= SDL_SCANCODE_CUT	,
	scancodeCopy	= SDL_SCANCODE_COPY	,
	scancodePaste	= SDL_SCANCODE_PASTE	,
	scancodeFind	= SDL_SCANCODE_FIND	,
	scancodeMute	= SDL_SCANCODE_MUTE	,
	scancodeVolumeup	= SDL_SCANCODE_VOLUMEUP	,
	scancodeVolumedown	= SDL_SCANCODE_VOLUMEDOWN	,
	scancodeKpComma	= SDL_SCANCODE_KP_COMMA	,
	scancodeKpEqualsas400	= SDL_SCANCODE_KP_EQUALSAS400	,
	scancodeInternational1	= SDL_SCANCODE_INTERNATIONAL1	,
	scancodeInternational2	= SDL_SCANCODE_INTERNATIONAL2	,
	scancodeInternational3	= SDL_SCANCODE_INTERNATIONAL3	,
	scancodeInternational4	= SDL_SCANCODE_INTERNATIONAL4	,
	scancodeInternational5	= SDL_SCANCODE_INTERNATIONAL5	,
	scancodeInternational6	= SDL_SCANCODE_INTERNATIONAL6	,
	scancodeInternational7	= SDL_SCANCODE_INTERNATIONAL7	,
	scancodeInternational8	= SDL_SCANCODE_INTERNATIONAL8	,
	scancodeInternational9	= SDL_SCANCODE_INTERNATIONAL9	,
	scancodeLang1	= SDL_SCANCODE_LANG1	,
	scancodeLang2	= SDL_SCANCODE_LANG2	,
	scancodeLang3	= SDL_SCANCODE_LANG3	,
	scancodeLang4	= SDL_SCANCODE_LANG4	,
	scancodeLang5	= SDL_SCANCODE_LANG5	,
	scancodeLang6	= SDL_SCANCODE_LANG6	,
	scancodeLang7	= SDL_SCANCODE_LANG7	,
	scancodeLang8	= SDL_SCANCODE_LANG8	,
	scancodeLang9	= SDL_SCANCODE_LANG9	,
	scancodeAlterase	= SDL_SCANCODE_ALTERASE	,
	scancodeSysreq	= SDL_SCANCODE_SYSREQ	,
	scancodeCancel	= SDL_SCANCODE_CANCEL	,
	scancodeClear	= SDL_SCANCODE_CLEAR	,
	scancodePrior	= SDL_SCANCODE_PRIOR	,
	scancodeReturn2	= SDL_SCANCODE_RETURN2	,
	scancodeSeparator	= SDL_SCANCODE_SEPARATOR	,
	scancodeOut	= SDL_SCANCODE_OUT	,
	scancodeOper	= SDL_SCANCODE_OPER	,
	scancodeClearagain	= SDL_SCANCODE_CLEARAGAIN	,
	scancodeCrsel	= SDL_SCANCODE_CRSEL	,
	scancodeExsel	= SDL_SCANCODE_EXSEL	,
	scancodeKp00	= SDL_SCANCODE_KP_00	,
	scancodeKp000	= SDL_SCANCODE_KP_000	,
	scancodeThousandsseparator	= SDL_SCANCODE_THOUSANDSSEPARATOR	,
	scancodeDecimalseparator	= SDL_SCANCODE_DECIMALSEPARATOR	,
	scancodeCurrencyunit	= SDL_SCANCODE_CURRENCYUNIT	,
	scancodeCurrencysubunit	= SDL_SCANCODE_CURRENCYSUBUNIT	,
	scancodeKpLeftparen	= SDL_SCANCODE_KP_LEFTPAREN	,
	scancodeKpRightparen	= SDL_SCANCODE_KP_RIGHTPAREN	,
	scancodeKpLeftbrace	= SDL_SCANCODE_KP_LEFTBRACE	,
	scancodeKpRightbrace	= SDL_SCANCODE_KP_RIGHTBRACE	,
	scancodeKpTab	= SDL_SCANCODE_KP_TAB	,
	scancodeKpBackspace	= SDL_SCANCODE_KP_BACKSPACE	,
	scancodeKpA	= SDL_SCANCODE_KP_A	,
	scancodeKpB	= SDL_SCANCODE_KP_B	,
	scancodeKpC	= SDL_SCANCODE_KP_C	,
	scancodeKpD	= SDL_SCANCODE_KP_D	,
	scancodeKpE	= SDL_SCANCODE_KP_E	,
	scancodeKpF	= SDL_SCANCODE_KP_F	,
	scancodeKpXor	= SDL_SCANCODE_KP_XOR	,
	scancodeKpPower	= SDL_SCANCODE_KP_POWER	,
	scancodeKpPercent	= SDL_SCANCODE_KP_PERCENT	,
	scancodeKpLess	= SDL_SCANCODE_KP_LESS	,
	scancodeKpGreater	= SDL_SCANCODE_KP_GREATER	,
	scancodeKpAmpersand	= SDL_SCANCODE_KP_AMPERSAND	,
	scancodeKpDblampersand	= SDL_SCANCODE_KP_DBLAMPERSAND	,
	scancodeKpVerticalbar	= SDL_SCANCODE_KP_VERTICALBAR	,
	scancodeKpDblverticalbar	= SDL_SCANCODE_KP_DBLVERTICALBAR	,
	scancodeKpColon	= SDL_SCANCODE_KP_COLON	,
	scancodeKpHash	= SDL_SCANCODE_KP_HASH	,
	scancodeKpSpace	= SDL_SCANCODE_KP_SPACE	,
	scancodeKpAt	= SDL_SCANCODE_KP_AT	,
	scancodeKpExclam	= SDL_SCANCODE_KP_EXCLAM	,
	scancodeKpMemstore	= SDL_SCANCODE_KP_MEMSTORE	,
	scancodeKpMemrecall	= SDL_SCANCODE_KP_MEMRECALL	,
	scancodeKpMemclear	= SDL_SCANCODE_KP_MEMCLEAR	,
	scancodeKpMemadd	= SDL_SCANCODE_KP_MEMADD	,
	scancodeKpMemsubtract	= SDL_SCANCODE_KP_MEMSUBTRACT	,
	scancodeKpMemmultiply	= SDL_SCANCODE_KP_MEMMULTIPLY	,
	scancodeKpMemdivide	= SDL_SCANCODE_KP_MEMDIVIDE	,
	scancodeKpPlusminus	= SDL_SCANCODE_KP_PLUSMINUS	,
	scancodeKpClear	= SDL_SCANCODE_KP_CLEAR	,
	scancodeKpClearentry	= SDL_SCANCODE_KP_CLEARENTRY	,
	scancodeKpBinary	= SDL_SCANCODE_KP_BINARY	,
	scancodeKpOctal	= SDL_SCANCODE_KP_OCTAL	,
	scancodeKpDecimal	= SDL_SCANCODE_KP_DECIMAL	,
	scancodeKpHexadecimal	= SDL_SCANCODE_KP_HEXADECIMAL	,
	scancodeLctrl	= SDL_SCANCODE_LCTRL	,
	scancodeLshift	= SDL_SCANCODE_LSHIFT	,
	scancodeLalt	= SDL_SCANCODE_LALT	,
	scancodeLgui	= SDL_SCANCODE_LGUI	,
	scancodeRctrl	= SDL_SCANCODE_RCTRL	,
	scancodeRshift	= SDL_SCANCODE_RSHIFT	,
	scancodeRalt	= SDL_SCANCODE_RALT	,
	scancodeRgui	= SDL_SCANCODE_RGUI	,
	scancodeMode	= SDL_SCANCODE_MODE	,
	scancodeAudionext	= SDL_SCANCODE_AUDIONEXT	,
	scancodeAudioprev	= SDL_SCANCODE_AUDIOPREV	,
	scancodeAudiostop	= SDL_SCANCODE_AUDIOSTOP	,
	scancodeAudioplay	= SDL_SCANCODE_AUDIOPLAY	,
	scancodeAudiomute	= SDL_SCANCODE_AUDIOMUTE	,
	scancodeMediaselect	= SDL_SCANCODE_MEDIASELECT	,
	scancodeWww	= SDL_SCANCODE_WWW	,
	scancodeMail	= SDL_SCANCODE_MAIL	,
	scancodeCalculator	= SDL_SCANCODE_CALCULATOR	,
	scancodeComputer	= SDL_SCANCODE_COMPUTER	,
	scancodeAcSearch	= SDL_SCANCODE_AC_SEARCH	,
	scancodeAcHome	= SDL_SCANCODE_AC_HOME	,
	scancodeAcBack	= SDL_SCANCODE_AC_BACK	,
	scancodeAcForward	= SDL_SCANCODE_AC_FORWARD	,
	scancodeAcStop	= SDL_SCANCODE_AC_STOP	,
	scancodeAcRefresh	= SDL_SCANCODE_AC_REFRESH	,
	scancodeAcBookmarks	= SDL_SCANCODE_AC_BOOKMARKS	,
	scancodeBrightnessdown	= SDL_SCANCODE_BRIGHTNESSDOWN	,
	scancodeBrightnessup	= SDL_SCANCODE_BRIGHTNESSUP	,
	scancodeDisplayswitch	= SDL_SCANCODE_DISPLAYSWITCH	,
	scancodeKbdillumtoggle	= SDL_SCANCODE_KBDILLUMTOGGLE	,
	scancodeKbdillumdown	= SDL_SCANCODE_KBDILLUMDOWN	,
	scancodeKbdillumup	= SDL_SCANCODE_KBDILLUMUP	,
	scancodeEject	= SDL_SCANCODE_EJECT	,
	scancodeSleep	= SDL_SCANCODE_SLEEP	,
	scancodeApp1	= SDL_SCANCODE_APP1	,
	scancodeApp2	= SDL_SCANCODE_APP2	,
	numScancodes	= SDL_NUM_SCANCODES	,
}
enum Keycode : SDL_Keycode {
	kUnknown	= SDLK_UNKNOWN	,
	kReturn	= SDLK_RETURN	,
	kEscape	= SDLK_ESCAPE	,
	kBackspace	= SDLK_BACKSPACE	,
	kTab	= SDLK_TAB	,
	kSpace	= SDLK_SPACE	,
	kExclaim	= SDLK_EXCLAIM	,
	kQuotedbl	= SDLK_QUOTEDBL	,
	kHash	= SDLK_HASH	,
	kPercent	= SDLK_PERCENT	,
	kDollar	= SDLK_DOLLAR	,
	kAmpersand	= SDLK_AMPERSAND	,
	kQuote	= SDLK_QUOTE	,
	kLeftparen	= SDLK_LEFTPAREN	,
	kRightparen	= SDLK_RIGHTPAREN	,
	kAsterisk	= SDLK_ASTERISK	,
	kPlus	= SDLK_PLUS	,
	kComma	= SDLK_COMMA	,
	kMinus	= SDLK_MINUS	,
	kPeriod	= SDLK_PERIOD	,
	kSlash	= SDLK_SLASH	,
	k0	= SDLK_0	,
	k1	= SDLK_1	,
	k2	= SDLK_2	,
	k3	= SDLK_3	,
	k4	= SDLK_4	,
	k5	= SDLK_5	,
	k6	= SDLK_6	,
	k7	= SDLK_7	,
	k8	= SDLK_8	,
	k9	= SDLK_9	,
	kColon	= SDLK_COLON	,
	kSemicolon	= SDLK_SEMICOLON	,
	kLess	= SDLK_LESS	,
	kEquals	= SDLK_EQUALS	,
	kGreater	= SDLK_GREATER	,
	kQuestion	= SDLK_QUESTION	,
	kAt	= SDLK_AT	,
	kLeftbracket	= SDLK_LEFTBRACKET	,
	kBackslash	= SDLK_BACKSLASH	,
	kRightbracket	= SDLK_RIGHTBRACKET	,
	kCaret	= SDLK_CARET	,
	kUnderscore	= SDLK_UNDERSCORE	,
	kBackquote	= SDLK_BACKQUOTE	,
	kA	= SDLK_a	,
	kB	= SDLK_b	,
	kC	= SDLK_c	,
	kD	= SDLK_d	,
	kE	= SDLK_e	,
	kF	= SDLK_f	,
	kG	= SDLK_g	,
	kH	= SDLK_h	,
	kI	= SDLK_i	,
	kJ	= SDLK_j	,
	kK	= SDLK_k	,
	kL	= SDLK_l	,
	kM	= SDLK_m	,
	kN	= SDLK_n	,
	kO	= SDLK_o	,
	kP	= SDLK_p	,
	kQ	= SDLK_q	,
	kR	= SDLK_r	,
	kS	= SDLK_s	,
	kT	= SDLK_t	,
	kU	= SDLK_u	,
	kV	= SDLK_v	,
	kW	= SDLK_w	,
	kX	= SDLK_x	,
	kY	= SDLK_y	,
	kZ	= SDLK_z	,
	kCapslock	= SDLK_CAPSLOCK	,
	kF1	= SDLK_F1	,
	kF2	= SDLK_F2	,
	kF3	= SDLK_F3	,
	kF4	= SDLK_F4	,
	kF5	= SDLK_F5	,
	kF6	= SDLK_F6	,
	kF7	= SDLK_F7	,
	kF8	= SDLK_F8	,
	kF9	= SDLK_F9	,
	kF10	= SDLK_F10	,
	kF11	= SDLK_F11	,
	kF12	= SDLK_F12	,
	kPrintscreen	= SDLK_PRINTSCREEN	,
	kScrolllock	= SDLK_SCROLLLOCK	,
	kPause	= SDLK_PAUSE	,
	kInsert	= SDLK_INSERT	,
	kHome	= SDLK_HOME	,
	kPageup	= SDLK_PAGEUP	,
	kDelete	= SDLK_DELETE	,
	kEnd	= SDLK_END	,
	kPagedown	= SDLK_PAGEDOWN	,
	kRight	= SDLK_RIGHT	,
	kLeft	= SDLK_LEFT	,
	kDown	= SDLK_DOWN	,
	kUp	= SDLK_UP	,
	kNumlockclear	= SDLK_NUMLOCKCLEAR	,
	kKpDivide	= SDLK_KP_DIVIDE	,
	kKpMultiply	= SDLK_KP_MULTIPLY	,
	kKpMinus	= SDLK_KP_MINUS	,
	kKpPlus	= SDLK_KP_PLUS	,
	kKpEnter	= SDLK_KP_ENTER	,
	kKp1	= SDLK_KP_1	,
	kKp2	= SDLK_KP_2	,
	kKp3	= SDLK_KP_3	,
	kKp4	= SDLK_KP_4	,
	kKp5	= SDLK_KP_5	,
	kKp6	= SDLK_KP_6	,
	kKp7	= SDLK_KP_7	,
	kKp8	= SDLK_KP_8	,
	kKp9	= SDLK_KP_9	,
	kKp0	= SDLK_KP_0	,
	kKpPeriod	= SDLK_KP_PERIOD	,
	kApplication	= SDLK_APPLICATION	,
	kPower	= SDLK_POWER	,
	kKpEquals	= SDLK_KP_EQUALS	,
	kF13	= SDLK_F13	,
	kF14	= SDLK_F14	,
	kF15	= SDLK_F15	,
	kF16	= SDLK_F16	,
	kF17	= SDLK_F17	,
	kF18	= SDLK_F18	,
	kF19	= SDLK_F19	,
	kF20	= SDLK_F20	,
	kF21	= SDLK_F21	,
	kF22	= SDLK_F22	,
	kF23	= SDLK_F23	,
	kF24	= SDLK_F24	,
	kExecute	= SDLK_EXECUTE	,
	kHelp	= SDLK_HELP	,
	kMenu	= SDLK_MENU	,
	kSelect	= SDLK_SELECT	,
	kStop	= SDLK_STOP	,
	kAgain	= SDLK_AGAIN	,
	kUndo	= SDLK_UNDO	,
	kCut	= SDLK_CUT	,
	kCopy	= SDLK_COPY	,
	kPaste	= SDLK_PASTE	,
	kFind	= SDLK_FIND	,
	kMute	= SDLK_MUTE	,
	kVolumeup	= SDLK_VOLUMEUP	,
	kVolumedown	= SDLK_VOLUMEDOWN	,
	kKpComma	= SDLK_KP_COMMA	,
	kKpEqualsas400	= SDLK_KP_EQUALSAS400	,
	ScancodeToKeycode(sdlScancode.sdlScancodeKpEqualsas400)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_EQUALSAS400)	,
	kAlterase	= SDLK_ALTERASE	,
	kSysreq	= SDLK_SYSREQ	,
	kCancel	= SDLK_CANCEL	,
	kClear	= SDLK_CLEAR	,
	kPrior	= SDLK_PRIOR	,
	kReturn2	= SDLK_RETURN2	,
	kSeparator	= SDLK_SEPARATOR	,
	kOut	= SDLK_OUT	,
	kOper	= SDLK_OPER	,
	kClearagain	= SDLK_CLEARAGAIN	,
	kCrsel	= SDLK_CRSEL	,
	kExsel	= SDLK_EXSEL	,
	kKp00	= SDLK_KP_00	,
	kKp000	= SDLK_KP_000	,
	kThousandsseparator	= SDLK_THOUSANDSSEPARATOR	,
	ScancodeToKeycode(sdlScancode.sdlScancodeThousandsseparator)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_THOUSANDSSEPARATOR)	,
	kDecimalseparator	= SDLK_DECIMALSEPARATOR	,
	ScancodeToKeycode(sdlScancode.sdlScancodeDecimalseparator)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_DECIMALSEPARATOR)	,
	kCurrencyunit	= SDLK_CURRENCYUNIT	,
	kCurrencysubunit	= SDLK_CURRENCYSUBUNIT	,
	ScancodeToKeycode(sdlScancode.sdlScancodeCurrencysubunit)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CURRENCYSUBUNIT)	,
	kKpLeftparen	= SDLK_KP_LEFTPAREN	,
	kKpRightparen	= SDLK_KP_RIGHTPAREN	,
	kKpLeftbrace	= SDLK_KP_LEFTBRACE	,
	kKpRightbrace	= SDLK_KP_RIGHTBRACE	,
	kKpTab	= SDLK_KP_TAB	,
	kKpBackspace	= SDLK_KP_BACKSPACE	,
	kKpA	= SDLK_KP_A	,
	kKpB	= SDLK_KP_B	,
	kKpC	= SDLK_KP_C	,
	kKpD	= SDLK_KP_D	,
	kKpE	= SDLK_KP_E	,
	kKpF	= SDLK_KP_F	,
	kKpXor	= SDLK_KP_XOR	,
	kKpPower	= SDLK_KP_POWER	,
	kKpPercent	= SDLK_KP_PERCENT	,
	kKpLess	= SDLK_KP_LESS	,
	kKpGreater	= SDLK_KP_GREATER	,
	kKpAmpersand	= SDLK_KP_AMPERSAND	,
	kKpDblampersand	= SDLK_KP_DBLAMPERSAND	,
	ScancodeToKeycode(sdlScancode.sdlScancodeKpDblampersand)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_DBLAMPERSAND)	,
	kKpVerticalbar	= SDLK_KP_VERTICALBAR	,
	ScancodeToKeycode(sdlScancode.sdlScancodeKpVerticalbar)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_VERTICALBAR)	,
	kKpDblverticalbar	= SDLK_KP_DBLVERTICALBAR	,
	ScancodeToKeycode(sdlScancode.sdlScancodeKpDblverticalbar)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_DBLVERTICALBAR)	,
	kKpColon	= SDLK_KP_COLON	,
	kKpHash	= SDLK_KP_HASH	,
	kKpSpace	= SDLK_KP_SPACE	,
	kKpAt	= SDLK_KP_AT	,
	kKpExclam	= SDLK_KP_EXCLAM	,
	kKpMemstore	= SDLK_KP_MEMSTORE	,
	kKpMemrecall	= SDLK_KP_MEMRECALL	,
	kKpMemclear	= SDLK_KP_MEMCLEAR	,
	kKpMemadd	= SDLK_KP_MEMADD	,
	kKpMemsubtract	= SDLK_KP_MEMSUBTRACT	,
	ScancodeToKeycode(sdlScancode.sdlScancodeKpMemsubtract)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MEMSUBTRACT)	,
	kKpMemmultiply	= SDLK_KP_MEMMULTIPLY	,
	ScancodeToKeycode(sdlScancode.sdlScancodeKpMemmultiply)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MEMMULTIPLY)	,
	kKpMemdivide	= SDLK_KP_MEMDIVIDE	,
	kKpPlusminus	= SDLK_KP_PLUSMINUS	,
	kKpClear	= SDLK_KP_CLEAR	,
	kKpClearentry	= SDLK_KP_CLEARENTRY	,
	kKpBinary	= SDLK_KP_BINARY	,
	kKpOctal	= SDLK_KP_OCTAL	,
	kKpDecimal	= SDLK_KP_DECIMAL	,
	kKpHexadecimal	= SDLK_KP_HEXADECIMAL	,
	ScancodeToKeycode(sdlScancode.sdlScancodeKpHexadecimal)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_HEXADECIMAL)	,
	kLctrl	= SDLK_LCTRL	,
	kLshift	= SDLK_LSHIFT	,
	kLalt	= SDLK_LALT	,
	kLgui	= SDLK_LGUI	,
	kRctrl	= SDLK_RCTRL	,
	kRshift	= SDLK_RSHIFT	,
	kRalt	= SDLK_RALT	,
	kRgui	= SDLK_RGUI	,
	kMode	= SDLK_MODE	,
	kAudionext	= SDLK_AUDIONEXT	,
	kAudioprev	= SDLK_AUDIOPREV	,
	kAudiostop	= SDLK_AUDIOSTOP	,
	kAudioplay	= SDLK_AUDIOPLAY	,
	kAudiomute	= SDLK_AUDIOMUTE	,
	kMediaselect	= SDLK_MEDIASELECT	,
	kWww	= SDLK_WWW	,
	kMail	= SDLK_MAIL	,
	kCalculator	= SDLK_CALCULATOR	,
	kComputer	= SDLK_COMPUTER	,
	kAcSearch	= SDLK_AC_SEARCH	,
	kAcHome	= SDLK_AC_HOME	,
	kAcBack	= SDLK_AC_BACK	,
	kAcForward	= SDLK_AC_FORWARD	,
	kAcStop	= SDLK_AC_STOP	,
	kAcRefresh	= SDLK_AC_REFRESH	,
	kAcBookmarks	= SDLK_AC_BOOKMARKS	,
	kBrightnessdown	= SDLK_BRIGHTNESSDOWN	,
	ScancodeToKeycode(sdlScancode.sdlScancodeBrightnessdown)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_BRIGHTNESSDOWN)	,
	kBrightnessup	= SDLK_BRIGHTNESSUP	,
	kDisplayswitch	= SDLK_DISPLAYSWITCH	,
	kKbdillumtoggle	= SDLK_KBDILLUMTOGGLE	,
	ScancodeToKeycode(sdlScancode.sdlScancodeKbdillumtoggle)	= SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KBDILLUMTOGGLE)	,
	kKbdillumdown	= SDLK_KBDILLUMDOWN	,
	kKbdillumup	= SDLK_KBDILLUMUP	,
	kEject	= SDLK_EJECT	,
	kSleep	= SDLK_SLEEP	,
}
enum Keymod : SDL_Keymod {
	none	= KMOD_NONE	,
	lshift	= KMOD_LSHIFT	,
	rshift	= KMOD_RSHIFT	,
	lctrl	= KMOD_LCTRL	,
	rctrl	= KMOD_RCTRL	,
	lalt	= KMOD_LALT	,
	ralt	= KMOD_RALT	,
	lgui	= KMOD_LGUI	,
	rgui	= KMOD_RGUI	,
	num	= KMOD_NUM	,
	caps	= KMOD_CAPS	,
	mode	= KMOD_MODE	,
	reserved	= KMOD_RESERVED	,
	ctrl	= KMOD_CTRL	,
	shift	= KMOD_SHIFT	,
	alt	= KMOD_ALT	,
	gui	= KMOD_GUI	,
}
enum {
	SDL_LOG_CATEGORY_APPLICATION,
	SDL_LOG_CATEGORY_ERROR,
	SDL_LOG_CATEGORY_ASSERT,
	SDL_LOG_CATEGORY_SYSTEM,
	SDL_LOG_CATEGORY_AUDIO,
	SDL_LOG_CATEGORY_VIDEO,
	SDL_LOG_CATEGORY_RENDER,
	SDL_LOG_CATEGORY_INPUT,
	
	SDL_LOG_CATEGORY_RESERVED1,
	SDL_LOG_CATEGORY_RESERVED2,
	SDL_LOG_CATEGORY_RESERVED3,
	SDL_LOG_CATEGORY_RESERVED4,
	SDL_LOG_CATEGORY_RESERVED5,
	SDL_LOG_CATEGORY_RESERVED6,
	SDL_LOG_CATEGORY_RESERVED7,
	SDL_LOG_CATEGORY_RESERVED8,
	SDL_LOG_CATEGORY_RESERVED9,
	SDL_LOG_CATEGORY_RESERVED10,
	
	SDL_LOG_CATEGORY_CUSTOM
}

enum LogPriority : SDL_LogPriority {
	logPriorityVerbose	= SDL_LOG_PRIORITY_VERBOSE	,
	logPriorityDebug	= SDL_LOG_PRIORITY_DEBUG	,
	logPriorityInfo	= SDL_LOG_PRIORITY_INFO	,
	logPriorityWarn	= SDL_LOG_PRIORITY_WARN	,
	logPriorityError	= SDL_LOG_PRIORITY_ERROR	,
	logPriorityCritical	= SDL_LOG_PRIORITY_CRITICAL	,
	numLogPriorities	= SDL_NUM_LOG_PRIORITIES	,
}
alias Cursor	= Refer!SDL_Cursor;
enum SystemCursor : SDL_SystemCursor {
	systemCursorArrow	= SDL_SYSTEM_CURSOR_ARROW	,
	systemCursorIbeam	= SDL_SYSTEM_CURSOR_IBEAM	,
	systemCursorWait	= SDL_SYSTEM_CURSOR_WAIT	,
	systemCursorCrosshair	= SDL_SYSTEM_CURSOR_CROSSHAIR	,
	systemCursorWaitarrow	= SDL_SYSTEM_CURSOR_WAITARROW	,
	systemCursorSizenwse	= SDL_SYSTEM_CURSOR_SIZENWSE	,
	systemCursorSizenesw	= SDL_SYSTEM_CURSOR_SIZENESW	,
	systemCursorSizewe	= SDL_SYSTEM_CURSOR_SIZEWE	,
	systemCursorSizens	= SDL_SYSTEM_CURSOR_SIZENS	,
	systemCursorSizeall	= SDL_SYSTEM_CURSOR_SIZEALL	,
	systemCursorNo	= SDL_SYSTEM_CURSOR_NO	,
	systemCursorHand	= SDL_SYSTEM_CURSOR_HAND	,
	numSystemCursors	= SDL_NUM_SYSTEM_CURSORS	,
}
enum MouseWheelDirection : SDL_MouseWheelDirection {
	normal	= SDL_MOUSEWHEEL_NORMAL	,
	flipped	= SDL_MOUSEWHEEL_FLIPPED	,
}
enum DMouseButton : Uint8 {
	left	= SDL_BUTTON_LEFT	,
	middle	= SDL_BUTTON_MIDDLE	,
	right	= SDL_BUTTON_RIGHT	,
	x1	= SDL_BUTTON_X1	,
	x2	= SDL_BUTTON_X2	,
	lmask	= SDL_BUTTON_LMASK	,
	mmask	= SDL_BUTTON_MMASK	,
	rmask	= SDL_BUTTON_RMASK	,
	x1mask	= SDL_BUTTON_X1MASK	,
	x2mask	= SDL_BUTTON_X2MASK	,
}
enum {
	SDL_PIXELTYPE_UNKNOWN,
	SDL_PIXELTYPE_INDEX1,
	SDL_PIXELTYPE_INDEX4,
	SDL_PIXELTYPE_INDEX8,
	SDL_PIXELTYPE_PACKED8,
	SDL_PIXELTYPE_PACKED16,
	SDL_PIXELTYPE_PACKED32,
	SDL_PIXELTYPE_ARRAYU8,
	SDL_PIXELTYPE_ARRAYU16,
	SDL_PIXELTYPE_ARRAYU32,
	SDL_PIXELTYPE_ARRAYF16,
	SDL_PIXELTYPE_ARRAYF32
}

enum {
	SDL_BITMAPORDER_NONE,
	SDL_BITMAPORDER_4321,
	SDL_BITMAPORDER_1234
}

enum {
	SDL_PACKEDORDER_NONE,
	SDL_PACKEDORDER_XRGB,
	SDL_PACKEDORDER_RGBX,
	SDL_PACKEDORDER_ARGB,
	SDL_PACKEDORDER_RGBA,
	SDL_PACKEDORDER_XBGR,
	SDL_PACKEDORDER_BGRX,
	SDL_PACKEDORDER_ABGR,
	SDL_PACKEDORDER_BGRA
}

enum {
	SDL_ARRAYORDER_NONE,
	SDL_ARRAYORDER_RGB,
	SDL_ARRAYORDER_RGBA,
	SDL_ARRAYORDER_ARGB,
	SDL_ARRAYORDER_BGR,
	SDL_ARRAYORDER_BGRA,
	SDL_ARRAYORDER_ABGR
}

enum {
	SDL_PACKEDLAYOUT_NONE,
	SDL_PACKEDLAYOUT_332,
	SDL_PACKEDLAYOUT_4444,
	SDL_PACKEDLAYOUT_1555,
	SDL_PACKEDLAYOUT_5551,
	SDL_PACKEDLAYOUT_565,
	SDL_PACKEDLAYOUT_8888,
	SDL_PACKEDLAYOUT_2101010,
	SDL_PACKEDLAYOUT_1010102
}

enum {
	SDL_PIXELFORMAT_UNKNOWN,
	SDL_PIXELFORMAT_INDEX1LSB =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_INDEX1, SDL_BITMAPORDER_4321, 0,
	1, 0),
	SDL_PIXELFORMAT_INDEX1MSB =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_INDEX1, SDL_BITMAPORDER_1234, 0,
	1, 0),
	SDL_PIXELFORMAT_INDEX4LSB =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_INDEX4, SDL_BITMAPORDER_4321, 0,
	4, 0),
	SDL_PIXELFORMAT_INDEX4MSB =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_INDEX4, SDL_BITMAPORDER_1234, 0,
	4, 0),
	SDL_PIXELFORMAT_INDEX8 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_INDEX8, 0, 0, 8, 1),
	SDL_PIXELFORMAT_RGB332 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED8, SDL_PACKEDORDER_XRGB,
	SDL_PACKEDLAYOUT_332, 8, 1),
	SDL_PIXELFORMAT_RGB444 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_XRGB,
	SDL_PACKEDLAYOUT_4444, 12, 2),
	SDL_PIXELFORMAT_RGB555 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_XRGB,
	SDL_PACKEDLAYOUT_1555, 15, 2),
	SDL_PIXELFORMAT_BGR555 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_XBGR,
	SDL_PACKEDLAYOUT_1555, 15, 2),
	SDL_PIXELFORMAT_ARGB4444 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_ARGB,
	SDL_PACKEDLAYOUT_4444, 16, 2),
	SDL_PIXELFORMAT_RGBA4444 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_RGBA,
	SDL_PACKEDLAYOUT_4444, 16, 2),
	SDL_PIXELFORMAT_ABGR4444 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_ABGR,
	SDL_PACKEDLAYOUT_4444, 16, 2),
	SDL_PIXELFORMAT_BGRA4444 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_BGRA,
	SDL_PACKEDLAYOUT_4444, 16, 2),
	SDL_PIXELFORMAT_ARGB1555 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_ARGB,
	SDL_PACKEDLAYOUT_1555, 16, 2),
	SDL_PIXELFORMAT_RGBA5551 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_RGBA,
	SDL_PACKEDLAYOUT_5551, 16, 2),
	SDL_PIXELFORMAT_ABGR1555 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_ABGR,
	SDL_PACKEDLAYOUT_1555, 16, 2),
	SDL_PIXELFORMAT_BGRA5551 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_BGRA,
	SDL_PACKEDLAYOUT_5551, 16, 2),
	SDL_PIXELFORMAT_RGB565 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_XRGB,
	SDL_PACKEDLAYOUT_565, 16, 2),
	SDL_PIXELFORMAT_BGR565 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED16, SDL_PACKEDORDER_XBGR,
	SDL_PACKEDLAYOUT_565, 16, 2),
	SDL_PIXELFORMAT_RGB24 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_ARRAYU8, SDL_ARRAYORDER_RGB, 0,
	24, 3),
	SDL_PIXELFORMAT_BGR24 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_ARRAYU8, SDL_ARRAYORDER_BGR, 0,
	24, 3),
	SDL_PIXELFORMAT_RGB888 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_XRGB,
	SDL_PACKEDLAYOUT_8888, 24, 4),
	SDL_PIXELFORMAT_RGBX8888 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_RGBX,
	SDL_PACKEDLAYOUT_8888, 24, 4),
	SDL_PIXELFORMAT_BGR888 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_XBGR,
	SDL_PACKEDLAYOUT_8888, 24, 4),
	SDL_PIXELFORMAT_BGRX8888 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_BGRX,
	SDL_PACKEDLAYOUT_8888, 24, 4),
	SDL_PIXELFORMAT_ARGB8888 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_ARGB,
	SDL_PACKEDLAYOUT_8888, 32, 4),
	SDL_PIXELFORMAT_RGBA8888 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_RGBA,
	SDL_PACKEDLAYOUT_8888, 32, 4),
	SDL_PIXELFORMAT_ABGR8888 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_ABGR,
	SDL_PACKEDLAYOUT_8888, 32, 4),
	SDL_PIXELFORMAT_BGRA8888 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_BGRA,
	SDL_PACKEDLAYOUT_8888, 32, 4),
	SDL_PIXELFORMAT_ARGB2101010 =
	SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_ARGB,
	SDL_PACKEDLAYOUT_2101010, 32, 4),
	
	SDL_PIXELFORMAT_YV12 =
	SDL_DEFINE_PIXELFOURCC('Y', 'V', '1', '2'),
	SDL_PIXELFORMAT_IYUV =
	SDL_DEFINE_PIXELFOURCC('I', 'Y', 'U', 'V'),
	SDL_PIXELFORMAT_YUY2 =
	SDL_DEFINE_PIXELFOURCC('Y', 'U', 'Y', '2'),
	SDL_PIXELFORMAT_UYVY =
	SDL_DEFINE_PIXELFOURCC('U', 'Y', 'V', 'Y'),
	SDL_PIXELFORMAT_YVYU =
	SDL_DEFINE_PIXELFOURCC('Y', 'V', 'Y', 'U'),
	SDL_PIXELFORMAT_NV12 =
	SDL_DEFINE_PIXELFOURCC('N', 'V', '1', '2'),
	SDL_PIXELFORMAT_NV21 =
	SDL_DEFINE_PIXELFOURCC('N', 'V', '2', '1')
}

alias Color	= SDL_Color;
alias Palette	= SDL_Palette;
alias PixelFormat	= SDL_PixelFormat;
enum PowerState : SDL_PowerState {
	unknown	= SDL_POWERSTATE_UNKNOWN	,
	onBattery	= SDL_POWERSTATE_ON_BATTERY	,
	noBattery	= SDL_POWERSTATE_NO_BATTERY	,
	charging	= SDL_POWERSTATE_CHARGING	,
	charged	= SDL_POWERSTATE_CHARGED	,
}
alias Point	= SDL_Point;
alias Rect	= SDL_Rect;
enum RendererFlags : Uint32 {
	software	= SDL_RENDERER_SOFTWARE	,
	accelerated	= SDL_RENDERER_ACCELERATED	,
	presentvsync	= SDL_RENDERER_PRESENTVSYNC	,
	targettexture	= SDL_RENDERER_TARGETTEXTURE	,
}
alias RendererInfo	= SDL_RendererInfo;
enum TextureAccess : SDL_TextureAccess {
	static	= SDL_TEXTUREACCESS_STATIC	,
	streaming	= SDL_TEXTUREACCESS_STREAMING	,
	target	= SDL_TEXTUREACCESS_TARGET	,
}
enum TextureModulate : SDL_TextureModulate {
	none	= SDL_TEXTUREMODULATE_NONE	,
	color	= SDL_TEXTUREMODULATE_COLOR	,
	alpha	= SDL_TEXTUREMODULATE_ALPHA	,
}
enum RendererFlip : SDL_RendererFlip {
	none	= SDL_FLIP_NONE	,
	horizontal	= SDL_FLIP_HORIZONTAL	,
	vertical	= SDL_FLIP_VERTICAL	,
}
alias Renderer	= Refer!SDL_Renderer;
alias Texture	= Refer!SDL_Texture;
enum : uint {
	SDL_RWOPS_UNKNOWN = 0,
	SDL_RWOPS_WINFILE = 1,
	SDL_RWOPS_STDFILE = 2,
	SDL_RWOPS_JNIFILE = 3,
	SDL_RWOPS_MEMORY = 4,
	SDL_RWOPS_MEMORY_RO = 5,
}

alias RWops	= SDL_RWops;
alias Windowsio	= Windowsio;
alias Buffer	= Buffer;
alias Stdio	= Stdio;
alias Mem	= Mem;
alias Unknown	= Unknown;
enum {
	RW_SEEK_SET = 0,
	RW_SEEK_CUR = 1,
	RW_SEEK_END = 2,
}

enum {
	SDL_NONSHAPEABLE_WINDOW = -1,
	SDL_INVALID_SHAPE_ARGUMENT = -2,
	SDL_WINDOW_LACKS_SHAPE = -3,
}

enum WindowShapeMode : WindowShapeMode {
	default	= ShapeModeDefault	,
	binarizealpha	= ShapeModeBinarizeAlpha	,
	reversebinarizealpha	= ShapeModeReverseBinarizeAlpha	,
	colorkey	= ShapeModeColorKey	,
}
alias WindowShapeMode	= SDL_WindowShapeMode;
enum DSurfaceFlags : SDL_D_SurfaceFlags {
	swsurface	= SDL_SWSURFACE	,
	prealloc	= SDL_PREALLOC	,
	rleaccel	= SDL_RLEACCEL	,
	dontfree	= SDL_DONTFREE	,
}
alias BlitMap	= Refer!SDL_BlitMap;
alias Surface	= SDL_Surface;
alias IDirect3DDevice9	= Refer!IDirect3DDevice9;
enum WinRTPath : SDL_WinRT_Path {
	installedLocation	= SDL_WINRT_PATH_INSTALLED_LOCATION	,
	localFolder	= SDL_WINRT_PATH_LOCAL_FOLDER	,
	roamingFolder	= SDL_WINRT_PATH_ROAMING_FOLDER	,
	tempFolder	= SDL_WINRT_PATH_TEMP_FOLDER	,
}
enum SYSWMTYPE : SDL_SYSWM_TYPE {
	unknown	= SDL_SYSWM_UNKNOWN	,
	windows	= SDL_SYSWM_WINDOWS	,
	x11	= SDL_SYSWM_X11	,
	directfb	= SDL_SYSWM_DIRECTFB	,
	cocoa	= SDL_SYSWM_COCOA	,
	uikit	= SDL_SYSWM_UIKIT	,
	wayland	= SDL_SYSWM_WAYLAND	,
	mir	= SDL_SYSWM_MIR	,
	winrt	= SDL_SYSWM_WINRT	,
	android	= SDL_SYSWM_ANDROID	,
	vivante	= SDL_SYSWM_VIVANTE	,
}
alias SysWMmsg	= SDL_SysWMmsg;
alias win_	= win_;
alias winrt_	= winrt_;
alias cocoa_	= cocoa_;
alias x11_	= x11_;
alias dfb_	= dfb_;
alias SysWMinfo	= SDL_SysWMinfo;
alias win_	= win_;
alias winrt_	= winrt_;
alias x11_	= x11_;
alias dfb_	= dfb_;
alias wl_	= wl_;
alias mir_	= mir_;
alias cocoa_	= cocoa_;
alias uikit_	= uikit_;
alias Finger	= SDL_Finger;
alias DisplayMode	= SDL_DisplayMode;
alias Window	= Refer!SDL_Window;
enum WindowFlags : SDL_WindowFlags {
	fullscreen	= SDL_WINDOW_FULLSCREEN	,
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
	fullscreenDesktop	= SDL_WINDOW_FULLSCREEN_DESKTOP	,
	foreign	= SDL_WINDOW_FOREIGN	,
	allowHighdpi	= SDL_WINDOW_ALLOW_HIGHDPI	,
	mouseCapture	= SDL_WINDOW_MOUSE_CAPTURE	,
	alwaysOnTop	= SDL_WINDOW_ALWAYS_ON_TOP	,
	skipTaskbar	= SDL_WINDOW_SKIP_TASKBAR	,
	utility	= SDL_WINDOW_UTILITY	,
	tooltip	= SDL_WINDOW_TOOLTIP	,
	popupMenu	= SDL_WINDOW_POPUP_MENU	,
}
enum {
	SDL_WINDOWPOS_UNDEFINED_MASK = 0x1FFF0000,
	SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY(0),
	SDL_WINDOWPOS_CENTERED_MASK = 0x2FFF0000,
	SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY(0),
}

enum WindowEventID : Uint8 {
	none	= SDL_WINDOWEVENT_NONE	,
	shown	= SDL_WINDOWEVENT_SHOWN	,
	hidden	= SDL_WINDOWEVENT_HIDDEN	,
	exposed	= SDL_WINDOWEVENT_EXPOSED	,
	moved	= SDL_WINDOWEVENT_MOVED	,
	resized	= SDL_WINDOWEVENT_RESIZED	,
	sizeChanged	= SDL_WINDOWEVENT_SIZE_CHANGED	,
	minimized	= SDL_WINDOWEVENT_MINIMIZED	,
	maximized	= SDL_WINDOWEVENT_MAXIMIZED	,
	restored	= SDL_WINDOWEVENT_RESTORED	,
	enter	= SDL_WINDOWEVENT_ENTER	,
	leave	= SDL_WINDOWEVENT_LEAVE	,
	focusGained	= SDL_WINDOWEVENT_FOCUS_GAINED	,
	focusLost	= SDL_WINDOWEVENT_FOCUS_LOST	,
	close	= SDL_WINDOWEVENT_CLOSE	,
	takeFocus	= SDL_WINDOWEVENT_TAKE_FOCUS	,
	hitTest	= SDL_WINDOWEVENT_HIT_TEST	,
}
enum GLattr : SDL_GLattr {
	redSize	= SDL_GL_RED_SIZE	,
	greenSize	= SDL_GL_GREEN_SIZE	,
	blueSize	= SDL_GL_BLUE_SIZE	,
	alphaSize	= SDL_GL_ALPHA_SIZE	,
	bufferSize	= SDL_GL_BUFFER_SIZE	,
	doublebuffer	= SDL_GL_DOUBLEBUFFER	,
	depthSize	= SDL_GL_DEPTH_SIZE	,
	stencilSize	= SDL_GL_STENCIL_SIZE	,
	accumRedSize	= SDL_GL_ACCUM_RED_SIZE	,
	accumGreenSize	= SDL_GL_ACCUM_GREEN_SIZE	,
	accumBlueSize	= SDL_GL_ACCUM_BLUE_SIZE	,
	accumAlphaSize	= SDL_GL_ACCUM_ALPHA_SIZE	,
	stereo	= SDL_GL_STEREO	,
	multisamplebuffers	= SDL_GL_MULTISAMPLEBUFFERS	,
	multisamplesamples	= SDL_GL_MULTISAMPLESAMPLES	,
	acceleratedVisual	= SDL_GL_ACCELERATED_VISUAL	,
	retainedBacking	= SDL_GL_RETAINED_BACKING	,
	contextMajorVersion	= SDL_GL_CONTEXT_MAJOR_VERSION	,
	contextMinorVersion	= SDL_GL_CONTEXT_MINOR_VERSION	,
	contextEgl	= SDL_GL_CONTEXT_EGL	,
	contextFlags	= SDL_GL_CONTEXT_FLAGS	,
	contextProfileMask	= SDL_GL_CONTEXT_PROFILE_MASK	,
	shareWithCurrentContext	= SDL_GL_SHARE_WITH_CURRENT_CONTEXT	,
	framebufferSrgbCapable	= SDL_GL_FRAMEBUFFER_SRGB_CAPABLE	,
	contextReleaseBehavior	= SDL_GL_CONTEXT_RELEASE_BEHAVIOR	,
}
enum GLprofile : SDL_GLprofile {
	core	= SDL_GL_CONTEXT_PROFILE_CORE	,
	compatibility	= SDL_GL_CONTEXT_PROFILE_COMPATIBILITY	,
	es	= SDL_GL_CONTEXT_PROFILE_ES	,
}
enum GLcontextFlag : SDL_GLcontextFlag {
	debugFlag	= SDL_GL_CONTEXT_DEBUG_FLAG	,
	forwardCompatibleFlag	= SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG	,
	robustAccessFlag	= SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG	,
	resetIsolationFlag	= SDL_GL_CONTEXT_RESET_ISOLATION_FLAG	,
}
enum GLcontextReleaseFlag : SDL_GLcontextReleaseFlag {
	none	= SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE	,
	flush	= SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH	,
}
enum HitTestResult : SDL_HitTestResult {
	normal	= SDL_HITTEST_NORMAL	,
	draggable	= SDL_HITTEST_DRAGGABLE	,
	resizeTopleft	= SDL_HITTEST_RESIZE_TOPLEFT	,
	resizeTop	= SDL_HITTEST_RESIZE_TOP	,
	resizeTopright	= SDL_HITTEST_RESIZE_TOPRIGHT	,
	resizeRight	= SDL_HITTEST_RESIZE_RIGHT	,
	resizeBottomright	= SDL_HITTEST_RESIZE_BOTTOMRIGHT	,
	resizeBottom	= SDL_HITTEST_RESIZE_BOTTOM	,
	resizeBottomleft	= SDL_HITTEST_RESIZE_BOTTOMLEFT	,
	resizeLeft	= SDL_HITTEST_RESIZE_LEFT	,
}
