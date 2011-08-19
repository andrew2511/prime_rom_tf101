.class public Lcom/google/android/music/albumwall/AlbumPoseCache;
.super Ljava/lang/Object;
.source "AlbumPoseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;
    }
.end annotation


# instance fields
.field private mCache:Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;

    invoke-direct {v0, p1}, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumPoseCache;->mCache:Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumPoseCache;->mCache:Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;->clear()V

    .line 34
    return-void
.end method

.method public getPose(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    .locals 2
    .parameter "item"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumPoseCache;->mCache:Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;

    invoke-virtual {v1, p1}, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    .line 38
    .local v0, pose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    return-object v0
.end method

.method public record(Lcom/google/android/music/albumwall/ItemView;J)V
    .locals 3
    .parameter "album"
    .parameter "frameTime"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v0

    .line 48
    .local v0, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumPoseCache;->mCache:Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;

    invoke-virtual {v2, v0}, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    .line 49
    .local v1, pose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    .end local v1           #pose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    invoke-direct {v1}, Lcom/google/android/opengl/glview/TexturedQuad$Pose;-><init>()V

    .line 51
    .restart local v1       #pose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumPoseCache;->mCache:Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/music/albumwall/ItemView;->savePose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V

    .line 54
    return-void
.end method

.method public restore(Lcom/google/android/music/albumwall/ItemView;J)Z
    .locals 4
    .parameter "album"
    .parameter "frameTime"

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v1

    .line 58
    .local v1, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumPoseCache;->mCache:Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;

    invoke-virtual {v3, v1}, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    .line 59
    .local v2, pose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 60
    .local v0, found:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1, v2, p2, p3}, Lcom/google/android/music/albumwall/ItemView;->setOldPose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V

    .line 63
    :cond_0
    return v0

    .line 59
    .end local v0           #found:Z
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public setPose(Lcom/google/android/music/albumwall/ItemView;Lcom/google/android/opengl/glview/TexturedQuad$Pose;)V
    .locals 2
    .parameter "album"
    .parameter "pose"

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v0

    .line 43
    .local v0, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumPoseCache;->mCache:Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/music/albumwall/AlbumPoseCache$LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
