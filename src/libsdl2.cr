# WARNING: Automatically generated using Arcnor's famous NativeBindingsGenerator. Do not modify manually!

@[Link("SDL2")]
lib LibSDL2
	
	# Types & Classes #
	
	struct IconvT2
		
	end
	
	type IconvT = IconvT2*
	
	enum AssertState
		ASSERTION_RETRY
		ASSERTION_BREAK
		ASSERTION_ABORT
		ASSERTION_IGNORE
		ASSERTION_ALWAYS_IGNORE
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
		THREAD_PRIORITY_LOW
		THREAD_PRIORITY_NORMAL
		THREAD_PRIORITY_HIGH
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
		AUDIO_STOPPED = 0
		AUDIO_PLAYING
		AUDIO_PAUSED
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
		BLENDMODE_NONE = 0
		BLENDMODE_BLEND = 1
		BLENDMODE_ADD = 2
		BLENDMODE_MOD = 4
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
		WINDOW_FULLSCREEN = 0x00000001
		WINDOW_OPENGL = 0x00000002
		WINDOW_SHOWN = 0x00000004
		WINDOW_HIDDEN = 0x00000008
		WINDOW_BORDERLESS = 0x00000010
		WINDOW_RESIZABLE = 0x00000020
		WINDOW_MINIMIZED = 0x00000040
		WINDOW_MAXIMIZED = 0x00000080
		WINDOW_INPUT_GRABBED = 0x00000100
		WINDOW_INPUT_FOCUS = 0x00000200
		WINDOW_MOUSE_FOCUS = 0x00000400
		WINDOW_FULLSCREEN_DESKTOP
		WINDOW_FOREIGN = 0x00000800
		WINDOW_ALLOW_HIGHDPI = 0x00002000
	end
	
	enum WindowEventID
		WINDOWEVENT_NONE
		WINDOWEVENT_SHOWN
		WINDOWEVENT_HIDDEN
		WINDOWEVENT_EXPOSED
		WINDOWEVENT_MOVED
		WINDOWEVENT_RESIZED
		WINDOWEVENT_SIZE_CHANGED
		WINDOWEVENT_MINIMIZED
		WINDOWEVENT_MAXIMIZED
		WINDOWEVENT_RESTORED
		WINDOWEVENT_ENTER
		WINDOWEVENT_LEAVE
		WINDOWEVENT_FOCUS_GAINED
		WINDOWEVENT_FOCUS_LOST
		WINDOWEVENT_CLOSE
	end
	
	type GLContext = Void*
	
	enum GLattr
		GL_RED_SIZE
		GL_GREEN_SIZE
		GL_BLUE_SIZE
		GL_ALPHA_SIZE
		GL_BUFFER_SIZE
		GL_DOUBLEBUFFER
		GL_DEPTH_SIZE
		GL_STENCIL_SIZE
		GL_ACCUM_RED_SIZE
		GL_ACCUM_GREEN_SIZE
		GL_ACCUM_BLUE_SIZE
		GL_ACCUM_ALPHA_SIZE
		GL_STEREO
		GL_MULTISAMPLEBUFFERS
		GL_MULTISAMPLESAMPLES
		GL_ACCELERATED_VISUAL
		GL_RETAINED_BACKING
		GL_CONTEXT_MAJOR_VERSION
		GL_CONTEXT_MINOR_VERSION
		GL_CONTEXT_EGL
		GL_CONTEXT_FLAGS
		GL_CONTEXT_PROFILE_MASK
		GL_SHARE_WITH_CURRENT_CONTEXT
		GL_FRAMEBUFFER_SRGB_CAPABLE
	end
	
	enum GLprofile
		GL_CONTEXT_PROFILE_CORE = 1
		GL_CONTEXT_PROFILE_COMPATIBILITY = 2
		GL_CONTEXT_PROFILE_ES = 4
	end
	
	enum GLcontextFlag
		GL_CONTEXT_DEBUG_FLAG = 1
		GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2
		GL_CONTEXT_ROBUST_ACCESS_FLAG = 4
		GL_CONTEXT_RESET_ISOLATION_FLAG = 8
	end
	
	enum Scancode
		SCANCODE_UNKNOWN = 0
		SCANCODE_A = 4
		SCANCODE_B = 5
		SCANCODE_C = 6
		SCANCODE_D = 7
		SCANCODE_E = 8
		SCANCODE_F = 9
		SCANCODE_G = 10
		SCANCODE_H = 11
		SCANCODE_I = 12
		SCANCODE_J = 13
		SCANCODE_K = 14
		SCANCODE_L = 15
		SCANCODE_M = 16
		SCANCODE_N = 17
		SCANCODE_O = 18
		SCANCODE_P = 19
		SCANCODE_Q = 20
		SCANCODE_R = 21
		SCANCODE_S = 22
		SCANCODE_T = 23
		SCANCODE_U = 24
		SCANCODE_V = 25
		SCANCODE_W = 26
		SCANCODE_X = 27
		SCANCODE_Y = 28
		SCANCODE_Z = 29
		SCANCODE_1 = 30
		SCANCODE_2 = 31
		SCANCODE_3 = 32
		SCANCODE_4 = 33
		SCANCODE_5 = 34
		SCANCODE_6 = 35
		SCANCODE_7 = 36
		SCANCODE_8 = 37
		SCANCODE_9 = 38
		SCANCODE_0 = 39
		SCANCODE_RETURN = 40
		SCANCODE_ESCAPE = 41
		SCANCODE_BACKSPACE = 42
		SCANCODE_TAB = 43
		SCANCODE_SPACE = 44
		SCANCODE_MINUS = 45
		SCANCODE_EQUALS = 46
		SCANCODE_LEFTBRACKET = 47
		SCANCODE_RIGHTBRACKET = 48
		SCANCODE_BACKSLASH = 49
		SCANCODE_NONUSHASH = 50
		SCANCODE_SEMICOLON = 51
		SCANCODE_APOSTROPHE = 52
		SCANCODE_GRAVE = 53
		SCANCODE_COMMA = 54
		SCANCODE_PERIOD = 55
		SCANCODE_SLASH = 56
		SCANCODE_CAPSLOCK = 57
		SCANCODE_F1 = 58
		SCANCODE_F2 = 59
		SCANCODE_F3 = 60
		SCANCODE_F4 = 61
		SCANCODE_F5 = 62
		SCANCODE_F6 = 63
		SCANCODE_F7 = 64
		SCANCODE_F8 = 65
		SCANCODE_F9 = 66
		SCANCODE_F10 = 67
		SCANCODE_F11 = 68
		SCANCODE_F12 = 69
		SCANCODE_PRINTSCREEN = 70
		SCANCODE_SCROLLLOCK = 71
		SCANCODE_PAUSE = 72
		SCANCODE_INSERT = 73
		SCANCODE_HOME = 74
		SCANCODE_PAGEUP = 75
		SCANCODE_DELETE = 76
		SCANCODE_END = 77
		SCANCODE_PAGEDOWN = 78
		SCANCODE_RIGHT = 79
		SCANCODE_LEFT = 80
		SCANCODE_DOWN = 81
		SCANCODE_UP = 82
		SCANCODE_NUMLOCKCLEAR = 83
		SCANCODE_KP_DIVIDE = 84
		SCANCODE_KP_MULTIPLY = 85
		SCANCODE_KP_MINUS = 86
		SCANCODE_KP_PLUS = 87
		SCANCODE_KP_ENTER = 88
		SCANCODE_KP_1 = 89
		SCANCODE_KP_2 = 90
		SCANCODE_KP_3 = 91
		SCANCODE_KP_4 = 92
		SCANCODE_KP_5 = 93
		SCANCODE_KP_6 = 94
		SCANCODE_KP_7 = 95
		SCANCODE_KP_8 = 96
		SCANCODE_KP_9 = 97
		SCANCODE_KP_0 = 98
		SCANCODE_KP_PERIOD = 99
		SCANCODE_NONUSBACKSLASH = 100
		SCANCODE_APPLICATION = 101
		SCANCODE_POWER = 102
		SCANCODE_KP_EQUALS = 103
		SCANCODE_F13 = 104
		SCANCODE_F14 = 105
		SCANCODE_F15 = 106
		SCANCODE_F16 = 107
		SCANCODE_F17 = 108
		SCANCODE_F18 = 109
		SCANCODE_F19 = 110
		SCANCODE_F20 = 111
		SCANCODE_F21 = 112
		SCANCODE_F22 = 113
		SCANCODE_F23 = 114
		SCANCODE_F24 = 115
		SCANCODE_EXECUTE = 116
		SCANCODE_HELP = 117
		SCANCODE_MENU = 118
		SCANCODE_SELECT = 119
		SCANCODE_STOP = 120
		SCANCODE_AGAIN = 121
		SCANCODE_UNDO = 122
		SCANCODE_CUT = 123
		SCANCODE_COPY = 124
		SCANCODE_PASTE = 125
		SCANCODE_FIND = 126
		SCANCODE_MUTE = 127
		SCANCODE_VOLUMEUP = 128
		SCANCODE_VOLUMEDOWN = 129
		SCANCODE_KP_COMMA = 133
		SCANCODE_KP_EQUALSAS400 = 134
		SCANCODE_INTERNATIONAL1 = 135
		SCANCODE_INTERNATIONAL2 = 136
		SCANCODE_INTERNATIONAL3 = 137
		SCANCODE_INTERNATIONAL4 = 138
		SCANCODE_INTERNATIONAL5 = 139
		SCANCODE_INTERNATIONAL6 = 140
		SCANCODE_INTERNATIONAL7 = 141
		SCANCODE_INTERNATIONAL8 = 142
		SCANCODE_INTERNATIONAL9 = 143
		SCANCODE_LANG1 = 144
		SCANCODE_LANG2 = 145
		SCANCODE_LANG3 = 146
		SCANCODE_LANG4 = 147
		SCANCODE_LANG5 = 148
		SCANCODE_LANG6 = 149
		SCANCODE_LANG7 = 150
		SCANCODE_LANG8 = 151
		SCANCODE_LANG9 = 152
		SCANCODE_ALTERASE = 153
		SCANCODE_SYSREQ = 154
		SCANCODE_CANCEL = 155
		SCANCODE_CLEAR = 156
		SCANCODE_PRIOR = 157
		SCANCODE_RETURN2 = 158
		SCANCODE_SEPARATOR = 159
		SCANCODE_OUT = 160
		SCANCODE_OPER = 161
		SCANCODE_CLEARAGAIN = 162
		SCANCODE_CRSEL = 163
		SCANCODE_EXSEL = 164
		SCANCODE_KP_00 = 176
		SCANCODE_KP_000 = 177
		SCANCODE_THOUSANDSSEPARATOR = 178
		SCANCODE_DECIMALSEPARATOR = 179
		SCANCODE_CURRENCYUNIT = 180
		SCANCODE_CURRENCYSUBUNIT = 181
		SCANCODE_KP_LEFTPAREN = 182
		SCANCODE_KP_RIGHTPAREN = 183
		SCANCODE_KP_LEFTBRACE = 184
		SCANCODE_KP_RIGHTBRACE = 185
		SCANCODE_KP_TAB = 186
		SCANCODE_KP_BACKSPACE = 187
		SCANCODE_KP_A = 188
		SCANCODE_KP_B = 189
		SCANCODE_KP_C = 190
		SCANCODE_KP_D = 191
		SCANCODE_KP_E = 192
		SCANCODE_KP_F = 193
		SCANCODE_KP_XOR = 194
		SCANCODE_KP_POWER = 195
		SCANCODE_KP_PERCENT = 196
		SCANCODE_KP_LESS = 197
		SCANCODE_KP_GREATER = 198
		SCANCODE_KP_AMPERSAND = 199
		SCANCODE_KP_DBLAMPERSAND = 200
		SCANCODE_KP_VERTICALBAR = 201
		SCANCODE_KP_DBLVERTICALBAR = 202
		SCANCODE_KP_COLON = 203
		SCANCODE_KP_HASH = 204
		SCANCODE_KP_SPACE = 205
		SCANCODE_KP_AT = 206
		SCANCODE_KP_EXCLAM = 207
		SCANCODE_KP_MEMSTORE = 208
		SCANCODE_KP_MEMRECALL = 209
		SCANCODE_KP_MEMCLEAR = 210
		SCANCODE_KP_MEMADD = 211
		SCANCODE_KP_MEMSUBTRACT = 212
		SCANCODE_KP_MEMMULTIPLY = 213
		SCANCODE_KP_MEMDIVIDE = 214
		SCANCODE_KP_PLUSMINUS = 215
		SCANCODE_KP_CLEAR = 216
		SCANCODE_KP_CLEARENTRY = 217
		SCANCODE_KP_BINARY = 218
		SCANCODE_KP_OCTAL = 219
		SCANCODE_KP_DECIMAL = 220
		SCANCODE_KP_HEXADECIMAL = 221
		SCANCODE_LCTRL = 224
		SCANCODE_LSHIFT = 225
		SCANCODE_LALT = 226
		SCANCODE_LGUI = 227
		SCANCODE_RCTRL = 228
		SCANCODE_RSHIFT = 229
		SCANCODE_RALT = 230
		SCANCODE_RGUI = 231
		SCANCODE_MODE = 257
		SCANCODE_AUDIONEXT = 258
		SCANCODE_AUDIOPREV = 259
		SCANCODE_AUDIOSTOP = 260
		SCANCODE_AUDIOPLAY = 261
		SCANCODE_AUDIOMUTE = 262
		SCANCODE_MEDIASELECT = 263
		SCANCODE_WWW = 264
		SCANCODE_MAIL = 265
		SCANCODE_CALCULATOR = 266
		SCANCODE_COMPUTER = 267
		SCANCODE_AC_SEARCH = 268
		SCANCODE_AC_HOME = 269
		SCANCODE_AC_BACK = 270
		SCANCODE_AC_FORWARD = 271
		SCANCODE_AC_STOP = 272
		SCANCODE_AC_REFRESH = 273
		SCANCODE_AC_BOOKMARKS = 274
		SCANCODE_BRIGHTNESSDOWN = 275
		SCANCODE_BRIGHTNESSUP = 276
		SCANCODE_DISPLAYSWITCH = 277
		SCANCODE_KBDILLUMTOGGLE = 278
		SCANCODE_KBDILLUMDOWN = 279
		SCANCODE_KBDILLUMUP = 280
		SCANCODE_EJECT = 281
		SCANCODE_SLEEP = 282
		SCANCODE_APP1 = 283
		SCANCODE_APP2 = 284
		NUM_SCANCODES = 512
	end
	
	type Keycode = Int32
	
	enum Keymod
		KMOD_NONE = 0
		KMOD_LSHIFT = 1
		KMOD_RSHIFT = 2
		KMOD_LCTRL = 64
		KMOD_RCTRL = 128
		KMOD_LALT = 256
		KMOD_RALT = 512
		KMOD_LGUI = 1024
		KMOD_RGUI = 2048
		KMOD_NUM = 4096
		KMOD_CAPS = 8192
		KMOD_MODE = 16384
		KMOD_RESERVED = 32768
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
		SYSTEM_CURSOR_ARROW
		SYSTEM_CURSOR_IBEAM
		SYSTEM_CURSOR_WAIT
		SYSTEM_CURSOR_CROSSHAIR
		SYSTEM_CURSOR_WAITARROW
		SYSTEM_CURSOR_SIZENWSE
		SYSTEM_CURSOR_SIZENESW
		SYSTEM_CURSOR_SIZEWE
		SYSTEM_CURSOR_SIZENS
		SYSTEM_CURSOR_SIZEALL
		SYSTEM_CURSOR_NO
		SYSTEM_CURSOR_HAND
		NUM_SYSTEM_CURSORS
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
		CONTROLLER_BINDTYPE_NONE = 0
		CONTROLLER_BINDTYPE_BUTTON
		CONTROLLER_BINDTYPE_AXIS
		CONTROLLER_BINDTYPE_HAT
	end
	
	struct GameControllerButtonBind
		bind_type : GameControllerBindType
	end
	
	enum GameControllerAxis
		CONTROLLER_AXIS_INVALID
		CONTROLLER_AXIS_LEFTX
		CONTROLLER_AXIS_LEFTY
		CONTROLLER_AXIS_RIGHTX
		CONTROLLER_AXIS_RIGHTY
		CONTROLLER_AXIS_TRIGGERLEFT
		CONTROLLER_AXIS_TRIGGERRIGHT
		CONTROLLER_AXIS_MAX
	end
	
	enum GameControllerButton
		CONTROLLER_BUTTON_INVALID
		CONTROLLER_BUTTON_A
		CONTROLLER_BUTTON_B
		CONTROLLER_BUTTON_X
		CONTROLLER_BUTTON_Y
		CONTROLLER_BUTTON_BACK
		CONTROLLER_BUTTON_GUIDE
		CONTROLLER_BUTTON_START
		CONTROLLER_BUTTON_LEFTSTICK
		CONTROLLER_BUTTON_RIGHTSTICK
		CONTROLLER_BUTTON_LEFTSHOULDER
		CONTROLLER_BUTTON_RIGHTSHOULDER
		CONTROLLER_BUTTON_DPAD_UP
		CONTROLLER_BUTTON_DPAD_DOWN
		CONTROLLER_BUTTON_DPAD_LEFT
		CONTROLLER_BUTTON_DPAD_RIGHT
		CONTROLLER_BUTTON_MAX
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
		HINT_DEFAULT
		HINT_NORMAL
		HINT_OVERRIDE
	end
	
	type HintCallback = (Void*, UInt8*, UInt8*, UInt8*) -> Void
	
	enum LogPriority
		LOG_PRIORITY_VERBOSE = 1
		LOG_PRIORITY_DEBUG
		LOG_PRIORITY_INFO
		LOG_PRIORITY_WARN
		LOG_PRIORITY_ERROR
		LOG_PRIORITY_CRITICAL
		NUM_LOG_PRIORITIES
	end
	
	type LogOutputFunction = (Void*, Int32, LogPriority, UInt8*) -> Void
	
	@[Flags]
	enum MessageBoxFlags
		MESSAGEBOX_ERROR = 0x00000010
		MESSAGEBOX_WARNING = 0x00000020
		MESSAGEBOX_INFORMATION = 0x00000040
	end
	
	@[Flags]
	enum MessageBoxButtonFlags
		MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 0x00000001
		MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 0x00000002
	end
	
	struct MessageBoxButtonData
		flags : UInt32
		buttonid : Int32
		text : UInt8*
	end
	
	struct MessageBoxColor
		r : UInt8
		g : UInt8
		b : UInt8
	end
	
	enum MessageBoxColorType
		MESSAGEBOX_COLOR_BACKGROUND
		MESSAGEBOX_COLOR_TEXT
		MESSAGEBOX_COLOR_BUTTON_BORDER
		MESSAGEBOX_COLOR_BUTTON_BACKGROUND
		MESSAGEBOX_COLOR_BUTTON_SELECTED
		MESSAGEBOX_COLOR_MAX
	end
	
	struct MessageBoxColorScheme
		colors : MessageBoxColor[5]
	end
	
	struct MessageBoxData
		flags : UInt32
		window : Window*
		title : UInt8*
		message : UInt8*
		numbuttons : Int32
		buttons : MessageBoxButtonData*
		color_scheme : MessageBoxColorScheme*
	end
	
	enum PowerState
		POWERSTATE_UNKNOWN
		POWERSTATE_ON_BATTERY
		POWERSTATE_NO_BATTERY
		POWERSTATE_CHARGING
		POWERSTATE_CHARGED
	end
	
	@[Flags]
	enum RendererFlags
		RENDERER_SOFTWARE = 0x00000001
		RENDERER_ACCELERATED = 0x00000002
		RENDERER_PRESENTVSYNC = 0x00000004
		RENDERER_TARGETTEXTURE = 0x00000008
	end
	
	struct RendererInfo
		name : UInt8*
		flags : UInt32
		num_texture_formats : UInt32
		texture_formats : UInt32[16]
		max_texture_width : Int32
		max_texture_height : Int32
	end
	
	enum TextureAccess
		TEXTUREACCESS_STATIC
		TEXTUREACCESS_STREAMING
		TEXTUREACCESS_TARGET
	end
	
	enum TextureModulate
		TEXTUREMODULATE_NONE = 0
		TEXTUREMODULATE_COLOR = 1
		TEXTUREMODULATE_ALPHA = 2
	end
	
	enum RendererFlip
		FLIP_NONE = 0
		FLIP_HORIZONTAL = 1
		FLIP_VERTICAL = 2
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
	enum SD_InitFlags
		INIT_TIMER = 0x00000001
		INIT_AUDIO = 0x00000010
		INIT_VIDEO = 0x00000020
		INIT_JOYSTICK = 0x00000200
		INIT_HAPTIC = 0x00001000
		INIT_GAMECONTROLLER = 0x00002000
		INIT_EVENTS = 0x00004000
		INIT_NOPARACHUTE = 0x00100000
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
	fun create_window = SDL_CreateWindow(title : UInt8*, x : Int32, y : Int32, w : Int32, h : Int32, flags : UInt32) : Window*
	fun create_window_from = SDL_CreateWindowFrom(data : Void*) : Window*
	fun get_window_id = SDL_GetWindowID(window : Window*) : UInt32
	fun get_window_from_id = SDL_GetWindowFromID(id : UInt32) : Window*
	fun get_window_flags = SDL_GetWindowFlags(window : Window*) : UInt32
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
	fun set_window_fullscreen = SDL_SetWindowFullscreen(window : Window*, flags : UInt32) : Int32
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
	fun show_simple_message_box = SDL_ShowSimpleMessageBox(flags : UInt32, title : UInt8*, message : UInt8*, window : Window*) : Int32
	fun get_power_info = SDL_GetPowerInfo(secs : Int32*, pct : Int32*) : PowerState
	fun get_num_render_drivers = SDL_GetNumRenderDrivers() : Int32
	fun get_render_driver_info = SDL_GetRenderDriverInfo(index : Int32, info : RendererInfo*) : Int32
	fun create_window_and_renderer = SDL_CreateWindowAndRenderer(width : Int32, height : Int32, window_flags : UInt32, window : Window**, renderer : Renderer**) : Int32
	fun create_renderer = SDL_CreateRenderer(window : Window*, index : Int32, flags : UInt32) : Renderer*
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
	fun init = SDL_Init(flags : UInt32) : Int32
	fun init_sub_system = SDL_InitSubSystem(flags : UInt32) : Int32
	fun quit_sub_system = SDL_QuitSubSystem(flags : UInt32) : Void
	fun was_init = SDL_WasInit(flags : UInt32) : UInt32
	fun quit = SDL_Quit() : Void
	
	# Vars #
	
	
end

