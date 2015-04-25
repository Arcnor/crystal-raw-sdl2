# WARNING: Automatically generated using Arcnor's famous NativeBindingsGenerator. Do not modify manually!
require "./libsdl2"

@[Link("SDL2_ttf")]
lib LibSDL2_ttf
	
	# Types & Classes #
	
	struct TTF_Font2
	end
	
	alias TTF_Font = TTF_Font2
	
	# Functions #
	
	fun linked_version = TTF_Linked_Version() : LibSDL2::SDL_version*
	fun byte_swapped_unicode = TTF_ByteSwappedUNICODE(swapped : Int32) : Void
	fun init = TTF_Init() : Int32
	fun open_font = TTF_OpenFont(file : UInt8*, ptsize : Int32) : TTF_Font*
	fun open_font_index = TTF_OpenFontIndex(file : UInt8*, ptsize : Int32, index : Int64) : TTF_Font*
	fun open_font_rw = TTF_OpenFontRW(src : LibSDL2::SDL_RWops*, freesrc : Int32, ptsize : Int32) : TTF_Font*
	fun open_font_index_rw = TTF_OpenFontIndexRW(src : LibSDL2::SDL_RWops*, freesrc : Int32, ptsize : Int32, index : Int64) : TTF_Font*
	fun get_font_style = TTF_GetFontStyle(font : TTF_Font*) : Int32
	fun set_font_style = TTF_SetFontStyle(font : TTF_Font*, style : Int32) : Void
	fun get_font_outline = TTF_GetFontOutline(font : TTF_Font*) : Int32
	fun set_font_outline = TTF_SetFontOutline(font : TTF_Font*, outline : Int32) : Void
	fun get_font_hInting = TTF_GetFontHInting(font : TTF_Font*) : Int32
	fun set_font_hInting = TTF_SetFontHInting(font : TTF_Font*, hInting : Int32) : Void
	fun font_height = TTF_FontHeight(font : TTF_Font*) : Int32
	fun font_ascent = TTF_FontAscent(font : TTF_Font*) : Int32
	fun font_descent = TTF_FontDescent(font : TTF_Font*) : Int32
	fun font_line_skip = TTF_FontLineSkip(font : TTF_Font*) : Int32
	fun get_font_kerning = TTF_GetFontKerning(font : TTF_Font*) : Int32
	fun set_font_kerning = TTF_SetFontKerning(font : TTF_Font*, allowed : Int32) : Void
	fun font_faces = TTF_FontFaces(font : TTF_Font*) : Int64
	fun font_face_is_fixed_width = TTF_FontFaceIsFixedWidth(font : TTF_Font*) : Int32
	fun font_face_family_name = TTF_FontFaceFamilyName(font : TTF_Font*) : UInt8*
	fun font_face_style_name = TTF_FontFaceStyleName(font : TTF_Font*) : UInt8*
	fun glyph_is_provided = TTF_GlyphIsProvided(font : TTF_Font*, ch : UInt16) : Int32
	fun glyph_metrics = TTF_GlyphMetrics(font : TTF_Font*, ch : UInt16, minx : Int32*, maxx : Int32*, miny : Int32*, maxy : Int32*, advance : Int32*) : Int32
	fun size_text = TTF_SizeText(font : TTF_Font*, text : UInt8*, w : Int32*, h : Int32*) : Int32
	fun size_utf8 = TTF_SizeUTF8(font : TTF_Font*, text : UInt8*, w : Int32*, h : Int32*) : Int32
	fun size_unicode = TTF_SizeUNICODE(font : TTF_Font*, text : UInt16*, w : Int32*, h : Int32*) : Int32
	fun render_text_solid = TTF_RenderText_Solid(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_utf8_solid = TTF_RenderUTF8_Solid(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_unicode_solid = TTF_RenderUNICODE_Solid(font : TTF_Font*, text : UInt16*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_glyph_solid = TTF_RenderGlyph_Solid(font : TTF_Font*, ch : UInt16, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_text_shaded = TTF_RenderText_Shaded(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color, bg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_utf8_shaded = TTF_RenderUTF8_Shaded(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color, bg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_unicode_shaded = TTF_RenderUNICODE_Shaded(font : TTF_Font*, text : UInt16*, fg : LibSDL2::SDL_Color, bg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_glyph_shaded = TTF_RenderGlyph_Shaded(font : TTF_Font*, ch : UInt16, fg : LibSDL2::SDL_Color, bg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_text_blended = TTF_RenderText_Blended(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_utf8_blended = TTF_RenderUTF8_Blended(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_unicode_blended = TTF_RenderUNICODE_Blended(font : TTF_Font*, text : UInt16*, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun render_text_blended_wrapped = TTF_RenderText_Blended_Wrapped(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color, wrap_length : UInt32) : LibSDL2::SDL_Surface*
	fun render_utf8_blended_wrapped = TTF_RenderUTF8_Blended_Wrapped(font : TTF_Font*, text : UInt8*, fg : LibSDL2::SDL_Color, wrap_length : UInt32) : LibSDL2::SDL_Surface*
	fun render_unicode_blended_wrapped = TTF_RenderUNICODE_Blended_Wrapped(font : TTF_Font*, text : UInt16*, fg : LibSDL2::SDL_Color, wrap_length : UInt32) : LibSDL2::SDL_Surface*
	fun render_glyph_blended = TTF_RenderGlyph_Blended(font : TTF_Font*, ch : UInt16, fg : LibSDL2::SDL_Color) : LibSDL2::SDL_Surface*
	fun close_font = TTF_CloseFont(font : TTF_Font*) : Void
	fun quit = TTF_Quit() : Void
	fun was_init = TTF_WasInit() : Int32
	fun get_font_kerning_size = TTF_GetFontKerningSize(font : TTF_Font*, prev_index : Int32, index : Int32) : Int32
	
	# Vars #
	
	
end

