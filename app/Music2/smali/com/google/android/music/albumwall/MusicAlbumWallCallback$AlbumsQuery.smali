.class final Lcom/google/android/music/albumwall/MusicAlbumWallCallback$AlbumsQuery;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumsQuery"
.end annotation


# static fields
.field public static final ALBUM:I = 0x2

.field public static final ALBUM_ID:I = 0x1

.field public static final ALBUM_SORT:I = 0x5

.field public static final ARTIST:I = 0x4

.field public static final ARTIST_ID:I = 0x3

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final HAS_LOCAL:I = 0x7

.field public static final HAS_REMOTE:I = 0x6

.field public static final KEEP_ON_ID:I = 0x8

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CanonicalAlbum"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$AlbumsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
