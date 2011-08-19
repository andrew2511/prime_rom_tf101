.class Lcom/google/android/street/TextureCache;
.super Lcom/google/android/street/LRUCache;
.source "TextureCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/street/LRUCache",
        "<",
        "Lcom/google/android/street/PanoramaImageKey;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActiveTextures:Ljava/util/BitSet;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private final mInitializedTextures:Ljava/util/BitSet;

.field private final mTextureIds:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxEntries"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/street/LRUCache;-><init>(I)V

    .line 32
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/street/TextureCache;->mActiveTextures:Ljava/util/BitSet;

    .line 33
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/street/TextureCache;->mInitializedTextures:Ljava/util/BitSet;

    .line 34
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/street/TextureCache;->mTextureIds:[I

    .line 35
    return-void
.end method

.method private checkTexImage(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "key"
    .parameter "image"
    .parameter "gl"

    .prologue
    .line 165
    return-void
.end method

.method private checkgl(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 234
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 235
    .local v0, glError:I
    if-eqz v0, :cond_0

    .line 239
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    return-void
.end method

.method private finished()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/street/TextureCache;->mTextureIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/TextureCache;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/street/TextureCache;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/street/TextureCache;->mMaxEntries:I

    iget-object v2, p0, Lcom/google/android/street/TextureCache;->mTextureIds:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/street/TextureCache;->clear()V

    .line 52
    iget-object v0, p0, Lcom/google/android/street/TextureCache;->mInitializedTextures:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 53
    return-void
.end method

.method private insertImageImp(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "key"
    .parameter "image"

    .prologue
    const v4, 0x47012f00

    const/4 v6, 0x0

    const/16 v5, 0xde1

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/street/TextureCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already cached "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/street/TextureCache;->ensureSpaceForInsertion()V

    .line 87
    iget-object v2, p0, Lcom/google/android/street/TextureCache;->mActiveTextures:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    .line 88
    .local v1, textureIndex:I
    iget v2, p0, Lcom/google/android/street/TextureCache;->mMaxEntries:I

    if-lt v1, v2, :cond_1

    .line 89
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Ran out of texture cache slots."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/TextureCache;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 93
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL10;
    if-nez v0, :cond_2

    .line 148
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/google/android/street/TextureCache;->mTextureIds:[I

    aget v2, v2, v1

    invoke-interface {v0, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 100
    iget-object v2, p0, Lcom/google/android/street/TextureCache;->mInitializedTextures:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    const/16 v2, 0x2801

    const/high16 v3, 0x4618

    invoke-interface {v0, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 103
    const/16 v2, 0x2800

    const v3, 0x46180400

    invoke-interface {v0, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 107
    const/16 v2, 0x2802

    invoke-interface {v0, v5, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 109
    const/16 v2, 0x2803

    invoke-interface {v0, v5, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 112
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const v4, 0x45f00800

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 115
    invoke-static {v5, v6, p2, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/street/TextureCache;->checkTexImage(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 129
    iget-object v2, p0, Lcom/google/android/street/TextureCache;->mInitializedTextures:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 139
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/street/TextureCache;->checkgl(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 142
    iget-object v2, p0, Lcom/google/android/street/TextureCache;->mActiveTextures:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/street/TextureCache;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_3
    invoke-static {v5, v6, v6, v6, p2}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 133
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/street/TextureCache;->checkTexImage(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_1
.end method


# virtual methods
.method public getTextureId(Lcom/google/android/street/PanoramaImageKey;)I
    .locals 3
    .parameter "key"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/google/android/street/TextureCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 249
    .local v0, textureIndex:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 252
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/street/TextureCache;->mTextureIds:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    goto :goto_0
.end method

.method public initialize(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/street/TextureCache;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 39
    iget v0, p0, Lcom/google/android/street/TextureCache;->mMaxEntries:I

    iget-object v1, p0, Lcom/google/android/street/TextureCache;->mTextureIds:[I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 40
    return-void
.end method

.method public insertImage(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "key"
    .parameter "image"

    .prologue
    .line 67
    if-eqz p2, :cond_0

    .line 69
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/TextureCache;->insertImageImp(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    :cond_0
    return-void

    .line 71
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method

.method protected onEject(Lcom/google/android/street/PanoramaImageKey;Ljava/lang/Integer;)V
    .locals 3
    .parameter "key"
    .parameter "textureIndex"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/street/TextureCache;->mActiveTextures:Ljava/util/BitSet;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ejecting unused texture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/TextureCache;->mActiveTextures:Ljava/util/BitSet;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 62
    return-void
.end method

.method protected bridge synthetic onEject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/street/PanoramaImageKey;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/street/TextureCache;->onEject(Lcom/google/android/street/PanoramaImageKey;Ljava/lang/Integer;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/street/TextureCache;->finished()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/TextureCache;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 45
    return-void
.end method
