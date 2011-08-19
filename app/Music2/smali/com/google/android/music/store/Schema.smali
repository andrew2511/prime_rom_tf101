.class public Lcom/google/android/music/store/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/Schema$DownloadQueue;,
        Lcom/google/android/music/store/Schema$Recent;,
        Lcom/google/android/music/store/Schema$ArtWork;,
        Lcom/google/android/music/store/Schema$ShouldKeepOn;,
        Lcom/google/android/music/store/Schema$KeepOn;,
        Lcom/google/android/music/store/Schema$ListItemTombstones;,
        Lcom/google/android/music/store/Schema$ListItems;,
        Lcom/google/android/music/store/Schema$ListTombstones;,
        Lcom/google/android/music/store/Schema$Lists;,
        Lcom/google/android/music/store/Schema$SyncColumns;,
        Lcom/google/android/music/store/Schema$Music;,
        Lcom/google/android/music/store/Schema$Table;
    }
.end annotation


# static fields
.field public static final ALL_TABLES:[Ljava/lang/String; = null

.field public static final ARTWORK_ALBUM_ID:Ljava/lang/String; = "ARTWORK.AlbumId"

.field static final DATABASE_NAME:Ljava/lang/String; = "music.db"

.field public static final KEEPON_ALBUM_ID:Ljava/lang/String; = "KEEPON.AlbumId"

.field public static final KEEPON_ID:Ljava/lang/String; = "KEEPON.KeepOnId"

.field public static final KEEPON_LISTID:Ljava/lang/String; = "KEEPON.ListId"

.field public static final KEEPON_LISTITEM_JOIN:Ljava/lang/String; = " JOIN LISTITEMS ON (KEEPON.ListId = LISTITEMS.ListId) "

.field public static final KEEPON_MUSIC_VIA_ALBUMS_JOIN:Ljava/lang/String; = " JOIN MUSIC ON (KEEPON.AlbumId = MUSIC.AlbumId) "

.field public static final LISTITEMS_ID:Ljava/lang/String; = "LISTITEMS.Id"

.field public static final LISTITEMS_LISTID:Ljava/lang/String; = "LISTITEMS.ListId"

.field public static final LISTITEMS_LISTS_JOIN:Ljava/lang/String; = " JOIN LISTS ON (LISTS.Id = LISTITEMS.ListId) "

.field public static final LISTITEMS_LISTS_MUSIC_JOIN:Ljava/lang/String; = " JOIN LISTS ON (LISTS.Id = LISTITEMS.ListId)  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

.field public static final LISTITEMS_MUSIC_JOIN:Ljava/lang/String; = " JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

.field public static final LISTITEMS_SOURCE_ACCOUNT:Ljava/lang/String; = "LISTITEMS.MusicSourceAccount"

.field public static final LISTS_ID:Ljava/lang/String; = "LISTS.Id"

.field public static final LISTS_KEEPON_JOIN:Ljava/lang/String; = " JOIN KEEPON ON (KEEPON.ListId = LISTS.Id) "

.field public static final LISTS_LISTITEMS_JOIN:Ljava/lang/String; = " JOIN LISTITEMS ON (LISTS.Id = ListId) "

.field public static final LISTS_LISTITEMS_MUSIC_JOIN:Ljava/lang/String; = " JOIN LISTITEMS ON (LISTS.Id = ListId)  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

.field public static final LISTS_NAME:Ljava/lang/String; = "LISTS.Name"

.field public static final MUSIC_ALBUM_ID:Ljava/lang/String; = "MUSIC.AlbumId"

.field public static final MUSIC_ID:Ljava/lang/String; = "MUSIC.Id"

.field public static final MUSIC_KEEPON_VIA_ALBUMS_JOIN:Ljava/lang/String; = " JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

.field public static final MUSIC_KEEPON_VIA_ALBUM_ARTISTS_JOIN:Ljava/lang/String; = " JOIN KEEPON ON (MUSIC.AlbumArtistId = KEEPON.ArtistId) "

.field public static final MUSIC_LISTITEMS_JOIN:Ljava/lang/String; = " JOIN LISTITEMS ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

.field public static final MUSIC_SOURCE_ACCOUNT:Ljava/lang/String; = "MUSIC.SourceAccount"

.field public static final PLAYLIST_ITEMS_SORT_ORDER:Ljava/lang/String; = "ServerOrder, ClientPosition"

.field public static final RECENT_ALBUMS_LISTS_JOIN:Ljava/lang/String; = " LEFT JOIN MUSIC ON (RecentAlbumId=MUSIC.AlbumId)  LEFT JOIN LISTS ON (RecentListId=LISTS.Id) "

.field public static final REVERSE_PLAYLIST_ITEMS_SORT_ORDER:Ljava/lang/String; = "ServerOrder DESC, ClientPosition DESC"

.field public static final SHOULD_KEEPON_KEEPON_ID:Ljava/lang/String; = "SHOULDKEEPON.KeepOnId"

.field public static final SHOULD_KEEPON_MUSIC_ID:Ljava/lang/String; = "SHOULDKEEPON.MusicId"

.field public static final TRACKS_BY_ALBUM_SORT_ORDER:Ljava/lang/String; = "CanonicalAlbum, DiscNumber, TrackNumber, CanonicalName"

.field public static final TRACKS_BY_ARTIST_SORT_ORDER:Ljava/lang/String; = "CanonicalArtist, CanonicalName"

.field public static final TRACKS_IN_ALBUM_SORT_ORDER:Ljava/lang/String; = "DiscNumber, TrackNumber, CanonicalName"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LISTITEMS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LISTS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MUSIC"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KEEPON"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SHOULDKEEPON"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ARTWORK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RECENT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_sync_state"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LIST_TOMBSTONES"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LISTITEM_TOMBSTONES"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/Schema;->ALL_TABLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
