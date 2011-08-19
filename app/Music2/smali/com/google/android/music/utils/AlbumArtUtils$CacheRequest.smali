.class Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/AlbumArtUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheRequest"
.end annotation


# instance fields
.field private cacheHits:I

.field private cacheRequests:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->cacheRequests:I

    .line 1017
    iput v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->cacheHits:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/utils/AlbumArtUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;-><init>()V

    return-void
.end method

.method static synthetic access$108(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 1015
    iget v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->cacheRequests:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->cacheRequests:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1015
    iget v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->cacheHits:I

    return v0
.end method

.method static synthetic access$208(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 1015
    iget v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->cacheHits:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->cacheHits:I

    return v0
.end method
