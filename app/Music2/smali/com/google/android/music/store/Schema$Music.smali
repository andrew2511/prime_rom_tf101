.class public interface abstract Lcom/google/android/music/store/Schema$Music;
.super Ljava/lang/Object;
.source "Schema.java"

# interfaces
.implements Lcom/google/android/music/store/Schema$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Music"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "Album"

.field public static final ALBUM_ARTIST:Ljava/lang/String; = "AlbumArtist"

.field public static final ALBUM_ARTIST_ID:Ljava/lang/String; = "AlbumArtistId"

.field public static final ALBUM_ARTIST_ORIGIN:Ljava/lang/String; = "AlbumArtistOrigin"

.field public static final ALBUM_ARTIST_ORIGIN_VALUE_DERIVED:I = 0x1

.field public static final ALBUM_ARTIST_ORIGIN_VALUE_EXPLICIT:I = 0x0

.field public static final ALBUM_ARTIST_ORIGIN_VALUE_FORCED:I = 0x2

.field public static final ALBUM_ART_LOCATION:Ljava/lang/String; = "AlbumArtLocation"

.field public static final ALBUM_ART_LOCATION_PREFIX_MEDIA_STORE:Ljava/lang/String; = "mediastore:"

.field public static final ALBUM_ID:Ljava/lang/String; = "AlbumId"

.field public static final BITRATE:Ljava/lang/String; = "BitRate"

.field public static final CANONICAL_ALBUM:Ljava/lang/String; = "CanonicalAlbum"

.field public static final CANONICAL_ALBUM_ARTIST:Ljava/lang/String; = "CanonicalAlbumArtist"

.field public static final CANONICAL_GENRE:Ljava/lang/String; = "CanonicalGenre"

.field public static final CANONICAL_NAME:Ljava/lang/String; = "CanonicalName"

.field public static final CANONICAL_TRACK_ARTIST:Ljava/lang/String; = "CanonicalArtist"

.field public static final COMPILATION:Ljava/lang/String; = "Compilation"

.field public static final COMPOSER:Ljava/lang/String; = "Composer"

.field public static final DATE_ADDED:Ljava/lang/String; = "FileDate"

.field public static final DISC_COUNT:Ljava/lang/String; = "DiscCount"

.field public static final DISC_NUMBER:Ljava/lang/String; = "DiscNumber"

.field public static final DURATION:Ljava/lang/String; = "Duration"

.field public static final FILETYPE_VALUE_AACPLUS:I = 0xa

.field public static final FILETYPE_VALUE_AIFF:I = 0xb

.field public static final FILETYPE_VALUE_ALAC:I = 0x7

.field public static final FILETYPE_VALUE_FLAC:I = 0x8

.field public static final FILETYPE_VALUE_INVALID:I = -0x1

.field public static final FILETYPE_VALUE_M4A:I = 0x4

.field public static final FILETYPE_VALUE_M4B:I = 0x3

.field public static final FILETYPE_VALUE_M4P:I = 0x2

.field public static final FILETYPE_VALUE_MP2:I = 0xd

.field public static final FILETYPE_VALUE_MP3:I = 0x5

.field public static final FILETYPE_VALUE_OGGVORBIS:I = 0x9

.field public static final FILETYPE_VALUE_UNKNOWN:I = 0x0

.field public static final FILETYPE_VALUE_WAV:I = 0xc

.field public static final FILETYPE_VALUE_WMA:I = 0x6

.field public static final FILE_TYPE:Ljava/lang/String; = "FileType"

.field public static final GENRE:Ljava/lang/String; = "Genre"

.field public static final GENRE_ID:Ljava/lang/String; = "GenreId"

.field public static final ID:Ljava/lang/String; = "Id"

.field public static final LAST_PLAY_DATE:Ljava/lang/String; = "LastPlayDate"

.field public static final LOCAL_COPY_BITRATE:Ljava/lang/String; = "LocalCopyBitrate"

.field public static final LOCAL_COPY_PATH:Ljava/lang/String; = "LocalCopyPath"

.field public static final LOCAL_COPY_SIZE:Ljava/lang/String; = "LocalCopySize"

.field public static final LOCAL_COPY_TYPE:Ljava/lang/String; = "LocalCopyType"

.field public static final LOCAL_COPY_TYPE_VALUE_LOCAL_USER_FILE:I = 0x12c

.field public static final LOCAL_COPY_TYPE_VALUE_LONG_TERM_CACHE:I = 0xc8

.field public static final LOCAL_COPY_TYPE_VALUE_NONE:I = 0x0

.field public static final LOCAL_COPY_TYPE_VALUE_PLAYBACK_CACHE:I = 0x64

.field public static final PLAY_COUNT:Ljava/lang/String; = "PlayCount"

.field public static final SIZE:Ljava/lang/String; = "Size"

.field public static final SONG_ID:Ljava/lang/String; = "SongId"

.field public static final SOURCE_PATH:Ljava/lang/String; = "SourcePath"

.field public static final TITLE:Ljava/lang/String; = "Title"

.field public static final TRACK_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TRACK_ARTIST_ID:Ljava/lang/String; = "ArtistId"

.field public static final TRACK_ARTIST_ORIGIN:Ljava/lang/String; = "ArtistOrigin"

.field public static final TRACK_ARTIST_ORIGIN_VALUE_DERIVED:I = 0x1

.field public static final TRACK_ARTIST_ORIGIN_VALUE_EXPLICIT:I = 0x0

.field public static final TRACK_COUNT:Ljava/lang/String; = "TrackCount"

.field public static final TRACK_NUMBER:Ljava/lang/String; = "TrackNumber"

.field public static final TRACK_TYPE:Ljava/lang/String; = "TrackType"

.field public static final TRACK_TYPE_VALUE_PROMO:I = 0x2

.field public static final TRACK_TYPE_VALUE_PURCHASED:I = 0x1

.field public static final TRACK_TYPE_VALUE_UNKNOWN:I = 0x0

.field public static final YEAR:Ljava/lang/String; = "Year"
