.class public Lcom/google/android/music/store/MusicContentProvider;
.super Landroid/content/ContentProvider;
.source "MusicContentProvider.java"


# static fields
.field private static final ALBUMS:I = 0x190

.field private static final ALBUMS_GROUPED_BY_ARTISTS:I = 0x192

.field private static final ALBUMS_ID:I = 0x191

.field private static final ALBUM_ART:I = 0x320

.field private static final ARTISTS:I = 0x1f4

.field private static final ARTISTS_ID:I = 0x1f5

.field private static final ARTISTS_ID_ALBUMS:I = 0x1f6

.field private static final AUDIO_BY_ARTIST:I = 0x12f

.field private static final AUDIO_IN_ALBUM:I = 0x12e

.field private static final CLUSTER_ALBUM:Ljava/lang/String; = "c_album"

.field private static final CLUSTER_ALBUM_ID:Ljava/lang/String; = "c_album_id"

.field private static final CLUSTER_ARTIST:Ljava/lang/String; = "c_artist"

.field private static final CLUSTER_ARTIST_ID:Ljava/lang/String; = "c_artistId"

.field private static final CLUSTER_CANONICAL_ALBUM:Ljava/lang/String; = "c_canonicalAlbum"

.field private static final CLUSTER_CANONICAL_ARTIST:Ljava/lang/String; = "c_canonicalArtist"

.field private static final CLUSTER_SONG_COUNT:Ljava/lang/String; = "c_songCount"

.field private static final DOWNLOAD_QUEUE:I = 0x3e8

.field private static final FILTERS:[Ljava/lang/String; = null

.field private static final FILTER_SHOW_ALL:I = 0x0

.field private static final FILTER_SHOW_LOCAL_AND_KEPT:I = 0x1

.field private static final FILTER_SHOW_LOCAL_KEPT_AND_CACHED:I = 0x2

.field private static final GENRES:I = 0x2bc

.field private static final GENRES_ID:I = 0x2c0

.field private static final GENRES_WITH_ALBUMS:I = 0x2bf

.field private static final GENRE_ID_ALBUMS:I = 0x2be

.field private static final GENRE_ID_MEMBERS:I = 0x2bd

.field private static final HAS_LOCAL_IN_GROUP_EXPR:Ljava/lang/String; = "(MAX(LocalCopyType)  IN (200,300))"

.field private static final HAS_LOCAL_IN_PLAYLIST:Ljava/lang/String; = "EXISTS (SELECT 1 FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE (ListId=LISTS.Id) AND LocalCopyType IN (200,300) LIMIT 1)"

.field private static final HAS_REMOTE_IN_GROUP_EXPR:Ljava/lang/String; = "(MIN(LocalCopyType)  <>300)"

.field private static final HAS_REMOTE_IN_PLAYLIST:Ljava/lang/String; = "EXISTS (SELECT 1 FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE (ListId=LISTS.Id) AND LocalCopyType <>300 LIMIT 1)"

.field private static final IS_LOCAL_CONDITION:Ljava/lang/String; = " IN (200,300)"

.field private static final IS_LOCAL_EXPR:Ljava/lang/String; = "LocalCopyType IN (200,300)"

.field private static final IS_REMOTE_CONDITION:Ljava/lang/String; = " <>300"

.field private static final IS_REMOTE_EXPR:Ljava/lang/String; = "LocalCopyType <>300"

.field private static final LIST_ITEM_COUNT_BASE:Ljava/lang/String; = "SELECT count(1) FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=LISTS.Id"

.field private static final LIST_ITEM_COUNT_EXPRESSIONS:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MEDIA_STORE_AUDIO_ID:I = 0x4b0

.field private static final NUMBER_OF_FILTERS:I = 0x3

.field private static final PLAYLISTS:I = 0x258

.field private static final PLAYLISTS_ID:I = 0x259

.field private static final PLAYLIST_ID_MEMBERS:I = 0x25a

.field private static final PLAYLIST_ID_MEMBERS_ID:I = 0x25b

.field private static final PLAY_MEDIA:I = 0x131

.field private static final RECENT:I = 0x384

.field private static final RECENT_AUDIO_TRACKS:I = 0x130

.field private static final SEARCH:I = 0x44c

.field private static final SEARCH_ALBUM_COUNT_BASE:Ljava/lang/String; = "SELECT count(distinct(AlbumId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id)"

.field private static final SEARCH_ALBUM_COUNT_EXPRESSIONS:[Ljava/lang/String; = null

.field private static final SEARCH_ARTIST:Ljava/lang/String; = "search_artist"

.field private static final SEARCH_ARTIST_ID:Ljava/lang/String; = "search_artist_id"

.field private static final SEARCH_CANONICAL_ARTIST:Ljava/lang/String; = "search_canonical_artist"

.field private static final SEARCH_INTENT:Ljava/lang/String; = "search_intent"

.field private static final SEARCH_NO_FILTER:I = 0x44d

.field private static final SEARCH_SONG_COUNT_BASE:Ljava/lang/String; = "SELECT count(distinct(SongId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id)"

.field private static final SEARCH_SONG_COUNT_EXPRESSIONS:[Ljava/lang/String; = null

.field private static final SEARCH_SUGGESTIONS:I = 0x44e

.field private static final SEARCH_SUGGESTIONS_NO_FILTER:I = 0x44f

.field private static final SEARCH_TYPE:Ljava/lang/String; = "search_type"

.field private static final TAG:Ljava/lang/String; = "MusicContentProvider"

.field private static final XAUDIO:I = 0x12c

.field private static final XAUDIO_ID:I = 0x12d

.field private static sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAlbumArtistsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAlbumsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGenresProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGroupedMusicProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMusicProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlaylistMembersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlaylistsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecentProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchAlbumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchArtistMaps:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchPlaylistMaps:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchTrackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTrackArtistsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mArtworkDownloader:Lcom/google/android/music/dl/artwork/IArtDownloadService;

.field private mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

.field private mDownloadManagerConnection:Landroid/content/ServiceConnection;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 62
    const-string v1, "MusicContentProvider"

    invoke-static {v1}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    .line 129
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v6

    const-string v2, "LocalCopyType IN (200,300)"

    aput-object v2, v1, v5

    const-string v2, "LocalCopyType IN (100,200,300)"

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    .line 188
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "(SELECT count(distinct(SongId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id))"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT count(distinct(SongId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT count(distinct(SongId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_SONG_COUNT_EXPRESSIONS:[Ljava/lang/String;

    .line 199
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "(SELECT count(distinct(AlbumId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id))"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT count(distinct(AlbumId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT count(distinct(AlbumId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_ALBUM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    .line 209
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "(SELECT count(1) FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=LISTS.Id)"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT count(1) FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=LISTS.Id AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT count(1) FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=LISTS.Id AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->LIST_ITEM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    .line 1722
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 1723
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "audio"

    const/16 v4, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1724
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "audio/#"

    const/16 v4, 0x12d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1725
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "DownloadQueue"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1726
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "play"

    const/16 v4, 0x131

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1728
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "search/search_suggest_query"

    const/16 v4, 0x44f

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1730
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "search/search_suggest_query/*"

    const/16 v4, 0x44e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1732
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "search"

    const/16 v4, 0x44d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1733
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "search/*"

    const/16 v4, 0x44c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1735
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "audio/recent"

    const/16 v4, 0x130

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1738
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "album/#/audio"

    const/16 v4, 0x12e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1741
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "artists/#/audio"

    const/16 v4, 0x12f

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1745
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "album"

    const/16 v4, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1746
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "album/artists"

    const/16 v4, 0x192

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1748
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "album/#"

    const/16 v4, 0x191

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1751
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "artists"

    const/16 v4, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1752
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "artists/#"

    const/16 v4, 0x1f5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1754
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "artists/#/album"

    const/16 v4, 0x1f6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1757
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "playlists"

    const/16 v4, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1758
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "playlists/#"

    const/16 v4, 0x259

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1760
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "playlists/#/members"

    const/16 v4, 0x25a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1763
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "playlists/#/members/#"

    const/16 v4, 0x25b

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1765
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "genres"

    const/16 v4, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1766
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "genres/#/members"

    const/16 v4, 0x2bd

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1769
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "genres/#/album"

    const/16 v4, 0x2be

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1772
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "genres/album"

    const/16 v4, 0x2bf

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1774
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "genres/#"

    const/16 v4, 0x2c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1776
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "albumart/#"

    const/16 v4, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1777
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "Recent"

    const/16 v4, 0x384

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1779
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.google.android.music.MusicContent"

    const-string v3, "MediaStore/audio/#"

    const/16 v4, 0x4b0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1782
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 1783
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "MUSIC.Id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 1785
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    const-string v2, "count(*)"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1786
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v1, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 1788
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 1789
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "MUSIC.Id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 1791
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    const-string v2, "count(distinct(SongId))"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1793
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v1, v5, v5}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 1795
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 1796
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "GenreId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v2, "name"

    const-string v3, "Genre"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v2, "CanonicalGenre"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1799
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v2, "album"

    const-string v3, "Album"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v2, "AlbumArtist"

    const-string v3, "AlbumArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v2, "album_id"

    const-string v3, "AlbumId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v2, "SongCount"

    const-string v3, "count(distinct MUSIC.SongId)"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v2, "count(distinct GenreId)"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1805
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    invoke-static {v1, v6, v5}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 1807
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    .line 1808
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "AlbumArtistId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "artist"

    const-string v3, "AlbumArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "CanonicalAlbumArtist"

    const-string v3, "CanonicalAlbumArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "isTrackOnly"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "count(distinct AlbumArtistId)"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1815
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    invoke-static {v1, v5, v5}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 1817
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    .line 1818
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "ArtistId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "artist"

    const-string v3, "Artist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "CanonicalAlbumArtist"

    const-string v3, "CanonicalArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "isTrackOnly"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "count(distinct ArtistId)"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1825
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    invoke-static {v1, v6, v5}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 1826
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "KeepOnId"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 1829
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "MUSIC.AlbumId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "album_id"

    const-string v3, "MUSIC.AlbumId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "album"

    const-string v3, "Album"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "CanonicalAlbum"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1833
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "album_art"

    const-string v3, "\'\'"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "artist"

    const-string v3, "AlbumArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "artistSort"

    const-string v3, "CanonicalAlbumArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "artist_id"

    const-string v3, "AlbumArtistId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "SongCount"

    const-string v3, "count(distinct MUSIC.SongId)"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v2, "count(distinct MUSIC.AlbumId)"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1840
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    invoke-static {v1, v5, v5}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 1842
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    .line 1843
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "c_album_id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "album_id"

    const-string v3, "c_album_id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "album"

    const-string v3, "c_album"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "CanonicalAlbum"

    const-string v3, "c_canonicalAlbum"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "album_art"

    const-string v3, "\'\'"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "artist"

    const-string v3, "c_artist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "artistSort"

    const-string v3, "c_canonicalArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "artist_id"

    const-string v3, "c_artistId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "SongCount"

    const-string v3, "c_songCount"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "KeepOnId"

    const-string v3, "KEEPON.KeepOnId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "hasLocal"

    const-string v3, "EXISTS(select 1 from MUSIC WHERE AlbumId=c_album_id AND LocalCopyType IN (200,300) LIMIT 1)"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v2, "hasRemote"

    const-string v3, "EXISTS(select 1 from MUSIC WHERE AlbumId=c_album_id AND LocalCopyType <>300 LIMIT 1)"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    .line 1866
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "LISTS.Id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "name"

    const-string v3, "LISTS.Name"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "playlist_id"

    const-string v3, "Id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "count(*)"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1872
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "KeepOnId"

    const-string v3, "KEEPON.KeepOnId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "hasLocal"

    const-string v3, "EXISTS (SELECT 1 FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE (ListId=LISTS.Id) AND LocalCopyType IN (200,300) LIMIT 1)"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v2, "hasRemote"

    const-string v3, "EXISTS (SELECT 1 FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE (ListId=LISTS.Id) AND LocalCopyType <>300 LIMIT 1)"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    .line 1879
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "LISTITEMS.Id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v2, "audio_id"

    const-string v3, "MUSIC.Id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v2, "playlist_id"

    const-string v3, "LISTS.Id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v2, "play_order"

    const-string v3, "ClientPosition"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 1888
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v2, "count(*)"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1889
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    invoke-static {v1, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 1891
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    .line 1892
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "RecentId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v2, "RecentAlbumId"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1894
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v2, "album_name"

    const-string v3, "Album"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v2, "album_artist"

    const-string v3, "AlbumArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v2, "album_artist_id"

    const-string v3, "AlbumArtistId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v2, "RecentListId"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1900
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v2, "list_name"

    const-string v3, "LISTS.Name"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v2, "MIN(count(distinct RecentId),50)"

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1906
    new-array v1, v8, [Ljava/util/HashMap;

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    .line 1907
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v6

    .line 1908
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    aget-object v0, v1, v6

    .line 1909
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "searchType"

    const-string v2, "search_type"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const-string v1, "_id"

    const-string v2, "search_artist_id"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string v1, "searchName"

    const-string v2, "search_artist"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    const-string v1, "searchSortName"

    const-string v2, "search_canonical_artist"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    const-string v1, "Artist"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string v1, "AlbumArtist"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const-string v1, "AlbumArtistId"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const-string v1, "Album"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const-string v1, "duration"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const-string v1, "year"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    const-string v1, "AlbumId"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    const-string v1, "suggest_text_1"

    const-string v2, "search_artist"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    const-string v1, "suggest_text_2"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    const-string v1, "suggest_intent_data"

    const-string v2, "search_intent"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string v1, "suggest_intent_data_id"

    const-string v2, "search_artist_id"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v5

    .line 1925
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v7

    .line 1926
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    const-string v2, "itemCount"

    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_SONG_COUNT_EXPRESSIONS:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1927
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    const-string v2, "albumCount"

    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_ALBUM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1929
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    .line 1930
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "searchType"

    const-string v3, "\'3\'"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "AlbumId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "searchName"

    const-string v3, "Album"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "searchSortName"

    const-string v3, "CanonicalAlbum"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "Artist"

    const-string v3, "Artist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "AlbumArtist"

    const-string v3, "AlbumArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "AlbumArtistId"

    const-string v3, "AlbumArtistId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "Album"

    const-string v3, "Album"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "itemCount"

    const-string v3, "count(distinct songid)"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "albumCount"

    const-string v3, "\'\'"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "duration"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "year"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "AlbumId"

    const-string v3, "AlbumId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "suggest_text_1"

    const-string v3, "Album"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "suggest_text_2"

    const-string v3, "AlbumArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "suggest_intent_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v2, "suggest_intent_data_id"

    const-string v3, "AlbumId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    .line 1949
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "searchType"

    const-string v3, "\'5\'"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "Id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "searchName"

    const-string v3, "Title"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "searchSortName"

    const-string v3, "CanonicalName"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "Artist"

    const-string v3, "Artist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "AlbumArtist"

    const-string v3, "AlbumArtist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "AlbumArtistId"

    const-string v3, "AlbumArtistId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "Album"

    const-string v3, "Album"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "itemCount"

    const-string v3, "\'\'"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "albumCount"

    const-string v3, "\'\'"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "duration"

    const-string v3, "Duration"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "year"

    const-string v3, "Year"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "AlbumId"

    const-string v3, "AlbumId"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_text_1"

    const-string v3, "Title"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_text_2"

    const-string v3, "Artist"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_intent_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_TRACK:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_intent_data_id"

    const-string v3, "Id"

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    new-array v1, v8, [Ljava/util/HashMap;

    sput-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    .line 1972
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v6

    .line 1973
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    aget-object v0, v1, v6

    .line 1974
    const-string v1, "searchType"

    const-string v2, "\'4\'"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const-string v1, "_id"

    const-string v2, "Id"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v1, "searchName"

    const-string v2, "Name"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string v1, "searchSortName"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string v1, "Artist"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const-string v1, "AlbumArtist"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const-string v1, "AlbumArtistId"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v1, "Album"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string v1, "albumCount"

    const-string v2, "\'\'"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v1, "duration"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string v1, "year"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    const-string v1, "AlbumId"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const-string v1, "suggest_text_1"

    const-string v2, "Name"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string v1, "suggest_text_2"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string v1, "suggest_intent_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_PLAYLIST:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string v1, "suggest_intent_data_id"

    const-string v2, "Id"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v5

    .line 1994
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v7

    .line 1995
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    const-string v2, "itemCount"

    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->LIST_ITEM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1996
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1599
    new-instance v0, Lcom/google/android/music/store/MusicContentProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/MusicContentProvider$1;-><init>(Lcom/google/android/music/store/MusicContentProvider;)V

    iput-object v0, p0, Lcom/google/android/music/store/MusicContentProvider;->mDownloadManagerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/music/store/MusicContentProvider;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/music/store/MusicContentProvider;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/music/store/MusicContentProvider;Lcom/google/android/music/dl/artwork/IArtDownloadService;)Lcom/google/android/music/dl/artwork/IArtDownloadService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/music/store/MusicContentProvider;->mArtworkDownloader:Lcom/google/android/music/dl/artwork/IArtDownloadService;

    return-object p1
.end method

.method private static addAudioMapping(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1672
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "title"

    const-string v1, "Title"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string v0, "CanonicalName"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1674
    const-string v0, "album"

    const-string v1, "Album"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const-string v0, "CanonicalAlbum"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1676
    const-string v0, "album_id"

    const-string v1, "MUSIC.AlbumId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const-string v0, "artist"

    const-string v1, "Artist"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const-string v0, "artist_id"

    const-string v1, "ArtistId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const-string v0, "CanonicalAlbumArtist"

    const-string v1, "CanonicalAlbumArtist"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    const-string v0, "AlbumArtistId"

    const-string v1, "MUSIC.AlbumArtistId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const-string v0, "AlbumArtist"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1688
    const-string v0, "AlbumArtistId"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1690
    const-string v0, "composer"

    const-string v1, "Composer"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    const-string v0, "Genre"

    const-string v1, "Genre"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v0, "GenreId"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1695
    const-string v0, "year"

    const-string v1, "Year"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string v0, "duration"

    const-string v1, "Duration"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v0, "TrackCount"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1698
    const-string v0, "track"

    const-string v1, "TrackNumber"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v0, "DiscCount"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1700
    const-string v0, "DiscNumber"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1701
    const-string v0, "Compilation"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1702
    const-string v0, "BitRate"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1703
    const-string v0, "FileDate"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1704
    const-string v0, "Size"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1707
    const-string v0, "_data"

    const-string v1, "LocalCopyPath"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string v0, "bookmark"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v0, "is_podcast"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v0, "is_music"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const-string v0, "mime_type"

    const-string v1, "\'audio/*\'"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    const-string v0, "album_art"

    const-string v1, "\'\'"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v0, "SourceId"

    const-string v1, "MUSIC.SourceId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string v0, "SourceAccount"

    const-string v1, "MUSIC.SourceAccount"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    return-void
.end method

.method private static addCategoryMappings(Ljava/util/HashMap;ZZ)V
    .locals 2
    .parameter
    .parameter "keepOn"
    .parameter "group"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1639
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1640
    const-string v0, "KeepOnId"

    const-string v1, "KEEPON.KeepOnId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :cond_0
    const-string v0, "hasLocal"

    if-eqz p2, :cond_1

    const-string v1, "(MAX(LocalCopyType)  IN (200,300))"

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    const-string v0, "hasRemote"

    if-eqz p2, :cond_2

    const-string v1, "(MIN(LocalCopyType)  <>300)"

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    return-void

    .line 1643
    :cond_1
    const-string v1, "LocalCopyType IN (200,300)"

    goto :goto_0

    .line 1644
    :cond_2
    const-string v1, "LocalCopyType <>300"

    goto :goto_1
.end method

.method private static addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "countExpression"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1628
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "_count"

    invoke-static {p0, v0, p1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v0, "count(*)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    const-string v0, "hasAny"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method protected static addMapping(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1650
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    return-void
.end method

.method protected static addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "sql"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1660
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    return-void
.end method

.method private static addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "sqls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1665
    .local p0, maps:[Ljava/util/HashMap;,"[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1666
    aget-object v1, p0, v0

    aget-object v2, p2, v0

    invoke-static {v1, p1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1668
    :cond_0
    return-void
.end method

.method private static appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "buffer"
    .parameter "condition"

    .prologue
    .line 1335
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1336
    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1338
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1340
    return-object p0
.end method

.method private appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V
    .locals 1
    .parameter "out"
    .parameter "uri"

    .prologue
    .line 1381
    invoke-direct {p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v0

    .line 1382
    .local v0, filter:I
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V

    .line 1383
    return-void
.end method

.method private appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V
    .locals 1
    .parameter "out"
    .parameter "uri"
    .parameter "filter"

    .prologue
    .line 1386
    if-eqz p3, :cond_0

    .line 1387
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {p1, v0}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1389
    :cond_0
    return-void
.end method

.method private static arrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 356
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 357
    if-lez v0, :cond_0

    .line 358
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "store"
    .parameter "table"
    .parameter "groupByColumn"

    .prologue
    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select count(1) as _count from (select 1 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " group by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMusicFilterIndex()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1345
    const/4 v5, 0x1

    .line 1347
    .local v5, showRemote:Z
    iget-object v7, p0, Lcom/google/android/music/store/MusicContentProvider;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->isCachedStreamingMusicEnabled()Z

    move-result v0

    .line 1348
    .local v0, cacheStreamedMusic:Z
    iget-object v7, p0, Lcom/google/android/music/store/MusicContentProvider;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v1

    .line 1349
    .local v1, displayMode:I
    iget-object v7, p0, Lcom/google/android/music/store/MusicContentProvider;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v6

    .line 1351
    .local v6, streamOnlyOnWifi:Z
    if-eq v1, v8, :cond_3

    move v5, v8

    .line 1353
    :goto_0
    if-eqz v5, :cond_2

    .line 1354
    iget-object v7, p0, Lcom/google/android/music/store/MusicContentProvider;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->getHideWhenNotConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/android/music/store/MusicContentProvider;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1356
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v4

    .line 1357
    .local v4, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    const/4 v2, 0x0

    .line 1358
    .local v2, hasDataConnection:Z
    const/4 v3, 0x0

    .line 1359
    .local v3, hasWifiConnection:Z
    if-eqz v4, :cond_0

    .line 1360
    invoke-virtual {v4}, Lcom/google/android/music/dl/NetworkMonitor;->isConnected()Z

    move-result v2

    .line 1361
    invoke-virtual {v4}, Lcom/google/android/music/dl/NetworkMonitor;->hasWifiConnection()Z

    move-result v3

    .line 1363
    :cond_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    if-eqz v6, :cond_2

    .line 1364
    :cond_1
    const/4 v5, 0x0

    .line 1369
    .end local v2           #hasDataConnection:Z
    .end local v3           #hasWifiConnection:Z
    .end local v4           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    :cond_2
    if-nez v5, :cond_5

    .line 1370
    if-eqz v0, :cond_4

    .line 1371
    const/4 v7, 0x2

    .line 1376
    :goto_1
    return v7

    :cond_3
    move v5, v9

    .line 1351
    goto :goto_0

    :cond_4
    move v7, v8

    .line 1373
    goto :goto_1

    :cond_5
    move v7, v9

    .line 1376
    goto :goto_1
.end method

.method private getSortOrderFromQueryParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sortParam"

    .prologue
    .line 396
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 397
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const-string v0, "MUSIC.CanonicalName"

    .line 409
    .local v0, sortOrder:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 399
    .end local v0           #sortOrder:Ljava/lang/String;
    :cond_0
    const-string v1, "album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    const-string v0, "CanonicalAlbum, DiscNumber, TrackNumber, CanonicalName"

    .restart local v0       #sortOrder:Ljava/lang/String;
    goto :goto_0

    .line 401
    .end local v0           #sortOrder:Ljava/lang/String;
    :cond_1
    const-string v1, "artist"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    const-string v0, "CanonicalArtist, CanonicalName"

    .restart local v0       #sortOrder:Ljava/lang/String;
    goto :goto_0

    .line 404
    .end local v0           #sortOrder:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid sort param "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #sortOrder:Ljava/lang/String;
    goto :goto_0
.end method

.method private hasColumn([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "input"
    .parameter "column"

    .prologue
    .line 384
    if-eqz p1, :cond_1

    .line 385
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 386
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    const/4 v4, 0x1

    .line 391
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 385
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private hasCount([Ljava/lang/String;)Z
    .locals 4
    .parameter "input"

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, foundCount:Z
    if-eqz p1, :cond_1

    .line 369
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 370
    aget-object v2, p1, v1

    const-string v3, "count("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_count"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    :cond_0
    const/4 v0, 0x1

    .line 376
    .end local v1           #i:I
    :cond_1
    if-eqz v0, :cond_3

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 377
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Count can be the only column in the projection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 369
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1           #i:I
    :cond_3
    return v0
.end method


# virtual methods
.method protected connectToDownloadService()V
    .locals 4
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 240
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/android/music/store/MusicContentProvider;->mDownloadManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind to the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/android/music/store/MusicContentProvider;->mDownloadManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind to the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_1
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 1500
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v15

    .line 1501
    .local v15, store:Lcom/google/android/music/store/Store;
    const/4 v14, 0x0

    .line 1502
    .local v14, result:I
    sget-object v17, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 1503
    .local v8, matchUri:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1504
    .local v13, resolver:Landroid/content/ContentResolver;
    const/16 v16, 0x1

    .line 1505
    .local v16, sync:Z
    sparse-switch v8, :sswitch_data_0

    .line 1522
    new-instance v17, Ljava/lang/UnsupportedOperationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Delete not supported on URI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1507
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1508
    .local v9, musicId:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/store/Store;->deleteAllMatchingLocalMusicFiles(Landroid/content/Context;J)I

    move-result v14

    .line 1510
    const/16 v16, 0x0

    .line 1526
    .end local v9           #musicId:J
    .end local p0
    :goto_0
    const/16 v17, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1527
    const/16 v17, 0x12d

    move v0, v8

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1529
    sget-object v17, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1531
    :cond_0
    return v14

    .line 1513
    .restart local p0
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1514
    .local v11, playlistId:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/store/Store;->deletePlaylist(Landroid/content/Context;J)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    move/from16 v14, v17

    .line 1515
    :goto_1
    goto :goto_0

    .line 1514
    :cond_1
    const/16 v17, 0x0

    move/from16 v14, v17

    goto :goto_1

    .line 1517
    .end local v11           #playlistId:J
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1518
    .local v6, listId:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1519
    .local v4, itemId:J
    invoke-virtual {v15, v6, v7, v4, v5}, Lcom/google/android/music/store/Store;->deletePlaylistItem(JJ)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    move/from16 v14, v17

    .line 1520
    :goto_2
    goto :goto_0

    .line 1519
    :cond_2
    const/16 v17, 0x0

    move/from16 v14, v17

    goto :goto_2

    .line 1505
    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x259 -> :sswitch_1
        0x25b -> :sswitch_2
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 1394
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1452
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "MusicContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType called on Unknonw Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1453
    throw v0

    .line 1400
    .end local v0           #e:Ljava/lang/RuntimeException;
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.google.xaudio"

    .line 1448
    :goto_0
    return-object v1

    .line 1405
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.google.xaudio"

    goto :goto_0

    .line 1411
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/vnd.google.music.album"

    goto :goto_0

    .line 1414
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/vnd.google.music.album"

    goto :goto_0

    .line 1417
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/vnd.google.music.artist"

    goto :goto_0

    .line 1420
    :sswitch_5
    const-string v1, "vnd.android.cursor.item/vnd.google.music.artist"

    goto :goto_0

    .line 1424
    :sswitch_6
    const-string v1, "vnd.android.cursor.dir/vnd.google.music.genre"

    goto :goto_0

    .line 1427
    :sswitch_7
    const-string v1, "vnd.android.cursor.item/vnd.google.music.genre"

    goto :goto_0

    .line 1430
    :sswitch_8
    const-string v1, "vnd.android.cursor.item/vnd.google.music.albumart"

    goto :goto_0

    .line 1433
    :sswitch_9
    const-string v1, "vnd.android.cursor.dir/vnd.google.music.recent"

    goto :goto_0

    .line 1436
    :sswitch_a
    const-string v1, "vnd.android.cursor.dir/vnd.google.music.downloadqueue"

    goto :goto_0

    .line 1439
    :sswitch_b
    const-string v1, "vnd.android.cursor.dir/vnd.google.music.playlist"

    goto :goto_0

    .line 1442
    :sswitch_c
    const-string v1, "vnd.android.cursor.item/vnd.google.music.playlist"

    goto :goto_0

    .line 1445
    :sswitch_d
    const-string v1, "vnd.android.cursor.dir/vnd.google.listitems"

    goto :goto_0

    .line 1448
    :sswitch_e
    const-string v1, "vnd.android.cursor.item/vnd.google.listitems"

    goto :goto_0

    .line 1394
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x131 -> :sswitch_1
        0x190 -> :sswitch_2
        0x191 -> :sswitch_3
        0x192 -> :sswitch_2
        0x1f4 -> :sswitch_4
        0x1f5 -> :sswitch_5
        0x1f6 -> :sswitch_2
        0x258 -> :sswitch_b
        0x259 -> :sswitch_c
        0x25a -> :sswitch_d
        0x25b -> :sswitch_e
        0x2bc -> :sswitch_6
        0x2bd -> :sswitch_0
        0x2be -> :sswitch_2
        0x2bf -> :sswitch_6
        0x2c0 -> :sswitch_7
        0x320 -> :sswitch_8
        0x384 -> :sswitch_9
        0x3e8 -> :sswitch_a
        0x4b0 -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 16
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1459
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v11

    .line 1460
    .local v11, store:Lcom/google/android/music/store/Store;
    sget-object v12, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 1461
    .local v4, matchUri:I
    const-wide/16 v6, 0x0

    .line 1462
    .local v6, newId:J
    const/4 v8, 0x0

    .line 1463
    .local v8, newUri:Landroid/net/Uri;
    packed-switch v4, :pswitch_data_0

    .line 1488
    :pswitch_0
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Insert not supported on URI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (match="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1465
    :pswitch_1
    const-string v12, "name"

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1466
    .local v3, listName:Ljava/lang/String;
    invoke-virtual {v11, v3}, Lcom/google/android/music/store/Store;->createPlaylist(Ljava/lang/String;)J

    move-result-wide v6

    .line 1467
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v8

    .line 1492
    .end local v3           #listName:Ljava/lang/String;
    .end local p1
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1495
    :cond_1
    return-object v8

    .line 1470
    .restart local p1
    :pswitch_2
    const-string v12, "audio_id"

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1471
    .local v5, musicId:Ljava/lang/Long;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    .line 1472
    :cond_2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "When inserting playlist items, the music id must be provided and nothing else"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1476
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1478
    .local v9, playlistId:J
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v9, v10, v12, v13}, Lcom/google/android/music/store/Store;->appendPlaylistItem(JJ)J

    move-result-wide v6

    .line 1479
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-eqz v12, :cond_0

    .line 1480
    invoke-static {v9, v10, v6, v7}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 1482
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 1483
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v12, "MusicContentProvider"

    const-string v13, "Failed to insert playlist item"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1463
    nop

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    .line 233
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->connectToDownloadService()V

    .line 234
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicContentProvider;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 26
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v8, 0x0

    .line 264
    .local v8, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v20

    .line 265
    .local v20, store:Lcom/google/android/music/store/Store;
    sget-object v22, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    const/16 v23, 0x320

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v21

    .line 268
    .local v21, strAlbumId:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 269
    .local v5, albumId:J
    const-wide/16 v22, 0x0

    cmp-long v22, v5, v22

    if-gtz v22, :cond_1

    .line 271
    sget-boolean v22, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v22, :cond_0

    const-string v22, "MusicContentProvider"

    const-string v23, "Unknown album art requested"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v5           #albumId:J
    .end local v21           #strAlbumId:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v8, :cond_a

    .line 346
    new-instance v22, Ljava/io/FileNotFoundException;

    invoke-direct/range {v22 .. v22}, Ljava/io/FileNotFoundException;-><init>()V

    throw v22

    .line 274
    .restart local v5       #albumId:J
    .restart local v21       #strAlbumId:Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    .line 275
    .local v12, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MusicContentProvider;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v11

    .line 276
    .local v11, hasStreaming:Z
    if-eqz v11, :cond_2

    .line 279
    move-object/from16 v0, v20

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->getArtwork(J)Ljava/lang/String;

    move-result-object v12

    .line 282
    :cond_2
    if-nez v12, :cond_5

    const/16 v22, 0x0

    move-object/from16 v10, v22

    .line 283
    .local v10, fileLocation:Ljava/io/File;
    :goto_1
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_4

    .line 285
    :cond_3
    move-object/from16 v0, v20

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->getArtLocationForAlbum(J)Ljava/lang/String;

    move-result-object v16

    .line 287
    .local v16, remoteLocation:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 288
    const-string v22, "mediastore:"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 291
    const-string v22, "mediastore:"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 293
    .local v13, mediaStoreAlbumId:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/google/android/music/store/MusicContent$AlbumArt;->getMediaStoreAlbumArt(J)Landroid/net/Uri;

    move-result-object v14

    .line 295
    .local v14, mediaStoreUri:Landroid/net/Uri;
    if-eqz v14, :cond_4

    .line 297
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "r"

    move-object/from16 v0, v22

    move-object v1, v14

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 318
    .end local v13           #mediaStoreAlbumId:Ljava/lang/String;
    .end local v14           #mediaStoreUri:Landroid/net/Uri;
    .end local v16           #remoteLocation:Ljava/lang/String;
    :cond_4
    :goto_2
    if-nez v8, :cond_0

    if-eqz v12, :cond_0

    .line 319
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v23, 0x1000

    invoke-static/range {v22 .. v23}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    goto/16 :goto_0

    .line 282
    .end local v10           #fileLocation:Ljava/io/File;
    :cond_5
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, v22

    goto :goto_1

    .line 303
    .restart local v10       #fileLocation:Ljava/io/File;
    .restart local v16       #remoteLocation:Ljava/lang/String;
    :cond_6
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MusicContentProvider;->mArtworkDownloader:Lcom/google/android/music/dl/artwork/IArtDownloadService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 306
    :try_start_1
    sget-boolean v22, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v22, :cond_7

    .line 307
    const-string v22, "MusicContentProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Attemping to download album art: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MusicContentProvider;->mArtworkDownloader:Lcom/google/android/music/dl/artwork/IArtDownloadService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v5

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/dl/artwork/IArtDownloadService;->getAlbumArt(J)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_2

    .line 311
    :catch_0
    move-exception v22

    move-object/from16 v7, v22

    .line 312
    .local v7, e:Landroid/os/RemoteException;
    const-string v22, "MusicContentProvider"

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 324
    .end local v5           #albumId:J
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v10           #fileLocation:Ljava/io/File;
    .end local v11           #hasStreaming:Z
    .end local v12           #location:Ljava/lang/String;
    .end local v16           #remoteLocation:Ljava/lang/String;
    .end local v21           #strAlbumId:Ljava/lang/String;
    :cond_8
    sget-object v22, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    const/16 v23, 0x12d

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, fileId:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 327
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v18, v22

    .line 328
    .local v18, sourceAccount:[I
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput-object v23, v19, v22

    .line 329
    .local v19, sourceId:[Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->getSourceAccountAndId(J[I[Ljava/lang/String;)V

    .line 330
    const/16 v22, 0x0

    aget v22, v18, v22

    if-nez v22, :cond_0

    const/16 v22, 0x0

    aget-object v22, v19, v22

    if-eqz v22, :cond_0

    .line 333
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v23, v19, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 335
    .local v15, path:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 336
    .restart local v14       #mediaStoreUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 337
    .local v17, resolver:Landroid/content/ContentResolver;
    const-string v22, "r"

    move-object/from16 v0, v17

    move-object v1, v14

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    goto/16 :goto_0

    .line 342
    .end local v9           #fileId:Ljava/lang/String;
    .end local v14           #mediaStoreUri:Landroid/net/Uri;
    .end local v15           #path:Ljava/lang/String;
    .end local v17           #resolver:Landroid/content/ContentResolver;
    .end local v18           #sourceAccount:[I
    .end local v19           #sourceId:[Ljava/lang/String;
    :cond_9
    const-string v22, "MusicContentProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unrecognized openFile request: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 348
    :cond_a
    return-object v8

    .line 299
    .restart local v5       #albumId:J
    .restart local v10       #fileLocation:Ljava/io/File;
    .restart local v11       #hasStreaming:Z
    .restart local v12       #location:Ljava/lang/String;
    .restart local v13       #mediaStoreAlbumId:Ljava/lang/String;
    .restart local v14       #mediaStoreUri:Landroid/net/Uri;
    .restart local v16       #remoteLocation:Ljava/lang/String;
    .restart local v21       #strAlbumId:Ljava/lang/String;
    :catch_1
    move-exception v22

    goto/16 :goto_2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 92
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v72

    .line 418
    .local v72, originalCallingIdentity:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v87

    .line 420
    .local v87, store:Lcom/google/android/music/store/Store;
    :try_start_0
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 421
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v48, 0x0

    .line 422
    .local v48, distinct:Z
    const/16 v55, 0x1

    .line 424
    .local v55, ignoreSelection:Z
    const-string v7, "limit"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 425
    .local v18, limit:Ljava/lang/String;
    const/16 v29, 0x0

    .line 426
    .local v29, groupBy:Ljava/lang/String;
    new-instance v45, Ljava/lang/StringBuffer;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuffer;-><init>()V

    .line 427
    .local v45, conditions:Ljava/lang/StringBuffer;
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v60

    .line 428
    .local v60, matchUri:I
    const/16 v76, 0x0

    .line 431
    .local v76, projection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const-string v7, "hasAny"

    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    move/from16 v50, v7

    .line 433
    .local v50, existsCheck:Z
    :goto_0
    if-eqz v50, :cond_0

    .line 434
    const-string v18, "1"

    .line 435
    const/16 p5, 0x0

    .line 438
    :cond_0
    sparse-switch v60, :sswitch_data_0

    .line 1274
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v18           #limit:Ljava/lang/String;
    .end local v29           #groupBy:Ljava/lang/String;
    .end local v45           #conditions:Ljava/lang/StringBuffer;
    .end local v48           #distinct:Z
    .end local v50           #existsCheck:Z
    .end local v55           #ignoreSelection:Z
    .end local v60           #matchUri:I
    .end local v76           #projection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 431
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v18       #limit:Ljava/lang/String;
    .restart local v29       #groupBy:Ljava/lang/String;
    .restart local v45       #conditions:Ljava/lang/StringBuffer;
    .restart local v48       #distinct:Z
    .restart local v55       #ignoreSelection:Z
    .restart local v60       #matchUri:I
    .restart local v76       #projection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v7, 0x0

    move/from16 v50, v7

    goto :goto_0

    .line 441
    .restart local v50       #existsCheck:Z
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v51

    .line 442
    .local v51, filter:I
    if-eqz v50, :cond_7

    .line 443
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 472
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    move/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V

    .line 473
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 1277
    .end local v51           #filter:I
    :cond_3
    :goto_2
    if-eqz v76, :cond_4

    .line 1278
    move-object v0, v5

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1281
    :cond_4
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 1282
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v91

    .line 1283
    .local v91, whereClause:Ljava/lang/String;
    sget-boolean v7, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v7, :cond_5

    const-string v7, "MusicContentProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Append Where: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_5
    move-object v0, v5

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1287
    .end local v91           #whereClause:Ljava/lang/String;
    :cond_6
    if-eqz v55, :cond_53

    .line 1288
    if-eqz p3, :cond_52

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_52

    .line 1289
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selection is not supported. \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is ignored"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 444
    .restart local v51       #filter:I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 445
    if-nez v51, :cond_8

    .line 446
    const-string v7, "MUSIC"

    const-string v8, "AlbumId"

    move-object/from16 v0, v87

    move-object v1, v7

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v51           #filter:I
    :goto_3
    return-object v7

    .line 448
    .restart local v51       #filter:I
    :cond_8
    :try_start_2
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 449
    const/16 p5, 0x0

    goto/16 :goto_1

    .line 451
    :cond_9
    const-string v7, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 453
    const-string v29, "MUSIC.AlbumId"

    .line 454
    const-string p5, "MUSIC.CanonicalAlbum"

    .line 457
    const-string v7, "order"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 458
    .local v86, sortParam:Ljava/lang/String;
    if-eqz v86, :cond_2

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 459
    const-string v7, "artist"

    move-object v0, v7

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 460
    const-string p5, "MUSIC.CanonicalAlbumArtist, MUSIC.CanonicalAlbum"

    goto/16 :goto_1

    .line 465
    :cond_a
    const-string v7, "album"

    move-object v0, v7

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 466
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid album sort parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 478
    .end local v51           #filter:I
    .end local v86           #sortParam:Ljava/lang/String;
    :sswitch_1
    if-nez v50, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 479
    :cond_b
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 485
    :goto_4
    const/16 p5, 0x0

    .line 486
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.AlbumId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 481
    :cond_c
    const-string v7, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 483
    const-string v29, "MUSIC.AlbumId"

    goto :goto_4

    .line 496
    :sswitch_2
    if-nez v50, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 497
    :cond_d
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 500
    :cond_e
    new-instance v78, Ljava/lang/StringBuffer;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuffer;-><init>()V

    .line 501
    .local v78, queryBuffer:Ljava/lang/StringBuffer;
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v8

    aget-object v51, v7, v8

    .line 502
    .local v51, filter:Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_13

    const/4 v7, 0x1

    move/from16 v54, v7

    .line 506
    .local v54, hasFilter:Z
    :goto_5
    const/4 v7, 0x0

    move-object/from16 v0, v78

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 507
    const-string v7, "SELECT "

    move-object/from16 v0, v78

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/utils/DbUtils;->formatProjection([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v78

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const-string v7, " FROM (SELECT AlbumId AS c_album_id, Album AS c_album, AlbumArtist AS c_artist, AlbumArtistId AS c_artistId, CanonicalAlbumArtist AS c_canonicalArtist, CanonicalAlbum AS c_canonicalAlbum, count(distinct(SongId)) AS c_songCount FROM MUSIC"

    move-object/from16 v0, v78

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    if-eqz v54, :cond_f

    .line 522
    const-string v7, " WHERE "

    move-object/from16 v0, v78

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    :cond_f
    const-string v7, " GROUP BY AlbumId, AlbumArtistId UNION SELECT AlbumId AS c_album_id, Album AS c_album, Artist AS c_artist, ArtistId AS c_artistId, CanonicalArtist AS c_canonicalArtist, CanonicalAlbum AS c_canonicalAlbum, count(distinct(SongId)) AS c_songCount FROM MUSIC WHERE (ArtistId<>AlbumArtistId) AND EXISTS(SELECT 1 FROM MUSIC AS m WHERE m.AlbumArtistId=MUSIC.ArtistId"

    move-object/from16 v0, v78

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    if-eqz v54, :cond_10

    .line 546
    const-string v7, " AND "

    move-object/from16 v0, v78

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :cond_10
    const-string v7, " LIMIT 1) "

    move-object/from16 v0, v78

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    if-eqz v54, :cond_11

    .line 553
    const-string v7, " AND "

    move-object/from16 v0, v78

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    :cond_11
    const-string v7, " GROUP BY AlbumId, ArtistId) LEFT JOIN KEEPON ON (c_album_id=AlbumId) ORDER BY c_canonicalArtist, c_canonicalAlbum"

    move-object/from16 v0, v78

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual/range {v87 .. v87}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 567
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 568
    .local v42, c:Landroid/database/Cursor;
    if-eqz v42, :cond_12

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, v42

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 570
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 574
    :cond_12
    :try_start_4
    move-object/from16 v0, v87

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v7, v42

    goto/16 :goto_3

    .line 502
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v42           #c:Landroid/database/Cursor;
    .end local v54           #hasFilter:Z
    :cond_13
    const/4 v7, 0x0

    move/from16 v54, v7

    goto/16 :goto_5

    .line 574
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v54       #hasFilter:Z
    :catchall_1
    move-exception v7

    :try_start_5
    move-object/from16 v0, v87

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v7

    .line 580
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v51           #filter:Ljava/lang/String;
    .end local v54           #hasFilter:Z
    .end local v78           #queryBuffer:Ljava/lang/StringBuffer;
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v51

    .line 581
    .local v51, filter:I
    if-eqz v50, :cond_14

    .line 582
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 596
    :goto_6
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    .line 597
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 583
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 584
    if-nez v51, :cond_15

    .line 585
    const-string v7, "MUSIC"

    const-string v8, "AlbumArtistId"

    move-object/from16 v0, v87

    move-object v1, v7

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 587
    :cond_15
    :try_start_6
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 588
    const/16 p5, 0x0

    goto :goto_6

    .line 590
    :cond_16
    const-string v7, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumArtistId = KEEPON.ArtistId) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 592
    const-string v29, "MUSIC.AlbumArtistId"

    .line 593
    const-string p5, "MUSIC.CanonicalAlbumArtist"

    goto :goto_6

    .line 603
    .end local v51           #filter:I
    :sswitch_4
    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    .line 612
    .local v9, artistLookupId:[Ljava/lang/String;
    const/16 v42, 0x0

    .line 614
    .restart local v42       #c:Landroid/database/Cursor;
    invoke-virtual/range {v87 .. v87}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    .line 616
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v50, :cond_17

    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 617
    :cond_17
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 622
    :goto_7
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 623
    const-string v8, "MUSIC.AlbumArtistId=?"

    const-string v10, "MUSIC.AlbumArtistId"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 627
    if-eqz v42, :cond_19

    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v7

    if-lez v7, :cond_19

    .line 646
    :try_start_8
    move-object/from16 v0, v87

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v7, v42

    goto/16 :goto_3

    .line 619
    :cond_18
    :try_start_9
    const-string v7, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumArtistId = KEEPON.ArtistId) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    .line 646
    :catchall_2
    move-exception v7

    :try_start_a
    move-object/from16 v0, v87

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 630
    :cond_19
    :try_start_b
    invoke-static/range {v42 .. v42}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 631
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 632
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 633
    const-string v8, "MUSIC.ArtistId=?"

    const-string v10, "MUSIC.ArtistId"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 639
    if-eqz v42, :cond_1a

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, v42

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 641
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->getCount()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 646
    :cond_1a
    :try_start_c
    move-object/from16 v0, v87

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v7, v42

    goto/16 :goto_3

    .line 652
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #artistLookupId:[Ljava/lang/String;
    .end local v42           #c:Landroid/database/Cursor;
    :sswitch_5
    if-nez v50, :cond_1b

    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 653
    :cond_1b
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 654
    const/16 p5, 0x0

    .line 662
    :goto_8
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 665
    .local v37, artistId:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.AlbumArtistId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MUSIC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 656
    .end local v37           #artistId:Ljava/lang/String;
    :cond_1c
    const-string v7, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 659
    const-string v29, "MUSIC.AlbumId"

    .line 660
    const-string p5, "MUSIC.CanonicalAlbum"

    goto :goto_8

    .line 674
    :sswitch_6
    if-nez v50, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 675
    :cond_1d
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 676
    const/16 p5, 0x0

    .line 682
    :goto_9
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 685
    const-string v7, "MUSIC.GenreId > 0"

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 678
    :cond_1e
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 679
    const-string v29, "MUSIC.GenreId"

    .line 680
    const-string p5, "MUSIC.CanonicalGenre"

    goto :goto_9

    .line 692
    :sswitch_7
    if-nez v50, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 693
    const-string v29, "MUSIC.GenreId"

    .line 695
    :cond_1f
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 696
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.GenreId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    const/16 p5, 0x0

    .line 699
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 702
    goto/16 :goto_2

    .line 705
    :sswitch_8
    if-nez v50, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 706
    :cond_20
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 708
    :cond_21
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 709
    const-string p5, "MUSIC.CanonicalGenre, MUSIC.CanonicalAlbum"

    .line 711
    const-string v29, "MUSIC.AlbumId, MUSIC.GenreId"

    .line 715
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 716
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 718
    const-string v7, "MUSIC.GenreId > 0"

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 723
    :sswitch_9
    if-nez v50, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 724
    :cond_22
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 725
    const/16 p5, 0x0

    .line 740
    :cond_23
    :goto_a
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 742
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GenreId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 746
    const-string v7, "albumIdFilter"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 747
    .local v34, albumIdFilter:Ljava/lang/String;
    if-eqz v34, :cond_3

    .line 748
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.AlbumId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    const-string p5, "DiscNumber, TrackNumber, CanonicalName"

    goto/16 :goto_2

    .line 727
    .end local v34           #albumIdFilter:Ljava/lang/String;
    :cond_24
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 728
    const-string v29, "MUSIC.SongId"

    .line 730
    if-eqz p5, :cond_25

    .line 731
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "sortOrder not supported"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 733
    :cond_25
    const-string v7, "order"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 735
    if-nez p5, :cond_23

    .line 737
    const-string p5, "MUSIC.CanonicalName"

    goto :goto_a

    .line 756
    :sswitch_a
    if-nez v50, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 757
    :cond_26
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 758
    const/16 p5, 0x0

    .line 766
    :goto_b
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 768
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.GenreId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 760
    :cond_27
    const-string v7, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 763
    const-string v29, "MUSIC.AlbumId"

    .line 764
    const-string p5, "MUSIC.CanonicalAlbum"

    goto :goto_b

    .line 775
    :sswitch_b
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v51

    .line 777
    .restart local v51       #filter:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 778
    if-nez v51, :cond_29

    if-eqz p3, :cond_28

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_29

    .line 781
    :cond_28
    const-string v7, "MUSIC"

    const-string v8, "SongId"

    move-object/from16 v0, v87

    move-object v1, v7

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v7

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 783
    :cond_29
    const/16 p5, 0x0

    .line 837
    :cond_2a
    :goto_c
    const/16 v55, 0x0

    .line 838
    :try_start_e
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    move/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V

    goto/16 :goto_2

    .line 784
    :cond_2b
    if-nez v50, :cond_2a

    .line 786
    if-eqz p5, :cond_2c

    .line 787
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "sortOrder not supported"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 789
    :cond_2c
    const-string v7, "order"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 791
    if-nez p5, :cond_2d

    .line 793
    const-string p5, "CanonicalName"

    .line 831
    :cond_2d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SongId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 832
    move-object/from16 v29, p5

    .line 835
    const/16 p5, 0x0

    goto :goto_c

    .line 843
    .end local v51           #filter:I
    :sswitch_c
    if-nez v50, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 844
    :cond_2e
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 845
    const/16 p5, 0x0

    .line 861
    :cond_2f
    :goto_d
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 863
    const/16 v71, 0xe

    .line 864
    .local v71, numberOfDays:I
    const-string v7, "days"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 865
    .local v47, daysParam:Ljava/lang/String;
    if-eqz v47, :cond_33

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_33

    .line 866
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v71

    .line 867
    const/4 v7, 0x1

    move/from16 v0, v71

    move v1, v7

    if-lt v0, v1, :cond_30

    const v7, 0x591c8

    move/from16 v0, v71

    move v1, v7

    if-le v0, v1, :cond_33

    .line 868
    :cond_30
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid number of days requested: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 847
    .end local v47           #daysParam:Ljava/lang/String;
    .end local v71           #numberOfDays:I
    :cond_31
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 848
    const-string v29, "MUSIC.SongId"

    .line 850
    if-eqz p5, :cond_32

    .line 851
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "sortOrder not supported"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 853
    :cond_32
    const-string v7, "order"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 855
    if-nez p5, :cond_2f

    .line 857
    const-string p5, "MUSIC.CanonicalName"

    goto :goto_d

    .line 874
    .restart local v47       #daysParam:Ljava/lang/String;
    .restart local v71       #numberOfDays:I
    :cond_33
    const v7, 0x15180

    mul-int v7, v7, v71

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v82, v0

    .line 875
    .local v82, secondsBack:J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v69, v7, v9

    .line 876
    .local v69, nowInSeconds:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileDate>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v69, v82

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 882
    .end local v47           #daysParam:Ljava/lang/String;
    .end local v69           #nowInSeconds:J
    .end local v71           #numberOfDays:I
    .end local v82           #secondsBack:J
    :sswitch_d
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 883
    if-nez v50, :cond_34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 884
    :cond_34
    const/16 p5, 0x0

    .line 894
    :cond_35
    :goto_e
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 896
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.AlbumId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 898
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 887
    :cond_36
    const-string v29, "MUSIC.SongId"

    .line 889
    if-nez p5, :cond_35

    .line 890
    const-string p5, "DiscNumber, TrackNumber, CanonicalName"

    goto :goto_e

    .line 904
    :sswitch_e
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 905
    if-nez v50, :cond_37

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 906
    :cond_37
    const/16 p5, 0x0

    .line 921
    :cond_38
    :goto_f
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 923
    .local v41, audioArtistId:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AlbumArtistId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 909
    .end local v41           #audioArtistId:Ljava/lang/String;
    :cond_39
    const-string v29, "MUSIC.SongId"

    .line 910
    if-eqz p5, :cond_3a

    .line 911
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "sortOrder not supported"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 913
    :cond_3a
    const-string v7, "order"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 915
    if-nez p5, :cond_38

    .line 917
    const-string p5, "MUSIC.CanonicalName"

    goto :goto_f

    .line 932
    :sswitch_f
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 933
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 934
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v88

    .line 935
    .local v88, strMusicId:Ljava/lang/String;
    invoke-static/range {v88 .. v88}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v65

    .line 937
    .local v65, musicId:J
    const-string v7, "vers"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    .line 938
    .local v90, version:Ljava/lang/String;
    if-nez v90, :cond_3b

    .line 939
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.Id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v65

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 942
    :cond_3b
    const-string v18, "1"

    .line 943
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SongId=(SELECT SongId FROM MUSIC as m WHERE m.Id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v65

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIMIT 1)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 948
    const-string v7, "media"

    move-object v0, v7

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 949
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SourceAccount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 953
    :cond_3c
    const-string v7, "remote"

    move-object v0, v7

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 954
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SourceAccount<>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 958
    :cond_3d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid value for vers parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 971
    .end local v65           #musicId:J
    .end local v88           #strMusicId:Ljava/lang/String;
    .end local v90           #version:Ljava/lang/String;
    :sswitch_10
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    .line 973
    if-nez v50, :cond_3e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 974
    :cond_3e
    const-string v7, "LISTS"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 975
    const/16 p5, 0x0

    .line 982
    :goto_10
    const-string v7, "name"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 983
    .local v67, name:Ljava/lang/String;
    if-eqz v67, :cond_3

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 984
    const-string p3, "LISTS.Name=?"

    .line 985
    const/4 v7, 0x1

    move v0, v7

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v85, v0

    const/4 v7, 0x0

    aput-object v67, v85, v7

    .line 986
    .end local p4
    .local v85, selectionArgs:[Ljava/lang/String;
    const/16 v55, 0x0

    move-object/from16 p4, v85

    .end local v85           #selectionArgs:[Ljava/lang/String;
    .restart local p4
    goto/16 :goto_2

    .line 977
    .end local v67           #name:Ljava/lang/String;
    :cond_3f
    const-string v7, "LISTS LEFT  JOIN KEEPON ON (KEEPON.ListId = LISTS.Id) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 979
    const-string p5, "LISTS.Name COLLATE UNICODE ASC"

    goto :goto_10

    .line 992
    :sswitch_11
    const-string v7, "LISTS LEFT  JOIN KEEPON ON (KEEPON.ListId = LISTS.Id) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 993
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LISTS.Id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 995
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    .line 997
    const/16 p5, 0x0

    .line 998
    goto/16 :goto_2

    .line 1001
    :sswitch_12
    const-string v7, "LISTITEMS JOIN LISTS ON (LISTS.Id = LISTITEMS.ListId)  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1003
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    .line 1004
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 1005
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LISTS.Id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1007
    if-nez v50, :cond_40

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 1008
    :cond_40
    const/16 p5, 0x0

    goto/16 :goto_2

    .line 1010
    :cond_41
    const-string p5, "ServerOrder, ClientPosition"

    .line 1012
    goto/16 :goto_2

    .line 1015
    :sswitch_13
    const-string v7, "LISTITEMS JOIN LISTS ON (LISTS.Id = LISTITEMS.ListId)  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1017
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    .line 1019
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/String;

    .line 1020
    .local v57, listId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/String;

    .line 1021
    .local v63, memberId:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LISTS.Id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "LISTITEMS.Id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1028
    .end local v57           #listId:Ljava/lang/String;
    .end local v63           #memberId:Ljava/lang/String;
    :sswitch_14
    const-string v7, "RECENT LEFT JOIN MUSIC ON (RecentAlbumId=MUSIC.AlbumId)  LEFT JOIN LISTS ON (RecentListId=LISTS.Id) "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1029
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    .line 1030
    if-nez v50, :cond_42

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 1031
    const-string v29, "RecentId"

    .line 1032
    const-string p5, "ItemDate DESC"

    .line 1033
    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 1036
    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v52

    .line 1037
    .local v52, filterIndex:I
    const-string v35, ""

    .line 1038
    .local v35, andFilter:Ljava/lang/String;
    if-eqz v52, :cond_43

    .line 1039
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v8, v8, v52

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1042
    :cond_43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LISTS.Id NOT NULL OR (MUSIC.AlbumId NOT NULL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    .line 1049
    .local v79, recentItemsCondition:Ljava/lang/String;
    move-object/from16 v0, v45

    move-object/from16 v1, v79

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1053
    .end local v35           #andFilter:Ljava/lang/String;
    .end local v52           #filterIndex:I
    .end local v79           #recentItemsCondition:Ljava/lang/String;
    :sswitch_15
    if-eqz p3, :cond_44

    .line 1054
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Does not support selection"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1056
    :cond_44
    if-nez p2, :cond_45

    .line 1057
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Does not support null projection in"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1061
    :cond_45
    new-instance v46, Lcom/google/android/music/store/CurrentDownloadsCursor;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MusicContentProvider;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    move-object v8, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    move-object v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/store/CurrentDownloadsCursor;-><init>([Ljava/lang/String;Landroid/content/Context;Lcom/google/android/music/dl/IDownloadManager;)V

    .line 1064
    .local v46, currentDownloads:Lcom/google/android/music/store/CurrentDownloadsCursor;
    const/4 v7, 0x0

    invoke-virtual/range {v46 .. v46}, Lcom/google/android/music/store/CurrentDownloadsCursor;->getMusicIds()Ljava/util/Collection;

    move-result-object v8

    move-object/from16 v0, v87

    move-object v1, v7

    move-object/from16 v2, p2

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v53

    .line 1067
    .local v53, futureDownloads:Landroid/database/Cursor;
    new-instance v7, Landroid/database/MergeCursor;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/database/Cursor;

    const/4 v9, 0x0

    aput-object v46, v8, v9

    const/4 v9, 0x1

    aput-object v53, v8, v9

    invoke-direct {v7, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 1070
    .end local v46           #currentDownloads:Lcom/google/android/music/store/CurrentDownloadsCursor;
    .end local v53           #futureDownloads:Landroid/database/Cursor;
    :sswitch_16
    if-nez p2, :cond_46

    .line 1071
    const/4 v7, 0x5

    :try_start_f
    move v0, v7

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v77, v0

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v77, v7

    const/4 v7, 0x1

    const-string v8, "suggest_text_1"

    aput-object v8, v77, v7

    const/4 v7, 0x2

    const-string v8, "suggest_text_2"

    aput-object v8, v77, v7

    const/4 v7, 0x3

    const-string v8, "suggest_intent_data"

    aput-object v8, v77, v7

    const/4 v7, 0x4

    const-string v8, "suggest_intent_data_id"

    aput-object v8, v77, v7

    .end local p2
    .local v77, projectionIn:[Ljava/lang/String;
    move-object/from16 p2, v77

    .line 1081
    .end local v77           #projectionIn:[Ljava/lang/String;
    .restart local p2
    :cond_46
    :sswitch_17
    if-nez p2, :cond_47

    .line 1082
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "null projection not allowed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1085
    :cond_47
    const/16 v64, 0x2

    .line 1088
    .local v64, minSearchLength:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v81

    .line 1089
    .local v81, searchValue:Ljava/lang/String;
    if-eqz v81, :cond_48

    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_49

    .line 1090
    :cond_48
    const/4 v7, 0x0

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 1092
    :cond_49
    const/16 v43, 0x1

    .line 1093
    .local v43, canonicalSearch:Z
    :try_start_10
    new-instance v68, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct/range {v68 .. v68}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    .line 1094
    .local v68, normalizer:Lcom/google/android/music/store/TagNormalizer;
    move-object/from16 v0, v68

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1095
    .local v44, canonicalSearchValue:Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_4a

    .line 1098
    const/16 v43, 0x0

    .line 1099
    move-object/from16 v44, v81

    .line 1101
    :cond_4a
    const/16 v7, 0x21

    move-object/from16 v0, v81

    move v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/utils/DbUtils;->escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v81

    .line 1102
    const/16 v7, 0x21

    move-object/from16 v0, v44

    move v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/utils/DbUtils;->escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v44

    .line 1104
    const-string v56, " LIKE ? ESCAPE \'!\' "

    .line 1106
    .local v56, likeOperator:Ljava/lang/String;
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v23, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "% "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v23, v7

    .line 1110
    .local v23, queryArgs:[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v14, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "% "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v7

    .line 1118
    .local v14, canonicalQueryArgs:[Ljava/lang/String;
    invoke-virtual/range {v87 .. v87}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v6

    .line 1120
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v52

    .line 1121
    .restart local v52       #filterIndex:I
    const-string v35, ""

    .line 1122
    .restart local v35       #andFilter:Ljava/lang/String;
    if-eqz v52, :cond_4b

    .line 1123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v8, v8, v52

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1125
    :cond_4b
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1126
    if-eqz v43, :cond_4e

    const-string v7, "CanonicalAlbumArtist"

    move-object/from16 v80, v7

    .line 1129
    .local v80, searchBy:Ljava/lang/String;
    :goto_11
    if-eqz v43, :cond_4f

    const-string v7, "CanonicalArtist"

    move-object/from16 v40, v7

    .line 1131
    .local v40, artistSearchBy:Ljava/lang/String;
    :goto_12
    array-length v7, v14

    mul-int/lit8 v7, v7, 0x2

    move v0, v7

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    .line 1132
    .local v39, artistQueryArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v14

    move-object v0, v14

    move v1, v7

    move-object/from16 v2, v39

    move v3, v8

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1134
    const/4 v7, 0x0

    array-length v8, v14

    array-length v9, v14

    move-object v0, v14

    move v1, v7

    move-object/from16 v2, v39

    move v3, v8

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1137
    if-eqz v18, :cond_4c

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4d

    .line 1138
    :cond_4c
    const-string v18, "1000"

    .line 1140
    :cond_4d
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    aget-object v7, v7, v52

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/utils/DbUtils;->formatProjection([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v38

    .line 1142
    .local v38, artistProj:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SELECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AlbumArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_artist_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AlbumArtist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CanonicalAlbumArtist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_canonical_artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM_ARTIST:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_intent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MUSIC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WHERE ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " GROUP BY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AlbumArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " UNION "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SELECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_artist_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CanonicalArtist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_canonical_artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ARTIST:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_intent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MUSIC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AlbumArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND NOT EXISTS( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SELECT 1 FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MUSIC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as m "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "WHERE m."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AlbumArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MUSIC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " GROUP BY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CanonicalArtist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") ORDER BY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_canonical_artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIMIT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 1188
    .local v36, artistCursor:Landroid/database/Cursor;
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1189
    if-eqz v43, :cond_50

    .line 1190
    const-string v80, "CanonicalAlbum"

    .line 1199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IN (SELECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MUSIC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " GROUP BY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "AlbumId"

    const/16 v16, 0x0

    const-string v17, "CanonicalAlbum"

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v12, p2

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 1221
    .local v33, albumCursor:Landroid/database/Cursor;
    :goto_13
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    .line 1224
    const-string v7, "LISTS"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1225
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    aget-object v7, v7, v52

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1226
    const-string v80, "Name"

    .line 1227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "Name"

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, p2

    move-object/from16 v27, v18

    invoke-virtual/range {v19 .. v27}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v74

    .line 1230
    .local v74, playlistCursor:Landroid/database/Cursor;
    invoke-interface/range {v74 .. v74}, Landroid/database/Cursor;->getCount()I

    .line 1232
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1233
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1234
    if-eqz v43, :cond_51

    const-string v7, "CanonicalName"

    move-object/from16 v80, v7

    .line 1235
    :goto_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "CanonicalName,SongId"

    const/16 v16, 0x0

    const-string v17, "CanonicalName"

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v12, p2

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v89

    .line 1249
    .local v89, trackCursor:Landroid/database/Cursor;
    invoke-interface/range {v89 .. v89}, Landroid/database/Cursor;->getCount()I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1251
    :try_start_12
    move-object/from16 v0, v87

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1253
    new-instance v7, Landroid/database/MergeCursor;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/database/Cursor;

    const/4 v9, 0x0

    aput-object v36, v8, v9

    const/4 v9, 0x1

    aput-object v33, v8, v9

    const/4 v9, 0x2

    aput-object v74, v8, v9

    const/4 v9, 0x3

    aput-object v89, v8, v9

    invoke-direct {v7, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 1126
    .end local v33           #albumCursor:Landroid/database/Cursor;
    .end local v36           #artistCursor:Landroid/database/Cursor;
    .end local v38           #artistProj:Ljava/lang/String;
    .end local v39           #artistQueryArgs:[Ljava/lang/String;
    .end local v40           #artistSearchBy:Ljava/lang/String;
    .end local v74           #playlistCursor:Landroid/database/Cursor;
    .end local v80           #searchBy:Ljava/lang/String;
    .end local v89           #trackCursor:Landroid/database/Cursor;
    :cond_4e
    :try_start_13
    const-string v7, "AlbumArtist"

    move-object/from16 v80, v7

    goto/16 :goto_11

    .line 1129
    .restart local v80       #searchBy:Ljava/lang/String;
    :cond_4f
    const-string v7, "Artist"

    move-object/from16 v40, v7

    goto/16 :goto_12

    .line 1211
    .restart local v36       #artistCursor:Landroid/database/Cursor;
    .restart local v38       #artistProj:Ljava/lang/String;
    .restart local v39       #artistQueryArgs:[Ljava/lang/String;
    .restart local v40       #artistSearchBy:Ljava/lang/String;
    :cond_50
    const-string v80, "Album"

    .line 1212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "AlbumId"

    const/16 v16, 0x0

    const-string v17, "CanonicalAlbum"

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v12, p2

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .restart local v33       #albumCursor:Landroid/database/Cursor;
    goto/16 :goto_13

    .line 1234
    .restart local v74       #playlistCursor:Landroid/database/Cursor;
    :cond_51
    const-string v7, "Title"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-object/from16 v80, v7

    goto/16 :goto_14

    .line 1251
    .end local v33           #albumCursor:Landroid/database/Cursor;
    .end local v35           #andFilter:Ljava/lang/String;
    .end local v36           #artistCursor:Landroid/database/Cursor;
    .end local v38           #artistProj:Ljava/lang/String;
    .end local v39           #artistQueryArgs:[Ljava/lang/String;
    .end local v40           #artistSearchBy:Ljava/lang/String;
    .end local v52           #filterIndex:I
    .end local v74           #playlistCursor:Landroid/database/Cursor;
    .end local v80           #searchBy:Ljava/lang/String;
    :catchall_3
    move-exception v7

    :try_start_14
    move-object/from16 v0, v87

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1258
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #canonicalQueryArgs:[Ljava/lang/String;
    .end local v23           #queryArgs:[Ljava/lang/String;
    .end local v43           #canonicalSearch:Z
    .end local v44           #canonicalSearchValue:Ljava/lang/String;
    .end local v56           #likeOperator:Ljava/lang/String;
    .end local v64           #minSearchLength:I
    .end local v68           #normalizer:Lcom/google/android/music/store/TagNormalizer;
    .end local v81           #searchValue:Ljava/lang/String;
    :sswitch_18
    const/4 v7, 0x0

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 1260
    :sswitch_19
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-wide v61

    .line 1262
    .local v61, mediaStoreId:J
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v7

    const/4 v8, 0x1

    move-object v0, v7

    move-wide/from16 v1, v61

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/store/Store;->getMusicIdForSystemMediaStoreId(JZ)J

    move-result-wide v58

    .line 1264
    .local v58, mappedMusicId:J
    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1265
    sget-object v76, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 1266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.Id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_2

    .line 1267
    .end local v58           #mappedMusicId:J
    :catch_0
    move-exception v7

    move-object/from16 v49, v7

    .line 1269
    .local v49, e:Ljava/io/FileNotFoundException;
    :try_start_17
    new-instance v7, Landroid/database/MatrixCursor;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p2

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 1292
    .end local v49           #e:Ljava/io/FileNotFoundException;
    .end local v61           #mediaStoreId:J
    :cond_52
    const/16 p3, 0x0

    .line 1293
    const/16 p4, 0x0

    .line 1295
    :cond_53
    :try_start_18
    sget-boolean v7, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v7, :cond_54

    .line 1297
    invoke-static/range {p2 .. p2}, Lcom/google/android/music/store/MusicContentProvider;->arrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 1298
    .local v75, projText:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/google/android/music/store/MusicContentProvider;->arrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 1300
    .local v84, selargText:Ljava/lang/String;
    const-string v7, "MusicContentProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Running Query: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " projection  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " selection   : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " select args : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sort order  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    .end local v75           #projText:Ljava/lang/String;
    .end local v84           #selargText:Ljava/lang/String;
    :cond_54
    move-object v0, v5

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1306
    invoke-virtual/range {v87 .. v87}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v6

    .line 1308
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v30, 0x0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, p2

    move-object/from16 v27, p3

    move-object/from16 v28, p4

    move-object/from16 v31, p5

    move-object/from16 v32, v18

    :try_start_19
    invoke-virtual/range {v24 .. v32}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 1311
    .restart local v42       #c:Landroid/database/Cursor;
    if-eqz v42, :cond_55

    .line 1312
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, v42

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1313
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->getCount()I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 1317
    :cond_55
    :try_start_1a
    move-object/from16 v0, v87

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1321
    invoke-static/range {v72 .. v73}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v7, v42

    goto/16 :goto_3

    .line 1317
    .end local v42           #c:Landroid/database/Cursor;
    :catchall_4
    move-exception v7

    :try_start_1b
    move-object/from16 v0, v87

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 438
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_b
        0x12d -> :sswitch_f
        0x12e -> :sswitch_d
        0x12f -> :sswitch_e
        0x130 -> :sswitch_c
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_4
        0x1f6 -> :sswitch_5
        0x258 -> :sswitch_10
        0x259 -> :sswitch_11
        0x25a -> :sswitch_12
        0x25b -> :sswitch_13
        0x2bc -> :sswitch_6
        0x2bd -> :sswitch_9
        0x2be -> :sswitch_a
        0x2bf -> :sswitch_8
        0x2c0 -> :sswitch_7
        0x384 -> :sswitch_14
        0x3e8 -> :sswitch_15
        0x44c -> :sswitch_17
        0x44d -> :sswitch_18
        0x44e -> :sswitch_16
        0x44f -> :sswitch_18
        0x4b0 -> :sswitch_19
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 27
    .parameter "uri"
    .parameter "values"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 1536
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v5

    .line 1537
    .local v5, store:Lcom/google/android/music/store/Store;
    sget-object v10, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 1538
    .local v21, matchUri:I
    const/16 v23, 0x0

    .line 1539
    .local v23, result:I
    packed-switch v21, :pswitch_data_0

    .line 1590
    :pswitch_0
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update not supported on URI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1541
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1542
    .local v6, playlistId:J
    const-string v10, "action"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1544
    .local v26, specialAction:Ljava/lang/String;
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 1546
    :cond_0
    const-string v10, "name"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1547
    .local v22, newName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v0, v5

    move-object v1, v10

    move-wide v2, v6

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->renamePlaylist(Landroid/content/Context;JLjava/lang/String;)I

    move-result v23

    .line 1595
    .end local v6           #playlistId:J
    .end local v22           #newName:Ljava/lang/String;
    .end local v26           #specialAction:Ljava/lang/String;
    .end local p2
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v0, v10

    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1596
    return v23

    .line 1549
    .restart local v6       #playlistId:J
    .restart local v26       #specialAction:Ljava/lang/String;
    .restart local p2
    :cond_2
    const-string v10, "album"

    move-object v0, v10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1552
    const-string v10, "album_id"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1553
    .local v17, albumId:J
    move-object v0, v5

    move-wide v1, v6

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendAlbumToPlaylist(JJ)I

    move-result v23

    .line 1555
    goto :goto_0

    .end local v17           #albumId:J
    :cond_3
    const-string v10, "artist"

    move-object v0, v10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1558
    const-string v10, "AlbumArtistId"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 1560
    .local v19, artistId:J
    move-object v0, v5

    move-wide v1, v6

    move-wide/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendArtistToPlaylist(JJ)I

    move-result v23

    .line 1562
    goto :goto_0

    .end local v19           #artistId:J
    :cond_4
    const-string v10, "genre"

    move-object v0, v10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1565
    const-string v10, "GenreId"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1566
    .local v8, genreId:J
    const-string v10, "album_id"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1567
    const-string v10, "album_id"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/music/store/Store;->appendGenreToPlaylist(JJJ)I

    move-result v23

    goto/16 :goto_0

    .line 1570
    :cond_5
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/music/store/Store;->appendGenreToPlaylist(JJ)I

    move-result v23

    goto/16 :goto_0

    .line 1573
    .end local v8           #genreId:J
    :cond_6
    const-string v10, "playlist"

    move-object v0, v10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1576
    const-string v10, "playlist_id"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1577
    .local v24, sourcePlaylistId:J
    move-object v0, v5

    move-wide v1, v6

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendPlaylistToPlaylist(JJ)I

    move-result v23

    .line 1578
    goto/16 :goto_0

    .line 1582
    .end local v6           #playlistId:J
    .end local v24           #sourcePlaylistId:J
    .end local v26           #specialAction:Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1583
    .local v11, listId:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v13, 0x3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1584
    .local v13, itemToMove:J
    const-string v10, "moveBefore"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .local v15, moveBefore:J
    move-object v10, v5

    .line 1586
    invoke-virtual/range {v10 .. v16}, Lcom/google/android/music/store/Store;->movePlaylistItem(JJJ)V

    goto/16 :goto_0

    .line 1539
    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
