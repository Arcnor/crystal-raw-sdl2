# WARNING: Automatically generated using Arcnor's famous NativeBindingsGenerator. Do not modify manually!
require "./libsdl2"

@[Link("SDL2_mixer")]
lib LibSDL2_mixer
	
	# Types & Classes #
	
	@[Flags]
	enum InitFlags
		FLAC = 0x00000001
		MOD = 0x00000002
		MODPLUG = 0x00000004
		MP3 = 0x00000008
		OGG = 0x00000010
		FLUIDSYNTH = 0x00000020
	end
	
	struct Chunk
		allocated : Int32
		abuf : UInt8*
		alen : UInt32
		volume : UInt8
	end
	
	enum Fading
		NO_FADING
		FADING_OUT
		FADING_IN
	end
	
	enum MusicType
		NONE
		CMD
		WAV
		MOD
		MID
		OGG
		MP3
		MP3_MAD
		FLAC
		MODPLUG
	end
	
	struct Music_Internal
		
	end
	
	type Music = Music_Internal
	
	type EffectFunc_t = (Int32, Void*, Int32, Void*) -> Void
	
	type EffectDone_t = (Int32, Void*) -> Void
	
	
	# Functions #
	
	fun linked_version = Mix_Linked_Version() : LibSDL2::Version*
	fun init = Mix_Init(flags : InitFlags) : Int32
	fun quit = Mix_Quit() : Void
	fun open_audio = Mix_OpenAudio(frequency : Int32, format : UInt16, channels : Int32, chunksize : Int32) : Int32
	fun allocate_channels = Mix_AllocateChannels(numchans : Int32) : Int32
	fun query_spec = Mix_QuerySpec(frequency : Int32*, format : UInt16*, channels : Int32*) : Int32
	fun load_wav_rw = Mix_LoadWAV_RW(src : LibSDL2::RWops*, freesrc : Int32) : Chunk*
	fun load_mus = Mix_LoadMUS(file : UInt8*) : Music*
	fun load_mus_rw = Mix_LoadMUS_RW(src : LibSDL2::RWops*, freesrc : Int32) : Music*
	fun load_mus_type_rw = Mix_LoadMUSType_RW(src : LibSDL2::RWops*, type : MusicType, freesrc : Int32) : Music*
	fun quick_load_wav = Mix_QuickLoad_WAV(mem : UInt8*) : Chunk*
	fun quick_load_raw = Mix_QuickLoad_RAW(mem : UInt8*, len : UInt32) : Chunk*
	fun free_chunk = Mix_FreeChunk(chunk : Chunk*) : Void
	fun free_music = Mix_FreeMusic(music : Music*) : Void
	fun get_num_chunk_decoders = Mix_GetNumChunkDecoders() : Int32
	fun get_chunk_decoder = Mix_GetChunkDecoder(index : Int32) : UInt8*
	fun get_num_music_decoders = Mix_GetNumMusicDecoders() : Int32
	fun get_music_decoder = Mix_GetMusicDecoder(index : Int32) : UInt8*
	fun get_music_type = Mix_GetMusicType(music : Music*) : MusicType
	fun set_post_mix = Mix_SetPostMix(mix_func : (Void*, UInt8*, Int32) -> Void, arg : Void*) : Void
	fun hook_music = Mix_HookMusic(mix_func : (Void*, UInt8*, Int32) -> Void, arg : Void*) : Void
	fun hook_music_finished = Mix_HookMusicFinished(music_finished : (Void) -> Void) : Void
	fun get_music_hook_data = Mix_GetMusicHookData() : Void*
	fun channel_finished = Mix_ChannelFinished(channel_finished : (Int32) -> Void) : Void
	fun register_effect = Mix_RegisterEffect(chan : Int32, f : EffectFunc_t, d : EffectDone_t, arg : Void*) : Int32
	fun unregister_effect = Mix_UnregisterEffect(channel : Int32, f : EffectFunc_t) : Int32
	fun unregister_all_effects = Mix_UnregisterAllEffects(channel : Int32) : Int32
	fun set_panning = Mix_SetPanning(channel : Int32, left : UInt8, right : UInt8) : Int32
	fun set_position = Mix_SetPosition(channel : Int32, angle : Int16, distance : UInt8) : Int32
	fun set_distance = Mix_SetDistance(channel : Int32, distance : UInt8) : Int32
	fun set_reverse_stereo = Mix_SetReverseStereo(channel : Int32, flip : Int32) : Int32
	fun reserve_channels = Mix_ReserveChannels(num : Int32) : Int32
	fun group_channel = Mix_GroupChannel(which : Int32, tag : Int32) : Int32
	fun group_channels = Mix_GroupChannels(from : Int32, to : Int32, tag : Int32) : Int32
	fun group_available = Mix_GroupAvailable(tag : Int32) : Int32
	fun group_count = Mix_GroupCount(tag : Int32) : Int32
	fun group_oldest = Mix_GroupOldest(tag : Int32) : Int32
	fun group_newer = Mix_GroupNewer(tag : Int32) : Int32
	fun play_channel_timed = Mix_PlayChannelTimed(channel : Int32, chunk : Chunk*, loops : Int32, ticks : Int32) : Int32
	fun play_music = Mix_PlayMusic(music : Music*, loops : Int32) : Int32
	fun fade_in_music = Mix_FadeInMusic(music : Music*, loops : Int32, ms : Int32) : Int32
	fun fade_in_music_pos = Mix_FadeInMusicPos(music : Music*, loops : Int32, ms : Int32, position : Float64) : Int32
	fun fade_in_channel_timed = Mix_FadeInChannelTimed(channel : Int32, chunk : Chunk*, loops : Int32, ms : Int32, ticks : Int32) : Int32
	fun volume = Mix_Volume(channel : Int32, volume : Int32) : Int32
	fun volume_chunk = Mix_VolumeChunk(chunk : Chunk*, volume : Int32) : Int32
	fun volume_music = Mix_VolumeMusic(volume : Int32) : Int32
	fun halt_channel = Mix_HaltChannel(channel : Int32) : Int32
	fun halt_group = Mix_HaltGroup(tag : Int32) : Int32
	fun halt_music = Mix_HaltMusic() : Int32
	fun expire_channel = Mix_ExpireChannel(channel : Int32, ticks : Int32) : Int32
	fun fade_out_channel = Mix_FadeOutChannel(which : Int32, ms : Int32) : Int32
	fun fade_out_group = Mix_FadeOutGroup(tag : Int32, ms : Int32) : Int32
	fun fade_out_music = Mix_FadeOutMusic(ms : Int32) : Int32
	fun fading_music = Mix_FadingMusic() : Fading
	fun fading_channel = Mix_FadingChannel(which : Int32) : Fading
	fun pause = Mix_Pause(channel : Int32) : Void
	fun resume = Mix_Resume(channel : Int32) : Void
	fun paused = Mix_Paused(channel : Int32) : Int32
	fun pause_music = Mix_PauseMusic() : Void
	fun resume_music = Mix_ResumeMusic() : Void
	fun rewind_music = Mix_RewindMusic() : Void
	fun paused_music = Mix_PausedMusic() : Int32
	fun set_music_position = Mix_SetMusicPosition(position : Float64) : Int32
	fun playing = Mix_Playing(channel : Int32) : Int32
	fun playing_music = Mix_PlayingMusic() : Int32
	fun set_music_cmd = Mix_SetMusicCMD(command : UInt8*) : Int32
	fun set_synchro_value = Mix_SetSynchroValue(value : Int32) : Int32
	fun get_synchro_value = Mix_GetSynchroValue() : Int32
	fun set_sound_fonts = Mix_SetSoundFonts(paths : UInt8*) : Int32
	fun get_sound_fonts = Mix_GetSoundFonts() : UInt8*
	fun each_sound_font = Mix_EachSoundFont(function : (UInt8*, Void*) -> Int32, data : Void*) : Int32
	fun get_chunk = Mix_GetChunk(channel : Int32) : Chunk*
	fun close_audio = Mix_CloseAudio() : Void
	
	# Vars #
	
	
end

