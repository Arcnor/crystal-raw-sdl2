# WARNING: Automatically generated using Arcnor's famous NativeBindingsGenerator. Do not modify manually!

@[Link("SDL2")]
lib LibSDL2
	
	# Types & Classes #
	
	struct SDL_iconv_t2
	end
	
	alias SDL_iconv_t = SDL_iconv_t2*
	enum SDL_assert_state
		SDL_ASSERTION_RETRY,
		SDL_ASSERTION_BREAK,
		SDL_ASSERTION_ABORT,
		SDL_ASSERTION_IGNORE,
		SDL_ASSERTION_ALWAYS_IGNORE
	end
	
	struct SDL_assert_data
		always_ignore : Int32
		trigger_count : UInt32
		condition : UInt8*
		filename : UInt8*
		linenum : Int32
		function : UInt8*
		next : SDL_assert_data*
	end
	
	alias SDL_AssertionHandler = SDL_assert_data*, Void* -> SDL_assert_state
	alias SDL_SpinLock = Int32
	struct SDL_atomic_t
		value : Int32
	end
	
	enum SDL_errorcode
		SDL_ENOMEM,
		SDL_EFREAD,
		SDL_EFWRITE,
		SDL_EFSEEK,
		SDL_UNSUPPORTED,
		SDL_LASTERROR
	end
	
	struct SDL_mutex
	end
	
	struct SDL_semaphore
	end
	
	alias SDL_sem = SDL_semaphore
	struct SDL_cond
	end
	
	struct SDL_Thread
	end
	
	alias SDL_threadID = UInt64
	alias SDL_TLSID = UInt32
	enum SDL_ThreadPriority
		SDL_THREAD_PRIORITY_LOW,
		SDL_THREAD_PRIORITY_NORMAL,
		SDL_THREAD_PRIORITY_HIGH
	end
	
	alias SDL_ThreadFunction = Void* -> Int32
	struct SDL_RWops
		size : SDL_RWops* -> Int64
		seek : SDL_RWops*, Int64, Int32 -> Int64
		read : SDL_RWops*, Void*, UInt64, UInt64 -> UInt64
		write : SDL_RWops*, Void*, UInt64, UInt64 -> UInt64
		close : SDL_RWops* -> Int32
		type : UInt32
		hidden : Void*
	end
	
	alias SDL_AudioFormat = UInt16
	alias SDL_AudioCallback = Void*, UInt8*, Int32 -> Void
	struct SDL_AudioSpec
		freq : Int32
		format : SDL_AudioFormat
		channels : UInt8
		silence : UInt8
		samples : UInt16
		padding : UInt16
		size : UInt32
		callback : SDL_AudioCallback
		userdata : Void*
	end
	
	struct SDL_AudioCVT
		needed : Int32
		src_format : SDL_AudioFormat
		dst_format : SDL_AudioFormat
		rate_incr : Float64
		buf : UInt8*
		len : Int32
		len_cvt : Int32
		len_mult : Int32
		len_ratio : Float64
		filters : SDL_AudioFilter[10]
		filter_index : Int32
	end
	alias SDL_AudioFilter = SDL_AudioCVT*, SDL_AudioFormat -> Void
	
	alias SDL_AudioDeviceID = UInt32
	enum SDL_AudioStatus
		SDL_AUDIO_STOPPED = 0,
		SDL_AUDIO_PLAYING,
		SDL_AUDIO_PAUSED
	end
	
	struct SDL_Color
		r : UInt8
		g : UInt8
		b : UInt8
		a : UInt8
	end
	
	struct SDL_Palette
		ncolors : Int32
		colors : SDL_Color*
		version : UInt32
		refcount : Int32
	end
	
	struct SDL_PixelFormat
		format : UInt32
		palette : SDL_Palette*
		bitsPerPixel : UInt8
		bytesPerPixel : UInt8
		padding : UInt8[2]
		rmask : UInt32
		gmask : UInt32
		bmask : UInt32
		amask : UInt32
		rloss : UInt8
		gloss : UInt8
		bloss : UInt8
		aloss : UInt8
		rshift : UInt8
		gshift : UInt8
		bshift : UInt8
		ashift : UInt8
		refcount : Int32
		next : SDL_PixelFormat*
	end
	
	struct SDL_Point
		x : Int32
		y : Int32
	end
	
	struct SDL_Rect
		x : Int32
		y : Int32
		w : Int32
		h : Int32
	end
	
	enum SDL_BlendMode
		SDL_BLENDMODE_NONE = 0,
		SDL_BLENDMODE_BLEND = 1,
		SDL_BLENDMODE_ADD = 2,
		SDL_BLENDMODE_MOD = 4
	end
	
	struct SDL_BlitMap
	end
	
	struct SDL_Surface
		flags : UInt32
		format : SDL_PixelFormat*
		w : Int32
		h : Int32
		pitch : Int32
		pixels : Void*
		userdata : Void*
		locked : Int32
		lock_data : Void*
		clip_rect : SDL_Rect
		map : SDL_BlitMap*
		refcount : Int32
	end
	
	alias SDL_blit = SDL_Surface*, SDL_Rect*, SDL_Surface*, SDL_Rect* -> Int32
	struct SDL_DisplayMode
		format : UInt32
		w : Int32
		h : Int32
		refresh_rate : Int32
		driverdata : Void*
	end
	
	struct SDL_Window
	end
	
	@[Flags]
	enum SDL_WindowFlags
		SDL_WINDOW_FULLSCREEN = 1,
		SDL_WINDOW_OPENGL = 2,
		SDL_WINDOW_SHOWN = 4,
		SDL_WINDOW_HIDDEN = 8,
		SDL_WINDOW_BORDERLESS = 16,
		SDL_WINDOW_RESIZABLE = 32,
		SDL_WINDOW_MINIMIZED = 64,
		SDL_WINDOW_MAXIMIZED = 128,
		SDL_WINDOW_INPUT_GRABBED = 256,
		SDL_WINDOW_INPUT_FOCUS = 512,
		SDL_WINDOW_MOUSE_FOCUS = 1024,
		SDL_WINDOW_FULLSCREEN_DESKTOP,
		SDL_WINDOW_FOREIGN = 2048,
		SDL_WINDOW_ALLOW_HIGHDPI = 8192
	end
	
	enum SDL_WindowEventID
		SDL_WINDOWEVENT_NONE,
		SDL_WINDOWEVENT_SHOWN,
		SDL_WINDOWEVENT_HIDDEN,
		SDL_WINDOWEVENT_EXPOSED,
		SDL_WINDOWEVENT_MOVED,
		SDL_WINDOWEVENT_RESIZED,
		SDL_WINDOWEVENT_SIZE_CHANGED,
		SDL_WINDOWEVENT_MINIMIZED,
		SDL_WINDOWEVENT_MAXIMIZED,
		SDL_WINDOWEVENT_RESTORED,
		SDL_WINDOWEVENT_ENTER,
		SDL_WINDOWEVENT_LEAVE,
		SDL_WINDOWEVENT_FOCUS_GAINED,
		SDL_WINDOWEVENT_FOCUS_LOST,
		SDL_WINDOWEVENT_CLOSE
	end
	
	alias SDL_GLContext = Void*
	enum SDL_GLattr
		SDL_GL_RED_SIZE,
		SDL_GL_GREEN_SIZE,
		SDL_GL_BLUE_SIZE,
		SDL_GL_ALPHA_SIZE,
		SDL_GL_BUFFER_SIZE,
		SDL_GL_DOUBLEBUFFER,
		SDL_GL_DEPTH_SIZE,
		SDL_GL_STENCIL_SIZE,
		SDL_GL_ACCUM_RED_SIZE,
		SDL_GL_ACCUM_GREEN_SIZE,
		SDL_GL_ACCUM_BLUE_SIZE,
		SDL_GL_ACCUM_ALPHA_SIZE,
		SDL_GL_STEREO,
		SDL_GL_MULTISAMPLEBUFFERS,
		SDL_GL_MULTISAMPLESAMPLES,
		SDL_GL_ACCELERATED_VISUAL,
		SDL_GL_RETAINED_BACKING,
		SDL_GL_CONTEXT_MAJOR_VERSION,
		SDL_GL_CONTEXT_MINOR_VERSION,
		SDL_GL_CONTEXT_EGL,
		SDL_GL_CONTEXT_FLAGS,
		SDL_GL_CONTEXT_PROFILE_MASK,
		SDL_GL_SHARE_WITH_CURRENT_CONTEXT,
		SDL_GL_FRAMEBUFFER_SRGB_CAPABLE
	end
	
	enum SDL_GLprofile
		SDL_GL_CONTEXT_PROFILE_CORE = 1,
		SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2,
		SDL_GL_CONTEXT_PROFILE_ES = 4
	end
	
	enum SDL_GLcontextFlag
		SDL_GL_CONTEXT_DEBUG_FLAG = 1,
		SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2,
		SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4,
		SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8
	end
	
	enum SDL_Scancode
		SDL_SCANCODE_UNKNOWN = 0,
		SDL_SCANCODE_A = 4,
		SDL_SCANCODE_B = 5,
		SDL_SCANCODE_C = 6,
		SDL_SCANCODE_D = 7,
		SDL_SCANCODE_E = 8,
		SDL_SCANCODE_F = 9,
		SDL_SCANCODE_G = 10,
		SDL_SCANCODE_H = 11,
		SDL_SCANCODE_I = 12,
		SDL_SCANCODE_J = 13,
		SDL_SCANCODE_K = 14,
		SDL_SCANCODE_L = 15,
		SDL_SCANCODE_M = 16,
		SDL_SCANCODE_N = 17,
		SDL_SCANCODE_O = 18,
		SDL_SCANCODE_P = 19,
		SDL_SCANCODE_Q = 20,
		SDL_SCANCODE_R = 21,
		SDL_SCANCODE_S = 22,
		SDL_SCANCODE_T = 23,
		SDL_SCANCODE_U = 24,
		SDL_SCANCODE_V = 25,
		SDL_SCANCODE_W = 26,
		SDL_SCANCODE_X = 27,
		SDL_SCANCODE_Y = 28,
		SDL_SCANCODE_Z = 29,
		SDL_SCANCODE_1 = 30,
		SDL_SCANCODE_2 = 31,
		SDL_SCANCODE_3 = 32,
		SDL_SCANCODE_4 = 33,
		SDL_SCANCODE_5 = 34,
		SDL_SCANCODE_6 = 35,
		SDL_SCANCODE_7 = 36,
		SDL_SCANCODE_8 = 37,
		SDL_SCANCODE_9 = 38,
		SDL_SCANCODE_0 = 39,
		SDL_SCANCODE_RETURN = 40,
		SDL_SCANCODE_ESCAPE = 41,
		SDL_SCANCODE_BACKSPACE = 42,
		SDL_SCANCODE_TAB = 43,
		SDL_SCANCODE_SPACE = 44,
		SDL_SCANCODE_MINUS = 45,
		SDL_SCANCODE_EQUALS = 46,
		SDL_SCANCODE_LEFTBRACKET = 47,
		SDL_SCANCODE_RIGHTBRACKET = 48,
		SDL_SCANCODE_BACKSLASH = 49,
		SDL_SCANCODE_NONUSHASH = 50,
		SDL_SCANCODE_SEMICOLON = 51,
		SDL_SCANCODE_APOSTROPHE = 52,
		SDL_SCANCODE_GRAVE = 53,
		SDL_SCANCODE_COMMA = 54,
		SDL_SCANCODE_PERIOD = 55,
		SDL_SCANCODE_SLASH = 56,
		SDL_SCANCODE_CAPSLOCK = 57,
		SDL_SCANCODE_F1 = 58,
		SDL_SCANCODE_F2 = 59,
		SDL_SCANCODE_F3 = 60,
		SDL_SCANCODE_F4 = 61,
		SDL_SCANCODE_F5 = 62,
		SDL_SCANCODE_F6 = 63,
		SDL_SCANCODE_F7 = 64,
		SDL_SCANCODE_F8 = 65,
		SDL_SCANCODE_F9 = 66,
		SDL_SCANCODE_F10 = 67,
		SDL_SCANCODE_F11 = 68,
		SDL_SCANCODE_F12 = 69,
		SDL_SCANCODE_PRINTSCREEN = 70,
		SDL_SCANCODE_SCROLLLOCK = 71,
		SDL_SCANCODE_PAUSE = 72,
		SDL_SCANCODE_INSERT = 73,
		SDL_SCANCODE_HOME = 74,
		SDL_SCANCODE_PAGEUP = 75,
		SDL_SCANCODE_DELETE = 76,
		SDL_SCANCODE_END = 77,
		SDL_SCANCODE_PAGEDOWN = 78,
		SDL_SCANCODE_RIGHT = 79,
		SDL_SCANCODE_LEFT = 80,
		SDL_SCANCODE_DOWN = 81,
		SDL_SCANCODE_UP = 82,
		SDL_SCANCODE_NUMLOCKCLEAR = 83,
		SDL_SCANCODE_KP_DIVIDE = 84,
		SDL_SCANCODE_KP_MULTIPLY = 85,
		SDL_SCANCODE_KP_MINUS = 86,
		SDL_SCANCODE_KP_PLUS = 87,
		SDL_SCANCODE_KP_ENTER = 88,
		SDL_SCANCODE_KP_1 = 89,
		SDL_SCANCODE_KP_2 = 90,
		SDL_SCANCODE_KP_3 = 91,
		SDL_SCANCODE_KP_4 = 92,
		SDL_SCANCODE_KP_5 = 93,
		SDL_SCANCODE_KP_6 = 94,
		SDL_SCANCODE_KP_7 = 95,
		SDL_SCANCODE_KP_8 = 96,
		SDL_SCANCODE_KP_9 = 97,
		SDL_SCANCODE_KP_0 = 98,
		SDL_SCANCODE_KP_PERIOD = 99,
		SDL_SCANCODE_NONUSBACKSLASH = 100,
		SDL_SCANCODE_APPLICATION = 101,
		SDL_SCANCODE_POWER = 102,
		SDL_SCANCODE_KP_EQUALS = 103,
		SDL_SCANCODE_F13 = 104,
		SDL_SCANCODE_F14 = 105,
		SDL_SCANCODE_F15 = 106,
		SDL_SCANCODE_F16 = 107,
		SDL_SCANCODE_F17 = 108,
		SDL_SCANCODE_F18 = 109,
		SDL_SCANCODE_F19 = 110,
		SDL_SCANCODE_F20 = 111,
		SDL_SCANCODE_F21 = 112,
		SDL_SCANCODE_F22 = 113,
		SDL_SCANCODE_F23 = 114,
		SDL_SCANCODE_F24 = 115,
		SDL_SCANCODE_EXECUTE = 116,
		SDL_SCANCODE_HELP = 117,
		SDL_SCANCODE_MENU = 118,
		SDL_SCANCODE_SELECT = 119,
		SDL_SCANCODE_STOP = 120,
		SDL_SCANCODE_AGAIN = 121,
		SDL_SCANCODE_UNDO = 122,
		SDL_SCANCODE_CUT = 123,
		SDL_SCANCODE_COPY = 124,
		SDL_SCANCODE_PASTE = 125,
		SDL_SCANCODE_FIND = 126,
		SDL_SCANCODE_MUTE = 127,
		SDL_SCANCODE_VOLUMEUP = 128,
		SDL_SCANCODE_VOLUMEDOWN = 129,
		SDL_SCANCODE_KP_COMMA = 133,
		SDL_SCANCODE_KP_EQUALSAS400 = 134,
		SDL_SCANCODE_INTERNATIONAL1 = 135,
		SDL_SCANCODE_INTERNATIONAL2 = 136,
		SDL_SCANCODE_INTERNATIONAL3 = 137,
		SDL_SCANCODE_INTERNATIONAL4 = 138,
		SDL_SCANCODE_INTERNATIONAL5 = 139,
		SDL_SCANCODE_INTERNATIONAL6 = 140,
		SDL_SCANCODE_INTERNATIONAL7 = 141,
		SDL_SCANCODE_INTERNATIONAL8 = 142,
		SDL_SCANCODE_INTERNATIONAL9 = 143,
		SDL_SCANCODE_LANG1 = 144,
		SDL_SCANCODE_LANG2 = 145,
		SDL_SCANCODE_LANG3 = 146,
		SDL_SCANCODE_LANG4 = 147,
		SDL_SCANCODE_LANG5 = 148,
		SDL_SCANCODE_LANG6 = 149,
		SDL_SCANCODE_LANG7 = 150,
		SDL_SCANCODE_LANG8 = 151,
		SDL_SCANCODE_LANG9 = 152,
		SDL_SCANCODE_ALTERASE = 153,
		SDL_SCANCODE_SYSREQ = 154,
		SDL_SCANCODE_CANCEL = 155,
		SDL_SCANCODE_CLEAR = 156,
		SDL_SCANCODE_PRIOR = 157,
		SDL_SCANCODE_RETURN2 = 158,
		SDL_SCANCODE_SEPARATOR = 159,
		SDL_SCANCODE_OUT = 160,
		SDL_SCANCODE_OPER = 161,
		SDL_SCANCODE_CLEARAGAIN = 162,
		SDL_SCANCODE_CRSEL = 163,
		SDL_SCANCODE_EXSEL = 164,
		SDL_SCANCODE_KP_00 = 176,
		SDL_SCANCODE_KP_000 = 177,
		SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
		SDL_SCANCODE_DECIMALSEPARATOR = 179,
		SDL_SCANCODE_CURRENCYUNIT = 180,
		SDL_SCANCODE_CURRENCYSUBUNIT = 181,
		SDL_SCANCODE_KP_LEFTPAREN = 182,
		SDL_SCANCODE_KP_RIGHTPAREN = 183,
		SDL_SCANCODE_KP_LEFTBRACE = 184,
		SDL_SCANCODE_KP_RIGHTBRACE = 185,
		SDL_SCANCODE_KP_TAB = 186,
		SDL_SCANCODE_KP_BACKSPACE = 187,
		SDL_SCANCODE_KP_A = 188,
		SDL_SCANCODE_KP_B = 189,
		SDL_SCANCODE_KP_C = 190,
		SDL_SCANCODE_KP_D = 191,
		SDL_SCANCODE_KP_E = 192,
		SDL_SCANCODE_KP_F = 193,
		SDL_SCANCODE_KP_XOR = 194,
		SDL_SCANCODE_KP_POWER = 195,
		SDL_SCANCODE_KP_PERCENT = 196,
		SDL_SCANCODE_KP_LESS = 197,
		SDL_SCANCODE_KP_GREATER = 198,
		SDL_SCANCODE_KP_AMPERSAND = 199,
		SDL_SCANCODE_KP_DBLAMPERSAND = 200,
		SDL_SCANCODE_KP_VERTICALBAR = 201,
		SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
		SDL_SCANCODE_KP_COLON = 203,
		SDL_SCANCODE_KP_HASH = 204,
		SDL_SCANCODE_KP_SPACE = 205,
		SDL_SCANCODE_KP_AT = 206,
		SDL_SCANCODE_KP_EXCLAM = 207,
		SDL_SCANCODE_KP_MEMSTORE = 208,
		SDL_SCANCODE_KP_MEMRECALL = 209,
		SDL_SCANCODE_KP_MEMCLEAR = 210,
		SDL_SCANCODE_KP_MEMADD = 211,
		SDL_SCANCODE_KP_MEMSUBTRACT = 212,
		SDL_SCANCODE_KP_MEMMULTIPLY = 213,
		SDL_SCANCODE_KP_MEMDIVIDE = 214,
		SDL_SCANCODE_KP_PLUSMINUS = 215,
		SDL_SCANCODE_KP_CLEAR = 216,
		SDL_SCANCODE_KP_CLEARENTRY = 217,
		SDL_SCANCODE_KP_BINARY = 218,
		SDL_SCANCODE_KP_OCTAL = 219,
		SDL_SCANCODE_KP_DECIMAL = 220,
		SDL_SCANCODE_KP_HEXADECIMAL = 221,
		SDL_SCANCODE_LCTRL = 224,
		SDL_SCANCODE_LSHIFT = 225,
		SDL_SCANCODE_LALT = 226,
		SDL_SCANCODE_LGUI = 227,
		SDL_SCANCODE_RCTRL = 228,
		SDL_SCANCODE_RSHIFT = 229,
		SDL_SCANCODE_RALT = 230,
		SDL_SCANCODE_RGUI = 231,
		SDL_SCANCODE_MODE = 257,
		SDL_SCANCODE_AUDIONEXT = 258,
		SDL_SCANCODE_AUDIOPREV = 259,
		SDL_SCANCODE_AUDIOSTOP = 260,
		SDL_SCANCODE_AUDIOPLAY = 261,
		SDL_SCANCODE_AUDIOMUTE = 262,
		SDL_SCANCODE_MEDIASELECT = 263,
		SDL_SCANCODE_WWW = 264,
		SDL_SCANCODE_MAIL = 265,
		SDL_SCANCODE_CALCULATOR = 266,
		SDL_SCANCODE_COMPUTER = 267,
		SDL_SCANCODE_AC_SEARCH = 268,
		SDL_SCANCODE_AC_HOME = 269,
		SDL_SCANCODE_AC_BACK = 270,
		SDL_SCANCODE_AC_FORWARD = 271,
		SDL_SCANCODE_AC_STOP = 272,
		SDL_SCANCODE_AC_REFRESH = 273,
		SDL_SCANCODE_AC_BOOKMARKS = 274,
		SDL_SCANCODE_BRIGHTNESSDOWN = 275,
		SDL_SCANCODE_BRIGHTNESSUP = 276,
		SDL_SCANCODE_DISPLAYSWITCH = 277,
		SDL_SCANCODE_KBDILLUMTOGGLE = 278,
		SDL_SCANCODE_KBDILLUMDOWN = 279,
		SDL_SCANCODE_KBDILLUMUP = 280,
		SDL_SCANCODE_EJECT = 281,
		SDL_SCANCODE_SLEEP = 282,
		SDL_SCANCODE_APP1 = 283,
		SDL_SCANCODE_APP2 = 284,
		SDL_NUM_SCANCODES = 512
	end
	
	alias SDL_Keycode = Int32
	enum SDL_Keymod
		KMOD_NONE = 0,
		KMOD_LSHIFT = 1,
		KMOD_RSHIFT = 2,
		KMOD_LCTRL = 64,
		KMOD_RCTRL = 128,
		KMOD_LALT = 256,
		KMOD_RALT = 512,
		KMOD_LGUI = 1024,
		KMOD_RGUI = 2048,
		KMOD_NUM = 4096,
		KMOD_CAPS = 8192,
		KMOD_MODE = 16384,
		KMOD_RESERVED = 32768
	end
	
	struct SDL_Keysym
		scancode : SDL_Scancode
		sym : SDL_Keycode
		mod : UInt16
		unused : UInt32
	end
	
	struct SDL_Cursor
	end
	
	enum SDL_SystemCursor
		SDL_SYSTEM_CURSOR_ARROW,
		SDL_SYSTEM_CURSOR_IBEAM,
		SDL_SYSTEM_CURSOR_WAIT,
		SDL_SYSTEM_CURSOR_CROSSHAIR,
		SDL_SYSTEM_CURSOR_WAITARROW,
		SDL_SYSTEM_CURSOR_SIZENWSE,
		SDL_SYSTEM_CURSOR_SIZENESW,
		SDL_SYSTEM_CURSOR_SIZEWE,
		SDL_SYSTEM_CURSOR_SIZENS,
		SDL_SYSTEM_CURSOR_SIZEALL,
		SDL_SYSTEM_CURSOR_NO,
		SDL_SYSTEM_CURSOR_HAND,
		SDL_NUM_SYSTEM_CURSORS
	end
	
	struct SDL_Joystick2
	end
	
	alias SDL_Joystick = SDL_Joystick2
	struct SDL_JoystickGUID
		data : UInt8[16]
	end
	
	alias SDL_JoystickID = Int32
	struct SDL_GameController2
	end
	
	alias SDL_GameController = SDL_GameController2
	enum SDL_GameControllerBindType
		SDL_CONTROLLER_BINDTYPE_NONE = 0,
		SDL_CONTROLLER_BINDTYPE_BUTTON,
		SDL_CONTROLLER_BINDTYPE_AXIS,
		SDL_CONTROLLER_BINDTYPE_HAT
	end
	
	struct SDL_GameControllerButtonBind
		bindType : SDL_GameControllerBindType
		value : Void*
	end
	
	enum SDL_GameControllerAxis
		SDL_CONTROLLER_AXIS_INVALID,
		SDL_CONTROLLER_AXIS_LEFTX,
		SDL_CONTROLLER_AXIS_LEFTY,
		SDL_CONTROLLER_AXIS_RIGHTX,
		SDL_CONTROLLER_AXIS_RIGHTY,
		SDL_CONTROLLER_AXIS_TRIGGERLEFT,
		SDL_CONTROLLER_AXIS_TRIGGERRIGHT,
		SDL_CONTROLLER_AXIS_MAX
	end
	
	enum SDL_GameControllerButton
		SDL_CONTROLLER_BUTTON_INVALID,
		SDL_CONTROLLER_BUTTON_A,
		SDL_CONTROLLER_BUTTON_B,
		SDL_CONTROLLER_BUTTON_X,
		SDL_CONTROLLER_BUTTON_Y,
		SDL_CONTROLLER_BUTTON_BACK,
		SDL_CONTROLLER_BUTTON_GUIDE,
		SDL_CONTROLLER_BUTTON_START,
		SDL_CONTROLLER_BUTTON_LEFTSTICK,
		SDL_CONTROLLER_BUTTON_RIGHTSTICK,
		SDL_CONTROLLER_BUTTON_LEFTSHOULDER,
		SDL_CONTROLLER_BUTTON_RIGHTSHOULDER,
		SDL_CONTROLLER_BUTTON_DPAD_UP,
		SDL_CONTROLLER_BUTTON_DPAD_DOWN,
		SDL_CONTROLLER_BUTTON_DPAD_LEFT,
		SDL_CONTROLLER_BUTTON_DPAD_RIGHT,
		SDL_CONTROLLER_BUTTON_MAX
	end
	
	alias SDL_TouchID = Int64
	alias SDL_FingerID = Int64
	struct SDL_Finger
		id : SDL_FingerID
		x : Float32
		y : Float32
		pressure : Float32
	end
	
	alias SDL_GestureID = Int64
	enum SDL_EventType
		SDL_FIRSTEVENT = 0,
		SDL_QUIT = 256,
		SDL_APP_TERMINATING,
		SDL_APP_LOWMEMORY,
		SDL_APP_WILLENTERBACKGROUND,
		SDL_APP_DIDENTERBACKGROUND,
		SDL_APP_WILLENTERFOREGROUND,
		SDL_APP_DIDENTERFOREGROUND,
		SDL_WINDOWEVENT = 512,
		SDL_SYSWMEVENT,
		SDL_KEYDOWN = 768,
		SDL_KEYUP,
		SDL_TEXTEDITING,
		SDL_TEXTINPUT,
		SDL_MOUSEMOTION = 1024,
		SDL_MOUSEBUTTONDOWN,
		SDL_MOUSEBUTTONUP,
		SDL_MOUSEWHEEL,
		SDL_JOYAXISMOTION = 1536,
		SDL_JOYBALLMOTION,
		SDL_JOYHATMOTION,
		SDL_JOYBUTTONDOWN,
		SDL_JOYBUTTONUP,
		SDL_JOYDEVICEADDED,
		SDL_JOYDEVICEREMOVED,
		SDL_CONTROLLERAXISMOTION = 1616,
		SDL_CONTROLLERBUTTONDOWN,
		SDL_CONTROLLERBUTTONUP,
		SDL_CONTROLLERDEVICEADDED,
		SDL_CONTROLLERDEVICEREMOVED,
		SDL_CONTROLLERDEVICEREMAPPED,
		SDL_FINGERDOWN = 1792,
		SDL_FINGERUP,
		SDL_FINGERMOTION,
		SDL_DOLLARGESTURE = 2048,
		SDL_DOLLARRECORD,
		SDL_MULTIGESTURE,
		SDL_CLIPBOARDUPDATE = 2304,
		SDL_DROPFILE = 4096,
		SDL_RENDER_TARGETS_RESET = 8192,
		SDL_USEREVENT = 32768,
		SDL_LASTEVENT = 65535
	end
	
	struct SDL_CommonEvent
		type : UInt32
		timestamp : UInt32
	end
	
	struct SDL_WindowEvent
		type : UInt32
		timestamp : UInt32
		windowID : UInt32
		event : UInt8
		padding1 : UInt8
		padding2 : UInt8
		padding3 : UInt8
		data1 : Int32
		data2 : Int32
	end
	
	struct SDL_KeyboardEvent
		type : UInt32
		timestamp : UInt32
		windowID : UInt32
		state : UInt8
		repeat : UInt8
		padding2 : UInt8
		padding3 : UInt8
		keysym : SDL_Keysym
	end
	
	struct SDL_TextEditingEvent
		type : UInt32
		timestamp : UInt32
		windowID : UInt32
		text : UInt8[32]
		start : Int32
		length : Int32
	end
	
	struct SDL_TextInputEvent
		type : UInt32
		timestamp : UInt32
		windowID : UInt32
		text : UInt8[32]
	end
	
	struct SDL_MouseMotionEvent
		type : UInt32
		timestamp : UInt32
		windowID : UInt32
		which : UInt32
		state : UInt32
		x : Int32
		y : Int32
		xrel : Int32
		yrel : Int32
	end
	
	struct SDL_MouseButtonEvent
		type : UInt32
		timestamp : UInt32
		windowID : UInt32
		which : UInt32
		button : UInt8
		state : UInt8
		clicks : UInt8
		padding1 : UInt8
		x : Int32
		y : Int32
	end
	
	struct SDL_MouseWheelEvent
		type : UInt32
		timestamp : UInt32
		windowID : UInt32
		which : UInt32
		x : Int32
		y : Int32
	end
	
	struct SDL_JoyAxisEvent
		type : UInt32
		timestamp : UInt32
		which : SDL_JoystickID
		axis : UInt8
		padding1 : UInt8
		padding2 : UInt8
		padding3 : UInt8
		value : Int16
		padding4 : UInt16
	end
	
	struct SDL_JoyBallEvent
		type : UInt32
		timestamp : UInt32
		which : SDL_JoystickID
		ball : UInt8
		padding1 : UInt8
		padding2 : UInt8
		padding3 : UInt8
		xrel : Int16
		yrel : Int16
	end
	
	struct SDL_JoyHatEvent
		type : UInt32
		timestamp : UInt32
		which : SDL_JoystickID
		hat : UInt8
		value : UInt8
		padding1 : UInt8
		padding2 : UInt8
	end
	
	struct SDL_JoyButtonEvent
		type : UInt32
		timestamp : UInt32
		which : SDL_JoystickID
		button : UInt8
		state : UInt8
		padding1 : UInt8
		padding2 : UInt8
	end
	
	struct SDL_JoyDeviceEvent
		type : UInt32
		timestamp : UInt32
		which : Int32
	end
	
	struct SDL_ControllerAxisEvent
		type : UInt32
		timestamp : UInt32
		which : SDL_JoystickID
		axis : UInt8
		padding1 : UInt8
		padding2 : UInt8
		padding3 : UInt8
		value : Int16
		padding4 : UInt16
	end
	
	struct SDL_ControllerButtonEvent
		type : UInt32
		timestamp : UInt32
		which : SDL_JoystickID
		button : UInt8
		state : UInt8
		padding1 : UInt8
		padding2 : UInt8
	end
	
	struct SDL_ControllerDeviceEvent
		type : UInt32
		timestamp : UInt32
		which : Int32
	end
	
	struct SDL_TouchFingerEvent
		type : UInt32
		timestamp : UInt32
		touchId : SDL_TouchID
		fingerId : SDL_FingerID
		x : Float32
		y : Float32
		dx : Float32
		dy : Float32
		pressure : Float32
	end
	
	struct SDL_MultiGestureEvent
		type : UInt32
		timestamp : UInt32
		touchId : SDL_TouchID
		dTheta : Float32
		dDist : Float32
		x : Float32
		y : Float32
		numFingers : UInt16
		padding : UInt16
	end
	
	struct SDL_DollarGestureEvent
		type : UInt32
		timestamp : UInt32
		touchId : SDL_TouchID
		gestureId : SDL_GestureID
		numFingers : UInt32
		error : Float32
		x : Float32
		y : Float32
	end
	
	struct SDL_DropEvent
		type : UInt32
		timestamp : UInt32
		file : UInt8*
	end
	
	struct SDL_QuitEvent
		type : UInt32
		timestamp : UInt32
	end
	
	struct SDL_OSEvent
		type : UInt32
		timestamp : UInt32
	end
	
	struct SDL_UserEvent
		type : UInt32
		timestamp : UInt32
		windowID : UInt32
		code : Int32
		data1 : Void*
		data2 : Void*
	end
	
	struct SDL_SysWMmsg
	end
	
	struct SDL_SysWMEvent
		type : UInt32
		timestamp : UInt32
		msg : SDL_SysWMmsg*
	end
	
	union SDL_Event
		type : UInt32
		common : SDL_CommonEvent
		window : SDL_WindowEvent
		key : SDL_KeyboardEvent
		edit : SDL_TextEditingEvent
		text : SDL_TextInputEvent
		motion : SDL_MouseMotionEvent
		button : SDL_MouseButtonEvent
		wheel : SDL_MouseWheelEvent
		jaxis : SDL_JoyAxisEvent
		jball : SDL_JoyBallEvent
		jhat : SDL_JoyHatEvent
		jbutton : SDL_JoyButtonEvent
		jdevice : SDL_JoyDeviceEvent
		caxis : SDL_ControllerAxisEvent
		cbutton : SDL_ControllerButtonEvent
		cdevice : SDL_ControllerDeviceEvent
		quit : SDL_QuitEvent
		user : SDL_UserEvent
		syswm : SDL_SysWMEvent
		tfinger : SDL_TouchFingerEvent
		mgesture : SDL_MultiGestureEvent
		dgesture : SDL_DollarGestureEvent
		drop : SDL_DropEvent
		padding : UInt8[56]
	end
	
	enum SDL_eventaction
		SDL_ADDEVENT,
		SDL_PEEKEVENT,
		SDL_GETEVENT
	end
	
	alias SDL_EventFilter = Void*, SDL_Event* -> Int32
	struct SDL_Haptic2
	end
	
	alias SDL_Haptic = SDL_Haptic2
	struct SDL_HapticDirection
		type : UInt8
		dir : Int32[3]
	end
	
	struct SDL_HapticConstant
		type : UInt16
		direction : SDL_HapticDirection
		length : UInt32
		delay : UInt16
		button : UInt16
		interval : UInt16
		level : Int16
		attack_length : UInt16
		attack_level : UInt16
		fade_length : UInt16
		fade_level : UInt16
	end
	
	struct SDL_HapticPeriodic
		type : UInt16
		direction : SDL_HapticDirection
		length : UInt32
		delay : UInt16
		button : UInt16
		interval : UInt16
		period : UInt16
		magnitude : Int16
		offset : Int16
		phase : UInt16
		attack_length : UInt16
		attack_level : UInt16
		fade_length : UInt16
		fade_level : UInt16
	end
	
	struct SDL_HapticCondition
		type : UInt16
		direction : SDL_HapticDirection
		length : UInt32
		delay : UInt16
		button : UInt16
		interval : UInt16
		right_sat : UInt16[3]
		left_sat : UInt16[3]
		right_coeff : Int16[3]
		left_coeff : Int16[3]
		deadband : UInt16[3]
		center : Int16[3]
	end
	
	struct SDL_HapticRamp
		type : UInt16
		direction : SDL_HapticDirection
		length : UInt32
		delay : UInt16
		button : UInt16
		interval : UInt16
		start : Int16
		end_ : Int16
		attack_length : UInt16
		attack_level : UInt16
		fade_length : UInt16
		fade_level : UInt16
	end
	
	struct SDL_HapticLeftRight
		type : UInt16
		length : UInt32
		large_magnitude : UInt16
		small_magnitude : UInt16
	end
	
	struct SDL_HapticCustom
		type : UInt16
		direction : SDL_HapticDirection
		length : UInt32
		delay : UInt16
		button : UInt16
		interval : UInt16
		channels : UInt8
		period : UInt16
		samples : UInt16
		data : UInt16*
		attack_length : UInt16
		attack_level : UInt16
		fade_length : UInt16
		fade_level : UInt16
	end
	
	union SDL_HapticEffect
		type : UInt16
		constant : SDL_HapticConstant
		periodic : SDL_HapticPeriodic
		condition : SDL_HapticCondition
		ramp : SDL_HapticRamp
		leftright : SDL_HapticLeftRight
		custom : SDL_HapticCustom
	end
	
	enum SDL_HintPriority
		SDL_HINT_DEFAULT,
		SDL_HINT_NORMAL,
		SDL_HINT_OVERRIDE
	end
	
	alias SDL_HintCallback = Void*, UInt8*, UInt8*, UInt8* -> Void
	enum SDL_LogPriority
		SDL_LOG_PRIORITY_VERBOSE = 1,
		SDL_LOG_PRIORITY_DEBUG,
		SDL_LOG_PRIORITY_INFO,
		SDL_LOG_PRIORITY_WARN,
		SDL_LOG_PRIORITY_ERROR,
		SDL_LOG_PRIORITY_CRITICAL,
		SDL_NUM_LOG_PRIORITIES
	end
	
	alias SDL_LogOutputFunction = Void*, Int32, SDL_LogPriority, UInt8* -> Void
	enum SDL_MessageBoxFlags
		SDL_MESSAGEBOX_ERROR = 16,
		SDL_MESSAGEBOX_WARNING = 32,
		SDL_MESSAGEBOX_INFORMATION = 64
	end
	
	enum SDL_MessageBoxButtonFlags
		SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1,
		SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2
	end
	
	struct SDL_MessageBoxButtonData
		flags : UInt32
		buttonid : Int32
		text : UInt8*
	end
	
	struct SDL_MessageBoxColor
		r : UInt8
		g : UInt8
		b : UInt8
	end
	
	enum SDL_MessageBoxColorType
		SDL_MESSAGEBOX_COLOR_BACKGROUND,
		SDL_MESSAGEBOX_COLOR_TEXT,
		SDL_MESSAGEBOX_COLOR_BUTTON_BORDER,
		SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND,
		SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED,
		SDL_MESSAGEBOX_COLOR_MAX
	end
	
	struct SDL_MessageBoxColorScheme
		colors : SDL_MessageBoxColor[5]
	end
	
	struct SDL_MessageBoxData
		flags : UInt32
		window : SDL_Window*
		title : UInt8*
		message : UInt8*
		numbuttons : Int32
		buttons : SDL_MessageBoxButtonData*
		colorScheme : SDL_MessageBoxColorScheme*
	end
	
	enum SDL_PowerState
		SDL_POWERSTATE_UNKNOWN,
		SDL_POWERSTATE_ON_BATTERY,
		SDL_POWERSTATE_NO_BATTERY,
		SDL_POWERSTATE_CHARGING,
		SDL_POWERSTATE_CHARGED
	end
	
	enum SDL_RendererFlags
		SDL_RENDERER_SOFTWARE = 1,
		SDL_RENDERER_ACCELERATED = 2,
		SDL_RENDERER_PRESENTVSYNC = 4,
		SDL_RENDERER_TARGETTEXTURE = 8
	end
	
	struct SDL_RendererInfo
		name : UInt8*
		flags : UInt32
		num_texture_formats : UInt32
		texture_formats : UInt32[16]
		max_texture_width : Int32
		max_texture_height : Int32
	end
	
	enum SDL_TextureAccess
		SDL_TEXTUREACCESS_STATIC,
		SDL_TEXTUREACCESS_STREAMING,
		SDL_TEXTUREACCESS_TARGET
	end
	
	enum SDL_TextureModulate
		SDL_TEXTUREMODULATE_NONE = 0,
		SDL_TEXTUREMODULATE_COLOR = 1,
		SDL_TEXTUREMODULATE_ALPHA = 2
	end
	
	enum SDL_RendererFlip
		SDL_FLIP_NONE = 0,
		SDL_FLIP_HORIZONTAL = 1,
		SDL_FLIP_VERTICAL = 2
	end
	
	struct SDL_Renderer
	end
	
	struct SDL_Texture
	end
	
	alias SDL_TimerCallback = UInt32, Void* -> UInt32
	alias SDL_TimerID = Int32
	struct SDL_version
		major : UInt8
		minor : UInt8
		patch : UInt8
	end
	
	enum UNNAMED1
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
	end
	enum UNNAMED2
		SDL_BITMAPORDER_NONE,
		SDL_BITMAPORDER_4321,
		SDL_BITMAPORDER_1234
	end
	enum UNNAMED3
		SDL_PACKEDORDER_NONE,
		SDL_PACKEDORDER_XRGB,
		SDL_PACKEDORDER_RGBX,
		SDL_PACKEDORDER_ARGB,
		SDL_PACKEDORDER_RGBA,
		SDL_PACKEDORDER_XBGR,
		SDL_PACKEDORDER_BGRX,
		SDL_PACKEDORDER_ABGR,
		SDL_PACKEDORDER_BGRA
	end
	enum UNNAMED4
		SDL_ARRAYORDER_NONE,
		SDL_ARRAYORDER_RGB,
		SDL_ARRAYORDER_RGBA,
		SDL_ARRAYORDER_ARGB,
		SDL_ARRAYORDER_BGR,
		SDL_ARRAYORDER_BGRA,
		SDL_ARRAYORDER_ABGR
	end
	enum UNNAMED5
		SDL_PACKEDLAYOUT_NONE,
		SDL_PACKEDLAYOUT_332,
		SDL_PACKEDLAYOUT_4444,
		SDL_PACKEDLAYOUT_1555,
		SDL_PACKEDLAYOUT_5551,
		SDL_PACKEDLAYOUT_565,
		SDL_PACKEDLAYOUT_8888,
		SDL_PACKEDLAYOUT_2101010,
		SDL_PACKEDLAYOUT_1010102
	end
	enum UNNAMED6
		SDL_PIXELFORMAT_UNKNOWN,
		SDL_PIXELFORMAT_INDEX1LSB,
		SDL_PIXELFORMAT_INDEX1MSB,
		SDL_PIXELFORMAT_INDEX4LSB,
		SDL_PIXELFORMAT_INDEX4MSB,
		SDL_PIXELFORMAT_INDEX8,
		SDL_PIXELFORMAT_RGB332,
		SDL_PIXELFORMAT_RGB444,
		SDL_PIXELFORMAT_RGB555,
		SDL_PIXELFORMAT_BGR555,
		SDL_PIXELFORMAT_ARGB4444,
		SDL_PIXELFORMAT_RGBA4444,
		SDL_PIXELFORMAT_ABGR4444,
		SDL_PIXELFORMAT_BGRA4444,
		SDL_PIXELFORMAT_ARGB1555,
		SDL_PIXELFORMAT_RGBA5551,
		SDL_PIXELFORMAT_ABGR1555,
		SDL_PIXELFORMAT_BGRA5551,
		SDL_PIXELFORMAT_RGB565,
		SDL_PIXELFORMAT_BGR565,
		SDL_PIXELFORMAT_RGB24,
		SDL_PIXELFORMAT_BGR24,
		SDL_PIXELFORMAT_RGB888,
		SDL_PIXELFORMAT_RGBX8888,
		SDL_PIXELFORMAT_BGR888,
		SDL_PIXELFORMAT_BGRX8888,
		SDL_PIXELFORMAT_ARGB8888,
		SDL_PIXELFORMAT_RGBA8888,
		SDL_PIXELFORMAT_ABGR8888,
		SDL_PIXELFORMAT_BGRA8888,
		SDL_PIXELFORMAT_ARGB2101010,
		SDL_PIXELFORMAT_YV12,
		SDL_PIXELFORMAT_IYUV,
		SDL_PIXELFORMAT_YUY2,
		SDL_PIXELFORMAT_UYVY,
		SDL_PIXELFORMAT_YVYU
	end
	enum UNNAMED7
		SDLK_UNKNOWN = 0,
		SDLK_RETURN,
		SDLK_ESCAPE,
		SDLK_BACKSPACE,
		SDLK_TAB,
		SDLK_SPACE,
		SDLK_EXCLAIM,
		SDLK_QUOTEDBL,
		SDLK_HASH,
		SDLK_PERCENT,
		SDLK_DOLLAR,
		SDLK_AMPERSAND,
		SDLK_QUOTE,
		SDLK_LEFTPAREN,
		SDLK_RIGHTPAREN,
		SDLK_ASTERISK,
		SDLK_PLUS,
		SDLK_COMMA,
		SDLK_MINUS,
		SDLK_PERIOD,
		SDLK_SLASH,
		SDLK_0,
		SDLK_1,
		SDLK_2,
		SDLK_3,
		SDLK_4,
		SDLK_5,
		SDLK_6,
		SDLK_7,
		SDLK_8,
		SDLK_9,
		SDLK_COLON,
		SDLK_SEMICOLON,
		SDLK_LESS,
		SDLK_EQUALS,
		SDLK_GREATER,
		SDLK_QUESTION,
		SDLK_AT,
		SDLK_LEFTBRACKET,
		SDLK_BACKSLASH,
		SDLK_RIGHTBRACKET,
		SDLK_CARET,
		SDLK_UNDERSCORE,
		SDLK_BACKQUOTE,
		SDLK_a,
		SDLK_b,
		SDLK_c,
		SDLK_d,
		SDLK_e,
		SDLK_f,
		SDLK_g,
		SDLK_h,
		SDLK_i,
		SDLK_j,
		SDLK_k,
		SDLK_l,
		SDLK_m,
		SDLK_n,
		SDLK_o,
		SDLK_p,
		SDLK_q,
		SDLK_r,
		SDLK_s,
		SDLK_t,
		SDLK_u,
		SDLK_v,
		SDLK_w,
		SDLK_x,
		SDLK_y,
		SDLK_z,
		SDLK_CAPSLOCK,
		SDLK_F1,
		SDLK_F2,
		SDLK_F3,
		SDLK_F4,
		SDLK_F5,
		SDLK_F6,
		SDLK_F7,
		SDLK_F8,
		SDLK_F9,
		SDLK_F10,
		SDLK_F11,
		SDLK_F12,
		SDLK_PRINTSCREEN,
		SDLK_SCROLLLOCK,
		SDLK_PAUSE,
		SDLK_INSERT,
		SDLK_HOME,
		SDLK_PAGEUP,
		SDLK_DELETE,
		SDLK_END,
		SDLK_PAGEDOWN,
		SDLK_RIGHT,
		SDLK_LEFT,
		SDLK_DOWN,
		SDLK_UP,
		SDLK_NUMLOCKCLEAR,
		SDLK_KP_DIVIDE,
		SDLK_KP_MULTIPLY,
		SDLK_KP_MINUS,
		SDLK_KP_PLUS,
		SDLK_KP_ENTER,
		SDLK_KP_1,
		SDLK_KP_2,
		SDLK_KP_3,
		SDLK_KP_4,
		SDLK_KP_5,
		SDLK_KP_6,
		SDLK_KP_7,
		SDLK_KP_8,
		SDLK_KP_9,
		SDLK_KP_0,
		SDLK_KP_PERIOD,
		SDLK_APPLICATION,
		SDLK_POWER,
		SDLK_KP_EQUALS,
		SDLK_F13,
		SDLK_F14,
		SDLK_F15,
		SDLK_F16,
		SDLK_F17,
		SDLK_F18,
		SDLK_F19,
		SDLK_F20,
		SDLK_F21,
		SDLK_F22,
		SDLK_F23,
		SDLK_F24,
		SDLK_EXECUTE,
		SDLK_HELP,
		SDLK_MENU,
		SDLK_SELECT,
		SDLK_STOP,
		SDLK_AGAIN,
		SDLK_UNDO,
		SDLK_CUT,
		SDLK_COPY,
		SDLK_PASTE,
		SDLK_FIND,
		SDLK_MUTE,
		SDLK_VOLUMEUP,
		SDLK_VOLUMEDOWN,
		SDLK_KP_COMMA,
		SDLK_KP_EQUALSAS400,
		SDLK_ALTERASE,
		SDLK_SYSREQ,
		SDLK_CANCEL,
		SDLK_CLEAR,
		SDLK_PRIOR,
		SDLK_RETURN2,
		SDLK_SEPARATOR,
		SDLK_OUT,
		SDLK_OPER,
		SDLK_CLEARAGAIN,
		SDLK_CRSEL,
		SDLK_EXSEL,
		SDLK_KP_00,
		SDLK_KP_000,
		SDLK_THOUSANDSSEPARATOR,
		SDLK_DECIMALSEPARATOR,
		SDLK_CURRENCYUNIT,
		SDLK_CURRENCYSUBUNIT,
		SDLK_KP_LEFTPAREN,
		SDLK_KP_RIGHTPAREN,
		SDLK_KP_LEFTBRACE,
		SDLK_KP_RIGHTBRACE,
		SDLK_KP_TAB,
		SDLK_KP_BACKSPACE,
		SDLK_KP_A,
		SDLK_KP_B,
		SDLK_KP_C,
		SDLK_KP_D,
		SDLK_KP_E,
		SDLK_KP_F,
		SDLK_KP_XOR,
		SDLK_KP_POWER,
		SDLK_KP_PERCENT,
		SDLK_KP_LESS,
		SDLK_KP_GREATER,
		SDLK_KP_AMPERSAND,
		SDLK_KP_DBLAMPERSAND,
		SDLK_KP_VERTICALBAR,
		SDLK_KP_DBLVERTICALBAR,
		SDLK_KP_COLON,
		SDLK_KP_HASH,
		SDLK_KP_SPACE,
		SDLK_KP_AT,
		SDLK_KP_EXCLAM,
		SDLK_KP_MEMSTORE,
		SDLK_KP_MEMRECALL,
		SDLK_KP_MEMCLEAR,
		SDLK_KP_MEMADD,
		SDLK_KP_MEMSUBTRACT,
		SDLK_KP_MEMMULTIPLY,
		SDLK_KP_MEMDIVIDE,
		SDLK_KP_PLUSMINUS,
		SDLK_KP_CLEAR,
		SDLK_KP_CLEARENTRY,
		SDLK_KP_BINARY,
		SDLK_KP_OCTAL,
		SDLK_KP_DECIMAL,
		SDLK_KP_HEXADECIMAL,
		SDLK_LCTRL,
		SDLK_LSHIFT,
		SDLK_LALT,
		SDLK_LGUI,
		SDLK_RCTRL,
		SDLK_RSHIFT,
		SDLK_RALT,
		SDLK_RGUI,
		SDLK_MODE,
		SDLK_AUDIONEXT,
		SDLK_AUDIOPREV,
		SDLK_AUDIOSTOP,
		SDLK_AUDIOPLAY,
		SDLK_AUDIOMUTE,
		SDLK_MEDIASELECT,
		SDLK_WWW,
		SDLK_MAIL,
		SDLK_CALCULATOR,
		SDLK_COMPUTER,
		SDLK_AC_SEARCH,
		SDLK_AC_HOME,
		SDLK_AC_BACK,
		SDLK_AC_FORWARD,
		SDLK_AC_STOP,
		SDLK_AC_REFRESH,
		SDLK_AC_BOOKMARKS,
		SDLK_BRIGHTNESSDOWN,
		SDLK_BRIGHTNESSUP,
		SDLK_DISPLAYSWITCH,
		SDLK_KBDILLUMTOGGLE,
		SDLK_KBDILLUMDOWN,
		SDLK_KBDILLUMUP,
		SDLK_EJECT,
		SDLK_SLEEP
	end
	enum UNNAMED8
		SDL_LOG_CATEGORY_APPLICATION,
		SDL_LOG_CATEGORY_ERROR,
		SDL_LOG_CATEGORY_ASSERT,
		SDL_LOG_CATEGORY_SYSTEM,
		SDL_LOG_CATEGORY_AUDIO,
		SDL_LOG_CATEGORY_VIDEO,
		SDL_LOG_CATEGORY_RENDER,
		SDL_LOG_CATEGORY_INPUT,
		SDL_LOG_CATEGORY_TEST,
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
	end
	
	# Functions #
	
	fun getPlatform = SDL_GetPlatform() : UInt8*
	fun malloc = SDL_malloc(size : UInt64) : Void*
	fun calloc = SDL_calloc(nmemb : UInt64, size : UInt64) : Void*
	fun realloc = SDL_realloc(mem : Void*, size : UInt64) : Void*
	fun free = SDL_free(mem : Void*) : Void
	fun getenv = SDL_getenv(name : UInt8*) : UInt8*
	fun setenv = SDL_setenv(name : UInt8*, value : UInt8*, overwrite : Int32) : Int32
	fun qsort = SDL_qsort(base : Void*, nmemb : UInt64, size : UInt64, compare : Void*, (Void*) -> Int32) : Void
	fun abs = SDL_abs(x : Int32) : Int32
	fun isdigit = SDL_isdigit(x : Int32) : Int32
	fun isspace = SDL_isspace(x : Int32) : Int32
	fun toupper = SDL_toupper(x : Int32) : Int32
	fun tolower = SDL_tolower(x : Int32) : Int32
	fun memset = SDL_memset(dst : Void*, c : Int32, len : UInt64) : Void*
	fun memset4 = SDL_memset4(dst : Void*, val : UInt32, dwords : UInt64) : Void
	fun memcpy = SDL_memcpy(dst : Void*, src : Void*, len : UInt64) : Void*
	fun memcpy4 = SDL_memcpy4(dst : Void*, src : Void*, dwords : UInt64) : Void*
	fun memmove = SDL_memmove(dst : Void*, src : Void*, len : UInt64) : Void*
	fun memcmp = SDL_memcmp(s1 : Void*, s2 : Void*, len : UInt64) : Int32
	fun wcslen = SDL_wcslen(wstr : Int16*) : UInt64
	fun wcslcpy = SDL_wcslcpy(dst : Int16*, src : Int16*, maxlen : UInt64) : UInt64
	fun wcslcat = SDL_wcslcat(dst : Int16*, src : Int16*, maxlen : UInt64) : UInt64
	fun strlen = SDL_strlen(str : UInt8*) : UInt64
	fun strlcpy = SDL_strlcpy(dst : UInt8*, src : UInt8*, maxlen : UInt64) : UInt64
	fun utf8strlcpy = SDL_utf8strlcpy(dst : UInt8*, src : UInt8*, dst_bytes : UInt64) : UInt64
	fun strlcat = SDL_strlcat(dst : UInt8*, src : UInt8*, maxlen : UInt64) : UInt64
	fun strdup = SDL_strdup(str : UInt8*) : UInt8*
	fun strrev = SDL_strrev(str : UInt8*) : UInt8*
	fun strupr = SDL_strupr(str : UInt8*) : UInt8*
	fun strlwr = SDL_strlwr(str : UInt8*) : UInt8*
	fun strchr = SDL_strchr(str : UInt8*, c : Int32) : UInt8*
	fun strrchr = SDL_strrchr(str : UInt8*, c : Int32) : UInt8*
	fun strstr = SDL_strstr(haystack : UInt8*, needle : UInt8*) : UInt8*
	fun itoa = SDL_itoa(value : Int32, str : UInt8*, radix : Int32) : UInt8*
	fun uitoa = SDL_uitoa(value : UInt32, str : UInt8*, radix : Int32) : UInt8*
	fun ltoa = SDL_ltoa(value : Int64, str : UInt8*, radix : Int32) : UInt8*
	fun ultoa = SDL_ultoa(value : UInt64, str : UInt8*, radix : Int32) : UInt8*
	fun lltoa = SDL_lltoa(value : Int64, str : UInt8*, radix : Int32) : UInt8*
	fun ulltoa = SDL_ulltoa(value : UInt64, str : UInt8*, radix : Int32) : UInt8*
	fun atoi = SDL_atoi(str : UInt8*) : Int32
	fun atof = SDL_atof(str : UInt8*) : Float64
	fun strtol = SDL_strtol(str : UInt8*, endp : UInt8**, base : Int32) : Int64
	fun strtoul = SDL_strtoul(str : UInt8*, endp : UInt8**, base : Int32) : UInt64
	fun strtoll = SDL_strtoll(str : UInt8*, endp : UInt8**, base : Int32) : Int64
	fun strtoull = SDL_strtoull(str : UInt8*, endp : UInt8**, base : Int32) : UInt64
	fun strtod = SDL_strtod(str : UInt8*, endp : UInt8**) : Float64
	fun strcmp = SDL_strcmp(str1 : UInt8*, str2 : UInt8*) : Int32
	fun strncmp = SDL_strncmp(str1 : UInt8*, str2 : UInt8*, maxlen : UInt64) : Int32
	fun strcasecmp = SDL_strcasecmp(str1 : UInt8*, str2 : UInt8*) : Int32
	fun strncasecmp = SDL_strncasecmp(str1 : UInt8*, str2 : UInt8*, len : UInt64) : Int32
	fun sscanf = SDL_sscanf(text : UInt8*, fmt : UInt8*) : Int32
	#fun vsscanf = SDL_vsscanf(text : UInt8*, fmt : UInt8*, ap : __va_list_tag*) : Int32
	fun snprintf = SDL_snprintf(text : UInt8*, maxlen : UInt64, fmt : UInt8*) : Int32
	#fun vsnprintf = SDL_vsnprintf(text : UInt8*, maxlen : UInt64, fmt : UInt8*, ap : __va_list_tag*) : Int32
	fun acos = SDL_acos(x : Float64) : Float64
	fun asin = SDL_asin(x : Float64) : Float64
	fun atan = SDL_atan(x : Float64) : Float64
	fun atan2 = SDL_atan2(x : Float64, y : Float64) : Float64
	fun ceil = SDL_ceil(x : Float64) : Float64
	fun copysign = SDL_copysign(x : Float64, y : Float64) : Float64
	fun cos = SDL_cos(x : Float64) : Float64
	fun cosf = SDL_cosf(x : Float32) : Float32
	fun fabs = SDL_fabs(x : Float64) : Float64
	fun floor = SDL_floor(x : Float64) : Float64
	fun mlog = SDL_log(x : Float64) : Float64
	fun pow = SDL_pow(x : Float64, y : Float64) : Float64
	fun scalbn = SDL_scalbn(x : Float64, n : Int32) : Float64
	fun sin = SDL_sin(x : Float64) : Float64
	fun sinf = SDL_sinf(x : Float32) : Float32
	fun sqrt = SDL_sqrt(x : Float64) : Float64
	fun iconv_open = SDL_iconv_open(tocode : UInt8*, fromcode : UInt8*) : SDL_iconv_t
	fun iconv_close = SDL_iconv_close(cd : SDL_iconv_t) : Int32
	fun iconv = SDL_iconv(cd : SDL_iconv_t, inbuf : UInt8**, inbytesleft : UInt64*, outbuf : UInt8**, outbytesleft : UInt64*) : UInt64
	fun iconv_string = SDL_iconv_string(tocode : UInt8*, fromcode : UInt8*, inbuf : UInt8*, inbytesleft : UInt64) : UInt8*
	fun main = SDL_main(argc : Int32, argv : UInt8**) : Int32
	fun setMainReady = SDL_SetMainReady() : Void
	fun reportAssertion = SDL_ReportAssertion(null : SDL_assert_data*, null : UInt8*, null : UInt8*, null : Int32) : SDL_assert_state
	fun setAssertionHandler = SDL_SetAssertionHandler(handler : SDL_AssertionHandler, userdata : Void*) : Void
	fun getDefaultAssertionHandler = SDL_GetDefaultAssertionHandler() : SDL_AssertionHandler
	fun getAssertionHandler = SDL_GetAssertionHandler(puserdata : Void**) : SDL_AssertionHandler
	fun getAssertionReport = SDL_GetAssertionReport() : SDL_assert_data*
	fun resetAssertionReport = SDL_ResetAssertionReport() : Void
	fun atomicTryLock = SDL_AtomicTryLock(lock : SDL_SpinLock*) : Bool
	fun atomicLock = SDL_AtomicLock(lock : SDL_SpinLock*) : Void
	fun atomicUnlock = SDL_AtomicUnlock(lock : SDL_SpinLock*) : Void
	fun atomicCAS = SDL_AtomicCAS(a : SDL_atomic_t*, oldval : Int32, newval : Int32) : Bool
	fun atomicSet = SDL_AtomicSet(a : SDL_atomic_t*, v : Int32) : Int32
	fun atomicGet = SDL_AtomicGet(a : SDL_atomic_t*) : Int32
	fun atomicAdd = SDL_AtomicAdd(a : SDL_atomic_t*, v : Int32) : Int32
	fun atomicCASPtr = SDL_AtomicCASPtr(a : Void**, oldval : Void*, newval : Void*) : Bool
	fun atomicSetPtr = SDL_AtomicSetPtr(a : Void**, v : Void*) : Void*
	fun atomicGetPtr = SDL_AtomicGetPtr(a : Void**) : Void*
	fun setError = SDL_SetError(fmt : UInt8*) : Int32
	fun getError = SDL_GetError() : UInt8*
	fun clearError = SDL_ClearError() : Void
	fun error = SDL_Error(code : SDL_errorcode) : Int32
	fun swap16 = SDL_Swap16(x : UInt16) : UInt16
	fun swap32 = SDL_Swap32(x : UInt32) : UInt32
	fun swap64 = SDL_Swap64(x : UInt64) : UInt64
	fun swapFloat = SDL_SwapFloat(x : Float32) : Float32
	fun createMutex = SDL_CreateMutex() : SDL_mutex*
	fun lockMutex = SDL_LockMutex(mutex : SDL_mutex*) : Int32
	fun tryLockMutex = SDL_TryLockMutex(mutex : SDL_mutex*) : Int32
	fun unlockMutex = SDL_UnlockMutex(mutex : SDL_mutex*) : Int32
	fun destroyMutex = SDL_DestroyMutex(mutex : SDL_mutex*) : Void
	fun createSemaphore = SDL_CreateSemaphore(initial_value : UInt32) : SDL_sem*
	fun destroySemaphore = SDL_DestroySemaphore(sem : SDL_sem*) : Void
	fun semWait = SDL_SemWait(sem : SDL_sem*) : Int32
	fun semTryWait = SDL_SemTryWait(sem : SDL_sem*) : Int32
	fun semWaitTimeout = SDL_SemWaitTimeout(sem : SDL_sem*, ms : UInt32) : Int32
	fun semPost = SDL_SemPost(sem : SDL_sem*) : Int32
	fun semValue = SDL_SemValue(sem : SDL_sem*) : UInt32
	fun createCond = SDL_CreateCond() : SDL_cond*
	fun destroyCond = SDL_DestroyCond(cond : SDL_cond*) : Void
	fun condSignal = SDL_CondSignal(cond : SDL_cond*) : Int32
	fun condBroadcast = SDL_CondBroadcast(cond : SDL_cond*) : Int32
	fun condWait = SDL_CondWait(cond : SDL_cond*, mutex : SDL_mutex*) : Int32
	fun condWaitTimeout = SDL_CondWaitTimeout(cond : SDL_cond*, mutex : SDL_mutex*, ms : UInt32) : Int32
	fun createThread = SDL_CreateThread(fn : SDL_ThreadFunction, name : UInt8*, data : Void*) : SDL_Thread*
	fun getThreadName = SDL_GetThreadName(thread : SDL_Thread*) : UInt8*
	fun threadID = SDL_ThreadID() : SDL_threadID
	fun getThreadID = SDL_GetThreadID(thread : SDL_Thread*) : SDL_threadID
	fun setThreadPriority = SDL_SetThreadPriority(priority : SDL_ThreadPriority) : Int32
	fun waitThread = SDL_WaitThread(thread : SDL_Thread*, status : Int32*) : Void
	fun detachThread = SDL_DetachThread(thread : SDL_Thread*) : Void
	fun tlsCreate = SDL_TLSCreate() : SDL_TLSID
	fun tlsGet = SDL_TLSGet(id : SDL_TLSID) : Void*
	fun tlsSet = SDL_TLSSet(id : SDL_TLSID, value : Void*, destructor : Void* -> Void) : Int32
	fun rwFromFile = SDL_RWFromFile(file : UInt8*, mode : UInt8*) : SDL_RWops*
	#fun rWFromFP = SDL_RWFromFP(fp : File*, autoclose : Bool) : SDL_RWops*
	fun rwFromMem = SDL_RWFromMem(mem : Void*, size : Int32) : SDL_RWops*
	fun rwFromConstMem = SDL_RWFromConstMem(mem : Void*, size : Int32) : SDL_RWops*
	fun allocRW = SDL_AllocRW() : SDL_RWops*
	fun freeRW = SDL_FreeRW(area : SDL_RWops*) : Void
	fun readU8 = SDL_ReadU8(src : SDL_RWops*) : UInt8
	fun readLE16 = SDL_ReadLE16(src : SDL_RWops*) : UInt16
	fun readBE16 = SDL_ReadBE16(src : SDL_RWops*) : UInt16
	fun readLE32 = SDL_ReadLE32(src : SDL_RWops*) : UInt32
	fun readBE32 = SDL_ReadBE32(src : SDL_RWops*) : UInt32
	fun readLE64 = SDL_ReadLE64(src : SDL_RWops*) : UInt64
	fun readBE64 = SDL_ReadBE64(src : SDL_RWops*) : UInt64
	fun writeU8 = SDL_WriteU8(dst : SDL_RWops*, value : UInt8) : UInt64
	fun writeLE16 = SDL_WriteLE16(dst : SDL_RWops*, value : UInt16) : UInt64
	fun writeBE16 = SDL_WriteBE16(dst : SDL_RWops*, value : UInt16) : UInt64
	fun writeLE32 = SDL_WriteLE32(dst : SDL_RWops*, value : UInt32) : UInt64
	fun writeBE32 = SDL_WriteBE32(dst : SDL_RWops*, value : UInt32) : UInt64
	fun writeLE64 = SDL_WriteLE64(dst : SDL_RWops*, value : UInt64) : UInt64
	fun writeBE64 = SDL_WriteBE64(dst : SDL_RWops*, value : UInt64) : UInt64
	fun getNumAudioDrivers = SDL_GetNumAudioDrivers() : Int32
	fun getAudioDriver = SDL_GetAudioDriver(index : Int32) : UInt8*
	fun audioInit = SDL_AudioInit(driver_name : UInt8*) : Int32
	fun audioQuit = SDL_AudioQuit() : Void
	fun getCurrentAudioDriver = SDL_GetCurrentAudioDriver() : UInt8*
	fun openAudio = SDL_OpenAudio(desired : SDL_AudioSpec*, obtained : SDL_AudioSpec*) : Int32
	fun getNumAudioDevices = SDL_GetNumAudioDevices(iscapture : Int32) : Int32
	fun getAudioDeviceName = SDL_GetAudioDeviceName(index : Int32, iscapture : Int32) : UInt8*
	fun openAudioDevice = SDL_OpenAudioDevice(device : UInt8*, iscapture : Int32, desired : SDL_AudioSpec*, obtained : SDL_AudioSpec*, allowed_changes : Int32) : SDL_AudioDeviceID
	fun getAudioStatus = SDL_GetAudioStatus() : SDL_AudioStatus
	fun getAudioDeviceStatus = SDL_GetAudioDeviceStatus(dev : SDL_AudioDeviceID) : SDL_AudioStatus
	fun pauseAudio = SDL_PauseAudio(pause_on : Int32) : Void
	fun pauseAudioDevice = SDL_PauseAudioDevice(dev : SDL_AudioDeviceID, pause_on : Int32) : Void
	fun loadWAV_RW = SDL_LoadWAV_RW(src : SDL_RWops*, freesrc : Int32, spec : SDL_AudioSpec*, audio_buf : UInt8**, audio_len : UInt32*) : SDL_AudioSpec*
	fun freeWAV = SDL_FreeWAV(audio_buf : UInt8*) : Void
	fun buildAudioCVT = SDL_BuildAudioCVT(cvt : SDL_AudioCVT*, src_format : SDL_AudioFormat, src_channels : UInt8, src_rate : Int32, dst_format : SDL_AudioFormat, dst_channels : UInt8, dst_rate : Int32) : Int32
	fun convertAudio = SDL_ConvertAudio(cvt : SDL_AudioCVT*) : Int32
	fun mixAudio = SDL_MixAudio(dst : UInt8*, src : UInt8*, len : UInt32, volume : Int32) : Void
	fun mixAudioFormat = SDL_MixAudioFormat(dst : UInt8*, src : UInt8*, format : SDL_AudioFormat, len : UInt32, volume : Int32) : Void
	fun lockAudio = SDL_LockAudio() : Void
	fun lockAudioDevice = SDL_LockAudioDevice(dev : SDL_AudioDeviceID) : Void
	fun unlockAudio = SDL_UnlockAudio() : Void
	fun unlockAudioDevice = SDL_UnlockAudioDevice(dev : SDL_AudioDeviceID) : Void
	fun closeAudio = SDL_CloseAudio() : Void
	fun closeAudioDevice = SDL_CloseAudioDevice(dev : SDL_AudioDeviceID) : Void
	fun setClipboardText = SDL_SetClipboardText(text : UInt8*) : Int32
	fun getClipboardText = SDL_GetClipboardText() : UInt8*
	fun hasClipboardText = SDL_HasClipboardText() : Bool
	fun getCPUCount = SDL_GetCPUCount() : Int32
	fun getCPUCacheLineSize = SDL_GetCPUCacheLineSize() : Int32
	fun hasRDTSC = SDL_HasRDTSC() : Bool
	fun hasAltiVec = SDL_HasAltiVec() : Bool
	fun hasMMX = SDL_HasMMX() : Bool
	fun has3DNow = SDL_Has3DNow() : Bool
	fun hasSSE = SDL_HasSSE() : Bool
	fun hasSSE2 = SDL_HasSSE2() : Bool
	fun hasSSE3 = SDL_HasSSE3() : Bool
	fun hasSSE41 = SDL_HasSSE41() : Bool
	fun hasSSE42 = SDL_HasSSE42() : Bool
	fun hasAVX = SDL_HasAVX() : Bool
	fun getSystemRAM = SDL_GetSystemRAM() : Int32
	fun getPixelFormatName = SDL_GetPixelFormatName(format : UInt32) : UInt8*
	fun pixelFormatEnumToMasks = SDL_PixelFormatEnumToMasks(format : UInt32, bpp : Int32*, rmask : UInt32*, gmask : UInt32*, bmask : UInt32*, amask : UInt32*) : Bool
	fun masksToPixelFormatEnum = SDL_MasksToPixelFormatEnum(bpp : Int32, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : UInt32
	fun allocFormat = SDL_AllocFormat(pixel_format : UInt32) : SDL_PixelFormat*
	fun freeFormat = SDL_FreeFormat(format : SDL_PixelFormat*) : Void
	fun allocPalette = SDL_AllocPalette(ncolors : Int32) : SDL_Palette*
	fun setPixelFormatPalette = SDL_SetPixelFormatPalette(format : SDL_PixelFormat*, palette : SDL_Palette*) : Int32
	fun setPaletteColors = SDL_SetPaletteColors(palette : SDL_Palette*, colors : SDL_Color*, firstcolor : Int32, ncolors : Int32) : Int32
	fun freePalette = SDL_FreePalette(palette : SDL_Palette*) : Void
	fun mapRGB = SDL_MapRGB(format : SDL_PixelFormat*, r : UInt8, g : UInt8, b : UInt8) : UInt32
	fun mapRGBA = SDL_MapRGBA(format : SDL_PixelFormat*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : UInt32
	fun getRGB = SDL_GetRGB(pixel : UInt32, format : SDL_PixelFormat*, r : UInt8*, g : UInt8*, b : UInt8*) : Void
	fun getRGBA = SDL_GetRGBA(pixel : UInt32, format : SDL_PixelFormat*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Void
	fun calculateGammaRamp = SDL_CalculateGammaRamp(gamma : Float32, ramp : UInt16*) : Void
	fun rectEmpty = SDL_RectEmpty(r : SDL_Rect*) : Bool
	fun rectEquals = SDL_RectEquals(a : SDL_Rect*, b : SDL_Rect*) : Bool
	fun hasIntersection = SDL_HasIntersection(a : SDL_Rect*, b : SDL_Rect*) : Bool
	fun intersectRect = SDL_IntersectRect(a : SDL_Rect*, b : SDL_Rect*, result : SDL_Rect*) : Bool
	fun unionRect = SDL_UnionRect(a : SDL_Rect*, b : SDL_Rect*, result : SDL_Rect*) : Void
	fun enclosePoints = SDL_EnclosePoints(points : SDL_Point*, count : Int32, clip : SDL_Rect*, result : SDL_Rect*) : Bool
	fun intersectRectAndLine = SDL_IntersectRectAndLine(rect : SDL_Rect*, x1 : Int32*, y1 : Int32*, x2 : Int32*, y2 : Int32*) : Bool
	fun createRGBSurface = SDL_CreateRGBSurface(flags : UInt32, width : Int32, height : Int32, depth : Int32, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : SDL_Surface*
	fun createRGBSurfaceFrom = SDL_CreateRGBSurfaceFrom(pixels : Void*, width : Int32, height : Int32, depth : Int32, pitch : Int32, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : SDL_Surface*
	fun freeSurface = SDL_FreeSurface(surface : SDL_Surface*) : Void
	fun setSurfacePalette = SDL_SetSurfacePalette(surface : SDL_Surface*, palette : SDL_Palette*) : Int32
	fun lockSurface = SDL_LockSurface(surface : SDL_Surface*) : Int32
	fun unlockSurface = SDL_UnlockSurface(surface : SDL_Surface*) : Void
	fun loadBMP_RW = SDL_LoadBMP_RW(src : SDL_RWops*, freesrc : Int32) : SDL_Surface*
	fun saveBMP_RW = SDL_SaveBMP_RW(surface : SDL_Surface*, dst : SDL_RWops*, freedst : Int32) : Int32
	fun setSurfaceRLE = SDL_SetSurfaceRLE(surface : SDL_Surface*, flag : Int32) : Int32
	fun setColorKey = SDL_SetColorKey(surface : SDL_Surface*, flag : Int32, key : UInt32) : Int32
	fun getColorKey = SDL_GetColorKey(surface : SDL_Surface*, key : UInt32*) : Int32
	fun setSurfaceColorMod = SDL_SetSurfaceColorMod(surface : SDL_Surface*, r : UInt8, g : UInt8, b : UInt8) : Int32
	fun getSurfaceColorMod = SDL_GetSurfaceColorMod(surface : SDL_Surface*, r : UInt8*, g : UInt8*, b : UInt8*) : Int32
	fun setSurfaceAlphaMod = SDL_SetSurfaceAlphaMod(surface : SDL_Surface*, alpha : UInt8) : Int32
	fun getSurfaceAlphaMod = SDL_GetSurfaceAlphaMod(surface : SDL_Surface*, alpha : UInt8*) : Int32
	fun setSurfaceBlendMode = SDL_SetSurfaceBlendMode(surface : SDL_Surface*, blendMode : SDL_BlendMode) : Int32
	fun getSurfaceBlendMode = SDL_GetSurfaceBlendMode(surface : SDL_Surface*, blendMode : SDL_BlendMode*) : Int32
	fun setClipRect = SDL_SetClipRect(surface : SDL_Surface*, rect : SDL_Rect*) : Bool
	fun getClipRect = SDL_GetClipRect(surface : SDL_Surface*, rect : SDL_Rect*) : Void
	fun convertSurface = SDL_ConvertSurface(src : SDL_Surface*, fmt : SDL_PixelFormat*, flags : UInt32) : SDL_Surface*
	fun convertSurfaceFormat = SDL_ConvertSurfaceFormat(src : SDL_Surface*, pixel_format : UInt32, flags : UInt32) : SDL_Surface*
	fun convertPixels = SDL_ConvertPixels(width : Int32, height : Int32, src_format : UInt32, src : Void*, src_pitch : Int32, dst_format : UInt32, dst : Void*, dst_pitch : Int32) : Int32
	fun fillRect = SDL_FillRect(dst : SDL_Surface*, rect : SDL_Rect*, color : UInt32) : Int32
	fun fillRects = SDL_FillRects(dst : SDL_Surface*, rects : SDL_Rect*, count : Int32, color : UInt32) : Int32
	fun upperBlit = SDL_UpperBlit(src : SDL_Surface*, srcrect : SDL_Rect*, dst : SDL_Surface*, dstrect : SDL_Rect*) : Int32
	fun lowerBlit = SDL_LowerBlit(src : SDL_Surface*, srcrect : SDL_Rect*, dst : SDL_Surface*, dstrect : SDL_Rect*) : Int32
	fun softStretch = SDL_SoftStretch(src : SDL_Surface*, srcrect : SDL_Rect*, dst : SDL_Surface*, dstrect : SDL_Rect*) : Int32
	fun upperBlitScaled = SDL_UpperBlitScaled(src : SDL_Surface*, srcrect : SDL_Rect*, dst : SDL_Surface*, dstrect : SDL_Rect*) : Int32
	fun lowerBlitScaled = SDL_LowerBlitScaled(src : SDL_Surface*, srcrect : SDL_Rect*, dst : SDL_Surface*, dstrect : SDL_Rect*) : Int32
	fun getNumVideoDrivers = SDL_GetNumVideoDrivers() : Int32
	fun getVideoDriver = SDL_GetVideoDriver(index : Int32) : UInt8*
	fun videoInit = SDL_VideoInit(driver_name : UInt8*) : Int32
	fun videoQuit = SDL_VideoQuit() : Void
	fun getCurrentVideoDriver = SDL_GetCurrentVideoDriver() : UInt8*
	fun getNumVideoDisplays = SDL_GetNumVideoDisplays() : Int32
	fun getDisplayName = SDL_GetDisplayName(displayIndex : Int32) : UInt8*
	fun getDisplayBounds = SDL_GetDisplayBounds(displayIndex : Int32, rect : SDL_Rect*) : Int32
	fun getNumDisplayModes = SDL_GetNumDisplayModes(displayIndex : Int32) : Int32
	fun getDisplayMode = SDL_GetDisplayMode(displayIndex : Int32, modeIndex : Int32, mode : SDL_DisplayMode*) : Int32
	fun getDesktopDisplayMode = SDL_GetDesktopDisplayMode(displayIndex : Int32, mode : SDL_DisplayMode*) : Int32
	fun getCurrentDisplayMode = SDL_GetCurrentDisplayMode(displayIndex : Int32, mode : SDL_DisplayMode*) : Int32
	fun getClosestDisplayMode = SDL_GetClosestDisplayMode(displayIndex : Int32, mode : SDL_DisplayMode*, closest : SDL_DisplayMode*) : SDL_DisplayMode*
	fun getWindowDisplayIndex = SDL_GetWindowDisplayIndex(window : SDL_Window*) : Int32
	fun setWindowDisplayMode = SDL_SetWindowDisplayMode(window : SDL_Window*, mode : SDL_DisplayMode*) : Int32
	fun getWindowDisplayMode = SDL_GetWindowDisplayMode(window : SDL_Window*, mode : SDL_DisplayMode*) : Int32
	fun getWindowPixelFormat = SDL_GetWindowPixelFormat(window : SDL_Window*) : UInt32
	fun createWindow = SDL_CreateWindow(title : UInt8*, x : Int32, y : Int32, w : Int32, h : Int32, flags : SDL_WindowFlags) : SDL_Window*
	fun createWindowFrom = SDL_CreateWindowFrom(data : Void*) : SDL_Window*
	fun getWindowID = SDL_GetWindowID(window : SDL_Window*) : UInt32
	fun getWindowFromID = SDL_GetWindowFromID(id : UInt32) : SDL_Window*
	fun getWindowFlags = SDL_GetWindowFlags(window : SDL_Window*) : UInt32
	fun setWindowTitle = SDL_SetWindowTitle(window : SDL_Window*, title : UInt8*) : Void
	fun getWindowTitle = SDL_GetWindowTitle(window : SDL_Window*) : UInt8*
	fun setWindowIcon = SDL_SetWindowIcon(window : SDL_Window*, icon : SDL_Surface*) : Void
	fun setWindowData = SDL_SetWindowData(window : SDL_Window*, name : UInt8*, userdata : Void*) : Void*
	fun getWindowData = SDL_GetWindowData(window : SDL_Window*, name : UInt8*) : Void*
	fun setWindowPosition = SDL_SetWindowPosition(window : SDL_Window*, x : Int32, y : Int32) : Void
	fun getWindowPosition = SDL_GetWindowPosition(window : SDL_Window*, x : Int32*, y : Int32*) : Void
	fun setWindowSize = SDL_SetWindowSize(window : SDL_Window*, w : Int32, h : Int32) : Void
	fun getWindowSize = SDL_GetWindowSize(window : SDL_Window*, w : Int32*, h : Int32*) : Void
	fun setWindowMinimumSize = SDL_SetWindowMinimumSize(window : SDL_Window*, min_w : Int32, min_h : Int32) : Void
	fun getWindowMinimumSize = SDL_GetWindowMinimumSize(window : SDL_Window*, w : Int32*, h : Int32*) : Void
	fun setWindowMaximumSize = SDL_SetWindowMaximumSize(window : SDL_Window*, max_w : Int32, max_h : Int32) : Void
	fun getWindowMaximumSize = SDL_GetWindowMaximumSize(window : SDL_Window*, w : Int32*, h : Int32*) : Void
	fun setWindowBordered = SDL_SetWindowBordered(window : SDL_Window*, bordered : Bool) : Void
	fun showWindow = SDL_ShowWindow(window : SDL_Window*) : Void
	fun hideWindow = SDL_HideWindow(window : SDL_Window*) : Void
	fun raiseWindow = SDL_RaiseWindow(window : SDL_Window*) : Void
	fun maximizeWindow = SDL_MaximizeWindow(window : SDL_Window*) : Void
	fun minimizeWindow = SDL_MinimizeWindow(window : SDL_Window*) : Void
	fun restoreWindow = SDL_RestoreWindow(window : SDL_Window*) : Void
	fun setWindowFullscreen = SDL_SetWindowFullscreen(window : SDL_Window*, flags : UInt32) : Int32
	fun getWindowSurface = SDL_GetWindowSurface(window : SDL_Window*) : SDL_Surface*
	fun updateWindowSurface = SDL_UpdateWindowSurface(window : SDL_Window*) : Int32
	fun updateWindowSurfaceRects = SDL_UpdateWindowSurfaceRects(window : SDL_Window*, rects : SDL_Rect*, numrects : Int32) : Int32
	fun setWindowGrab = SDL_SetWindowGrab(window : SDL_Window*, grabbed : Bool) : Void
	fun getWindowGrab = SDL_GetWindowGrab(window : SDL_Window*) : Bool
	fun setWindowBrightness = SDL_SetWindowBrightness(window : SDL_Window*, brightness : Float32) : Int32
	fun getWindowBrightness = SDL_GetWindowBrightness(window : SDL_Window*) : Float32
	fun setWindowGammaRamp = SDL_SetWindowGammaRamp(window : SDL_Window*, red : UInt16*, green : UInt16*, blue : UInt16*) : Int32
	fun getWindowGammaRamp = SDL_GetWindowGammaRamp(window : SDL_Window*, red : UInt16*, green : UInt16*, blue : UInt16*) : Int32
	fun destroyWindow = SDL_DestroyWindow(window : SDL_Window*) : Void
	fun isScreenSaverEnabled = SDL_IsScreenSaverEnabled() : Bool
	fun enableScreenSaver = SDL_EnableScreenSaver() : Void
	fun disableScreenSaver = SDL_DisableScreenSaver() : Void
	fun gl_LoadLibrary = SDL_GL_LoadLibrary(path : UInt8*) : Int32
	fun gl_GetProcAddress = SDL_GL_GetProcAddress(proc : UInt8*) : Void*
	fun gl_UnloadLibrary = SDL_GL_UnloadLibrary() : Void
	fun gl_ExtensionSupported = SDL_GL_ExtensionSupported(extension : UInt8*) : Bool
	fun gl_ResetAttributes = SDL_GL_ResetAttributes() : Void
	fun gl_SetAttribute = SDL_GL_SetAttribute(attr : SDL_GLattr, value : Int32) : Int32
	fun gl_GetAttribute = SDL_GL_GetAttribute(attr : SDL_GLattr, value : Int32*) : Int32
	fun gl_CreateContext = SDL_GL_CreateContext(window : SDL_Window*) : SDL_GLContext
	fun gl_MakeCurrent = SDL_GL_MakeCurrent(window : SDL_Window*, context : SDL_GLContext) : Int32
	fun gl_GetCurrentWindow = SDL_GL_GetCurrentWindow() : SDL_Window*
	fun gl_GetCurrentContext = SDL_GL_GetCurrentContext() : SDL_GLContext
	fun gl_GetDrawableSize = SDL_GL_GetDrawableSize(window : SDL_Window*, w : Int32*, h : Int32*) : Void
	fun gl_SetSwapInterval = SDL_GL_SetSwapInterval(interval : Int32) : Int32
	fun gl_GetSwapInterval = SDL_GL_GetSwapInterval() : Int32
	fun gl_SwapWindow = SDL_GL_SwapWindow(window : SDL_Window*) : Void
	fun gl_DeleteContext = SDL_GL_DeleteContext(context : SDL_GLContext) : Void
	fun getKeyboardFocus = SDL_GetKeyboardFocus() : SDL_Window*
	fun getKeyboardState = SDL_GetKeyboardState(numkeys : Int32*) : UInt8*
	fun getModState = SDL_GetModState() : SDL_Keymod
	fun setModState = SDL_SetModState(modstate : SDL_Keymod) : Void
	fun getKeyFromScancode = SDL_GetKeyFromScancode(scancode : SDL_Scancode) : SDL_Keycode
	fun getScancodeFromKey = SDL_GetScancodeFromKey(key : SDL_Keycode) : SDL_Scancode
	fun getScancodeName = SDL_GetScancodeName(scancode : SDL_Scancode) : UInt8*
	fun getScancodeFromName = SDL_GetScancodeFromName(name : UInt8*) : SDL_Scancode
	fun getKeyName = SDL_GetKeyName(key : SDL_Keycode) : UInt8*
	fun getKeyFromName = SDL_GetKeyFromName(name : UInt8*) : SDL_Keycode
	fun startTextInput = SDL_StartTextInput() : Void
	fun isTextInputActive = SDL_IsTextInputActive() : Bool
	fun stopTextInput = SDL_StopTextInput() : Void
	fun setTextInputRect = SDL_SetTextInputRect(rect : SDL_Rect*) : Void
	fun hasScreenKeyboardSupport = SDL_HasScreenKeyboardSupport() : Bool
	fun isScreenKeyboardShown = SDL_IsScreenKeyboardShown(window : SDL_Window*) : Bool
	fun getMouseFocus = SDL_GetMouseFocus() : SDL_Window*
	fun getMouseState = SDL_GetMouseState(x : Int32*, y : Int32*) : UInt32
	fun getRelativeMouseState = SDL_GetRelativeMouseState(x : Int32*, y : Int32*) : UInt32
	fun warpMouseInWindow = SDL_WarpMouseInWindow(window : SDL_Window*, x : Int32, y : Int32) : Void
	fun setRelativeMouseMode = SDL_SetRelativeMouseMode(enabled : Bool) : Int32
	fun getRelativeMouseMode = SDL_GetRelativeMouseMode() : Bool
	fun createCursor = SDL_CreateCursor(data : UInt8*, mask : UInt8*, w : Int32, h : Int32, hot_x : Int32, hot_y : Int32) : SDL_Cursor*
	fun createColorCursor = SDL_CreateColorCursor(surface : SDL_Surface*, hot_x : Int32, hot_y : Int32) : SDL_Cursor*
	fun createSystemCursor = SDL_CreateSystemCursor(id : SDL_SystemCursor) : SDL_Cursor*
	fun setCursor = SDL_SetCursor(cursor : SDL_Cursor*) : Void
	fun getCursor = SDL_GetCursor() : SDL_Cursor*
	fun getDefaultCursor = SDL_GetDefaultCursor() : SDL_Cursor*
	fun freeCursor = SDL_FreeCursor(cursor : SDL_Cursor*) : Void
	fun showCursor = SDL_ShowCursor(toggle : Int32) : Int32
	fun numJoysticks = SDL_NumJoysticks() : Int32
	fun joystickNameForIndex = SDL_JoystickNameForIndex(device_index : Int32) : UInt8*
	fun joystickOpen = SDL_JoystickOpen(device_index : Int32) : SDL_Joystick*
	fun joystickName = SDL_JoystickName(joystick : SDL_Joystick*) : UInt8*
	fun joystickGetDeviceGUID = SDL_JoystickGetDeviceGUID(device_index : Int32) : SDL_JoystickGUID
	fun joystickGetGUID = SDL_JoystickGetGUID(joystick : SDL_Joystick*) : SDL_JoystickGUID
	fun joystickGetGUIDString = SDL_JoystickGetGUIDString(guid : SDL_JoystickGUID, pszGUID : UInt8*, cbGUID : Int32) : Void
	fun joystickGetGUIDFromString = SDL_JoystickGetGUIDFromString(pchGUID : UInt8*) : SDL_JoystickGUID
	fun joystickGetAttached = SDL_JoystickGetAttached(joystick : SDL_Joystick*) : Bool
	fun joystickInstanceID = SDL_JoystickInstanceID(joystick : SDL_Joystick*) : SDL_JoystickID
	fun joystickNumAxes = SDL_JoystickNumAxes(joystick : SDL_Joystick*) : Int32
	fun joystickNumBalls = SDL_JoystickNumBalls(joystick : SDL_Joystick*) : Int32
	fun joystickNumHats = SDL_JoystickNumHats(joystick : SDL_Joystick*) : Int32
	fun joystickNumButtons = SDL_JoystickNumButtons(joystick : SDL_Joystick*) : Int32
	fun joystickUpdate = SDL_JoystickUpdate() : Void
	fun joystickEventState = SDL_JoystickEventState(state : Int32) : Int32
	fun joystickGetAxis = SDL_JoystickGetAxis(joystick : SDL_Joystick*, axis : Int32) : Int16
	fun joystickGetHat = SDL_JoystickGetHat(joystick : SDL_Joystick*, hat : Int32) : UInt8
	fun joystickGetBall = SDL_JoystickGetBall(joystick : SDL_Joystick*, ball : Int32, dx : Int32*, dy : Int32*) : Int32
	fun joystickGetButton = SDL_JoystickGetButton(joystick : SDL_Joystick*, button : Int32) : UInt8
	fun joystickClose = SDL_JoystickClose(joystick : SDL_Joystick*) : Void
	fun gameControllerAddMappingsFromRW = SDL_GameControllerAddMappingsFromRW(rw : SDL_RWops*, freerw : Int32) : Int32
	fun gameControllerAddMapping = SDL_GameControllerAddMapping(mappingString : UInt8*) : Int32
	fun gameControllerMappingForGUID = SDL_GameControllerMappingForGUID(guid : SDL_JoystickGUID) : UInt8*
	fun gameControllerMapping = SDL_GameControllerMapping(gamecontroller : SDL_GameController*) : UInt8*
	fun isGameController = SDL_IsGameController(joystick_index : Int32) : Bool
	fun gameControllerNameForIndex = SDL_GameControllerNameForIndex(joystick_index : Int32) : UInt8*
	fun gameControllerOpen = SDL_GameControllerOpen(joystick_index : Int32) : SDL_GameController*
	fun gameControllerName = SDL_GameControllerName(gamecontroller : SDL_GameController*) : UInt8*
	fun gameControllerGetAttached = SDL_GameControllerGetAttached(gamecontroller : SDL_GameController*) : Bool
	fun gameControllerGetJoystick = SDL_GameControllerGetJoystick(gamecontroller : SDL_GameController*) : SDL_Joystick*
	fun gameControllerEventState = SDL_GameControllerEventState(state : Int32) : Int32
	fun gameControllerUpdate = SDL_GameControllerUpdate() : Void
	fun gameControllerGetAxisFromString = SDL_GameControllerGetAxisFromString(pchString : UInt8*) : SDL_GameControllerAxis
	fun gameControllerGetStringForAxis = SDL_GameControllerGetStringForAxis(axis : SDL_GameControllerAxis) : UInt8*
	fun gameControllerGetBindForAxis = SDL_GameControllerGetBindForAxis(gamecontroller : SDL_GameController*, axis : SDL_GameControllerAxis) : SDL_GameControllerButtonBind
	fun gameControllerGetAxis = SDL_GameControllerGetAxis(gamecontroller : SDL_GameController*, axis : SDL_GameControllerAxis) : Int16
	fun gameControllerGetButtonFromString = SDL_GameControllerGetButtonFromString(pchString : UInt8*) : SDL_GameControllerButton
	fun gameControllerGetStringForButton = SDL_GameControllerGetStringForButton(button : SDL_GameControllerButton) : UInt8*
	fun gameControllerGetBindForButton = SDL_GameControllerGetBindForButton(gamecontroller : SDL_GameController*, button : SDL_GameControllerButton) : SDL_GameControllerButtonBind
	fun gameControllerGetButton = SDL_GameControllerGetButton(gamecontroller : SDL_GameController*, button : SDL_GameControllerButton) : UInt8
	fun gameControllerClose = SDL_GameControllerClose(gamecontroller : SDL_GameController*) : Void
	fun getNumTouchDevices = SDL_GetNumTouchDevices() : Int32
	fun getTouchDevice = SDL_GetTouchDevice(index : Int32) : SDL_TouchID
	fun getNumTouchFingers = SDL_GetNumTouchFingers(touchID : SDL_TouchID) : Int32
	fun getTouchFinger = SDL_GetTouchFinger(touchID : SDL_TouchID, index : Int32) : SDL_Finger*
	fun recordGesture = SDL_RecordGesture(touchId : SDL_TouchID) : Int32
	fun saveAllDollarTemplates = SDL_SaveAllDollarTemplates(dst : SDL_RWops*) : Int32
	fun saveDollarTemplate = SDL_SaveDollarTemplate(gestureId : SDL_GestureID, dst : SDL_RWops*) : Int32
	fun loadDollarTemplates = SDL_LoadDollarTemplates(touchId : SDL_TouchID, src : SDL_RWops*) : Int32
	fun pumpEvents = SDL_PumpEvents() : Void
	fun peepEvents = SDL_PeepEvents(events : SDL_Event*, numevents : Int32, action : SDL_eventaction, minType : UInt32, maxType : UInt32) : Int32
	fun hasEvent = SDL_HasEvent(type : UInt32) : Bool
	fun hasEvents = SDL_HasEvents(minType : UInt32, maxType : UInt32) : Bool
	fun flushEvent = SDL_FlushEvent(type : UInt32) : Void
	fun flushEvents = SDL_FlushEvents(minType : UInt32, maxType : UInt32) : Void
	fun pollEvent = SDL_PollEvent(event : SDL_Event*) : Int32
	fun waitEvent = SDL_WaitEvent(event : SDL_Event*) : Int32
	fun waitEventTimeout = SDL_WaitEventTimeout(event : SDL_Event*, timeout : Int32) : Int32
	fun pushEvent = SDL_PushEvent(event : SDL_Event*) : Int32
	fun setEventFilter = SDL_SetEventFilter(filter : SDL_EventFilter, userdata : Void*) : Void
	fun getEventFilter = SDL_GetEventFilter(filter : SDL_EventFilter*, userdata : Void**) : Bool
	fun addEventWatch = SDL_AddEventWatch(filter : SDL_EventFilter, userdata : Void*) : Void
	fun delEventWatch = SDL_DelEventWatch(filter : SDL_EventFilter, userdata : Void*) : Void
	fun filterEvents = SDL_FilterEvents(filter : SDL_EventFilter, userdata : Void*) : Void
	fun eventState = SDL_EventState(type : UInt32, state : Int32) : UInt8
	fun registerEvents = SDL_RegisterEvents(numevents : Int32) : UInt32
	fun getBasePath = SDL_GetBasePath() : UInt8*
	fun getPrefPath = SDL_GetPrefPath(org : UInt8*, app : UInt8*) : UInt8*
	fun numHaptics = SDL_NumHaptics() : Int32
	fun hapticName = SDL_HapticName(device_index : Int32) : UInt8*
	fun hapticOpen = SDL_HapticOpen(device_index : Int32) : SDL_Haptic*
	fun hapticOpened = SDL_HapticOpened(device_index : Int32) : Int32
	fun hapticIndex = SDL_HapticIndex(haptic : SDL_Haptic*) : Int32
	fun mouseIsHaptic = SDL_MouseIsHaptic() : Int32
	fun hapticOpenFromMouse = SDL_HapticOpenFromMouse() : SDL_Haptic*
	fun joystickIsHaptic = SDL_JoystickIsHaptic(joystick : SDL_Joystick*) : Int32
	fun hapticOpenFromJoystick = SDL_HapticOpenFromJoystick(joystick : SDL_Joystick*) : SDL_Haptic*
	fun hapticClose = SDL_HapticClose(haptic : SDL_Haptic*) : Void
	fun hapticNumEffects = SDL_HapticNumEffects(haptic : SDL_Haptic*) : Int32
	fun hapticNumEffectsPlaying = SDL_HapticNumEffectsPlaying(haptic : SDL_Haptic*) : Int32
	fun hapticQuery = SDL_HapticQuery(haptic : SDL_Haptic*) : UInt32
	fun hapticNumAxes = SDL_HapticNumAxes(haptic : SDL_Haptic*) : Int32
	fun hapticEffectSupported = SDL_HapticEffectSupported(haptic : SDL_Haptic*, effect : SDL_HapticEffect*) : Int32
	fun hapticNewEffect = SDL_HapticNewEffect(haptic : SDL_Haptic*, effect : SDL_HapticEffect*) : Int32
	fun hapticUpdateEffect = SDL_HapticUpdateEffect(haptic : SDL_Haptic*, effect : Int32, data : SDL_HapticEffect*) : Int32
	fun hapticRunEffect = SDL_HapticRunEffect(haptic : SDL_Haptic*, effect : Int32, iterations : UInt32) : Int32
	fun hapticStopEffect = SDL_HapticStopEffect(haptic : SDL_Haptic*, effect : Int32) : Int32
	fun hapticDestroyEffect = SDL_HapticDestroyEffect(haptic : SDL_Haptic*, effect : Int32) : Void
	fun hapticGetEffectStatus = SDL_HapticGetEffectStatus(haptic : SDL_Haptic*, effect : Int32) : Int32
	fun hapticSetGain = SDL_HapticSetGain(haptic : SDL_Haptic*, gain : Int32) : Int32
	fun hapticSetAutocenter = SDL_HapticSetAutocenter(haptic : SDL_Haptic*, autocenter : Int32) : Int32
	fun hapticPause = SDL_HapticPause(haptic : SDL_Haptic*) : Int32
	fun hapticUnpause = SDL_HapticUnpause(haptic : SDL_Haptic*) : Int32
	fun hapticStopAll = SDL_HapticStopAll(haptic : SDL_Haptic*) : Int32
	fun hapticRumbleSupported = SDL_HapticRumbleSupported(haptic : SDL_Haptic*) : Int32
	fun hapticRumbleInit = SDL_HapticRumbleInit(haptic : SDL_Haptic*) : Int32
	fun hapticRumblePlay = SDL_HapticRumblePlay(haptic : SDL_Haptic*, strength : Float32, length : UInt32) : Int32
	fun hapticRumbleStop = SDL_HapticRumbleStop(haptic : SDL_Haptic*) : Int32
	fun setHintWithPriority = SDL_SetHintWithPriority(name : UInt8*, value : UInt8*, priority : SDL_HintPriority) : Bool
	fun setHint = SDL_SetHint(name : UInt8*, value : UInt8*) : Bool
	fun getHint = SDL_GetHint(name : UInt8*) : UInt8*
	fun addHintCallback = SDL_AddHintCallback(name : UInt8*, callback : SDL_HintCallback, userdata : Void*) : Void
	fun delHintCallback = SDL_DelHintCallback(name : UInt8*, callback : SDL_HintCallback, userdata : Void*) : Void
	fun clearHints = SDL_ClearHints() : Void
	fun loadObject = SDL_LoadObject(sofile : UInt8*) : Void*
	fun loadFunction = SDL_LoadFunction(handle : Void*, name : UInt8*) : Void*
	fun unloadObject = SDL_UnloadObject(handle : Void*) : Void
	fun logSetAllPriority = SDL_LogSetAllPriority(priority : SDL_LogPriority) : Void
	fun logSetPriority = SDL_LogSetPriority(category : Int32, priority : SDL_LogPriority) : Void
	fun logGetPriority = SDL_LogGetPriority(category : Int32) : SDL_LogPriority
	fun logResetPriorities = SDL_LogResetPriorities() : Void
	fun log = SDL_Log(fmt : UInt8*) : Void
	fun logVerbose = SDL_LogVerbose(category : Int32, fmt : UInt8*) : Void
	fun logDebug = SDL_LogDebug(category : Int32, fmt : UInt8*) : Void
	fun logInfo = SDL_LogInfo(category : Int32, fmt : UInt8*) : Void
	fun logWarn = SDL_LogWarn(category : Int32, fmt : UInt8*) : Void
	fun logError = SDL_LogError(category : Int32, fmt : UInt8*) : Void
	fun logCritical = SDL_LogCritical(category : Int32, fmt : UInt8*) : Void
	fun logMessage = SDL_LogMessage(category : Int32, priority : SDL_LogPriority, fmt : UInt8*) : Void
	#fun logMessageV = SDL_LogMessageV(category : Int32, priority : SDL_LogPriority, fmt : UInt8*, ap : __va_list_tag*) : Void
	fun logGetOutputFunction = SDL_LogGetOutputFunction(callback : SDL_LogOutputFunction*, userdata : Void**) : Void
	fun logSetOutputFunction = SDL_LogSetOutputFunction(callback : SDL_LogOutputFunction, userdata : Void*) : Void
	fun showMessageBox = SDL_ShowMessageBox(messageboxdata : SDL_MessageBoxData*, buttonid : Int32*) : Int32
	fun showSimpleMessageBox = SDL_ShowSimpleMessageBox(flags : UInt32, title : UInt8*, message : UInt8*, window : SDL_Window*) : Int32
	fun getPowerInfo = SDL_GetPowerInfo(secs : Int32*, pct : Int32*) : SDL_PowerState
	fun getNumRenderDrivers = SDL_GetNumRenderDrivers() : Int32
	fun getRenderDriverInfo = SDL_GetRenderDriverInfo(index : Int32, info : SDL_RendererInfo*) : Int32
	fun createWindowAndRenderer = SDL_CreateWindowAndRenderer(width : Int32, height : Int32, window_flags : UInt32, window : SDL_Window**, renderer : SDL_Renderer**) : Int32
	fun createRenderer = SDL_CreateRenderer(window : SDL_Window*, index : Int32, flags : UInt32) : SDL_Renderer*
	fun createSoftwareRenderer = SDL_CreateSoftwareRenderer(surface : SDL_Surface*) : SDL_Renderer*
	fun getRenderer = SDL_GetRenderer(window : SDL_Window*) : SDL_Renderer*
	fun getRendererInfo = SDL_GetRendererInfo(renderer : SDL_Renderer*, info : SDL_RendererInfo*) : Int32
	fun getRendererOutputSize = SDL_GetRendererOutputSize(renderer : SDL_Renderer*, w : Int32*, h : Int32*) : Int32
	fun createTexture = SDL_CreateTexture(renderer : SDL_Renderer*, format : UInt32, access : Int32, w : Int32, h : Int32) : SDL_Texture*
	fun createTextureFromSurface = SDL_CreateTextureFromSurface(renderer : SDL_Renderer*, surface : SDL_Surface*) : SDL_Texture*
	fun queryTexture = SDL_QueryTexture(texture : SDL_Texture*, format : UInt32*, access : Int32*, w : Int32*, h : Int32*) : Int32
	fun setTextureColorMod = SDL_SetTextureColorMod(texture : SDL_Texture*, r : UInt8, g : UInt8, b : UInt8) : Int32
	fun getTextureColorMod = SDL_GetTextureColorMod(texture : SDL_Texture*, r : UInt8*, g : UInt8*, b : UInt8*) : Int32
	fun setTextureAlphaMod = SDL_SetTextureAlphaMod(texture : SDL_Texture*, alpha : UInt8) : Int32
	fun getTextureAlphaMod = SDL_GetTextureAlphaMod(texture : SDL_Texture*, alpha : UInt8*) : Int32
	fun setTextureBlendMode = SDL_SetTextureBlendMode(texture : SDL_Texture*, blendMode : SDL_BlendMode) : Int32
	fun getTextureBlendMode = SDL_GetTextureBlendMode(texture : SDL_Texture*, blendMode : SDL_BlendMode*) : Int32
	fun updateTexture = SDL_UpdateTexture(texture : SDL_Texture*, rect : SDL_Rect*, pixels : Void*, pitch : Int32) : Int32
	fun updateYUVTexture = SDL_UpdateYUVTexture(texture : SDL_Texture*, rect : SDL_Rect*, yplane : UInt8*, ypitch : Int32, uplane : UInt8*, upitch : Int32, vplane : UInt8*, vpitch : Int32) : Int32
	fun lockTexture = SDL_LockTexture(texture : SDL_Texture*, rect : SDL_Rect*, pixels : Void**, pitch : Int32*) : Int32
	fun unlockTexture = SDL_UnlockTexture(texture : SDL_Texture*) : Void
	fun renderTargetSupported = SDL_RenderTargetSupported(renderer : SDL_Renderer*) : Bool
	fun setRenderTarget = SDL_SetRenderTarget(renderer : SDL_Renderer*, texture : SDL_Texture*) : Int32
	fun getRenderTarget = SDL_GetRenderTarget(renderer : SDL_Renderer*) : SDL_Texture*
	fun renderSetLogicalSize = SDL_RenderSetLogicalSize(renderer : SDL_Renderer*, w : Int32, h : Int32) : Int32
	fun renderGetLogicalSize = SDL_RenderGetLogicalSize(renderer : SDL_Renderer*, w : Int32*, h : Int32*) : Void
	fun renderSetViewport = SDL_RenderSetViewport(renderer : SDL_Renderer*, rect : SDL_Rect*) : Int32
	fun renderGetViewport = SDL_RenderGetViewport(renderer : SDL_Renderer*, rect : SDL_Rect*) : Void
	fun renderSetClipRect = SDL_RenderSetClipRect(renderer : SDL_Renderer*, rect : SDL_Rect*) : Int32
	fun renderGetClipRect = SDL_RenderGetClipRect(renderer : SDL_Renderer*, rect : SDL_Rect*) : Void
	fun renderSetScale = SDL_RenderSetScale(renderer : SDL_Renderer*, scaleX : Float32, scaleY : Float32) : Int32
	fun renderGetScale = SDL_RenderGetScale(renderer : SDL_Renderer*, scaleX : Float32*, scaleY : Float32*) : Void
	fun setRenderDrawColor = SDL_SetRenderDrawColor(renderer : SDL_Renderer*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : Int32
	fun getRenderDrawColor = SDL_GetRenderDrawColor(renderer : SDL_Renderer*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Int32
	fun setRenderDrawBlendMode = SDL_SetRenderDrawBlendMode(renderer : SDL_Renderer*, blendMode : SDL_BlendMode) : Int32
	fun getRenderDrawBlendMode = SDL_GetRenderDrawBlendMode(renderer : SDL_Renderer*, blendMode : SDL_BlendMode*) : Int32
	fun renderClear = SDL_RenderClear(renderer : SDL_Renderer*) : Int32
	fun renderDrawPoint = SDL_RenderDrawPoint(renderer : SDL_Renderer*, x : Int32, y : Int32) : Int32
	fun renderDrawPoints = SDL_RenderDrawPoints(renderer : SDL_Renderer*, points : SDL_Point*, count : Int32) : Int32
	fun renderDrawLine = SDL_RenderDrawLine(renderer : SDL_Renderer*, x1 : Int32, y1 : Int32, x2 : Int32, y2 : Int32) : Int32
	fun renderDrawLines = SDL_RenderDrawLines(renderer : SDL_Renderer*, points : SDL_Point*, count : Int32) : Int32
	fun renderDrawRect = SDL_RenderDrawRect(renderer : SDL_Renderer*, rect : SDL_Rect*) : Int32
	fun renderDrawRects = SDL_RenderDrawRects(renderer : SDL_Renderer*, rects : SDL_Rect*, count : Int32) : Int32
	fun renderFillRect = SDL_RenderFillRect(renderer : SDL_Renderer*, rect : SDL_Rect*) : Int32
	fun renderFillRects = SDL_RenderFillRects(renderer : SDL_Renderer*, rects : SDL_Rect*, count : Int32) : Int32
	fun renderCopy = SDL_RenderCopy(renderer : SDL_Renderer*, texture : SDL_Texture*, srcrect : SDL_Rect*, dstrect : SDL_Rect*) : Int32
	fun renderCopyEx = SDL_RenderCopyEx(renderer : SDL_Renderer*, texture : SDL_Texture*, srcrect : SDL_Rect*, dstrect : SDL_Rect*, angle : Float64, center : SDL_Point*, flip : SDL_RendererFlip) : Int32
	fun renderReadPixels = SDL_RenderReadPixels(renderer : SDL_Renderer*, rect : SDL_Rect*, format : UInt32, pixels : Void*, pitch : Int32) : Int32
	fun renderPresent = SDL_RenderPresent(renderer : SDL_Renderer*) : Void
	fun destroyTexture = SDL_DestroyTexture(texture : SDL_Texture*) : Void
	fun destroyRenderer = SDL_DestroyRenderer(renderer : SDL_Renderer*) : Void
	fun gl_BindTexture = SDL_GL_BindTexture(texture : SDL_Texture*, texw : Float32*, texh : Float32*) : Int32
	fun gl_UnbindTexture = SDL_GL_UnbindTexture(texture : SDL_Texture*) : Int32
	fun getTicks = SDL_GetTicks() : UInt32
	fun getPerformanceCounter = SDL_GetPerformanceCounter() : UInt64
	fun getPerformanceFrequency = SDL_GetPerformanceFrequency() : UInt64
	fun delay = SDL_Delay(ms : UInt32) : Void
	fun addTimer = SDL_AddTimer(interval : UInt32, callback : SDL_TimerCallback, param : Void*) : SDL_TimerID
	fun removeTimer = SDL_RemoveTimer(id : SDL_TimerID) : Bool
	fun getVersion = SDL_GetVersion(ver : SDL_version*) : Void
	fun getRevision = SDL_GetRevision() : UInt8*
	fun getRevisionNumber = SDL_GetRevisionNumber() : Int32
	fun init = SDL_Init(flags : UInt32) : Int32
	fun initSubSystem = SDL_InitSubSystem(flags : UInt32) : Int32
	fun quitSubSystem = SDL_QuitSubSystem(flags : UInt32) : Void
	fun wasInit = SDL_WasInit(flags : UInt32) : UInt32
	fun quit = SDL_Quit() : Void
	
	# Vars #
	
	
end

