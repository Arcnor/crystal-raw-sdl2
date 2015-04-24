# WARNING: Automatically generated using Arcnor's famous NativeBindingsGenerator. Do not modify manually!
require "./libsdl2"

@[Link("SDL2_ttf")]
lib LibSDL2_ttf
	
	# Types & Classes #
	
	struct TTF_Font2
	end
	
	alias TTF_Font = TTF_Font2
	
	# Functions #
	
	fun linked_Version = TTF_Linked_Version() : LibSDL2::SDL_version*
	fun byteSwappedUNICODE = TTF_ByteSwappedUNICODE(swapped : Int32) : Void
	fun init = TTF_Init() : Int32
	fun openFont = TTF_OpenFont(file : UInt8*, ptsize : Int32) : TTF_Font*
	fun openFontIndex = TTF_OpenFontIndex(file : UInt8*, ptsize : Int32, index : Int64) : TTF_Font*
	fun openFontRW = TTF_OpenFontRW(src : LibSDL2::SDL_RWops*, freesrc : Int32, ptsize : Int32) : TTF_Font*
	fun openFontIndexRW = TTF_OpenFontIndexRW(src : LibSDL2::SDL_RWops*, freesrc : Int32, ptsize : Int32, index : Int64) : TTF_Font*
	fun getFontStyle = TTF_GetFontStyle(font : TTF_Font*) : Int32
	fun setFontStyle = TTF_SetFontStyle(font : TTF_Font*, style : Int32) : Void
	fun getFontOutline = TTF_GetFontOutline(font : TTF_Font*) : Int32
	fun setFontOutline = TTF_SetFontOutline(font : TTF_Font*, outline : Int32) : Void
	fun getFontHInting = TTF_GetFontHInting(font : TTF_Font*) : Int32
	fun setFontHInting = TTF_SetFontHInting(font : TTF_Font*, hInting : Int32) : Void
	fun fontHeight = TTF_FontHeight(font : TTF_Font*) : Int32
	fun fontAscent = TTF_FontAscent(font : TTF_Font*) : Int32
	fun fontDescent = TTF_FontDescent(font : TTF_Font*) : Int32
	fun fontLineSkip = TTF_FontLineSkip(font : TTF_Font*) : Int32
	fun getFontKerning = TTF_GetFontKerning(font : TTF_Font*) : Int32
	fun setFontKerning = TTF_SetFontKerning(font : TTF_Font*, allowed : Int32) : Void
	fun fontFaces = TTF_FontFaces(font : TTF_Font*) : Int64
	fun fontFaceIsFixedWidth = TTF_FontFaceIsFixedWidth(font : TTF_Font*) : Int32
	fun fontFaceFamilyName = TTF_FontFaceFamilyName(font : TTF_Font*) : UInt8*
	fun fontFaceStyleName = TTF_FontFaceStyleName(font : TTF_Font*) : UInt8*
	fun glyphIsProvided = TTF_GlyphIsProvided(font : TTF_Font*, ch : UInt16) : Int32
	fun glyphMetrics = TTF_GlyphMetrics(font : TTF_Font*, ch : UInt16, minx : Int32*, maxx : Int32*, miny : Int32*, maxy : Int32*, advance : Int32*) : Int32
	fun sizeText = TTF_SizeText(font : TTF_Font*, text : UInt8*, w : Int32*, h : Int32*) : Int32
	fun sizeUTF8 = TTF_SizeUTF8(font : TTF_Font*, text : UInt8*, w : Int32*, h : Int32*) : Int32
	fun sizeUNICODE = TTF_SizeUNICODE(font : TTF_Font*, text : UInt16*, w : Int32*, h : Int32*) : Int32
	fun renderText_Solid = TTF_RenderText_Solid(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderUTF8_Solid = TTF_RenderUTF8_Solid(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderUNICODE_Solid = TTF_RenderUNICODE_Solid(font : TTF_Font*, text : UInt16*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderGlyph_Solid = TTF_RenderGlyph_Solid(font : TTF_Font*, ch : UInt16, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderText_Shaded = TTF_RenderText_Shaded(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color, bg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderUTF8_Shaded = TTF_RenderUTF8_Shaded(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color, bg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderUNICODE_Shaded = TTF_RenderUNICODE_Shaded(font : TTF_Font*, text : UInt16*, fg : LibSDL2::SDL_Color, bg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderGlyph_Shaded = TTF_RenderGlyph_Shaded(font : TTF_Font*, ch : UInt16, fg : LibSDL2::SDL_Color, bg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderText_Blended = TTF_RenderText_Blended(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderUTF8_Blended = TTF_RenderUTF8_Blended(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderUNICODE_Blended = TTF_RenderUNICODE_Blended(font : TTF_Font*, text : UInt16*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun renderText_Blended_Wrapped = TTF_RenderText_Blended_Wrapped(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color, wrapLength : UInt32) : LibSDL2::SDL_Surface*
	fun renderUTF8_Blended_Wrapped = TTF_RenderUTF8_Blended_Wrapped(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color, wrapLength : UInt32) : LibSDL2::SDL_Surface*
	fun renderUNICODE_Blended_Wrapped = TTF_RenderUNICODE_Blended_Wrapped(font : TTF_Font*, text : UInt16*, fg : LibSDL2::SDL_Color, wrapLength : UInt32) : LibSDL2::SDL_Surface*
	fun renderGlyph_Blended = TTF_RenderGlyph_Blended(font : TTF_Font*, ch : UInt16, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun closeFont = TTF_CloseFont(font : TTF_Font*) : Void
	fun quit = TTF_Quit() : Void
	fun wasInit = TTF_WasInit() : Int32
	fun getFontKerningSize = TTF_GetFontKerningSize(font : TTF_Font*, prev_index : Int32, index : Int32) : Int32
	
	# Vars #
	
	
end

