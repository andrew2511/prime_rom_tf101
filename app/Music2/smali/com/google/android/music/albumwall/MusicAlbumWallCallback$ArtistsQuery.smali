.class final Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ArtistsQuery;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArtistsQuery"
.end annotation


# static fields
.field public static final ARTIST:I = 0x1

.field public static final ARTIST_SORT:I = 0x2

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final HAS_REMOTE:I = 0x3

.field public static final KEEP_ON_ID:I = 0x4

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CanonicalAlbumArtist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ArtistsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
