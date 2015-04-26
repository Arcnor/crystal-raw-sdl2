# WARNING: Automatically generated using Arcnor's famous NativeBindingsGenerator. Do not modify manually!
require "./libsdl2"

@[Link("SDL2_image")]
lib LibSDL2_image
	
	# Types & Classes #
	
	@[Flags]
	enum InitFlags
		INIT_JPG = 0x00000001,
		INIT_PNG = 0x00000002,
		INIT_TIF = 0x00000004,
		INIT_WEBP = 0x00000008
	end

	# Functions #
	
	fun linked_version = IMG_Linked_Version() : LibSDL2::Version*
	fun init = IMG_Init(flags : Int32) : Int32
	fun quit = IMG_Quit() : Void
	fun load_typed_rw = IMG_LoadTyped_RW(src : LibSDL2::RWops*, freesrc : Int32, type : UInt8*) : LibSDL2::Surface*
	fun load = IMG_Load(file : UInt8*) : LibSDL2::Surface*
	fun load_rw = IMG_Load_RW(src : LibSDL2::RWops*, freesrc : Int32) : LibSDL2::Surface*
	fun load_texture = IMG_LoadTexture(renderer : LibSDL2::Renderer*, file : UInt8*) : LibSDL2::Texture*
	fun load_texture_rw = IMG_LoadTexture_RW(renderer : LibSDL2::Renderer*, src : LibSDL2::RWops*, freesrc : Int32) : LibSDL2::Texture*
	fun load_texture_typed_rw = IMG_LoadTextureTyped_RW(renderer : LibSDL2::Renderer*, src : LibSDL2::RWops*, freesrc : Int32, type : UInt8*) : LibSDL2::Texture*
	fun is_ico = IMG_isICO(src : LibSDL2::RWops*) : Int32
	fun is_cur = IMG_isCUR(src : LibSDL2::RWops*) : Int32
	fun is_bmp = IMG_isBMP(src : LibSDL2::RWops*) : Int32
	fun is_gif = IMG_isGIF(src : LibSDL2::RWops*) : Int32
	fun is_jpg = IMG_isJPG(src : LibSDL2::RWops*) : Int32
	fun is_lbm = IMG_isLBM(src : LibSDL2::RWops*) : Int32
	fun is_pcx = IMG_isPCX(src : LibSDL2::RWops*) : Int32
	fun is_png = IMG_isPNG(src : LibSDL2::RWops*) : Int32
	fun is_pnm = IMG_isPNM(src : LibSDL2::RWops*) : Int32
	fun is_tif = IMG_isTIF(src : LibSDL2::RWops*) : Int32
	fun is_xcf = IMG_isXCF(src : LibSDL2::RWops*) : Int32
	fun is_xpm = IMG_isXPM(src : LibSDL2::RWops*) : Int32
	fun is_xv = IMG_isXV(src : LibSDL2::RWops*) : Int32
	fun is_webp = IMG_isWEBP(src : LibSDL2::RWops*) : Int32
	fun load_ico_rw = IMG_LoadICO_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_cur_rw = IMG_LoadCUR_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_bmp_rw = IMG_LoadBMP_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_gif_rw = IMG_LoadGIF_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_jpg_rw = IMG_LoadJPG_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_lbm_rw = IMG_LoadLBM_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_pcx_rw = IMG_LoadPCX_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_png_rw = IMG_LoadPNG_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_pnm_rw = IMG_LoadPNM_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_tga_rw = IMG_LoadTGA_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_tif_rw = IMG_LoadTIF_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_xcf_rw = IMG_LoadXCF_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_xpm_rw = IMG_LoadXPM_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_xv_rw = IMG_LoadXV_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun load_webp_rw = IMG_LoadWEBP_RW(src : LibSDL2::RWops*) : LibSDL2::Surface*
	fun read_xpm_from_array = IMG_ReadXPMFromArray(xpm : UInt8**) : LibSDL2::Surface*
	fun save_png = IMG_SavePNG(surface : LibSDL2::Surface*, file : UInt8*) : Int32
	fun save_png_rw = IMG_SavePNG_RW(surface : LibSDL2::Surface*, dst : LibSDL2::RWops*, freedst : Int32) : Int32
	
	# Vars #
	
	
end

