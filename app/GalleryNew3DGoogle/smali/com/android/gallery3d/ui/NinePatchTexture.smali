.class public Lcom/android/gallery3d/ui/NinePatchTexture;
.super Lcom/android/gallery3d/ui/ResourceTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;
    }
.end annotation


# instance fields
.field private mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

.field private mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/gallery3d/ui/NinePatchInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v1, -0x1

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    .line 45
    iput v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mIntrinsicWidth:I

    .line 46
    iput v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mIntrinsicHeight:I

    .line 50
    return-void
.end method

.method private findInstance(Lcom/android/gallery3d/ui/GLCanvas;II)Lcom/android/gallery3d/ui/NinePatchInstance;
    .locals 8
    .parameter "canvas"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 120
    int-to-long v1, p2

    .line 121
    .local v1, key:J
    const/16 v4, 0x20

    shl-long v4, v1, v4

    int-to-long v6, p3

    or-long v1, v4, v6

    .line 122
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/NinePatchInstance;

    .line 124
    .local v0, instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchInstance;

    .end local v0           #instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/gallery3d/ui/NinePatchInstance;-><init>(Lcom/android/gallery3d/ui/NinePatchTexture;II)V

    .line 126
    .restart local v0       #instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->getJustRemoved()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/NinePatchInstance;

    .line 128
    .local v3, removed:Lcom/android/gallery3d/ui/NinePatchInstance;
    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/ui/NinePatchInstance;->recycle(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 133
    .end local v3           #removed:Lcom/android/gallery3d/ui/NinePatchInstance;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->isLoaded(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->clear()V

    .line 142
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 143
    invoke-direct {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/NinePatchTexture;->findInstance(Lcom/android/gallery3d/ui/GLCanvas;II)Lcom/android/gallery3d/ui/NinePatchInstance;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/gallery3d/ui/NinePatchInstance;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/NinePatchTexture;II)V

    .line 145
    :cond_1
    return-void
.end method

.method public getNinePatchChunk()Lcom/android/gallery3d/ui/NinePatchChunk;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    iget-object v0, v0, Lcom/android/gallery3d/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 64
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 81
    :goto_0
    return-object v3

    .line 66
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 67
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 68
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mResId:I

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mIntrinsicWidth:I

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mIntrinsicHeight:I

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/ui/NinePatchTexture;->setSize(II)V

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 75
    .local v1, chunkData:[B
    if-nez v1, :cond_1

    const/4 v3, 0x0

    :goto_1
    iput-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    .line 78
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    if-nez v3, :cond_2

    .line 79
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid nine-patch image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mResId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/NinePatchChunk;->deserialize([B)Lcom/android/gallery3d/ui/NinePatchChunk;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 81
    goto :goto_0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/gallery3d/ui/ResourceTexture;->recycle()V

    .line 150
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 151
    .local v0, canvas:Lcom/android/gallery3d/ui/GLCanvas;
    :goto_0
    if-nez v0, :cond_1

    .line 156
    :goto_1
    return-void

    .line 150
    .end local v0           #canvas:Lcom/android/gallery3d/ui/GLCanvas;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/GLCanvas;

    move-object v0, v3

    goto :goto_0

    .line 152
    .restart local v0       #canvas:Lcom/android/gallery3d/ui/GLCanvas;
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/NinePatchInstance;

    .line 153
    .local v2, instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/NinePatchInstance;->recycle(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_2

    .line 155
    .end local v2           #instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->clear()V

    goto :goto_1
.end method
