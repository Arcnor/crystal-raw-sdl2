# WARNING: Automatically generated using Arcnor's famous NativeBindingsGenerator. Do not modify manually!

@[Link("SDL2")]
lib LibSDL2
	
	# Types & Classes #
	
	struct IconvT2
		
	end
	
	type IconvT = IconvT2*
	
	enum AssertState
		RETRY
		BREAK
		ABORT
		IGNORE
		ALWAYS_IGNORE
	end
	
	struct AssertData
		always_ignore : Int32
		trigger_count : UInt32
		condition : UInt8*
		filename : UInt8*
		linenum : Int32
		function : UInt8*
		next : AssertData*
	end
	
	type AssertionHandler = (AssertData*, Void*) -> AssertState
	
	type SpinLock = Int32
	
	struct AtomicT
		value : Int32
	end
	
	enum Errorcode
		ENOMEM
		EFREAD
		EFWRITE
		EFSEEK
		UNSUPPORTED
		LASTERROR
	end
	
	struct Mutex
		
	end
	
	struct Semaphore
		
	end
	
	type Sem = Semaphore
	
	struct Cond
		
	end
	
	struct Thread
		
	end
	
	type ThreadID = UInt64
	
	type TLSID = UInt32
	
	enum ThreadPriority
		LOW
		NORMAL
		HIGH
	end
	
	type ThreadFunction = (Void*) -> Int32
	
	struct RWops
		size : (RWops*) -> UInt64
		seek : (RWops*, UInt64, Int32) -> UInt64
		read : (RWops*, Void*, LibC::SizeT, LibC::SizeT) -> LibC::SizeT
		write : (RWops*, Void*, LibC::SizeT, LibC::SizeT) -> LibC::SizeT
		close : (RWops*) -> Int32
		type : UInt32
	end
	
	type AudioFormat = UInt16
	
	type AudioCallback = (Void*, UInt8*, Int32) -> Void
	
	struct AudioSpec
		freq : Int32
		format : AudioFormat
		channels : UInt8
		silence : UInt8
		samples : UInt16
		padding : UInt16
		size : UInt32
		callback : AudioCallback
		userdata : Void*
	end
	
	struct AudioCVT
		needed : Int32
		src_format : AudioFormat
		dst_format : AudioFormat
		rate_incr : Float64
		buf : UInt8*
		len : Int32
		len_cvt : Int32
		len_mult : Int32
		len_ratio : Float64
		filters : AudioFilter[10]
		filter_index : Int32
	end
	
	type AudioFilter = (AudioCVT*, AudioFormat) -> Void
	
	type AudioDeviceID = UInt32
	
	enum AudioStatus
		STOPPED = 0
		PLAYING
		PAUSED
	end
	
	struct Color
		r : UInt8
		g : UInt8
		b : UInt8
		a : UInt8
	end
	
	struct Palette
		ncolors : Int32
		colors : Color*
		version : UInt32
		refcount : Int32
	end
	
	struct PixelFormat
		format : UInt32
		palette : Palette*
		bits_per_pixel : UInt8
		bytes_per_pixel : UInt8
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
		next : PixelFormat*
	end
	
	struct Point
		x : Int32
		y : Int32
	end
	
	struct Rect
		x : Int32
		y : Int32
		w : Int32
		h : Int32
	end
	
	enum BlendMode
		NONE = 0
		BLEND = 1
		ADD = 2
		MOD = 4
	end
	
	struct Surface
		flags : UInt32
		format : PixelFormat*
		w : Int32
		h : Int32
		pitch : Int32
		pixels : Void*
		userdata : Void*
		locked : Int32
		lock_data : Void*
		clip_rect : Rect
		map : BlitMap*
		refcount : Int32
	end
	
	struct BlitMap
		
	end
	
	type Blit = (Surface*, Rect*, Surface*, Rect*) -> Int32
	
	struct DisplayMode
		format : UInt32
		w : Int32
		h : Int32
		refresh_rate : Int32
		driverdata : Void*
	end
	
	struct Window
		
	end
	
	@[Flags]
	enum WindowFlags
		FULLSCREEN = 0x00000001
		OPENGL = 0x00000002
		SHOWN = 0x00000004
		HIDDEN = 0x00000008
		BORDERLESS = 0x00000010
		RESIZABLE = 0x00000020
		MINIMIZED = 0x00000040
		MAXIMIZED = 0x00000080
		INPUT_GRABBED = 0x00000100
		INPUT_FOCUS = 0x00000200
		MOUSE_FOCUS = 0x00000400
		FULLSCREEN_DESKTOP
		FOREIGN = 0x00000800
		ALLOW_HIGHDPI = 0x00002000
	end
	
	enum WindowEventID
		NONE
		SHOWN
		HIDDEN
		EXPOSED
		MOVED
		RESIZED
		SIZE_CHANGED
		MINIMIZED
		MAXIMIZED
		RESTORED
		ENTER
		LEAVE
		FOCUS_GAINED
		FOCUS_LOST
		CLOSE
	end
	
	type GLContext = Void*
	
	enum GLattr
		RED_SIZE
		GREEN_SIZE
		BLUE_SIZE
		ALPHA_SIZE
		BUFFER_SIZE
		DOUBLEBUFFER
		DEPTH_SIZE
		STENCIL_SIZE
		ACCUM_RED_SIZE
		ACCUM_GREEN_SIZE
		ACCUM_BLUE_SIZE
		ACCUM_ALPHA_SIZE
		STEREO
		MULTISAMPLEBUFFERS
		MULTISAMPLESAMPLES
		ACCELERATED_VISUAL
		RETAINED_BACKING
		CONTEXT_MAJOR_VERSION
		CONTEXT_MINOR_VERSION
		CONTEXT_EGL
		CONTEXT_FLAGS
		CONTEXT_PROFILE_MASK
		SHARE_WITH_CURRENT_CONTEXT
		FRAMEBUFFER_SRGB_CAPABLE
	end
	
	enum GLprofile
		CORE = 1
		COMPATIBILITY = 2
		ES = 4
	end
	
	enum GLcontextFlag
		DEBUG_FLAG = 1
		FORWARD_COMPATIBLE_FLAG = 2
		ROBUST_ACCESS_FLAG = 4
		RESET_ISOLATION_FLAG = 8
	end
	
	enum Scancode
		UNKNOWN = 0
		A = 4
		B = 5
		C = 6
		D = 7
		E = 8
		F = 9
		G = 10
		H = 11
		I = 12
		J = 13
		K = 14
		L = 15
		M = 16
		N = 17
		O = 18
		P = 19
		Q = 20
		R = 21
		S = 22
		T = 23
		U = 24
		V = 25
		W = 26
		X = 27
		Y = 28
		Z = 29
		NUM_1 = 30
		NUM_2 = 31
		NUM_3 = 32
		NUM_4 = 33
		NUM_5 = 34
		NUM_6 = 35
		NUM_7 = 36
		NUM_8 = 37
		NUM_9 = 38
		NUM_0 = 39
		RETURN = 40
		ESCAPE = 41
		BACKSPACE = 42
		TAB = 43
		SPACE = 44
		MINUS = 45
		EQUALS = 46
		LEFTBRACKET = 47
		RIGHTBRACKET = 48
		BACKSLASH = 49
		NONUSHASH = 50
		SEMICOLON = 51
		APOSTROPHE = 52
		GRAVE = 53
		COMMA = 54
		PERIOD = 55
		SLASH = 56
		CAPSLOCK = 57
		F1 = 58
		F2 = 59
		F3 = 60
		F4 = 61
		F5 = 62
		F6 = 63
		F7 = 64
		F8 = 65
		F9 = 66
		F10 = 67
		F11 = 68
		F12 = 69
		PRINTSCREEN = 70
		SCROLLLOCK = 71
		PAUSE = 72
		INSERT = 73
		HOME = 74
		PAGEUP = 75
		DELETE = 76
		END = 77
		PAGEDOWN = 78
		RIGHT = 79
		LEFT = 80
		DOWN = 81
		UP = 82
		NUMLOCKCLEAR = 83
		KP_DIVIDE = 84
		KP_MULTIPLY = 85
		KP_MINUS = 86
		KP_PLUS = 87
		KP_ENTER = 88
		KP_1 = 89
		KP_2 = 90
		KP_3 = 91
		KP_4 = 92
		KP_5 = 93
		KP_6 = 94
		KP_7 = 95
		KP_8 = 96
		KP_9 = 97
		KP_0 = 98
		KP_PERIOD = 99
		NONUSBACKSLASH = 100
		APPLICATION = 101
		POWER = 102
		KP_EQUALS = 103
		F13 = 104
		F14 = 105
		F15 = 106
		F16 = 107
		F17 = 108
		F18 = 109
		F19 = 110
		F20 = 111
		F21 = 112
		F22 = 113
		F23 = 114
		F24 = 115
		EXECUTE = 116
		HELP = 117
		MENU = 118
		SELECT = 119
		STOP = 120
		AGAIN = 121
		UNDO = 122
		CUT = 123
		COPY = 124
		PASTE = 125
		FIND = 126
		MUTE = 127
		VOLUMEUP = 128
		VOLUMEDOWN = 129
		KP_COMMA = 133
		KP_EQUALSAS400 = 134
		INTERNATIONAL1 = 135
		INTERNATIONAL2 = 136
		INTERNATIONAL3 = 137
		INTERNATIONAL4 = 138
		INTERNATIONAL5 = 139
		INTERNATIONAL6 = 140
		INTERNATIONAL7 = 141
		INTERNATIONAL8 = 142
		INTERNATIONAL9 = 143
		LANG1 = 144
		LANG2 = 145
		LANG3 = 146
		LANG4 = 147
		LANG5 = 148
		LANG6 = 149
		LANG7 = 150
		LANG8 = 151
		LANG9 = 152
		ALTERASE = 153
		SYSREQ = 154
		CANCEL = 155
		CLEAR = 156
		PRIOR = 157
		RETURN2 = 158
		SEPARATOR = 159
		OUT = 160
		OPER = 161
		CLEARAGAIN = 162
		CRSEL = 163
		EXSEL = 164
		KP_00 = 176
		KP_000 = 177
		THOUSANDSSEPARATOR = 178
		DECIMALSEPARATOR = 179
		CURRENCYUNIT = 180
		CURRENCYSUBUNIT = 181
		KP_LEFTPAREN = 182
		KP_RIGHTPAREN = 183
		KP_LEFTBRACE = 184
		KP_RIGHTBRACE = 185
		KP_TAB = 186
		KP_BACKSPACE = 187
		KP_A = 188
		KP_B = 189
		KP_C = 190
		KP_D = 191
		KP_E = 192
		KP_F = 193
		KP_XOR = 194
		KP_POWER = 195
		KP_PERCENT = 196
		KP_LESS = 197
		KP_GREATER = 198
		KP_AMPERSAND = 199
		KP_DBLAMPERSAND = 200
		KP_VERTICALBAR = 201
		KP_DBLVERTICALBAR = 202
		KP_COLON = 203
		KP_HASH = 204
		KP_SPACE = 205
		KP_AT = 206
		KP_EXCLAM = 207
		KP_MEMSTORE = 208
		KP_MEMRECALL = 209
		KP_MEMCLEAR = 210
		KP_MEMADD = 211
		KP_MEMSUBTRACT = 212
		KP_MEMMULTIPLY = 213
		KP_MEMDIVIDE = 214
		KP_PLUSMINUS = 215
		KP_CLEAR = 216
		KP_CLEARENTRY = 217
		KP_BINARY = 218
		KP_OCTAL = 219
		KP_DECIMAL = 220
		KP_HEXADECIMAL = 221
		LCTRL = 224
		LSHIFT = 225
		LALT = 226
		LGUI = 227
		RCTRL = 228
		RSHIFT = 229
		RALT = 230
		RGUI = 231
		MODE = 257
		AUDIONEXT = 258
		AUDIOPREV = 259
		AUDIOSTOP = 260
		AUDIOPLAY = 261
		AUDIOMUTE = 262
		MEDIASELECT = 263
		WWW = 264
		MAIL = 265
		CALCULATOR = 266
		COMPUTER = 267
		AC_SEARCH = 268
		AC_HOME = 269
		AC_BACK = 270
		AC_FORWARD = 271
		AC_STOP = 272
		AC_REFRESH = 273
		AC_BOOKMARKS = 274
		BRIGHTNESSDOWN = 275
		BRIGHTNESSUP = 276
		DISPLAYSWITCH = 277
		KBDILLUMTOGGLE = 278
		KBDILLUMDOWN = 279
		KBDILLUMUP = 280
		EJECT = 281
		SLEEP = 282
		APP1 = 283
		APP2 = 284
		SDL_NUM_SCANCODES = 512
	end
	
	type Keycode = Int32
	
	enum Keymod
		NONE = 0
		LSHIFT = 1
		RSHIFT = 2
		LCTRL = 64
		RCTRL = 128
		LALT = 256
		RALT = 512
		LGUI = 1024
		RGUI = 2048
		NUM = 4096
		CAPS = 8192
		MODE = 16384
		RESERVED = 32768
	end
	
	struct Keysym
		scancode : Scancode
		sym : Keycode
		mod : UInt16
		unused : UInt32
	end
	
	struct Cursor
		
	end
	
	enum SystemCursor
		ARROW
		IBEAM
		WAIT
		CROSSHAIR
		WAITARROW
		SIZENWSE
		SIZENESW
		SIZEWE
		SIZENS
		SIZEALL
		NO
		HAND
		SDL_NUM_SYSTEM_CURSORS
	end
	
	struct JoystickInternal
		
	end
	
	type Joystick = JoystickInternal
	
	struct JoystickGUID
		data : UInt8[16]
	end
	
	type JoystickID = Int32
	
	struct GameControllerInternal
		
	end
	
	type GameController = GameControllerInternal
	
	enum GameControllerBindType
		NONE = 0
		BUTTON
		AXIS
		HAT
	end
	
	struct GameControllerButtonBind
		bind_type : GameControllerBindType
	end
	
	enum GameControllerAxis
		INVALID
		LEFTX
		LEFTY
		RIGHTX
		RIGHTY
		TRIGGERLEFT
		TRIGGERRIGHT
		MAX
	end
	
	enum GameControllerButton
		INVALID
		A
		B
		X
		Y
		BACK
		GUIDE
		START
		LEFTSTICK
		RIGHTSTICK
		LEFTSHOULDER
		RIGHTSHOULDER
		DPAD_UP
		DPAD_DOWN
		DPAD_LEFT
		DPAD_RIGHT
		MAX
	end
	
	type TouchID = UInt64
	
	type FingerID = UInt64
	
	struct Finger
		id : FingerID
		x : Float32
		y : Float32
		pressure : Float32
	end
	
	type GestureID = UInt64
	
	enum EventType
		FIRSTEVENT = 0
		QUIT = 256
		APP_TERMINATING
		APP_LOWMEMORY
		APP_WILLENTERBACKGROUND
		APP_DIDENTERBACKGROUND
		APP_WILLENTERFOREGROUND
		APP_DIDENTERFOREGROUND
		WINDOWEVENT = 512
		SYSWMEVENT
		KEYDOWN = 768
		KEYUP
		TEXTEDITING
		TEXTINPUT
		MOUSEMOTION = 1024
		MOUSEBUTTONDOWN
		MOUSEBUTTONUP
		MOUSEWHEEL
		JOYAXISMOTION = 1536
		JOYBALLMOTION
		JOYHATMOTION
		JOYBUTTONDOWN
		JOYBUTTONUP
		JOYDEVICEADDED
		JOYDEVICEREMOVED
		CONTROLLERAXISMOTION = 1616
		CONTROLLERBUTTONDOWN
		CONTROLLERBUTTONUP
		CONTROLLERDEVICEADDED
		CONTROLLERDEVICEREMOVED
		CONTROLLERDEVICEREMAPPED
		FINGERDOWN = 1792
		FINGERUP
		FINGERMOTION
		DOLLARGESTURE = 2048
		DOLLARRECORD
		MULTIGESTURE
		CLIPBOARDUPDATE = 2304
		DROPFILE = 4096
		RENDER_TARGETS_RESET = 8192
		USEREVENT = 32768
		LASTEVENT = 65535
	end
	
	struct CommonEvent
		type : UInt32
		timestamp : UInt32
	end
	
	struct WindowEvent
		type : UInt32
		timestamp : UInt32
		window_id : UInt32
		event : UInt8
		padding1 : UInt8
		padding2 : UInt8
		padding3 : UInt8
		data1 : Int32
		data2 : Int32
	end
	
	struct KeyboardEvent
		type : UInt32
		timestamp : UInt32
		window_id : UInt32
		state : UInt8
		repeat : UInt8
		padding2 : UInt8
		padding3 : UInt8
		keysym : Keysym
	end
	
	struct TextEditingEvent
		type : UInt32
		timestamp : UInt32
		window_id : UInt32
		text : UInt8[32]
		start : Int32
		length : Int32
	end
	
	struct TextInputEvent
		type : UInt32
		timestamp : UInt32
		window_id : UInt32
		text : UInt8[32]
	end
	
	struct MouseMotionEvent
		type : UInt32
		timestamp : UInt32
		window_id : UInt32
		which : UInt32
		state : UInt32
		x : Int32
		y : Int32
		xrel : Int32
		yrel : Int32
	end
	
	struct MouseButtonEvent
		type : UInt32
		timestamp : UInt32
		window_id : UInt32
		which : UInt32
		button : UInt8
		state : UInt8
		clicks : UInt8
		padding1 : UInt8
		x : Int32
		y : Int32
	end
	
	struct MouseWheelEvent
		type : UInt32
		timestamp : UInt32
		window_id : UInt32
		which : UInt32
		x : Int32
		y : Int32
	end
	
	struct JoyAxisEvent
		type : UInt32
		timestamp : UInt32
		which : JoystickID
		axis : UInt8
		padding1 : UInt8
		padding2 : UInt8
		padding3 : UInt8
		value : Int16
		padding4 : UInt16
	end
	
	struct JoyBallEvent
		type : UInt32
		timestamp : UInt32
		which : JoystickID
		ball : UInt8
		padding1 : UInt8
		padding2 : UInt8
		padding3 : UInt8
		xrel : Int16
		yrel : Int16
	end
	
	struct JoyHatEvent
		type : UInt32
		timestamp : UInt32
		which : JoystickID
		hat : UInt8
		value : UInt8
		padding1 : UInt8
		padding2 : UInt8
	end
	
	struct JoyButtonEvent
		type : UInt32
		timestamp : UInt32
		which : JoystickID
		button : UInt8
		state : UInt8
		padding1 : UInt8
		padding2 : UInt8
	end
	
	struct JoyDeviceEvent
		type : UInt32
		timestamp : UInt32
		which : Int32
	end
	
	struct ControllerAxisEvent
		type : UInt32
		timestamp : UInt32
		which : JoystickID
		axis : UInt8
		padding1 : UInt8
		padding2 : UInt8
		padding3 : UInt8
		value : Int16
		padding4 : UInt16
	end
	
	struct ControllerButtonEvent
		type : UInt32
		timestamp : UInt32
		which : JoystickID
		button : UInt8
		state : UInt8
		padding1 : UInt8
		padding2 : UInt8
	end
	
	struct ControllerDeviceEvent
		type : UInt32
		timestamp : UInt32
		which : Int32
	end
	
	struct TouchFingerEvent
		type : UInt32
		timestamp : UInt32
		touch_id : TouchID
		finger_id : FingerID
		x : Float32
		y : Float32
		dx : Float32
		dy : Float32
		pressure : Float32
	end
	
	struct MultiGestureEvent
		type : UInt32
		timestamp : UInt32
		touch_id : TouchID
		d_theta : Float32
		d_dist : Float32
		x : Float32
		y : Float32
		num_fingers : UInt16
		padding : UInt16
	end
	
	struct DollarGestureEvent
		type : UInt32
		timestamp : UInt32
		touch_id : TouchID
		gesture_id : GestureID
		num_fingers : UInt32
		error : Float32
		x : Float32
		y : Float32
	end
	
	struct DropEvent
		type : UInt32
		timestamp : UInt32
		file : UInt8*
	end
	
	struct QuitEvent
		type : UInt32
		timestamp : UInt32
	end
	
	struct OSEvent
		type : UInt32
		timestamp : UInt32
	end
	
	struct UserEvent
		type : UInt32
		timestamp : UInt32
		window_id : UInt32
		code : Int32
		data1 : Void*
		data2 : Void*
	end
	
	struct SysWMmsg
		
	end
	
	struct SysWMEvent
		type : UInt32
		timestamp : UInt32
		msg : SysWMmsg*
	end
	
	union Event
		type : UInt32
		common : CommonEvent
		window : WindowEvent
		key : KeyboardEvent
		edit : TextEditingEvent
		text : TextInputEvent
		motion : MouseMotionEvent
		button : MouseButtonEvent
		wheel : MouseWheelEvent
		jaxis : JoyAxisEvent
		jball : JoyBallEvent
		jhat : JoyHatEvent
		jbutton : JoyButtonEvent
		jdevice : JoyDeviceEvent
		caxis : ControllerAxisEvent
		cbutton : ControllerButtonEvent
		cdevice : ControllerDeviceEvent
		quit : QuitEvent
		user : UserEvent
		syswm : SysWMEvent
		tfinger : TouchFingerEvent
		mgesture : MultiGestureEvent
		dgesture : DollarGestureEvent
		drop : DropEvent
		padding : UInt8[56]
	end
	
	enum Eventaction
		ADDEVENT
		PEEKEVENT
		GETEVENT
	end
	
	type EventFilter = (Void*, Event*) -> Int32
	
	struct HapticInternal
		
	end
	
	type Haptic = HapticInternal
	
	struct HapticDirection
		type : UInt8
		dir : Int32[3]
	end
	
	struct HapticConstant
		type : UInt16
		direction : HapticDirection
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
	
	struct HapticPeriodic
		type : UInt16
		direction : HapticDirection
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
	
	struct HapticCondition
		type : UInt16
		direction : HapticDirection
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
	
	struct HapticRamp
		type : UInt16
		direction : HapticDirection
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
	
	struct HapticLeftRight
		type : UInt16
		length : UInt32
		large_magnitude : UInt16
		small_magnitude : UInt16
	end
	
	struct HapticCustom
		type : UInt16
		direction : HapticDirection
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
	
	union HapticEffect
		type : UInt16
		constant : HapticConstant
		periodic : HapticPeriodic
		condition : HapticCondition
		ramp : HapticRamp
		leftright : HapticLeftRight
		custom : HapticCustom
	end
	
	enum HintPriority
		DEFAULT
		NORMAL
		OVERRIDE
	end
	
	type HintCallback = (Void*, UInt8*, UInt8*, UInt8*) -> Void
	
	enum LogPriority
		VERBOSE = 1
		DEBUG
		INFO
		WARN
		ERROR
		CRITICAL
		SDL_NUM_LOG_PRIORITIES
	end
	
	type LogOutputFunction = (Void*, Int32, LogPriority, UInt8*) -> Void
	
	@[Flags]
	enum MessageBoxFlags
		ERROR = 0x00000010
		WARNING = 0x00000020
		INFORMATION = 0x00000040
	end
	
	@[Flags]
	enum MessageBoxButtonFlags
		RETURNKEY_DEFAULT = 0x00000001
		ESCAPEKEY_DEFAULT = 0x00000002
	end
	
	struct MessageBoxButtonData
		flags : MessageBoxButtonFlags
		buttonid : Int32
		text : UInt8*
	end
	
	struct MessageBoxColor
		r : UInt8
		g : UInt8
		b : UInt8
	end
	
	enum MessageBoxColorType
		BACKGROUND
		TEXT
		BUTTON_BORDER
		BUTTON_BACKGROUND
		BUTTON_SELECTED
		MAX
	end
	
	struct MessageBoxColorScheme
		colors : MessageBoxColor[5]
	end
	
	struct MessageBoxData
		flags : MessageBoxFlags
		window : Window*
		title : UInt8*
		message : UInt8*
		numbuttons : Int32
		buttons : MessageBoxButtonData*
		color_scheme : MessageBoxColorScheme*
	end
	
	enum PowerState
		UNKNOWN
		ON_BATTERY
		NO_BATTERY
		CHARGING
		CHARGED
	end
	
	@[Flags]
	enum RendererFlags
		SOFTWARE = 0x00000001
		ACCELERATED = 0x00000002
		PRESENTVSYNC = 0x00000004
		TARGETTEXTURE = 0x00000008
	end
	
	struct RendererInfo
		name : UInt8*
		flags : RendererFlags
		num_texture_formats : UInt32
		texture_formats : UInt32[16]
		max_texture_width : Int32
		max_texture_height : Int32
	end
	
	enum TextureAccess
		STATIC
		STREAMING
		TARGET
	end
	
	enum TextureModulate
		NONE = 0
		COLOR = 1
		ALPHA = 2
	end
	
	enum RendererFlip
		NONE = 0
		HORIZONTAL = 1
		VERTICAL = 2
	end
	
	struct Renderer
		
	end
	
	struct Texture
		
	end
	
	type TimerCallback = (UInt32, Void*) -> UInt32
	
	type TimerID = Int32
	
	struct Version
		major : UInt8
		minor : UInt8
		patch : UInt8
	end
	
	@[Flags]
	enum InitFlags
		TIMER = 0x00000001
		AUDIO = 0x00000010
		VIDEO = 0x00000020
		JOYSTICK = 0x00000200
		HAPTIC = 0x00001000
		GAMECONTROLLER = 0x00002000
		EVENTS = 0x00004000
		NOPARACHUTE = 0x00100000
	end
	
	
	# Functions #
	
	fun get_platform = SDL_GetPlatform() : UInt8*
	fun malloc = SDL_malloc(size : LibC::SizeT) : Void*
	fun calloc = SDL_calloc(nmemb : LibC::SizeT, size : LibC::SizeT) : Void*
	fun realloc = SDL_realloc(mem : Void*, size : LibC::SizeT) : Void*
	fun free = SDL_free(mem : Void*) : Void
	fun getenv = SDL_getenv(name : UInt8*) : UInt8*
	fun setenv = SDL_setenv(name : UInt8*, value : UInt8*, overwrite : Int32) : Int32
	fun qsort = SDL_qsort(base : Void*, nmemb : LibC::SizeT, size : LibC::SizeT, compare : (Void*, Void*) -> Int32) : Void
	fun abs = SDL_abs(x : Int32) : Int32
	fun isdigit = SDL_isdigit(x : Int32) : Int32
	fun isspace = SDL_isspace(x : Int32) : Int32
	fun toupper = SDL_toupper(x : Int32) : Int32
	fun tolower = SDL_tolower(x : Int32) : Int32
	fun memset = SDL_memset(dst : Void*, c : Int32, len : LibC::SizeT) : Void*
	fun memset4 = SDL_memset4(dst : Void*, val : UInt32, dwords : LibC::SizeT) : Void
	fun memcpy = SDL_memcpy(dst : Void*, src : Void*, len : LibC::SizeT) : Void*
	fun memcpy4 = SDL_memcpy4(dst : Void*, src : Void*, dwords : LibC::SizeT) : Void*
	fun memmove = SDL_memmove(dst : Void*, src : Void*, len : LibC::SizeT) : Void*
	fun memcmp = SDL_memcmp(s1 : Void*, s2 : Void*, len : LibC::SizeT) : Int32
	fun wcslen = SDL_wcslen(wstr : UInt32*) : LibC::SizeT
	fun wcslcpy = SDL_wcslcpy(dst : UInt32*, src : UInt32*, maxlen : LibC::SizeT) : LibC::SizeT
	fun wcslcat = SDL_wcslcat(dst : UInt32*, src : UInt32*, maxlen : LibC::SizeT) : LibC::SizeT
	fun strlen = SDL_strlen(str : UInt8*) : LibC::SizeT
	fun strlcpy = SDL_strlcpy(dst : UInt8*, src : UInt8*, maxlen : LibC::SizeT) : LibC::SizeT
	fun utf8strlcpy = SDL_utf8strlcpy(dst : UInt8*, src : UInt8*, dst_bytes : LibC::SizeT) : LibC::SizeT
	fun strlcat = SDL_strlcat(dst : UInt8*, src : UInt8*, maxlen : LibC::SizeT) : LibC::SizeT
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
	fun lltoa = SDL_lltoa(value : UInt64, str : UInt8*, radix : Int32) : UInt8*
	fun ulltoa = SDL_ulltoa(value : UInt64, str : UInt8*, radix : Int32) : UInt8*
	fun atoi = SDL_atoi(str : UInt8*) : Int32
	fun atof = SDL_atof(str : UInt8*) : Float64
	fun strtol = SDL_strtol(str : UInt8*, endp : UInt8**, base : Int32) : Int64
	fun strtoul = SDL_strtoul(str : UInt8*, endp : UInt8**, base : Int32) : UInt64
	fun strtoll = SDL_strtoll(str : UInt8*, endp : UInt8**, base : Int32) : UInt64
	fun strtoull = SDL_strtoull(str : UInt8*, endp : UInt8**, base : Int32) : UInt64
	fun strtod = SDL_strtod(str : UInt8*, endp : UInt8**) : Float64
	fun strcmp = SDL_strcmp(str1 : UInt8*, str2 : UInt8*) : Int32
	fun strncmp = SDL_strncmp(str1 : UInt8*, str2 : UInt8*, maxlen : LibC::SizeT) : Int32
	fun strcasecmp = SDL_strcasecmp(str1 : UInt8*, str2 : UInt8*) : Int32
	fun strncasecmp = SDL_strncasecmp(str1 : UInt8*, str2 : UInt8*, len : LibC::SizeT) : Int32
	fun sscanf = SDL_sscanf(text : UInt8*, fmt : UInt8*) : Int32
	fun vsscanf = SDL_vsscanf(text : UInt8*, fmt : UInt8*, ap : Void*) : Int32
	fun snprintf = SDL_snprintf(text : UInt8*, maxlen : LibC::SizeT, fmt : UInt8*) : Int32
	fun vsnprintf = SDL_vsnprintf(text : UInt8*, maxlen : LibC::SizeT, fmt : UInt8*, ap : Void*) : Int32
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
	#fun log = SDL_log(x : Float64) : Float64
	fun pow = SDL_pow(x : Float64, y : Float64) : Float64
	fun scalbn = SDL_scalbn(x : Float64, n : Int32) : Float64
	fun sin = SDL_sin(x : Float64) : Float64
	fun sinf = SDL_sinf(x : Float32) : Float32
	fun sqrt = SDL_sqrt(x : Float64) : Float64
	fun iconv_open = SDL_iconv_open(tocode : UInt8*, fromcode : UInt8*) : IconvT
	fun iconv_close = SDL_iconv_close(cd : IconvT) : Int32
	fun iconv = SDL_iconv(cd : IconvT, inbuf : UInt8**, inbytesleft : LibC::SizeT*, outbuf : UInt8**, outbytesleft : LibC::SizeT*) : LibC::SizeT
	fun iconv_string = SDL_iconv_string(tocode : UInt8*, fromcode : UInt8*, inbuf : UInt8*, inbytesleft : LibC::SizeT) : UInt8*
	fun main = SDL_main(argc : Int32, argv : UInt8**) : Int32
	fun set_main_ready = SDL_SetMainReady() : Void
	fun report_assertion = SDL_ReportAssertion(unnamed0 : AssertData*, unnamed1 : UInt8*, unnamed2 : UInt8*, unnamed3 : Int32) : AssertState
	fun set_assertion_handler = SDL_SetAssertionHandler(handler : AssertionHandler, userdata : Void*) : Void
	fun get_default_assertion_handler = SDL_GetDefaultAssertionHandler() : AssertionHandler
	fun get_assertion_handler = SDL_GetAssertionHandler(puserdata : Void**) : AssertionHandler
	fun get_assertion_report = SDL_GetAssertionReport() : AssertData*
	fun reset_assertion_report = SDL_ResetAssertionReport() : Void
	fun atomic_try_lock = SDL_AtomicTryLock(lock : SpinLock*) : Bool
	fun atomic_lock = SDL_AtomicLock(lock : SpinLock*) : Void
	fun atomic_unlock = SDL_AtomicUnlock(lock : SpinLock*) : Void
	fun atomic_cas = SDL_AtomicCAS(a : AtomicT*, oldval : Int32, newval : Int32) : Bool
	fun atomic_set = SDL_AtomicSet(a : AtomicT*, v : Int32) : Int32
	fun atomic_get = SDL_AtomicGet(a : AtomicT*) : Int32
	fun atomic_add = SDL_AtomicAdd(a : AtomicT*, v : Int32) : Int32
	fun atomic_cas_ptr = SDL_AtomicCASPtr(a : Void**, oldval : Void*, newval : Void*) : Bool
	fun atomic_set_ptr = SDL_AtomicSetPtr(a : Void**, v : Void*) : Void*
	fun atomic_get_ptr = SDL_AtomicGetPtr(a : Void**) : Void*
	fun set_error = SDL_SetError(fmt : UInt8*) : Int32
	fun get_error = SDL_GetError() : UInt8*
	fun clear_error = SDL_ClearError() : Void
	fun error = SDL_Error(code : Errorcode) : Int32
	fun swap16 = SDL_Swap16(x : UInt16) : UInt16
	fun swap32 = SDL_Swap32(x : UInt32) : UInt32
	fun swap64 = SDL_Swap64(x : UInt64) : UInt64
	fun swap_float = SDL_SwapFloat(x : Float32) : Float32
	fun create_mutex = SDL_CreateMutex() : Mutex*
	fun lock_mutex = SDL_LockMutex(mutex : Mutex*) : Int32
	fun try_lock_mutex = SDL_TryLockMutex(mutex : Mutex*) : Int32
	fun unlock_mutex = SDL_UnlockMutex(mutex : Mutex*) : Int32
	fun destroy_mutex = SDL_DestroyMutex(mutex : Mutex*) : Void
	fun create_semaphore = SDL_CreateSemaphore(initial_value : UInt32) : Sem*
	fun destroy_semaphore = SDL_DestroySemaphore(sem : Sem*) : Void
	fun sem_wait = SDL_SemWait(sem : Sem*) : Int32
	fun sem_try_wait = SDL_SemTryWait(sem : Sem*) : Int32
	fun sem_wait_timeout = SDL_SemWaitTimeout(sem : Sem*, ms : UInt32) : Int32
	fun sem_post = SDL_SemPost(sem : Sem*) : Int32
	fun sem_value = SDL_SemValue(sem : Sem*) : UInt32
	fun create_cond = SDL_CreateCond() : Cond*
	fun destroy_cond = SDL_DestroyCond(cond : Cond*) : Void
	fun cond_signal = SDL_CondSignal(cond : Cond*) : Int32
	fun cond_broadcast = SDL_CondBroadcast(cond : Cond*) : Int32
	fun cond_wait = SDL_CondWait(cond : Cond*, mutex : Mutex*) : Int32
	fun cond_wait_timeout = SDL_CondWaitTimeout(cond : Cond*, mutex : Mutex*, ms : UInt32) : Int32
	fun create_thread = SDL_CreateThread(fn : ThreadFunction, name : UInt8*, data : Void*) : Thread*
	fun get_thread_name = SDL_GetThreadName(thread : Thread*) : UInt8*
	fun thread_id = SDL_ThreadID() : ThreadID
	fun get_thread_id = SDL_GetThreadID(thread : Thread*) : ThreadID
	fun set_thread_priority = SDL_SetThreadPriority(priority : ThreadPriority) : Int32
	fun wait_thread = SDL_WaitThread(thread : Thread*, status : Int32*) : Void
	fun detach_thread = SDL_DetachThread(thread : Thread*) : Void
	fun tls_create = SDL_TLSCreate() : TLSID
	fun tls_get = SDL_TLSGet(id : TLSID) : Void*
	fun tls_set = SDL_TLSSet(id : TLSID, value : Void*, destructor : (Void*) -> Void) : Int32
	fun rw_from_file = SDL_RWFromFile(file : UInt8*, mode : UInt8*) : RWops*
	fun rw_from_fp = SDL_RWFromFP(fp : LibC::File, autoclose : Bool) : RWops*
	fun rw_from_mem = SDL_RWFromMem(mem : Void*, size : Int32) : RWops*
	fun rw_from_const_mem = SDL_RWFromConstMem(mem : Void*, size : Int32) : RWops*
	fun alloc_rw = SDL_AllocRW() : RWops*
	fun free_rw = SDL_FreeRW(area : RWops*) : Void
	fun read_u8 = SDL_ReadU8(src : RWops*) : UInt8
	fun read_le16 = SDL_ReadLE16(src : RWops*) : UInt16
	fun read_be16 = SDL_ReadBE16(src : RWops*) : UInt16
	fun read_le32 = SDL_ReadLE32(src : RWops*) : UInt32
	fun read_be32 = SDL_ReadBE32(src : RWops*) : UInt32
	fun read_le64 = SDL_ReadLE64(src : RWops*) : UInt64
	fun read_be64 = SDL_ReadBE64(src : RWops*) : UInt64
	fun write_u8 = SDL_WriteU8(dst : RWops*, value : UInt8) : LibC::SizeT
	fun write_le16 = SDL_WriteLE16(dst : RWops*, value : UInt16) : LibC::SizeT
	fun write_be16 = SDL_WriteBE16(dst : RWops*, value : UInt16) : LibC::SizeT
	fun write_le32 = SDL_WriteLE32(dst : RWops*, value : UInt32) : LibC::SizeT
	fun write_be32 = SDL_WriteBE32(dst : RWops*, value : UInt32) : LibC::SizeT
	fun write_le64 = SDL_WriteLE64(dst : RWops*, value : UInt64) : LibC::SizeT
	fun write_be64 = SDL_WriteBE64(dst : RWops*, value : UInt64) : LibC::SizeT
	fun get_num_audio_drivers = SDL_GetNumAudioDrivers() : Int32
	fun get_audio_driver = SDL_GetAudioDriver(index : Int32) : UInt8*
	fun audio_init = SDL_AudioInit(driver_name : UInt8*) : Int32
	fun audio_quit = SDL_AudioQuit() : Void
	fun get_current_audio_driver = SDL_GetCurrentAudioDriver() : UInt8*
	fun open_audio = SDL_OpenAudio(desired : AudioSpec*, obtained : AudioSpec*) : Int32
	fun get_num_audio_devices = SDL_GetNumAudioDevices(iscapture : Int32) : Int32
	fun get_audio_device_name = SDL_GetAudioDeviceName(index : Int32, iscapture : Int32) : UInt8*
	fun open_audio_device = SDL_OpenAudioDevice(device : UInt8*, iscapture : Int32, desired : AudioSpec*, obtained : AudioSpec*, allowed_changes : Int32) : AudioDeviceID
	fun get_audio_status = SDL_GetAudioStatus() : AudioStatus
	fun get_audio_device_status = SDL_GetAudioDeviceStatus(dev : AudioDeviceID) : AudioStatus
	fun pause_audio = SDL_PauseAudio(pause_on : Int32) : Void
	fun pause_audio_device = SDL_PauseAudioDevice(dev : AudioDeviceID, pause_on : Int32) : Void
	fun load_wav_rw = SDL_LoadWAV_RW(src : RWops*, freesrc : Int32, spec : AudioSpec*, audio_buf : UInt8**, audio_len : UInt32*) : AudioSpec*
	fun free_wav = SDL_FreeWAV(audio_buf : UInt8*) : Void
	fun build_audio_cvt = SDL_BuildAudioCVT(cvt : AudioCVT*, src_format : AudioFormat, src_channels : UInt8, src_rate : Int32, dst_format : AudioFormat, dst_channels : UInt8, dst_rate : Int32) : Int32
	fun convert_audio = SDL_ConvertAudio(cvt : AudioCVT*) : Int32
	fun mix_audio = SDL_MixAudio(dst : UInt8*, src : UInt8*, len : UInt32, volume : Int32) : Void
	fun mix_audio_format = SDL_MixAudioFormat(dst : UInt8*, src : UInt8*, format : AudioFormat, len : UInt32, volume : Int32) : Void
	fun lock_audio = SDL_LockAudio() : Void
	fun lock_audio_device = SDL_LockAudioDevice(dev : AudioDeviceID) : Void
	fun unlock_audio = SDL_UnlockAudio() : Void
	fun unlock_audio_device = SDL_UnlockAudioDevice(dev : AudioDeviceID) : Void
	fun close_audio = SDL_CloseAudio() : Void
	fun close_audio_device = SDL_CloseAudioDevice(dev : AudioDeviceID) : Void
	fun set_clipboard_text = SDL_SetClipboardText(text : UInt8*) : Int32
	fun get_clipboard_text = SDL_GetClipboardText() : UInt8*
	fun has_clipboard_text = SDL_HasClipboardText() : Bool
	fun get_cpu_count = SDL_GetCPUCount() : Int32
	fun get_cpu_cache_line_size = SDL_GetCPUCacheLineSize() : Int32
	fun has_rdtsc = SDL_HasRDTSC() : Bool
	fun has_alti_vec = SDL_HasAltiVec() : Bool
	fun has_mmx = SDL_HasMMX() : Bool
	fun has3_d_now = SDL_Has3DNow() : Bool
	fun has_sse = SDL_HasSSE() : Bool
	fun has_sse2 = SDL_HasSSE2() : Bool
	fun has_sse3 = SDL_HasSSE3() : Bool
	fun has_sse41 = SDL_HasSSE41() : Bool
	fun has_sse42 = SDL_HasSSE42() : Bool
	fun has_avx = SDL_HasAVX() : Bool
	fun get_system_ram = SDL_GetSystemRAM() : Int32
	fun get_pixel_format_name = SDL_GetPixelFormatName(format : UInt32) : UInt8*
	fun pixel_format_enum_to_masks = SDL_PixelFormatEnumToMasks(format : UInt32, bpp : Int32*, rmask : UInt32*, gmask : UInt32*, bmask : UInt32*, amask : UInt32*) : Bool
	fun masks_to_pixel_format_enum = SDL_MasksToPixelFormatEnum(bpp : Int32, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : UInt32
	fun alloc_format = SDL_AllocFormat(pixel_format : UInt32) : PixelFormat*
	fun free_format = SDL_FreeFormat(format : PixelFormat*) : Void
	fun alloc_palette = SDL_AllocPalette(ncolors : Int32) : Palette*
	fun set_pixel_format_palette = SDL_SetPixelFormatPalette(format : PixelFormat*, palette : Palette*) : Int32
	fun set_palette_colors = SDL_SetPaletteColors(palette : Palette*, colors : Color*, firstcolor : Int32, ncolors : Int32) : Int32
	fun free_palette = SDL_FreePalette(palette : Palette*) : Void
	fun map_rgb = SDL_MapRGB(format : PixelFormat*, r : UInt8, g : UInt8, b : UInt8) : UInt32
	fun map_rgba = SDL_MapRGBA(format : PixelFormat*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : UInt32
	fun get_rgb = SDL_GetRGB(pixel : UInt32, format : PixelFormat*, r : UInt8*, g : UInt8*, b : UInt8*) : Void
	fun get_rgba = SDL_GetRGBA(pixel : UInt32, format : PixelFormat*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Void
	fun calculate_gamma_ramp = SDL_CalculateGammaRamp(gamma : Float32, ramp : UInt16*) : Void
	fun rect_empty = SDL_RectEmpty(r : Rect*) : Bool
	fun rect_equals = SDL_RectEquals(a : Rect*, b : Rect*) : Bool
	fun has_intersection = SDL_HasIntersection(a : Rect*, b : Rect*) : Bool
	fun intersect_rect = SDL_IntersectRect(a : Rect*, b : Rect*, result : Rect*) : Bool
	fun union_rect = SDL_UnionRect(a : Rect*, b : Rect*, result : Rect*) : Void
	fun enclose_points = SDL_EnclosePoints(points : Point*, count : Int32, clip : Rect*, result : Rect*) : Bool
	fun intersect_rect_and_line = SDL_IntersectRectAndLine(rect : Rect*, x1 : Int32*, y1 : Int32*, x2 : Int32*, y2 : Int32*) : Bool
	fun create_rgb_surface = SDL_CreateRGBSurface(flags : UInt32, width : Int32, height : Int32, depth : Int32, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : Surface*
	fun create_rgb_surface_from = SDL_CreateRGBSurfaceFrom(pixels : Void*, width : Int32, height : Int32, depth : Int32, pitch : Int32, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : Surface*
	fun free_surface = SDL_FreeSurface(surface : Surface*) : Void
	fun set_surface_palette = SDL_SetSurfacePalette(surface : Surface*, palette : Palette*) : Int32
	fun lock_surface = SDL_LockSurface(surface : Surface*) : Int32
	fun unlock_surface = SDL_UnlockSurface(surface : Surface*) : Void
	fun load_bmp_rw = SDL_LoadBMP_RW(src : RWops*, freesrc : Int32) : Surface*
	fun save_bmp_rw = SDL_SaveBMP_RW(surface : Surface*, dst : RWops*, freedst : Int32) : Int32
	fun set_surface_rle = SDL_SetSurfaceRLE(surface : Surface*, flag : Int32) : Int32
	fun set_color_key = SDL_SetColorKey(surface : Surface*, flag : Int32, key : UInt32) : Int32
	fun get_color_key = SDL_GetColorKey(surface : Surface*, key : UInt32*) : Int32
	fun set_surface_color_mod = SDL_SetSurfaceColorMod(surface : Surface*, r : UInt8, g : UInt8, b : UInt8) : Int32
	fun get_surface_color_mod = SDL_GetSurfaceColorMod(surface : Surface*, r : UInt8*, g : UInt8*, b : UInt8*) : Int32
	fun set_surface_alpha_mod = SDL_SetSurfaceAlphaMod(surface : Surface*, alpha : UInt8) : Int32
	fun get_surface_alpha_mod = SDL_GetSurfaceAlphaMod(surface : Surface*, alpha : UInt8*) : Int32
	fun set_surface_blend_mode = SDL_SetSurfaceBlendMode(surface : Surface*, blend_mode : BlendMode) : Int32
	fun get_surface_blend_mode = SDL_GetSurfaceBlendMode(surface : Surface*, blend_mode : BlendMode*) : Int32
	fun set_clip_rect = SDL_SetClipRect(surface : Surface*, rect : Rect*) : Bool
	fun get_clip_rect = SDL_GetClipRect(surface : Surface*, rect : Rect*) : Void
	fun convert_surface = SDL_ConvertSurface(src : Surface*, fmt : PixelFormat*, flags : UInt32) : Surface*
	fun convert_surface_format = SDL_ConvertSurfaceFormat(src : Surface*, pixel_format : UInt32, flags : UInt32) : Surface*
	fun convert_pixels = SDL_ConvertPixels(width : Int32, height : Int32, src_format : UInt32, src : Void*, src_pitch : Int32, dst_format : UInt32, dst : Void*, dst_pitch : Int32) : Int32
	fun fill_rect = SDL_FillRect(dst : Surface*, rect : Rect*, color : UInt32) : Int32
	fun fill_rects = SDL_FillRects(dst : Surface*, rects : Rect*, count : Int32, color : UInt32) : Int32
	fun upper_blit = SDL_UpperBlit(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : Int32
	fun lower_blit = SDL_LowerBlit(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : Int32
	fun soft_stretch = SDL_SoftStretch(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : Int32
	fun upper_blit_scaled = SDL_UpperBlitScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : Int32
	fun lower_blit_scaled = SDL_LowerBlitScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : Int32
	fun get_num_video_drivers = SDL_GetNumVideoDrivers() : Int32
	fun get_video_driver = SDL_GetVideoDriver(index : Int32) : UInt8*
	fun video_init = SDL_VideoInit(driver_name : UInt8*) : Int32
	fun video_quit = SDL_VideoQuit() : Void
	fun get_current_video_driver = SDL_GetCurrentVideoDriver() : UInt8*
	fun get_num_video_displays = SDL_GetNumVideoDisplays() : Int32
	fun get_display_name = SDL_GetDisplayName(display_index : Int32) : UInt8*
	fun get_display_bounds = SDL_GetDisplayBounds(display_index : Int32, rect : Rect*) : Int32
	fun get_num_display_modes = SDL_GetNumDisplayModes(display_index : Int32) : Int32
	fun get_display_mode = SDL_GetDisplayMode(display_index : Int32, mode_index : Int32, mode : DisplayMode*) : Int32
	fun get_desktop_display_mode = SDL_GetDesktopDisplayMode(display_index : Int32, mode : DisplayMode*) : Int32
	fun get_current_display_mode = SDL_GetCurrentDisplayMode(display_index : Int32, mode : DisplayMode*) : Int32
	fun get_closest_display_mode = SDL_GetClosestDisplayMode(display_index : Int32, mode : DisplayMode*, closest : DisplayMode*) : DisplayMode*
	fun get_window_display_index = SDL_GetWindowDisplayIndex(window : Window*) : Int32
	fun set_window_display_mode = SDL_SetWindowDisplayMode(window : Window*, mode : DisplayMode*) : Int32
	fun get_window_display_mode = SDL_GetWindowDisplayMode(window : Window*, mode : DisplayMode*) : Int32
	fun get_window_pixel_format = SDL_GetWindowPixelFormat(window : Window*) : UInt32
	fun create_window = SDL_CreateWindow(title : UInt8*, x : Int32, y : Int32, w : Int32, h : Int32, flags : WindowFlags) : Window*
	fun create_window_from = SDL_CreateWindowFrom(data : Void*) : Window*
	fun get_window_id = SDL_GetWindowID(window : Window*) : UInt32
	fun get_window_from_id = SDL_GetWindowFromID(id : UInt32) : Window*
	fun get_window_flags = SDL_GetWindowFlags(window : Window*) : WindowFlags
	fun set_window_title = SDL_SetWindowTitle(window : Window*, title : UInt8*) : Void
	fun get_window_title = SDL_GetWindowTitle(window : Window*) : UInt8*
	fun set_window_icon = SDL_SetWindowIcon(window : Window*, icon : Surface*) : Void
	fun set_window_data = SDL_SetWindowData(window : Window*, name : UInt8*, userdata : Void*) : Void*
	fun get_window_data = SDL_GetWindowData(window : Window*, name : UInt8*) : Void*
	fun set_window_position = SDL_SetWindowPosition(window : Window*, x : Int32, y : Int32) : Void
	fun get_window_position = SDL_GetWindowPosition(window : Window*, x : Int32*, y : Int32*) : Void
	fun set_window_size = SDL_SetWindowSize(window : Window*, w : Int32, h : Int32) : Void
	fun get_window_size = SDL_GetWindowSize(window : Window*, w : Int32*, h : Int32*) : Void
	fun set_window_minimum_size = SDL_SetWindowMinimumSize(window : Window*, min_w : Int32, min_h : Int32) : Void
	fun get_window_minimum_size = SDL_GetWindowMinimumSize(window : Window*, w : Int32*, h : Int32*) : Void
	fun set_window_maximum_size = SDL_SetWindowMaximumSize(window : Window*, max_w : Int32, max_h : Int32) : Void
	fun get_window_maximum_size = SDL_GetWindowMaximumSize(window : Window*, w : Int32*, h : Int32*) : Void
	fun set_window_bordered = SDL_SetWindowBordered(window : Window*, bordered : Bool) : Void
	fun show_window = SDL_ShowWindow(window : Window*) : Void
	fun hide_window = SDL_HideWindow(window : Window*) : Void
	fun raise_window = SDL_RaiseWindow(window : Window*) : Void
	fun maximize_window = SDL_MaximizeWindow(window : Window*) : Void
	fun minimize_window = SDL_MinimizeWindow(window : Window*) : Void
	fun restore_window = SDL_RestoreWindow(window : Window*) : Void
	fun set_window_fullscreen = SDL_SetWindowFullscreen(window : Window*, flags : WindowFlags) : Int32
	fun get_window_surface = SDL_GetWindowSurface(window : Window*) : Surface*
	fun update_window_surface = SDL_UpdateWindowSurface(window : Window*) : Int32
	fun update_window_surface_rects = SDL_UpdateWindowSurfaceRects(window : Window*, rects : Rect*, numrects : Int32) : Int32
	fun set_window_grab = SDL_SetWindowGrab(window : Window*, grabbed : Bool) : Void
	fun get_window_grab = SDL_GetWindowGrab(window : Window*) : Bool
	fun set_window_brightness = SDL_SetWindowBrightness(window : Window*, brightness : Float32) : Int32
	fun get_window_brightness = SDL_GetWindowBrightness(window : Window*) : Float32
	fun set_window_gamma_ramp = SDL_SetWindowGammaRamp(window : Window*, red : UInt16*, green : UInt16*, blue : UInt16*) : Int32
	fun get_window_gamma_ramp = SDL_GetWindowGammaRamp(window : Window*, red : UInt16*, green : UInt16*, blue : UInt16*) : Int32
	fun destroy_window = SDL_DestroyWindow(window : Window*) : Void
	fun is_screen_saver_enabled = SDL_IsScreenSaverEnabled() : Bool
	fun enable_screen_saver = SDL_EnableScreenSaver() : Void
	fun disable_screen_saver = SDL_DisableScreenSaver() : Void
	fun gl_load_library = SDL_GL_LoadLibrary(path : UInt8*) : Int32
	fun gl_get_proc_address = SDL_GL_GetProcAddress(proc : UInt8*) : Void*
	fun gl_unload_library = SDL_GL_UnloadLibrary() : Void
	fun gl_extension_supported = SDL_GL_ExtensionSupported(extension : UInt8*) : Bool
	fun gl_reset_attributes = SDL_GL_ResetAttributes() : Void
	fun gl_set_attribute = SDL_GL_SetAttribute(attr : GLattr, value : Int32) : Int32
	fun gl_get_attribute = SDL_GL_GetAttribute(attr : GLattr, value : Int32*) : Int32
	fun gl_create_context = SDL_GL_CreateContext(window : Window*) : GLContext
	fun gl_make_current = SDL_GL_MakeCurrent(window : Window*, context : GLContext) : Int32
	fun gl_get_current_window = SDL_GL_GetCurrentWindow() : Window*
	fun gl_get_current_context = SDL_GL_GetCurrentContext() : GLContext
	fun gl_get_drawable_size = SDL_GL_GetDrawableSize(window : Window*, w : Int32*, h : Int32*) : Void
	fun gl_set_swap_interval = SDL_GL_SetSwapInterval(interval : Int32) : Int32
	fun gl_get_swap_interval = SDL_GL_GetSwapInterval() : Int32
	fun gl_swap_window = SDL_GL_SwapWindow(window : Window*) : Void
	fun gl_delete_context = SDL_GL_DeleteContext(context : GLContext) : Void
	fun get_keyboard_focus = SDL_GetKeyboardFocus() : Window*
	fun get_keyboard_state = SDL_GetKeyboardState(numkeys : Int32*) : UInt8*
	fun get_mod_state = SDL_GetModState() : Keymod
	fun set_mod_state = SDL_SetModState(modstate : Keymod) : Void
	fun get_key_from_scancode = SDL_GetKeyFromScancode(scancode : Scancode) : Keycode
	fun get_scancode_from_key = SDL_GetScancodeFromKey(key : Keycode) : Scancode
	fun get_scancode_name = SDL_GetScancodeName(scancode : Scancode) : UInt8*
	fun get_scancode_from_name = SDL_GetScancodeFromName(name : UInt8*) : Scancode
	fun get_key_name = SDL_GetKeyName(key : Keycode) : UInt8*
	fun get_key_from_name = SDL_GetKeyFromName(name : UInt8*) : Keycode
	fun start_text_input = SDL_StartTextInput() : Void
	fun is_text_input_active = SDL_IsTextInputActive() : Bool
	fun stop_text_input = SDL_StopTextInput() : Void
	fun set_text_input_rect = SDL_SetTextInputRect(rect : Rect*) : Void
	fun has_screen_keyboard_support = SDL_HasScreenKeyboardSupport() : Bool
	fun is_screen_keyboard_shown = SDL_IsScreenKeyboardShown(window : Window*) : Bool
	fun get_mouse_focus = SDL_GetMouseFocus() : Window*
	fun get_mouse_state = SDL_GetMouseState(x : Int32*, y : Int32*) : UInt32
	fun get_relative_mouse_state = SDL_GetRelativeMouseState(x : Int32*, y : Int32*) : UInt32
	fun warp_mouse_in_window = SDL_WarpMouseInWindow(window : Window*, x : Int32, y : Int32) : Void
	fun set_relative_mouse_mode = SDL_SetRelativeMouseMode(enabled : Bool) : Int32
	fun get_relative_mouse_mode = SDL_GetRelativeMouseMode() : Bool
	fun create_cursor = SDL_CreateCursor(data : UInt8*, mask : UInt8*, w : Int32, h : Int32, hot_x : Int32, hot_y : Int32) : Cursor*
	fun create_color_cursor = SDL_CreateColorCursor(surface : Surface*, hot_x : Int32, hot_y : Int32) : Cursor*
	fun create_system_cursor = SDL_CreateSystemCursor(id : SystemCursor) : Cursor*
	fun set_cursor = SDL_SetCursor(cursor : Cursor*) : Void
	fun get_cursor = SDL_GetCursor() : Cursor*
	fun get_default_cursor = SDL_GetDefaultCursor() : Cursor*
	fun free_cursor = SDL_FreeCursor(cursor : Cursor*) : Void
	fun show_cursor = SDL_ShowCursor(toggle : Int32) : Int32
	fun num_joysticks = SDL_NumJoysticks() : Int32
	fun joystick_name_for_index = SDL_JoystickNameForIndex(device_index : Int32) : UInt8*
	fun joystick_open = SDL_JoystickOpen(device_index : Int32) : Joystick*
	fun joystick_name = SDL_JoystickName(joystick : Joystick*) : UInt8*
	fun joystick_get_device_guid = SDL_JoystickGetDeviceGUID(device_index : Int32) : JoystickGUID
	fun joystick_get_guid = SDL_JoystickGetGUID(joystick : Joystick*) : JoystickGUID
	fun joystick_get_guid_string = SDL_JoystickGetGUIDString(guid : JoystickGUID, psz_guid : UInt8*, cb_guid : Int32) : Void
	fun joystick_get_guid_from_string = SDL_JoystickGetGUIDFromString(pch_guid : UInt8*) : JoystickGUID
	fun joystick_get_attached = SDL_JoystickGetAttached(joystick : Joystick*) : Bool
	fun joystick_instance_id = SDL_JoystickInstanceID(joystick : Joystick*) : JoystickID
	fun joystick_num_axes = SDL_JoystickNumAxes(joystick : Joystick*) : Int32
	fun joystick_num_balls = SDL_JoystickNumBalls(joystick : Joystick*) : Int32
	fun joystick_num_hats = SDL_JoystickNumHats(joystick : Joystick*) : Int32
	fun joystick_num_buttons = SDL_JoystickNumButtons(joystick : Joystick*) : Int32
	fun joystick_update = SDL_JoystickUpdate() : Void
	fun joystick_event_state = SDL_JoystickEventState(state : Int32) : Int32
	fun joystick_get_axis = SDL_JoystickGetAxis(joystick : Joystick*, axis : Int32) : Int16
	fun joystick_get_hat = SDL_JoystickGetHat(joystick : Joystick*, hat : Int32) : UInt8
	fun joystick_get_ball = SDL_JoystickGetBall(joystick : Joystick*, ball : Int32, dx : Int32*, dy : Int32*) : Int32
	fun joystick_get_button = SDL_JoystickGetButton(joystick : Joystick*, button : Int32) : UInt8
	fun joystick_close = SDL_JoystickClose(joystick : Joystick*) : Void
	fun game_controller_add_mappings_from_rw = SDL_GameControllerAddMappingsFromRW(rw : RWops*, freerw : Int32) : Int32
	fun game_controller_add_mapping = SDL_GameControllerAddMapping(mapping_string : UInt8*) : Int32
	fun game_controller_mapping_for_guid = SDL_GameControllerMappingForGUID(guid : JoystickGUID) : UInt8*
	fun game_controller_mapping = SDL_GameControllerMapping(gamecontroller : GameController*) : UInt8*
	fun is_game_controller = SDL_IsGameController(joystick_index : Int32) : Bool
	fun game_controller_name_for_index = SDL_GameControllerNameForIndex(joystick_index : Int32) : UInt8*
	fun game_controller_open = SDL_GameControllerOpen(joystick_index : Int32) : GameController*
	fun game_controller_name = SDL_GameControllerName(gamecontroller : GameController*) : UInt8*
	fun game_controller_get_attached = SDL_GameControllerGetAttached(gamecontroller : GameController*) : Bool
	fun game_controller_get_joystick = SDL_GameControllerGetJoystick(gamecontroller : GameController*) : Joystick*
	fun game_controller_event_state = SDL_GameControllerEventState(state : Int32) : Int32
	fun game_controller_update = SDL_GameControllerUpdate() : Void
	fun game_controller_get_axis_from_string = SDL_GameControllerGetAxisFromString(pch_string : UInt8*) : GameControllerAxis
	fun game_controller_get_string_for_axis = SDL_GameControllerGetStringForAxis(axis : GameControllerAxis) : UInt8*
	fun game_controller_get_bind_for_axis = SDL_GameControllerGetBindForAxis(gamecontroller : GameController*, axis : GameControllerAxis) : GameControllerButtonBind
	fun game_controller_get_axis = SDL_GameControllerGetAxis(gamecontroller : GameController*, axis : GameControllerAxis) : Int16
	fun game_controller_get_button_from_string = SDL_GameControllerGetButtonFromString(pch_string : UInt8*) : GameControllerButton
	fun game_controller_get_string_for_button = SDL_GameControllerGetStringForButton(button : GameControllerButton) : UInt8*
	fun game_controller_get_bind_for_button = SDL_GameControllerGetBindForButton(gamecontroller : GameController*, button : GameControllerButton) : GameControllerButtonBind
	fun game_controller_get_button = SDL_GameControllerGetButton(gamecontroller : GameController*, button : GameControllerButton) : UInt8
	fun game_controller_close = SDL_GameControllerClose(gamecontroller : GameController*) : Void
	fun get_num_touch_devices = SDL_GetNumTouchDevices() : Int32
	fun get_touch_device = SDL_GetTouchDevice(index : Int32) : TouchID
	fun get_num_touch_fingers = SDL_GetNumTouchFingers(touch_id : TouchID) : Int32
	fun get_touch_finger = SDL_GetTouchFinger(touch_id : TouchID, index : Int32) : Finger*
	fun record_gesture = SDL_RecordGesture(touch_id : TouchID) : Int32
	fun save_all_dollar_templates = SDL_SaveAllDollarTemplates(dst : RWops*) : Int32
	fun save_dollar_template = SDL_SaveDollarTemplate(gesture_id : GestureID, dst : RWops*) : Int32
	fun load_dollar_templates = SDL_LoadDollarTemplates(touch_id : TouchID, src : RWops*) : Int32
	fun pump_events = SDL_PumpEvents() : Void
	fun peep_events = SDL_PeepEvents(events : Event*, numevents : Int32, action : Eventaction, min_type : UInt32, max_type : UInt32) : Int32
	fun has_event = SDL_HasEvent(type : UInt32) : Bool
	fun has_events = SDL_HasEvents(min_type : UInt32, max_type : UInt32) : Bool
	fun flush_event = SDL_FlushEvent(type : UInt32) : Void
	fun flush_events = SDL_FlushEvents(min_type : UInt32, max_type : UInt32) : Void
	fun poll_event = SDL_PollEvent(event : Event*) : Int32
	fun wait_event = SDL_WaitEvent(event : Event*) : Int32
	fun wait_event_timeout = SDL_WaitEventTimeout(event : Event*, timeout : Int32) : Int32
	fun push_event = SDL_PushEvent(event : Event*) : Int32
	fun set_event_filter = SDL_SetEventFilter(filter : EventFilter, userdata : Void*) : Void
	fun get_event_filter = SDL_GetEventFilter(filter : EventFilter*, userdata : Void**) : Bool
	fun add_event_watch = SDL_AddEventWatch(filter : EventFilter, userdata : Void*) : Void
	fun del_event_watch = SDL_DelEventWatch(filter : EventFilter, userdata : Void*) : Void
	fun filter_events = SDL_FilterEvents(filter : EventFilter, userdata : Void*) : Void
	fun event_state = SDL_EventState(type : UInt32, state : Int32) : UInt8
	fun register_events = SDL_RegisterEvents(numevents : Int32) : UInt32
	fun get_base_path = SDL_GetBasePath() : UInt8*
	fun get_pref_path = SDL_GetPrefPath(org : UInt8*, app : UInt8*) : UInt8*
	fun num_haptics = SDL_NumHaptics() : Int32
	fun haptic_name = SDL_HapticName(device_index : Int32) : UInt8*
	fun haptic_open = SDL_HapticOpen(device_index : Int32) : Haptic*
	fun haptic_opened = SDL_HapticOpened(device_index : Int32) : Int32
	fun haptic_index = SDL_HapticIndex(haptic : Haptic*) : Int32
	fun mouse_is_haptic = SDL_MouseIsHaptic() : Int32
	fun haptic_open_from_mouse = SDL_HapticOpenFromMouse() : Haptic*
	fun joystick_is_haptic = SDL_JoystickIsHaptic(joystick : Joystick*) : Int32
	fun haptic_open_from_joystick = SDL_HapticOpenFromJoystick(joystick : Joystick*) : Haptic*
	fun haptic_close = SDL_HapticClose(haptic : Haptic*) : Void
	fun haptic_num_effects = SDL_HapticNumEffects(haptic : Haptic*) : Int32
	fun haptic_num_effects_playing = SDL_HapticNumEffectsPlaying(haptic : Haptic*) : Int32
	fun haptic_query = SDL_HapticQuery(haptic : Haptic*) : UInt32
	fun haptic_num_axes = SDL_HapticNumAxes(haptic : Haptic*) : Int32
	fun haptic_effect_supported = SDL_HapticEffectSupported(haptic : Haptic*, effect : HapticEffect*) : Int32
	fun haptic_new_effect = SDL_HapticNewEffect(haptic : Haptic*, effect : HapticEffect*) : Int32
	fun haptic_update_effect = SDL_HapticUpdateEffect(haptic : Haptic*, effect : Int32, data : HapticEffect*) : Int32
	fun haptic_run_effect = SDL_HapticRunEffect(haptic : Haptic*, effect : Int32, iterations : UInt32) : Int32
	fun haptic_stop_effect = SDL_HapticStopEffect(haptic : Haptic*, effect : Int32) : Int32
	fun haptic_destroy_effect = SDL_HapticDestroyEffect(haptic : Haptic*, effect : Int32) : Void
	fun haptic_get_effect_status = SDL_HapticGetEffectStatus(haptic : Haptic*, effect : Int32) : Int32
	fun haptic_set_gain = SDL_HapticSetGain(haptic : Haptic*, gain : Int32) : Int32
	fun haptic_set_autocenter = SDL_HapticSetAutocenter(haptic : Haptic*, autocenter : Int32) : Int32
	fun haptic_pause = SDL_HapticPause(haptic : Haptic*) : Int32
	fun haptic_unpause = SDL_HapticUnpause(haptic : Haptic*) : Int32
	fun haptic_stop_all = SDL_HapticStopAll(haptic : Haptic*) : Int32
	fun haptic_rumble_supported = SDL_HapticRumbleSupported(haptic : Haptic*) : Int32
	fun haptic_rumble_init = SDL_HapticRumbleInit(haptic : Haptic*) : Int32
	fun haptic_rumble_play = SDL_HapticRumblePlay(haptic : Haptic*, strength : Float32, length : UInt32) : Int32
	fun haptic_rumble_stop = SDL_HapticRumbleStop(haptic : Haptic*) : Int32
	fun set_hint_with_priority = SDL_SetHintWithPriority(name : UInt8*, value : UInt8*, priority : HintPriority) : Bool
	fun set_hint = SDL_SetHint(name : UInt8*, value : UInt8*) : Bool
	fun get_hint = SDL_GetHint(name : UInt8*) : UInt8*
	fun add_hint_callback = SDL_AddHintCallback(name : UInt8*, callback : HintCallback, userdata : Void*) : Void
	fun del_hint_callback = SDL_DelHintCallback(name : UInt8*, callback : HintCallback, userdata : Void*) : Void
	fun clear_hints = SDL_ClearHints() : Void
	fun load_object = SDL_LoadObject(sofile : UInt8*) : Void*
	fun load_function = SDL_LoadFunction(handle : Void*, name : UInt8*) : Void*
	fun unload_object = SDL_UnloadObject(handle : Void*) : Void
	fun log_set_all_priority = SDL_LogSetAllPriority(priority : LogPriority) : Void
	fun log_set_priority = SDL_LogSetPriority(category : Int32, priority : LogPriority) : Void
	fun log_get_priority = SDL_LogGetPriority(category : Int32) : LogPriority
	fun log_reset_priorities = SDL_LogResetPriorities() : Void
	fun log = SDL_Log(fmt : UInt8*) : Void
	fun log_verbose = SDL_LogVerbose(category : Int32, fmt : UInt8*) : Void
	fun log_debug = SDL_LogDebug(category : Int32, fmt : UInt8*) : Void
	fun log_info = SDL_LogInfo(category : Int32, fmt : UInt8*) : Void
	fun log_warn = SDL_LogWarn(category : Int32, fmt : UInt8*) : Void
	fun log_error = SDL_LogError(category : Int32, fmt : UInt8*) : Void
	fun log_critical = SDL_LogCritical(category : Int32, fmt : UInt8*) : Void
	fun log_message = SDL_LogMessage(category : Int32, priority : LogPriority, fmt : UInt8*) : Void
	fun log_message_v = SDL_LogMessageV(category : Int32, priority : LogPriority, fmt : UInt8*, ap : Void*) : Void
	fun log_get_output_function = SDL_LogGetOutputFunction(callback : LogOutputFunction*, userdata : Void**) : Void
	fun log_set_output_function = SDL_LogSetOutputFunction(callback : LogOutputFunction, userdata : Void*) : Void
	fun show_message_box = SDL_ShowMessageBox(messageboxdata : MessageBoxData*, buttonid : Int32*) : Int32
	fun show_simple_message_box = SDL_ShowSimpleMessageBox(flags : MessageBoxFlags, title : UInt8*, message : UInt8*, window : Window*) : Int32
	fun get_power_info = SDL_GetPowerInfo(secs : Int32*, pct : Int32*) : PowerState
	fun get_num_render_drivers = SDL_GetNumRenderDrivers() : Int32
	fun get_render_driver_info = SDL_GetRenderDriverInfo(index : Int32, info : RendererInfo*) : Int32
	fun create_window_and_renderer = SDL_CreateWindowAndRenderer(width : Int32, height : Int32, window_flags : WindowFlags, window : Window**, renderer : Renderer**) : Int32
	fun create_renderer = SDL_CreateRenderer(window : Window*, index : Int32, flags : RendererFlags) : Renderer*
	fun create_software_renderer = SDL_CreateSoftwareRenderer(surface : Surface*) : Renderer*
	fun get_renderer = SDL_GetRenderer(window : Window*) : Renderer*
	fun get_renderer_info = SDL_GetRendererInfo(renderer : Renderer*, info : RendererInfo*) : Int32
	fun get_renderer_output_size = SDL_GetRendererOutputSize(renderer : Renderer*, w : Int32*, h : Int32*) : Int32
	fun create_texture = SDL_CreateTexture(renderer : Renderer*, format : UInt32, access : Int32, w : Int32, h : Int32) : Texture*
	fun create_texture_from_surface = SDL_CreateTextureFromSurface(renderer : Renderer*, surface : Surface*) : Texture*
	fun query_texture = SDL_QueryTexture(texture : Texture*, format : UInt32*, access : Int32*, w : Int32*, h : Int32*) : Int32
	fun set_texture_color_mod = SDL_SetTextureColorMod(texture : Texture*, r : UInt8, g : UInt8, b : UInt8) : Int32
	fun get_texture_color_mod = SDL_GetTextureColorMod(texture : Texture*, r : UInt8*, g : UInt8*, b : UInt8*) : Int32
	fun set_texture_alpha_mod = SDL_SetTextureAlphaMod(texture : Texture*, alpha : UInt8) : Int32
	fun get_texture_alpha_mod = SDL_GetTextureAlphaMod(texture : Texture*, alpha : UInt8*) : Int32
	fun set_texture_blend_mode = SDL_SetTextureBlendMode(texture : Texture*, blend_mode : BlendMode) : Int32
	fun get_texture_blend_mode = SDL_GetTextureBlendMode(texture : Texture*, blend_mode : BlendMode*) : Int32
	fun update_texture = SDL_UpdateTexture(texture : Texture*, rect : Rect*, pixels : Void*, pitch : Int32) : Int32
	fun update_yuv_texture = SDL_UpdateYUVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : Int32, uplane : UInt8*, upitch : Int32, vplane : UInt8*, vpitch : Int32) : Int32
	fun lock_texture = SDL_LockTexture(texture : Texture*, rect : Rect*, pixels : Void**, pitch : Int32*) : Int32
	fun unlock_texture = SDL_UnlockTexture(texture : Texture*) : Void
	fun render_target_supported = SDL_RenderTargetSupported(renderer : Renderer*) : Bool
	fun set_render_target = SDL_SetRenderTarget(renderer : Renderer*, texture : Texture*) : Int32
	fun get_render_target = SDL_GetRenderTarget(renderer : Renderer*) : Texture*
	fun render_set_logical_size = SDL_RenderSetLogicalSize(renderer : Renderer*, w : Int32, h : Int32) : Int32
	fun render_get_logical_size = SDL_RenderGetLogicalSize(renderer : Renderer*, w : Int32*, h : Int32*) : Void
	fun render_set_viewport = SDL_RenderSetViewport(renderer : Renderer*, rect : Rect*) : Int32
	fun render_get_viewport = SDL_RenderGetViewport(renderer : Renderer*, rect : Rect*) : Void
	fun render_set_clip_rect = SDL_RenderSetClipRect(renderer : Renderer*, rect : Rect*) : Int32
	fun render_get_clip_rect = SDL_RenderGetClipRect(renderer : Renderer*, rect : Rect*) : Void
	fun render_set_scale = SDL_RenderSetScale(renderer : Renderer*, scale_x : Float32, scale_y : Float32) : Int32
	fun render_get_scale = SDL_RenderGetScale(renderer : Renderer*, scale_x : Float32*, scale_y : Float32*) : Void
	fun set_render_draw_color = SDL_SetRenderDrawColor(renderer : Renderer*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : Int32
	fun get_render_draw_color = SDL_GetRenderDrawColor(renderer : Renderer*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Int32
	fun set_render_draw_blend_mode = SDL_SetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode) : Int32
	fun get_render_draw_blend_mode = SDL_GetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode*) : Int32
	fun render_clear = SDL_RenderClear(renderer : Renderer*) : Int32
	fun render_draw_point = SDL_RenderDrawPoint(renderer : Renderer*, x : Int32, y : Int32) : Int32
	fun render_draw_points = SDL_RenderDrawPoints(renderer : Renderer*, points : Point*, count : Int32) : Int32
	fun render_draw_line = SDL_RenderDrawLine(renderer : Renderer*, x1 : Int32, y1 : Int32, x2 : Int32, y2 : Int32) : Int32
	fun render_draw_lines = SDL_RenderDrawLines(renderer : Renderer*, points : Point*, count : Int32) : Int32
	fun render_draw_rect = SDL_RenderDrawRect(renderer : Renderer*, rect : Rect*) : Int32
	fun render_draw_rects = SDL_RenderDrawRects(renderer : Renderer*, rects : Rect*, count : Int32) : Int32
	fun render_fill_rect = SDL_RenderFillRect(renderer : Renderer*, rect : Rect*) : Int32
	fun render_fill_rects = SDL_RenderFillRects(renderer : Renderer*, rects : Rect*, count : Int32) : Int32
	fun render_copy = SDL_RenderCopy(renderer : Renderer*, texture : Texture*, srcrect : Rect*, dstrect : Rect*) : Int32
	fun render_copy_ex = SDL_RenderCopyEx(renderer : Renderer*, texture : Texture*, srcrect : Rect*, dstrect : Rect*, angle : Float64, center : Point*, flip : RendererFlip) : Int32
	fun render_read_pixels = SDL_RenderReadPixels(renderer : Renderer*, rect : Rect*, format : UInt32, pixels : Void*, pitch : Int32) : Int32
	fun render_present = SDL_RenderPresent(renderer : Renderer*) : Void
	fun destroy_texture = SDL_DestroyTexture(texture : Texture*) : Void
	fun destroy_renderer = SDL_DestroyRenderer(renderer : Renderer*) : Void
	fun gl_bind_texture = SDL_GL_BindTexture(texture : Texture*, texw : Float32*, texh : Float32*) : Int32
	fun gl_unbind_texture = SDL_GL_UnbindTexture(texture : Texture*) : Int32
	fun get_ticks = SDL_GetTicks() : UInt32
	fun get_performance_counter = SDL_GetPerformanceCounter() : UInt64
	fun get_performance_frequency = SDL_GetPerformanceFrequency() : UInt64
	fun delay = SDL_Delay(ms : UInt32) : Void
	fun add_timer = SDL_AddTimer(interval : UInt32, callback : TimerCallback, param : Void*) : TimerID
	fun remove_timer = SDL_RemoveTimer(id : TimerID) : Bool
	fun get_version = SDL_GetVersion(ver : Version*) : Void
	fun get_revision = SDL_GetRevision() : UInt8*
	fun get_revision_number = SDL_GetRevisionNumber() : Int32
	fun init = SDL_Init(flags : InitFlags) : Int32
	fun init_sub_system = SDL_InitSubSystem(flags : InitFlags) : Int32
	fun quit_sub_system = SDL_QuitSubSystem(flags : InitFlags) : Void
	fun was_init = SDL_WasInit(flags : InitFlags) : UInt32
	fun quit = SDL_Quit() : Void
	
	# Vars #
	
	
end

