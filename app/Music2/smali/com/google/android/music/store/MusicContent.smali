.class public final Lcom/google/android/music/store/MusicContent;
.super Ljava/lang/Object;
.source "MusicContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/MusicContent$SystemMediaStore;,
        Lcom/google/android/music/store/MusicContent$DownloadQueue;,
        Lcom/google/android/music/store/MusicContent$Recent;,
        Lcom/google/android/music/store/MusicContent$KeepOn;,
        Lcom/google/android/music/store/MusicContent$AlbumArt;,
        Lcom/google/android/music/store/MusicContent$Search;,
        Lcom/google/android/music/store/MusicContent$Genres;,
        Lcom/google/android/music/store/MusicContent$Artists;,
        Lcom/google/android/music/store/MusicContent$Albums;,
        Lcom/google/android/music/store/MusicContent$XAudio;,
        Lcom/google/android/music/store/MusicContent$Playlists;,
        Lcom/google/android/music/store/MusicContent$AudioColumns;,
        Lcom/google/android/music/store/MusicContent$AudioSetColumns;,
        Lcom/google/android/music/store/MusicContent$MediaFileColumns;,
        Lcom/google/android/music/store/MusicContent$CommonColumns;
    }
.end annotation


# static fields
.field static final ALBUM_ART_PATH:Ljava/lang/String; = "albumart"

.field static final ALBUM_PATH:Ljava/lang/String; = "album"

.field static final ARTIST_PATH:Ljava/lang/String; = "artists"

.field static final AUDIO_PATH:Ljava/lang/String; = "audio"

.field public static final AUTHORITY:Ljava/lang/String; = "com.google.android.music.MusicContent"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final COUNT_COLUMNS:[Ljava/lang/String; = null

.field static final DOWNLOAD_QUEUE_PATH:Ljava/lang/String; = "DownloadQueue"

.field public static final DOWNLOAD_QUEUE_URI:Landroid/net/Uri; = null

.field static final GENRE_PATH:Ljava/lang/String; = "genres"

.field static final KEEP_ON_PATH:Ljava/lang/String; = "KeepOn"

.field public static final KEEP_ON_URI:Landroid/net/Uri; = null

.field static final MEMBERS_PATH:Ljava/lang/String; = "members"

.field public static final PARAM_ALBUMID_FILTER:Ljava/lang/String; = "albumIdFilter"

.field public static final PARAM_ALBUM_ORDER:Ljava/lang/String; = "order"

.field public static final PARAM_ALBUM_ORDER_VALUE_BY_ALBUM:Ljava/lang/String; = "album"

.field public static final PARAM_ALBUM_ORDER_VALUE_BY_ARTIST:Ljava/lang/String; = "artist"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final PARAM_RECENT_DAYS:Ljava/lang/String; = "days"

.field public static final PARAM_SONG_ORDER:Ljava/lang/String; = "order"

.field public static final PARAM_SONG_ORDER_VALUE_BY_ALBUM:Ljava/lang/String; = "album"

.field public static final PARAM_SONG_ORDER_VALUE_BY_ARTIST:Ljava/lang/String; = "artist"

.field public static final PARAM_SONG_ORDER_VALUE_BY_NAME:Ljava/lang/String; = "name"

.field static final PARAM_TRACK_VERSION:Ljava/lang/String; = "vers"

.field static final PARAM_TRACK_VERSION_VALUE_MEDIA_STORE:Ljava/lang/String; = "media"

.field static final PARAM_TRACK_VERSION_VALUE_REMOTE:Ljava/lang/String; = "remote"

.field static final PLAYLIST_PATH:Ljava/lang/String; = "playlists"

.field static final RECENT_ITEMS_PATH:Ljava/lang/String; = "Recent"

.field static final RECENT_PATH:Ljava/lang/String; = "recent"

.field static final SEARCH_PATH:Ljava/lang/String; = "search"

.field static final STREAM_PATH:Ljava/lang/String; = "play"

.field public static final STREAM_URI:Landroid/net/Uri; = null

.field static final TRACK_ARTIST_PATH:Ljava/lang/String; = "trackartists"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "content://com.google.android.music.MusicContent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "play"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent;->STREAM_URI:Landroid/net/Uri;

    .line 65
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "KeepOn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent;->KEEP_ON_URI:Landroid/net/Uri;

    .line 67
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "DownloadQueue"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MusicContent;->COUNT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCount(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    .local v7, count:I
    sget-object v2, Lcom/google/android/music/store/MusicContent;->COUNT_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 122
    :cond_0
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 124
    return v7

    .line 122
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getStreamUri(J)Landroid/net/Uri;
    .locals 2
    .parameter "musicId"

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/music/store/MusicContent;->STREAM_URI:Landroid/net/Uri;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
