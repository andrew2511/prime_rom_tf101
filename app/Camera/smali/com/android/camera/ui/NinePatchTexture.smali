.class Lcom/android/camera/ui/NinePatchTexture;
.super Lcom/android/camera/ui/ResourceTexture;
.source "NinePatchTexture.java"


# instance fields
.field private mChunk:Lcom/android/camera/ui/NinePatchChunk;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/ui/GLRootView;IIII)V
    .locals 6
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 61
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->drawNinePatch(Lcom/android/camera/ui/NinePatchTexture;IIII)V

    .line 62
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 33
    iget-object v2, p0, Lcom/android/camera/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 45
    :goto_0
    return-object v2

    .line 35
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 36
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 37
    iget-object v2, p0, Lcom/android/camera/ui/NinePatchTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/NinePatchTexture;->mResId:I

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/NinePatchTexture;->setSize(II)V

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ui/NinePatchChunk;->deserialize([B)Lcom/android/camera/ui/NinePatchChunk;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/NinePatchTexture;->mChunk:Lcom/android/camera/ui/NinePatchChunk;

    .line 42
    iget-object v2, p0, Lcom/android/camera/ui/NinePatchTexture;->mChunk:Lcom/android/camera/ui/NinePatchChunk;

    if-nez v2, :cond_1

    .line 43
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid nine-patch image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/NinePatchTexture;->mResId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v0

    .line 45
    goto :goto_0
.end method

.method public getNinePatchChunk()Lcom/android/camera/ui/NinePatchChunk;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mChunk:Lcom/android/camera/ui/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/NinePatchTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mChunk:Lcom/android/camera/ui/NinePatchChunk;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mChunk:Lcom/android/camera/ui/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/NinePatchTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mChunk:Lcom/android/camera/ui/NinePatchChunk;

    iget-object v0, v0, Lcom/android/camera/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method
