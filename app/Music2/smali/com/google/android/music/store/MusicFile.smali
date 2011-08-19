.class public Lcom/google/android/music/store/MusicFile;
.super Ljava/lang/Object;
.source "MusicFile.java"


# static fields
.field private static final DELETE_PROJECTION:[Ljava/lang/String; = null

.field private static final DELETE_PROJECTION_ID_INDEX:I = 0x0

.field private static final DELETE_PROJECTION_LOCAL_COPY_PATH_INDEX:I = 0x2

.field private static final DELETE_PROJECTION_LOCAL_COPY_TYPE_INDEX:I = 0x1

.field static final FULL_PROJECTION:[Ljava/lang/String; = null

.field private static final FULL_PROJECTION_INDEX_ALBUM:I = 0xb

.field private static final FULL_PROJECTION_INDEX_ALBUM_ARTIST:I = 0xd

.field private static final FULL_PROJECTION_INDEX_ALBUM_ARTIST_ID:I = 0x1b

.field private static final FULL_PROJECTION_INDEX_ALBUM_ARTIST_ORIGIN:I = 0x23

.field private static final FULL_PROJECTION_INDEX_ALBUM_ART_LOCATION:I = 0x18

.field private static final FULL_PROJECTION_INDEX_ALBUM_ID:I = 0x1a

.field private static final FULL_PROJECTION_INDEX_BITRATE:I = 0x17

.field private static final FULL_PROJECTION_INDEX_CANONICAL_ALBUM:I = 0x1e

.field private static final FULL_PROJECTION_INDEX_CANONICAL_ALBUM_ARTIST:I = 0x1f

.field private static final FULL_PROJECTION_INDEX_CANONICAL_GENRE:I = 0x20

.field private static final FULL_PROJECTION_INDEX_CANONICAL_NAME:I = 0x1d

.field private static final FULL_PROJECTION_INDEX_CANONICAL_TRACK_ARTIST:I = 0x29

.field private static final FULL_PROJECTION_INDEX_COMPILATION:I = 0x16

.field private static final FULL_PROJECTION_INDEX_COMPOSER:I = 0xe

.field private static final FULL_PROJECTION_INDEX_DATE_ADDED:I = 0x7

.field private static final FULL_PROJECTION_INDEX_DISC_COUNT:I = 0x14

.field private static final FULL_PROJECTION_INDEX_DISC_NUMBER:I = 0x15

.field private static final FULL_PROJECTION_INDEX_DURATION:I = 0x11

.field private static final FULL_PROJECTION_INDEX_FILE_TYPE:I = 0x6

.field private static final FULL_PROJECTION_INDEX_GENRE:I = 0xf

.field private static final FULL_PROJECTION_INDEX_GENRE_ID:I = 0x1c

.field private static final FULL_PROJECTION_INDEX_LAST_PLAY_DATE:I = 0x22

.field private static final FULL_PROJECTION_INDEX_LOCAL_COPY_BITRATE:I = 0x25

.field private static final FULL_PROJECTION_INDEX_LOCAL_COPY_PATH:I = 0x8

.field private static final FULL_PROJECTION_INDEX_LOCAL_COPY_SIZE:I = 0x24

.field private static final FULL_PROJECTION_INDEX_LOCAL_COPY_TYPE:I = 0x9

.field private static final FULL_PROJECTION_INDEX_MUSIC_ID:I = 0x0

.field private static final FULL_PROJECTION_INDEX_PLAY_COUNT:I = 0x21

.field private static final FULL_PROJECTION_INDEX_SIZE:I = 0x5

.field private static final FULL_PROJECTION_INDEX_SONG_ID:I = 0x19

.field private static final FULL_PROJECTION_INDEX_SOURCE_ACCOUNT:I = 0x1

.field private static final FULL_PROJECTION_INDEX_SOURCE_ID:I = 0x2

.field private static final FULL_PROJECTION_INDEX_SOURCE_PATH:I = 0x3

.field private static final FULL_PROJECTION_INDEX_SOURCE_VERSION:I = 0x4

.field private static final FULL_PROJECTION_INDEX_TITLE:I = 0xa

.field private static final FULL_PROJECTION_INDEX_TRACK_ARTIST:I = 0xc

.field private static final FULL_PROJECTION_INDEX_TRACK_ARTIST_ID:I = 0x28

.field private static final FULL_PROJECTION_INDEX_TRACK_ARTIST_ORIGIN:I = 0x27

.field private static final FULL_PROJECTION_INDEX_TRACK_COUNT:I = 0x12

.field private static final FULL_PROJECTION_INDEX_TRACK_NUMBER:I = 0x13

.field private static final FULL_PROJECTION_INDEX_TRACK_TYPE:I = 0x26

.field private static final FULL_PROJECTION_INDEX_YEAR:I = 0x10

.field private static final FULL_UPDATE:Ljava/lang/String; = "update MUSIC set SourceAccount=?, SourceId=?, SourcePath=?, _sync_version=?, Size=?, FileType=?, FileDate=?, LocalCopyPath=?, LocalCopyType=?, Title=?, Album=?, Artist=?, AlbumArtist=?, AlbumArtistOrigin=?, Composer=?, Genre=?, Year=?, Duration=?, TrackCount=?, TrackNumber=?, DiscCount=?, DiscNumber=?, Compilation=?, BitRate=?, AlbumArtLocation=?, SongId=?, AlbumId=?, AlbumArtistId=?, GenreId=?, CanonicalName=?, CanonicalAlbum=?, CanonicalAlbumArtist=?, CanonicalGenre=?, PlayCount=?, LastPlayDate=?, LocalCopySize=?, LocalCopyBitrate=?, TrackType=?, ArtistOrigin=?, ArtistId=?, CanonicalArtist=? where Id=?"

.field private static final INSERT:Ljava/lang/String; = "insert into MUSIC ( SourceAccount, SourceId, SourcePath, _sync_version, Size, FileType, FileDate, LocalCopyPath, LocalCopyType, Title, Album, Artist, AlbumArtist, AlbumArtistOrigin, Composer, Genre, Year, Duration, TrackCount, TrackNumber, DiscCount, DiscNumber, Compilation, BitRate, AlbumArtLocation, SongId, AlbumId, AlbumArtistId, GenreId, CanonicalName, CanonicalAlbum, CanonicalAlbumArtist, CanonicalGenre, PlayCount, LastPlayDate, LocalCopySize, LocalCopyBitrate, TrackType, ArtistOrigin, ArtistId, CanonicalArtist) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

.field private static final MAX_REASONABLE_TIMESTAMP:J = 0x3bb2cc3d800L

.field public static final MEDIA_STORE_SOURCE_ACCOUNT:I = 0x0

.field public static final MEDIA_STORE_SOURCE_ACCOUNT_AS_INTEGER:Ljava/lang/Integer; = null

.field public static final MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String; = null

.field private static final MIN_REASONABLE_TIMESTAMP:J = 0x4977387000L

.field public static final PLAYCOUNT_SYNC_PROJECTION:[Ljava/lang/String; = null

.field public static final PLAYCOUNT_SYNC_PROJECTION_ID_INDEX:I = 0x0

.field public static final PLAYCOUNT_SYNC_PROJECTION_PLAY_COUNT_INDEX:I = 0x3

.field public static final PLAYCOUNT_SYNC_PROJECTION_SOURCE_ACCOUNT_INDEX:I = 0x1

.field public static final PLAYCOUNT_SYNC_PROJECTION_SOURCE_ID_INDEX:I = 0x2

.field private static SUMMARY_PROJECTION:[Ljava/lang/String; = null

.field private static final SUMMARY_PROJECTION_INDEX_ALBUM:I = 0x8

.field private static final SUMMARY_PROJECTION_INDEX_ALBUM_ARTIST:I = 0x9

.field private static final SUMMARY_PROJECTION_INDEX_ALBUM_ARTIST_ORIGIN:I = 0xa

.field private static final SUMMARY_PROJECTION_INDEX_ARTIST:I = 0xb

.field private static final SUMMARY_PROJECTION_INDEX_DURATION:I = 0x7

.field private static final SUMMARY_PROJECTION_INDEX_LOCAL_COPY_PATH:I = 0x5

.field private static final SUMMARY_PROJECTION_INDEX_LOCAL_COPY_TYPE:I = 0x6

.field private static final SUMMARY_PROJECTION_INDEX_MUSIC_ID:I = 0x0

.field private static final SUMMARY_PROJECTION_INDEX_SIZE:I = 0x4

.field private static final SUMMARY_PROJECTION_INDEX_SOURCE_ACCOUNT:I = 0x1

.field private static final SUMMARY_PROJECTION_INDEX_SOURCE_ID:I = 0x2

.field private static final SUMMARY_PROJECTION_INDEX_SOURCE_PATH:I = 0x3

.field private static final SUMMARY_PROJECTION_INDEX_TITLE:I = 0xc

.field private static final UPDATE_INDEX_ID:I = 0x2a

.field private static final UPDATE_INSERT_INDEX_ALBUM:I = 0xb

.field private static final UPDATE_INSERT_INDEX_ALBUM_ARTIST:I = 0xd

.field private static final UPDATE_INSERT_INDEX_ALBUM_ARTIST_ID:I = 0x1c

.field private static final UPDATE_INSERT_INDEX_ALBUM_ARTIST_ORIGIN:I = 0xe

.field private static final UPDATE_INSERT_INDEX_ALBUM_ART_LOCATION:I = 0x19

.field private static final UPDATE_INSERT_INDEX_ALBUM_ID:I = 0x1b

.field private static final UPDATE_INSERT_INDEX_BITRATE:I = 0x18

.field private static final UPDATE_INSERT_INDEX_CANONICAL_ALBUM:I = 0x1f

.field private static final UPDATE_INSERT_INDEX_CANONICAL_ALBUM_ARTIST:I = 0x20

.field private static final UPDATE_INSERT_INDEX_CANONICAL_GENRE:I = 0x21

.field private static final UPDATE_INSERT_INDEX_CANONICAL_NAME:I = 0x1e

.field private static final UPDATE_INSERT_INDEX_CANONICAL_TRACK_ARTIST:I = 0x29

.field private static final UPDATE_INSERT_INDEX_COMPILATION:I = 0x17

.field private static final UPDATE_INSERT_INDEX_COMPOSER:I = 0xf

.field private static final UPDATE_INSERT_INDEX_DATE_ADDED:I = 0x7

.field private static final UPDATE_INSERT_INDEX_DISC_COUNT:I = 0x15

.field private static final UPDATE_INSERT_INDEX_DISC_NUMBER:I = 0x16

.field private static final UPDATE_INSERT_INDEX_DURATION:I = 0x12

.field private static final UPDATE_INSERT_INDEX_FILE_TYPE:I = 0x6

.field private static final UPDATE_INSERT_INDEX_GENRE:I = 0x10

.field private static final UPDATE_INSERT_INDEX_GENRE_ID:I = 0x1d

.field private static final UPDATE_INSERT_INDEX_LAST_PLAY_DATE:I = 0x23

.field private static final UPDATE_INSERT_INDEX_LOCAL_COPY_BITRATE:I = 0x25

.field private static final UPDATE_INSERT_INDEX_LOCAL_COPY_PATH:I = 0x8

.field private static final UPDATE_INSERT_INDEX_LOCAL_COPY_SIZE:I = 0x24

.field private static final UPDATE_INSERT_INDEX_LOCAL_COPY_TYPE:I = 0x9

.field private static final UPDATE_INSERT_INDEX_PLAY_COUNT:I = 0x22

.field private static final UPDATE_INSERT_INDEX_SIZE:I = 0x5

.field private static final UPDATE_INSERT_INDEX_SONG_ID:I = 0x1a

.field private static final UPDATE_INSERT_INDEX_SOURCE_ACCOUNT:I = 0x1

.field private static final UPDATE_INSERT_INDEX_SOURCE_ID:I = 0x2

.field private static final UPDATE_INSERT_INDEX_SOURCE_PATH:I = 0x3

.field private static final UPDATE_INSERT_INDEX_SOURCE_VERSION:I = 0x4

.field private static final UPDATE_INSERT_INDEX_TITLE:I = 0xa

.field private static final UPDATE_INSERT_INDEX_TRACK_ARTIST:I = 0xc

.field private static final UPDATE_INSERT_INDEX_TRACK_ARTIST_ID:I = 0x28

.field private static final UPDATE_INSERT_INDEX_TRACK_ARTIST_ORIGIN:I = 0x27

.field private static final UPDATE_INSERT_INDEX_TRACK_COUNT:I = 0x13

.field private static final UPDATE_INSERT_INDEX_TRACK_NUMBER:I = 0x14

.field private static final UPDATE_INSERT_INDEX_TRACK_TYPE:I = 0x26

.field private static final UPDATE_INSERT_INDEX_YEAR:I = 0x11


# instance fields
.field private mAddedTime:J

.field private mAlbumArtLocation:Ljava/lang/String;

.field private mAlbumArtLocationChanged:Z

.field private mAlbumArtist:Ljava/lang/String;

.field private mAlbumArtistId:J

.field private mAlbumArtistOrigin:I

.field private mAlbumId:J

.field private mAlbumName:Ljava/lang/String;

.field private mBitrate:I

.field private mCanonicalAlbum:Ljava/lang/String;

.field private mCanonicalAlbumArtist:Ljava/lang/String;

.field private mCanonicalGenre:Ljava/lang/String;

.field private mCanonicalTitle:Ljava/lang/String;

.field private mCanonicalTrackArtist:Ljava/lang/String;

.field private mCompilation:Z

.field private mComposer:Ljava/lang/String;

.field private mDiscCount:S

.field private mDiscPosition:S

.field private mDurationInMilliSec:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mGenreId:J

.field private mLastPlayDate:J

.field private mLocalCopyBitrate:I

.field private mLocalCopyPath:Ljava/lang/String;

.field private mLocalCopySize:J

.field private mLocalCopyType:I

.field private mLocalId:J

.field private mNormalizer:Lcom/google/android/music/store/TagNormalizer;

.field private mPlayCount:I

.field private mSize:J

.field private mSongId:J

.field private mSourceAccount:I

.field private mSourceId:Ljava/lang/String;

.field private mSourcePath:Ljava/lang/String;

.field private mSourceVersion:J

.field private mTitle:Ljava/lang/String;

.field private mTrackArtist:Ljava/lang/String;

.field private mTrackArtistId:J

.field private mTrackArtistOrigin:I

.field private mTrackCountInAlbum:S

.field private mTrackPositionInAlbum:S

.field private mTrackType:I

.field private mYear:S


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_INTEGER:Ljava/lang/Integer;

    .line 28
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MUSIC.Id"

    aput-object v1, v0, v3

    const-string v1, "SourceAccount"

    aput-object v1, v0, v4

    const-string v1, "SourceId"

    aput-object v1, v0, v5

    const-string v1, "SourcePath"

    aput-object v1, v0, v6

    const-string v1, "Size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LocalCopyPath"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LocalCopyType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Album"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AlbumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AlbumArtistOrigin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Artist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MusicFile;->SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 59
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MUSIC.Id"

    aput-object v1, v0, v3

    const-string v1, "SourceAccount"

    aput-object v1, v0, v4

    const-string v1, "SourceId"

    aput-object v1, v0, v5

    const-string v1, "SourcePath"

    aput-object v1, v0, v6

    const-string v1, "_sync_version"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FileType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FileDate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LocalCopyPath"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LocalCopyType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Album"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Artist"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AlbumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Composer"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Genre"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Year"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Duration"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TrackCount"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TrackNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "DiscCount"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DiscNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Compilation"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "BitRate"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "AlbumArtLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SongId"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "AlbumId"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "AlbumArtistId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "GenreId"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CanonicalName"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CanonicalAlbum"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CanonicalAlbumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "CanonicalGenre"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PlayCount"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "LastPlayDate"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "AlbumArtistOrigin"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "LocalCopySize"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "LocalCopyBitrate"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "TrackType"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "ArtistOrigin"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "ArtistId"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "CanonicalArtist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    .line 279
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v3

    const-string v1, "LocalCopyType"

    aput-object v1, v0, v4

    const-string v1, "LocalCopyPath"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/store/MusicFile;->DELETE_PROJECTION:[Ljava/lang/String;

    .line 288
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v3

    const-string v1, "SourceAccount"

    aput-object v1, v0, v4

    const-string v1, "SourceId"

    aput-object v1, v0, v5

    const-string v1, "PlayCount"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/store/MusicFile;->PLAYCOUNT_SYNC_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 307
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    .line 310
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:J

    .line 312
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 315
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 320
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 322
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 335
    iput-boolean v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    return-void
.end method

.method public static compileDeleteByLocalIdStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter "db"

    .prologue
    .line 1094
    const-string v0, "delete from MUSIC where Id=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compileDeleteBySourceInfoStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter "db"

    .prologue
    .line 1085
    const-string v0, "delete from MUSIC where SourceAccount=? AND SourceId=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter "db"

    .prologue
    .line 847
    const-string v0, "update MUSIC set SourceAccount=?, SourceId=?, SourcePath=?, _sync_version=?, Size=?, FileType=?, FileDate=?, LocalCopyPath=?, LocalCopyType=?, Title=?, Album=?, Artist=?, AlbumArtist=?, AlbumArtistOrigin=?, Composer=?, Genre=?, Year=?, Duration=?, TrackCount=?, TrackNumber=?, DiscCount=?, DiscNumber=?, Compilation=?, BitRate=?, AlbumArtLocation=?, SongId=?, AlbumId=?, AlbumArtistId=?, GenreId=?, CanonicalName=?, CanonicalAlbum=?, CanonicalAlbumArtist=?, CanonicalGenre=?, PlayCount=?, LastPlayDate=?, LocalCopySize=?, LocalCopyBitrate=?, TrackType=?, ArtistOrigin=?, ArtistId=?, CanonicalArtist=? where Id=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compileMusicInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter "db"

    .prologue
    .line 843
    const-string v0, "insert into MUSIC ( SourceAccount, SourceId, SourcePath, _sync_version, Size, FileType, FileDate, LocalCopyPath, LocalCopyType, Title, Album, Artist, AlbumArtist, AlbumArtistOrigin, Composer, Genre, Year, Duration, TrackCount, TrackNumber, DiscCount, DiscNumber, Compilation, BitRate, AlbumArtLocation, SongId, AlbumId, AlbumArtistId, GenreId, CanonicalName, CanonicalAlbum, CanonicalAlbumArtist, CanonicalGenre, PlayCount, LastPlayDate, LocalCopySize, LocalCopyBitrate, TrackType, ArtistOrigin, ArtistId, CanonicalArtist) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Landroid/database/sqlite/SQLiteStatement;J)V
    .locals 1
    .parameter "deleteByLocalIdStatement"
    .parameter "localId"

    .prologue
    .line 1154
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1155
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1156
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1157
    return-void
.end method

.method public static final deleteAndGetLocalCacheFilepath(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "sourceId"

    .prologue
    .line 1106
    const/4 v10, 0x0

    .line 1107
    .local v10, id:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1108
    .local v9, filepath:Ljava/lang/String;
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->DELETE_PROJECTION:[Ljava/lang/String;

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .end local p1
    aput-object p1, v4, v0

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1116
    .local p1, c:Landroid/database/Cursor;
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_3

    .line 1117
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1118
    .end local v10           #id:Ljava/lang/String;
    .local v0, id:Ljava/lang/String;
    const/4 p2, 0x1

    :try_start_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 1120
    .local p2, cacheType:I
    const/16 v1, 0x12c

    if-eq p2, v1, :cond_2

    .line 1121
    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    .end local p2           #cacheType:I
    move-result p2

    if-nez p2, :cond_2

    .line 1122
    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p2

    .line 1123
    .end local v9           #filepath:Ljava/lang/String;
    .local p2, filepath:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_0

    .line 1124
    const/4 p2, 0x0

    .line 1130
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1133
    if-eqz v0, :cond_1

    .line 1134
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .end local p1           #c:Landroid/database/Cursor;
    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 1135
    .local p1, idArgs:[Ljava/lang/String;
    const-string v0, "MUSIC"

    .end local v0           #id:Ljava/lang/String;
    const-string v1, "Id=?"

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1136
    const-string v0, "SHOULDKEEPON"

    const-string v1, "MusicId=?"

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1139
    .end local p1           #idArgs:[Ljava/lang/String;
    :cond_1
    return-object p2

    .line 1130
    .end local p2           #filepath:Ljava/lang/String;
    .restart local v9       #filepath:Ljava/lang/String;
    .restart local v10       #id:Ljava/lang/String;
    .local p1, c:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    move-object v0, p0

    move-object p2, v10

    .end local v10           #id:Ljava/lang/String;
    .local p2, id:Ljava/lang/String;
    move-object p0, v9

    .end local v9           #filepath:Ljava/lang/String;
    .local p0, filepath:Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .end local p2           #id:Ljava/lang/String;
    .restart local v0       #id:Ljava/lang/String;
    .restart local v9       #filepath:Ljava/lang/String;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception p0

    move-object p2, v0

    .end local v0           #id:Ljava/lang/String;
    .restart local p2       #id:Ljava/lang/String;
    move-object v0, p0

    move-object p0, v9

    .end local v9           #filepath:Ljava/lang/String;
    .local p0, filepath:Ljava/lang/String;
    goto :goto_1

    .restart local v0       #id:Ljava/lang/String;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p2, filepath:Ljava/lang/String;
    :catchall_2
    move-exception p0

    move-object v11, p0

    move-object p0, p2

    .end local p2           #filepath:Ljava/lang/String;
    .local p0, filepath:Ljava/lang/String;
    move-object p2, v0

    .end local v0           #id:Ljava/lang/String;
    .local p2, id:Ljava/lang/String;
    move-object v0, v11

    goto :goto_1

    .end local p2           #id:Ljava/lang/String;
    .restart local v0       #id:Ljava/lang/String;
    .restart local v9       #filepath:Ljava/lang/String;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    move-object p2, v9

    .end local v9           #filepath:Ljava/lang/String;
    .local p2, filepath:Ljava/lang/String;
    goto :goto_0

    .end local v0           #id:Ljava/lang/String;
    .end local p2           #filepath:Ljava/lang/String;
    .restart local v9       #filepath:Ljava/lang/String;
    .restart local v10       #id:Ljava/lang/String;
    :cond_3
    move-object p2, v9

    .end local v9           #filepath:Ljava/lang/String;
    .restart local p2       #filepath:Ljava/lang/String;
    move-object v0, v10

    .end local v10           #id:Ljava/lang/String;
    .restart local v0       #id:Ljava/lang/String;
    goto :goto_0
.end method

.method public static deleteBySourceInfo(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 3
    .parameter "deleteBySourceInfoStatement"
    .parameter "sourceAccount"
    .parameter "sourceId"

    .prologue
    .line 1145
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1147
    const/4 v0, 0x1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1148
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1151
    return-void
.end method

.method public static getPlaycountsToSync(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "sourceAccount"

    .prologue
    const/4 v5, 0x0

    .line 1212
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->PLAYCOUNT_SYNC_PROJECTION:[Ljava/lang/String;

    const-string v3, "SourceAccount=? AND PlayCount>0"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getSummaryMusicFile(Lcom/google/android/music/store/Store;Lcom/google/android/music/store/MusicFile;J)Lcom/google/android/music/store/MusicFile;
    .locals 10
    .parameter "store"
    .parameter "musicFile"
    .parameter "musicId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/DataNotFoundException;
        }
    .end annotation

    .prologue
    .line 1504
    invoke-static {}, Lcom/google/android/music/store/MusicFile;->getSummaryProjection()[Ljava/lang/String;

    move-result-object v2

    .line 1506
    .local v2, musicProjection:[Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1507
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "MUSIC"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1509
    const/4 v8, 0x0

    .line 1510
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1512
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "MUSIC.Id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1515
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1516
    :cond_0
    new-instance v3, Lcom/google/android/music/store/DataNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/music/store/DataNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    :catchall_0
    move-exception v3

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1531
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    .line 1519
    :cond_1
    if-nez p1, :cond_2

    .line 1520
    :try_start_1
    new-instance v9, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v9}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .end local p1
    .local v9, musicFile:Lcom/google/android/music/store/MusicFile;
    move-object p1, v9

    .line 1525
    .end local v9           #musicFile:Lcom/google/android/music/store/MusicFile;
    .restart local p1
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v8, v3}, Lcom/google/android/music/store/MusicFile;->populateFromSummary(Landroid/database/Cursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1530
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1531
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object p1

    .line 1522
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/music/store/MusicFile;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static getSummaryProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1276
    sget-object v0, Lcom/google/android/music/store/MusicFile;->SUMMARY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 5
    .parameter "statement"

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x8

    .line 860
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 861
    :cond_0
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Source id must be set before saving to DB"

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->setDerivedFields()V

    .line 866
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 868
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 869
    const/16 v0, 0x26

    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 870
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 871
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mSourcePath:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 873
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 874
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 875
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 877
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 879
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 880
    :cond_2
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 884
    :goto_1
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 885
    const/16 v0, 0x25

    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 887
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 888
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 889
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, ""

    :goto_4
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 891
    const/16 v0, 0x27

    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 893
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, ""

    :goto_5
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 895
    const/16 v0, 0xe

    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 896
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string v1, ""

    :goto_6
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 897
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    if-nez v1, :cond_b

    const-string v1, ""

    :goto_7
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 898
    const/16 v0, 0x11

    iget-short v1, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 899
    const/16 v0, 0x12

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 900
    const/16 v0, 0x13

    iget-short v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 901
    const/16 v0, 0x14

    iget-short v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 902
    const/16 v0, 0x15

    iget-short v1, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 903
    const/16 v0, 0x16

    iget-short v1, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 904
    const/16 v0, 0x17

    iget-boolean v1, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    if-eqz v1, :cond_c

    const-wide/16 v1, 0x1

    :goto_8
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 905
    const/16 v0, 0x18

    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 906
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 907
    :cond_3
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 911
    :goto_9
    const/16 v0, 0x1a

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 912
    const/16 v0, 0x1b

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 913
    const/16 v0, 0x1c

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 914
    const/16 v0, 0x28

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 915
    const/16 v0, 0x1d

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 916
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    if-nez v1, :cond_e

    const-string v1, ""

    :goto_a
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 918
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    if-nez v1, :cond_f

    const-string v1, ""

    :goto_b
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 920
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    if-nez v1, :cond_10

    const-string v1, ""

    :goto_c
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 922
    const/16 v0, 0x29

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    if-nez v1, :cond_11

    const-string v1, ""

    :goto_d
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 924
    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, ""

    :goto_e
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 926
    const/16 v0, 0x22

    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 927
    const/16 v0, 0x23

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 928
    const/16 v0, 0x24

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 929
    return-void

    .line 871
    :cond_4
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mSourcePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 882
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 887
    :cond_6
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    goto/16 :goto_2

    .line 888
    :cond_7
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    goto/16 :goto_3

    .line 889
    :cond_8
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    goto/16 :goto_4

    .line 893
    :cond_9
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    goto/16 :goto_5

    .line 896
    :cond_a
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    goto/16 :goto_6

    .line 897
    :cond_b
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    goto/16 :goto_7

    .line 904
    :cond_c
    const-wide/16 v1, 0x0

    goto/16 :goto_8

    .line 909
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 916
    :cond_e
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    goto :goto_a

    .line 918
    :cond_f
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    goto :goto_b

    .line 920
    :cond_10
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    goto :goto_c

    .line 922
    :cond_11
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    goto :goto_d

    .line 924
    :cond_12
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    goto :goto_e
.end method

.method public static readMusicFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;
    .locals 10
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "sourceId"
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 1177
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1183
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    if-nez p3, :cond_0

    .line 1186
    new-instance v9, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v9}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .end local p3
    .local v9, file:Lcom/google/android/music/store/MusicFile;
    move-object p3, v9

    .line 1188
    .end local v9           #file:Lcom/google/android/music/store/MusicFile;
    .restart local p3
    :cond_0
    invoke-virtual {p3, v8}, Lcom/google/android/music/store/MusicFile;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v0, p3

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static resetPlayCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 5
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1236
    .local p1, musicIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1241
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "PlayCount"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1243
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1244
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v2, "Id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1245
    invoke-static {v0, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 1247
    const-string v2, "MUSIC"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final setAlbumArtist(Ljava/lang/String;I)V
    .locals 3
    .parameter "albumArtist"
    .parameter "albumArtistOrigin"

    .prologue
    const-wide/16 v1, 0x0

    .line 568
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 570
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 572
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 573
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 574
    iput p2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 576
    :cond_1
    return-void
.end method

.method public static setPlayCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 7
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, playCounts:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    const/4 v5, 0x1

    .line 1259
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1260
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "Id=?"

    .line 1261
    .local v4, whereClause:Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    .line 1262
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1264
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 1266
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1268
    const-string v6, "PlayCount"

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1270
    const-string v5, "MUSIC"

    const-string v6, "Id=?"

    invoke-virtual {p0, v5, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1272
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private final setTrackArtist(Ljava/lang/String;I)V
    .locals 3
    .parameter "trackArtist"
    .parameter "trackArtistOrigin"

    .prologue
    const/4 v2, 0x1

    .line 524
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 526
    iput p2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 528
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 529
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-ne v0, v2, :cond_2

    .line 531
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    if-ne v0, v2, :cond_1

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both track artist and album artist can\'t be derived"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 538
    :cond_2
    return-void
.end method

.method private static stringChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 776
    if-nez p0, :cond_1

    .line 777
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    .line 781
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 777
    goto :goto_0

    .line 778
    :cond_1
    if-nez p1, :cond_3

    .line 779
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 781
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final delete(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 4
    .parameter "deleteByLocalIdStatement"

    .prologue
    .line 1160
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot delete file with unknown local id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_0
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    invoke-static {p1, v0, v1}, Lcom/google/android/music/store/MusicFile;->delete(Landroid/database/sqlite/SQLiteStatement;J)V

    .line 1165
    return-void
.end method

.method public final forceAlbumArtist(Ljava/lang/String;)V
    .locals 1
    .parameter "albumArtist"

    .prologue
    .line 557
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 558
    return-void
.end method

.method public final getAddedTime()J
    .locals 2

    .prologue
    .line 424
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    return-wide v0
.end method

.method public getAlbumArtLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumArtistId()J
    .locals 2

    .prologue
    .line 705
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    return-wide v0
.end method

.method public final getAlbumArtistOrigin()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    return v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 597
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    return-wide v0
.end method

.method public final getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBitrate()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    return v0
.end method

.method public final getCanonicalAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanonicalAlbumArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanonicalGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanonicalTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalTrackArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    return-object v0
.end method

.method public final getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiscCount()S
    .locals 1

    .prologue
    .line 669
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    return v0
.end method

.method public final getDiscPosition()S
    .locals 1

    .prologue
    .line 677
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    return v0
.end method

.method public final getDurationInMilliSec()J
    .locals 2

    .prologue
    .line 642
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    return-wide v0
.end method

.method public final getFileType()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    return v0
.end method

.method public final getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method public final getGenreId()J
    .locals 2

    .prologue
    .line 621
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    return-wide v0
.end method

.method public final getIsCloudFile()Z
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIsMediaStoreFile()Z
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLastPlayDate()J
    .locals 2

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    return-wide v0
.end method

.method public getLocalCopyBitrate()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    return v0
.end method

.method public final getLocalCopyPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalCopySize()J
    .locals 2

    .prologue
    .line 488
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    return-wide v0
.end method

.method public final getLocalCopyType()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    return v0
.end method

.method public final getLocalId()J
    .locals 2

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    return-wide v0
.end method

.method public final getPlayCount()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    return v0
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    return-wide v0
.end method

.method public final getSongId()J
    .locals 2

    .prologue
    .line 701
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    return-wide v0
.end method

.method public final getSourceAccount()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    return v0
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceVersion()J
    .locals 2

    .prologue
    .line 416
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:J

    return-wide v0
.end method

.method public final getTagNormalizer()Lcom/google/android/music/store/TagNormalizer;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackArtistId()J
    .locals 2

    .prologue
    .line 545
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    return-wide v0
.end method

.method public getTrackArtistOrigin()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    return v0
.end method

.method public final getTrackCountInAlbum()S
    .locals 1

    .prologue
    .line 661
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    return v0
.end method

.method public final getTrackPositionInAlbum()S
    .locals 1

    .prologue
    .line 626
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    return v0
.end method

.method public final getTrackType()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    return v0
.end method

.method public final getYear()S
    .locals 1

    .prologue
    .line 634
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    return v0
.end method

.method public final insertMusicFile(Landroid/database/sqlite/SQLiteStatement;)J
    .locals 6
    .parameter "musicInsert"

    .prologue
    .line 942
    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 943
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "MusicFile already created. Forgot to call reset()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 946
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MusicFile;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 948
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 949
    .local v0, insertedId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 950
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to insert into MUSIC"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 952
    :cond_1
    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 955
    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    return-wide v2
.end method

.method public final isCompilation()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    return v0
.end method

.method load(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 9
    .parameter "db"
    .parameter "localId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/DataNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1486
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "Id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1491
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    invoke-virtual {p0, v8}, Lcom/google/android/music/store/MusicFile;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1499
    return-void

    .line 1494
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/music/store/DataNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicFile with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/music/store/DataNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/16 v4, 0x18

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1303
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 1304
    const/16 v0, 0x26

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 1305
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    .line 1306
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    .line 1307
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourcePath:Ljava/lang/String;

    .line 1308
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:J

    .line 1309
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 1310
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 1311
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 1312
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 1313
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 1314
    const/16 v0, 0x25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    .line 1315
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 1316
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 1317
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 1318
    const/16 v0, 0x27

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 1319
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 1320
    const/16 v0, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 1321
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    .line 1322
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    .line 1323
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    .line 1324
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 1325
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    .line 1326
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    .line 1327
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    .line 1328
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    .line 1329
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    .line 1330
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    .line 1331
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    .line 1336
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 1337
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 1338
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 1339
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 1340
    const/16 v0, 0x28

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 1341
    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 1342
    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 1343
    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 1344
    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 1345
    const/16 v0, 0x29

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1346
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 1347
    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    .line 1348
    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    .line 1349
    const/16 v0, 0x24

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    .line 1350
    return-void

    :cond_0
    move v0, v2

    .line 1329
    goto :goto_0

    .line 1334
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    goto :goto_1
.end method

.method populateFromSummary(Landroid/database/Cursor;I)V
    .locals 2
    .parameter "c"
    .parameter "columnOffset"

    .prologue
    .line 1285
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 1286
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    .line 1287
    add-int/lit8 v0, p2, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    .line 1288
    add-int/lit8 v0, p2, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourcePath:Ljava/lang/String;

    .line 1289
    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 1290
    add-int/lit8 v0, p2, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 1291
    add-int/lit8 v0, p2, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 1292
    add-int/lit8 v0, p2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 1293
    add-int/lit8 v0, p2, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 1294
    add-int/lit8 v0, p2, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 1295
    add-int/lit8 v0, p2, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 1296
    add-int/lit8 v0, p2, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 1297
    add-int/lit8 v0, p2, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 1298
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 786
    iput-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 787
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 788
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    .line 789
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    .line 790
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mSourcePath:Ljava/lang/String;

    .line 791
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:J

    .line 792
    iput-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 793
    iput-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 794
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 795
    iput-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 796
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 797
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 798
    iput-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    .line 799
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    .line 800
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    .line 801
    iput-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    .line 802
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 803
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 804
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 805
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 806
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 807
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 808
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    .line 809
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    .line 810
    iput-short v2, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    .line 811
    iput-short v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    .line 812
    iput-short v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    .line 813
    iput-short v2, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    .line 814
    iput-short v2, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    .line 815
    iput-boolean v2, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    .line 816
    iput v2, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    .line 817
    iput-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 818
    iput-object v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    .line 819
    iput-boolean v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 820
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->resetDerivedFields()V

    .line 821
    return-void
.end method

.method public resetDerivedFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 829
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 830
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 831
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 832
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 833
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 834
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 835
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 836
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 837
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 838
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 839
    return-void
.end method

.method public final setAddedTime(J)V
    .locals 3
    .parameter "addedTime"

    .prologue
    .line 432
    const-wide v0, 0x4977387000L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x3bb2cc3d800L

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 433
    :cond_0
    const-string v0, "MusicStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected added time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 436
    return-void
.end method

.method public setAlbumArtLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "albumArtLocation"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 657
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    .line 658
    return-void
.end method

.method public final setAlbumArtist(Ljava/lang/String;)V
    .locals 1
    .parameter "albumArtist"

    .prologue
    .line 553
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 554
    return-void
.end method

.method public final setAlbumName(Ljava/lang/String;)V
    .locals 3
    .parameter "albumName"

    .prologue
    const-wide/16 v1, 0x0

    .line 588
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 590
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 592
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 594
    :cond_0
    return-void
.end method

.method public final setBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 697
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    .line 698
    return-void
.end method

.method public final setCompilation(Z)V
    .locals 0
    .parameter "compilation"

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    .line 690
    return-void
.end method

.method public final setComposer(Ljava/lang/String;)V
    .locals 0
    .parameter "composer"

    .prologue
    .line 605
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    .line 606
    return-void
.end method

.method setDerivedFields()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x1f

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    .line 993
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    if-nez v6, :cond_0

    .line 994
    new-instance v6, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct {v6}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    .line 996
    :cond_0
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    move v2, v10

    .line 997
    .local v2, hasAlbumArtist:Z
    :goto_0
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    move v3, v10

    .line 998
    .local v3, hasTrackArtist:Z
    :goto_1
    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    .line 999
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-direct {p0, v6, v10}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 1004
    :cond_1
    :goto_2
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1005
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 1006
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1007
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 1009
    :cond_2
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 1012
    :cond_3
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    if-nez v6, :cond_9

    .line 1013
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    .line 1014
    :cond_4
    new-instance v6, Lcom/google/android/music/store/InvalidDataException;

    const-string v7, "Song title must not be empty"

    invoke-direct {v6, v7}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v2           #hasAlbumArtist:Z
    .end local v3           #hasTrackArtist:Z
    :cond_5
    move v2, v7

    .line 996
    goto :goto_0

    .restart local v2       #hasAlbumArtist:Z
    :cond_6
    move v3, v7

    .line 997
    goto :goto_1

    .line 1000
    .restart local v3       #hasTrackArtist:Z
    :cond_7
    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 1001
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-direct {p0, v6, v10}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;I)V

    goto :goto_2

    .line 1017
    :cond_8
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 1018
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 1019
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 1023
    :cond_9
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    if-nez v6, :cond_a

    .line 1024
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 1025
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 1026
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 1030
    :cond_a
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_b

    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    .line 1033
    :cond_b
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 1034
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 1035
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 1037
    :cond_c
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 1039
    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-eq v6, v10, :cond_d

    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    if-eq v6, v10, :cond_d

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 1042
    :cond_d
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1043
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 1053
    :cond_e
    :goto_3
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_15

    .line 1054
    :cond_f
    const/16 v4, 0x1f

    .line 1055
    .local v4, separator:C
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v6, 0x100

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1056
    .local v1, buffer:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, albumIdHasArtist:Z
    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-eqz v6, :cond_10

    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11

    .line 1060
    :cond_10
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1061
    const/4 v0, 0x1

    .line 1064
    :cond_11
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_12

    .line 1065
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 1068
    :cond_12
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_15

    .line 1069
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-short v7, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-short v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1073
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_14

    if-eqz v0, :cond_13

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 1076
    :cond_13
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1079
    .local v5, songKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 1082
    .end local v0           #albumIdHasArtist:Z
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #separator:C
    .end local v5           #songKey:Ljava/lang/String;
    :cond_15
    return-void

    .line 1045
    :cond_16
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1046
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    if-eqz v6, :cond_17

    .line 1047
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1049
    :cond_17
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    goto/16 :goto_3
.end method

.method public final setDiscCount(S)V
    .locals 0
    .parameter "discCount"

    .prologue
    .line 673
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    .line 674
    return-void
.end method

.method public final setDiscPosition(S)V
    .locals 0
    .parameter "discPosition"

    .prologue
    .line 681
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    .line 682
    return-void
.end method

.method public final setDurationInMilliSec(J)V
    .locals 0
    .parameter "durationInMilliSec"

    .prologue
    .line 646
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 647
    return-void
.end method

.method public final setFileType(I)V
    .locals 0
    .parameter "fileType"

    .prologue
    .line 455
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 456
    return-void
.end method

.method public final setGenre(Ljava/lang/String;)V
    .locals 2
    .parameter "genre"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    .line 615
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 618
    :cond_0
    return-void
.end method

.method public final setLastPlayDate(J)V
    .locals 3
    .parameter "lastPlayDate"

    .prologue
    .line 742
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide v0, 0x4977387000L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x3bb2cc3d800L

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 745
    :cond_0
    const-string v0, "MusicStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected last play date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_1
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    .line 748
    return-void
.end method

.method public setLocalCopyBitrate(I)V
    .locals 0
    .parameter "localCopyBitrate"

    .prologue
    .line 500
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    .line 501
    return-void
.end method

.method public final setLocalCopyPath(Ljava/lang/String;)V
    .locals 0
    .parameter "localCopyPath"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public final setLocalCopySize(J)V
    .locals 0
    .parameter "localCopySize"

    .prologue
    .line 492
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    .line 493
    return-void
.end method

.method public final setLocalCopyType(I)V
    .locals 0
    .parameter "localCopyType"

    .prologue
    .line 484
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 485
    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 460
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 461
    return-void
.end method

.method public final setPlayCount(I)V
    .locals 0
    .parameter "playCount"

    .prologue
    .line 756
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    .line 757
    return-void
.end method

.method public final setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 447
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 448
    return-void
.end method

.method public final setSourceAccount(I)V
    .locals 0
    .parameter "sourceAccount"

    .prologue
    .line 396
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    .line 397
    return-void
.end method

.method public final setSourceId(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceId"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setSourcePath(Ljava/lang/String;)V
    .locals 0
    .parameter "remotePath"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mSourcePath:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public final setSourceVersion(J)V
    .locals 0
    .parameter "sourceVersion"

    .prologue
    .line 420
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:J

    .line 421
    return-void
.end method

.method public final setTagNormalizer(Lcom/google/android/music/store/TagNormalizer;)V
    .locals 0
    .parameter "normalizer"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    .line 765
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 511
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 513
    :cond_0
    return-void
.end method

.method public final setTrackArtist(Ljava/lang/String;)V
    .locals 1
    .parameter "trackArtist"

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;I)V

    .line 521
    return-void
.end method

.method public final setTrackCountInAlbum(S)V
    .locals 0
    .parameter "trackCountInAlbum"

    .prologue
    .line 665
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    .line 666
    return-void
.end method

.method public final setTrackPositionInAlbum(S)V
    .locals 0
    .parameter "trackPositionInAlbum"

    .prologue
    .line 630
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    .line 631
    return-void
.end method

.method public final setTrackType(I)V
    .locals 0
    .parameter "trackType"

    .prologue
    .line 388
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 389
    return-void
.end method

.method setValues(Landroid/content/ContentValues;)V
    .locals 24
    .parameter "values"

    .prologue
    .line 1362
    const-string v22, "TrackType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1363
    const-string v22, "TrackType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setTrackType(I)V

    .line 1365
    :cond_0
    const-string v22, "SourceAccount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1366
    const-string v22, "SourceAccount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setSourceAccount(I)V

    .line 1368
    :cond_1
    const-string v22, "SourceId"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1369
    const-string v22, "SourceId"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setSourceId(Ljava/lang/String;)V

    .line 1371
    :cond_2
    const-string v22, "SourcePath"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1372
    const-string v22, "SourcePath"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setSourcePath(Ljava/lang/String;)V

    .line 1374
    :cond_3
    const-string v22, "_sync_version"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1375
    const-string v22, "_sync_version"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 1376
    .local v17, remoteVersion:Ljava/lang/Long;
    if-nez v17, :cond_1f

    const-wide/16 v22, -0x1

    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setSourceVersion(J)V

    .line 1378
    .end local v17           #remoteVersion:Ljava/lang/Long;
    :cond_4
    const-string v22, "Size"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1379
    const-string v22, "Size"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 1380
    .local v18, size:Ljava/lang/Long;
    if-nez v18, :cond_20

    const-wide/16 v22, 0x0

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setSize(J)V

    .line 1382
    .end local v18           #size:Ljava/lang/Long;
    :cond_5
    const-string v22, "FileType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1383
    const-string v22, "FileType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 1384
    .local v10, fileType:Ljava/lang/Integer;
    if-nez v10, :cond_21

    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setFileType(I)V

    .line 1386
    .end local v10           #fileType:Ljava/lang/Integer;
    :cond_6
    const-string v22, "FileDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1387
    const-string v22, "FileDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1388
    .local v3, addedTime:Ljava/lang/Long;
    if-nez v3, :cond_22

    const-wide/16 v22, 0x0

    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setAddedTime(J)V

    .line 1390
    .end local v3           #addedTime:Ljava/lang/Long;
    :cond_7
    const-string v22, "Title"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1391
    const-string v22, "Title"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setTitle(Ljava/lang/String;)V

    .line 1393
    :cond_8
    const-string v22, "Album"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1394
    const-string v22, "Album"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 1396
    :cond_9
    const-string v22, "Artist"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1397
    const/16 v19, 0x0

    .line 1398
    .local v19, trackArtistOrigin:I
    const-string v22, "ArtistOrigin"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1399
    const-string v22, "ArtistOrigin"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1401
    :cond_a
    const-string v22, "Artist"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;I)V

    .line 1403
    .end local v19           #trackArtistOrigin:I
    :cond_b
    const-string v22, "AlbumArtist"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1404
    const/4 v4, 0x0

    .line 1405
    .local v4, albumArtistOrigin:I
    const-string v22, "AlbumArtistOrigin"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1406
    const-string v22, "AlbumArtistOrigin"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1408
    :cond_c
    const-string v22, "AlbumArtist"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 1410
    .end local v4           #albumArtistOrigin:I
    :cond_d
    const-string v22, "Composer"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1411
    const-string v22, "Composer"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setComposer(Ljava/lang/String;)V

    .line 1413
    :cond_e
    const-string v22, "Genre"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1414
    const-string v22, "Genre"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setGenre(Ljava/lang/String;)V

    .line 1416
    :cond_f
    const-string v22, "Year"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1417
    const-string v22, "Year"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Short;->shortValue()S

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setYear(S)V

    .line 1419
    :cond_10
    const-string v22, "Duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 1420
    const-string v22, "Duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 1421
    .local v9, duration:Ljava/lang/Long;
    if-nez v9, :cond_23

    const-wide/16 v22, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setDurationInMilliSec(J)V

    .line 1423
    .end local v9           #duration:Ljava/lang/Long;
    :cond_11
    const-string v22, "TrackCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 1424
    const-string v22, "TrackCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v20

    .line 1425
    .local v20, trackCount:Ljava/lang/Short;
    if-nez v20, :cond_24

    const/16 v22, 0x0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setTrackCountInAlbum(S)V

    .line 1427
    .end local v20           #trackCount:Ljava/lang/Short;
    :cond_12
    const-string v22, "TrackNumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1428
    const-string v22, "TrackNumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v21

    .line 1429
    .local v21, trackPosition:Ljava/lang/Short;
    if-nez v21, :cond_25

    const/16 v22, 0x0

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setTrackPositionInAlbum(S)V

    .line 1431
    .end local v21           #trackPosition:Ljava/lang/Short;
    :cond_13
    const-string v22, "DiscCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 1432
    const-string v22, "DiscCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v7

    .line 1433
    .local v7, discCount:Ljava/lang/Short;
    if-nez v7, :cond_26

    const/16 v22, 0x0

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setDiscCount(S)V

    .line 1435
    .end local v7           #discCount:Ljava/lang/Short;
    :cond_14
    const-string v22, "DiscNumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 1436
    const-string v22, "DiscNumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v8

    .line 1437
    .local v8, discPosition:Ljava/lang/Short;
    if-nez v8, :cond_27

    const/16 v22, 0x0

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setDiscPosition(S)V

    .line 1439
    .end local v8           #discPosition:Ljava/lang/Short;
    :cond_15
    const-string v22, "Compilation"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 1440
    const-string v22, "Compilation"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 1441
    .local v6, compilation:Ljava/lang/Boolean;
    if-nez v6, :cond_28

    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setCompilation(Z)V

    .line 1443
    .end local v6           #compilation:Ljava/lang/Boolean;
    :cond_16
    const-string v22, "BitRate"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 1444
    const-string v22, "Compilation"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1445
    .local v5, bitrate:Ljava/lang/Integer;
    if-nez v5, :cond_29

    const/16 v22, 0x0

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setBitrate(I)V

    .line 1447
    .end local v5           #bitrate:Ljava/lang/Integer;
    :cond_17
    const-string v22, "AlbumArtLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 1448
    const-string v22, "AlbumArtLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumArtLocation(Ljava/lang/String;)V

    .line 1450
    :cond_18
    const-string v22, "PlayCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 1451
    const-string v22, "PlayCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 1452
    .local v16, playCount:Ljava/lang/Integer;
    if-nez v16, :cond_2a

    const/16 v22, 0x0

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setPlayCount(I)V

    .line 1454
    .end local v16           #playCount:Ljava/lang/Integer;
    :cond_19
    const-string v22, "LastPlayDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 1455
    const-string v22, "LastPlayDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 1456
    .local v11, lastPlayDate:Ljava/lang/Long;
    if-nez v11, :cond_2b

    const-wide/16 v22, 0x0

    :goto_c
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setLastPlayDate(J)V

    .line 1458
    .end local v11           #lastPlayDate:Ljava/lang/Long;
    :cond_1a
    const-string v22, "LocalCopyPath"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 1459
    const-string v22, "LocalCopyPath"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1460
    .local v13, localCopyPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setLocalCopyPath(Ljava/lang/String;)V

    .line 1462
    .end local v13           #localCopyPath:Ljava/lang/String;
    :cond_1b
    const-string v22, "LocalCopyType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 1463
    const-string v22, "LocalCopyType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 1464
    .local v15, localCopyType:Ljava/lang/Integer;
    if-nez v15, :cond_2c

    const/16 v22, 0x0

    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setLocalCopyType(I)V

    .line 1466
    .end local v15           #localCopyType:Ljava/lang/Integer;
    :cond_1c
    const-string v22, "LocalCopySize"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 1467
    const-string v22, "LocalCopySize"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 1468
    .local v14, localCopySize:Ljava/lang/Long;
    if-nez v14, :cond_2d

    const-wide/16 v22, 0x0

    :goto_e
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setLocalCopySize(J)V

    .line 1470
    .end local v14           #localCopySize:Ljava/lang/Long;
    :cond_1d
    const-string v22, "LocalCopyBitrate"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 1471
    const-string v22, "LocalCopyBitrate"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1472
    .local v12, localCopyBitrate:Ljava/lang/Integer;
    if-nez v12, :cond_2e

    const/16 v22, 0x0

    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setLocalCopyBitrate(I)V

    .line 1474
    .end local v12           #localCopyBitrate:Ljava/lang/Integer;
    :cond_1e
    return-void

    .line 1376
    .restart local v17       #remoteVersion:Ljava/lang/Long;
    :cond_1f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_0

    .line 1380
    .end local v17           #remoteVersion:Ljava/lang/Long;
    .restart local v18       #size:Ljava/lang/Long;
    :cond_20
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_1

    .line 1384
    .end local v18           #size:Ljava/lang/Long;
    .restart local v10       #fileType:Ljava/lang/Integer;
    :cond_21
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_2

    .line 1388
    .end local v10           #fileType:Ljava/lang/Integer;
    .restart local v3       #addedTime:Ljava/lang/Long;
    :cond_22
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_3

    .line 1421
    .end local v3           #addedTime:Ljava/lang/Long;
    .restart local v9       #duration:Ljava/lang/Long;
    :cond_23
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_4

    .line 1425
    .end local v9           #duration:Ljava/lang/Long;
    .restart local v20       #trackCount:Ljava/lang/Short;
    :cond_24
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Short;->shortValue()S

    move-result v22

    goto/16 :goto_5

    .line 1429
    .end local v20           #trackCount:Ljava/lang/Short;
    .restart local v21       #trackPosition:Ljava/lang/Short;
    :cond_25
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Short;->shortValue()S

    move-result v22

    goto/16 :goto_6

    .line 1433
    .end local v21           #trackPosition:Ljava/lang/Short;
    .restart local v7       #discCount:Ljava/lang/Short;
    :cond_26
    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v22

    goto/16 :goto_7

    .line 1437
    .end local v7           #discCount:Ljava/lang/Short;
    .restart local v8       #discPosition:Ljava/lang/Short;
    :cond_27
    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v22

    goto/16 :goto_8

    .line 1441
    .end local v8           #discPosition:Ljava/lang/Short;
    .restart local v6       #compilation:Ljava/lang/Boolean;
    :cond_28
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    goto/16 :goto_9

    .line 1445
    .end local v6           #compilation:Ljava/lang/Boolean;
    .restart local v5       #bitrate:Ljava/lang/Integer;
    :cond_29
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_a

    .line 1452
    .end local v5           #bitrate:Ljava/lang/Integer;
    .restart local v16       #playCount:Ljava/lang/Integer;
    :cond_2a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_b

    .line 1456
    .end local v16           #playCount:Ljava/lang/Integer;
    .restart local v11       #lastPlayDate:Ljava/lang/Long;
    :cond_2b
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_c

    .line 1464
    .end local v11           #lastPlayDate:Ljava/lang/Long;
    .restart local v15       #localCopyType:Ljava/lang/Integer;
    :cond_2c
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_d

    .line 1468
    .end local v15           #localCopyType:Ljava/lang/Integer;
    .restart local v14       #localCopySize:Ljava/lang/Long;
    :cond_2d
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_e

    .line 1472
    .end local v14           #localCopySize:Ljava/lang/Long;
    .restart local v12       #localCopyBitrate:Ljava/lang/Integer;
    :cond_2e
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto :goto_f
.end method

.method public final setYear(S)V
    .locals 0
    .parameter "year"

    .prologue
    .line 638
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    .line 639
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 355
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const-string v1, "account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const-string v1, "sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    const-string v1, "path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const-string v1, "addedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    const-string v1, "fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    const-string v1, "localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const-string v1, "localCopyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    const-string v1, "artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const-string v1, "artistOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v1, "albumArtist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const-string v1, "albumArtistOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v1, "album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    const-string v1, "composer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v1, "genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const-string v1, "position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-short v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    const-string v1, "year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-short v2, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v1, "artLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v1, "duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "fullUpdateStatement"
    .parameter "db"

    .prologue
    .line 967
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Music file ID must be known in order to update db record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MusicFile;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 974
    const/16 v0, 0x2a

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 976
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 978
    iget-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    if-eqz v0, :cond_1

    .line 979
    const-string v0, "ARTWORK"

    const-string v1, "AlbumId=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 982
    :cond_1
    return-void
.end method
