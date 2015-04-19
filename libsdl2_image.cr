# WARNING: Automatically generated using Arcnor's famous NativeBindingsGenerator. Do not modify manually!
require "./libsdl2"

@[Link("SDL2_image")]
lib LibSDL2_image
	
	# Types & Classes #
	
	@[Flags]
	enum IMG_InitFlags
		IMG_INIT_JPG = 1,
		IMG_INIT_PNG = 2,
		IMG_INIT_TIF = 4,
		IMG_INIT_WEBP = 8
	end
	
	
	# Functions #
	
	fun linked_Version = IMG_Linked_Version() : LibSDL2::SDL_version*
	fun init = IMG_Init(flags : Int32) : Int32
	fun quit = IMG_Quit() : Void
	fun loadTyped_RW = IMG_LoadTyped_RW(src : LibSDL2::SDL_RWops*, freesrc : Int32, type : UInt8*) : LibSDL2::SDL_Surface*
	fun load = IMG_Load(file : UInt8*) : LibSDL2::SDL_Surface*
	fun load_RW = IMG_Load_RW(src : LibSDL2::SDL_RWops*, freesrc : Int32) : LibSDL2::SDL_Surface*
	fun loadTexture = IMG_LoadTexture(renderer : LibSDL2::SDL_Renderer*, file : UInt8*) : LibSDL2::SDL_Texture*
	fun loadTexture_RW = IMG_LoadTexture_RW(renderer : LibSDL2::SDL_Renderer*, src : LibSDL2::SDL_RWops*, freesrc : Int32) : LibSDL2::SDL_Texture*
	fun loadTextureTyped_RW = IMG_LoadTextureTyped_RW(renderer : LibSDL2::SDL_Renderer*, src : LibSDL2::SDL_RWops*, freesrc : Int32, type : UInt8*) : LibSDL2::SDL_Texture*
	fun isICO = IMG_isICO(src : LibSDL2::SDL_RWops*) : Int32
	fun isCUR = IMG_isCUR(src : LibSDL2::SDL_RWops*) : Int32
	fun isBMP = IMG_isBMP(src : LibSDL2::SDL_RWops*) : Int32
	fun isGIF = IMG_isGIF(src : LibSDL2::SDL_RWops*) : Int32
	fun isJPG = IMG_isJPG(src : LibSDL2::SDL_RWops*) : Int32
	fun isLBM = IMG_isLBM(src : LibSDL2::SDL_RWops*) : Int32
	fun isPCX = IMG_isPCX(src : LibSDL2::SDL_RWops*) : Int32
	fun isPNG = IMG_isPNG(src : LibSDL2::SDL_RWops*) : Int32
	fun isPNM = IMG_isPNM(src : LibSDL2::SDL_RWops*) : Int32
	fun isTIF = IMG_isTIF(src : LibSDL2::SDL_RWops*) : Int32
	fun isXCF = IMG_isXCF(src : LibSDL2::SDL_RWops*) : Int32
	fun isXPM = IMG_isXPM(src : LibSDL2::SDL_RWops*) : Int32
	fun isXV = IMG_isXV(src : LibSDL2::SDL_RWops*) : Int32
	fun isWEBP = IMG_isWEBP(src : LibSDL2::SDL_RWops*) : Int32
	fun loadICO_RW = IMG_LoadICO_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadCUR_RW = IMG_LoadCUR_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadBMP_RW = IMG_LoadBMP_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadGIF_RW = IMG_LoadGIF_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadJPG_RW = IMG_LoadJPG_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadLBM_RW = IMG_LoadLBM_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadPCX_RW = IMG_LoadPCX_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadPNG_RW = IMG_LoadPNG_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadPNM_RW = IMG_LoadPNM_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadTGA_RW = IMG_LoadTGA_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadTIF_RW = IMG_LoadTIF_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadXCF_RW = IMG_LoadXCF_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadXPM_RW = IMG_LoadXPM_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadXV_RW = IMG_LoadXV_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun loadWEBP_RW = IMG_LoadWEBP_RW(src : LibSDL2::SDL_RWops*) : LibSDL2::SDL_Surface*
	fun readXPMFromArray = IMG_ReadXPMFromArray(xpm : UInt8**) : LibSDL2::SDL_Surface*
	fun savePNG = IMG_SavePNG(surface : LibSDL2::SDL_Surface*, file : UInt8*) : Int32
	fun savePNG_RW = IMG_SavePNG_RW(surface : LibSDL2::SDL_Surface*, dst : LibSDL2::SDL_RWops*, freedst : Int32) : Int32
	
	# Vars #
	
	
end
