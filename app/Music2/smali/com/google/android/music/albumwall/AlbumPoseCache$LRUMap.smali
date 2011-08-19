.class Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;
.super Ljava/util/LinkedHashMap;
.source "AlbumPoseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/AlbumPoseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LRUMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lcom/google/android/music/albumwall/AlbumWallCallback$Item;",
        "Lcom/google/android/opengl/glview/TexturedQuad$Pose;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "capacity"

    .prologue
    .line 16
    add-int/lit8 v0, p1, 0x1

    const v1, 0x3f8ccccd

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 17
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;->mCapacity:I

    .line 18
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/android/music/albumwall/AlbumWallCallback$Item;",
            "Lcom/google/android/opengl/glview/TexturedQuad$Pose;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/TexturedQuad$Pose;>;"
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;->mCapacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
