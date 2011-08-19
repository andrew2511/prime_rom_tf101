.class public Lcom/layar/core/StreamTextureManager;
.super Ljava/lang/Object;
.source "StreamTextureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/core/StreamTextureManager$DownloadTask;
    }
.end annotation


# instance fields
.field bitmaps:[Landroid/graphics/Bitmap;

.field noIcon:[Z

.field task:Lcom/layar/core/StreamTextureManager$DownloadTask;

.field textureIds:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "categoryCount"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/core/StreamTextureManager;->task:Lcom/layar/core/StreamTextureManager$DownloadTask;

    .line 22
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    .line 23
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/layar/core/StreamTextureManager;->noIcon:[Z

    .line 24
    new-array v1, p1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/layar/core/StreamTextureManager;->bitmaps:[Landroid/graphics/Bitmap;

    .line 26
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 27
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initTexture(ILjavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "index"
    .parameter "gl"
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x0

    const v3, 0x47012f00

    const/16 v2, 0xde1

    .line 56
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    invoke-interface {p2, v0, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 58
    invoke-interface {p2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 59
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    aget v0, v0, p1

    invoke-interface {p2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 61
    const/16 v0, 0x2801

    const/high16 v1, 0x4618

    invoke-interface {p2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 62
    const/16 v0, 0x2800

    const v1, 0x46180400

    invoke-interface {p2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 63
    const/16 v0, 0x2802

    invoke-interface {p2, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 64
    const/16 v0, 0x2803

    invoke-interface {p2, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 66
    invoke-static {v2, v4, p3, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 67
    return-void
.end method


# virtual methods
.method public getTextureId(I)I
    .locals 1
    .parameter "category"

    .prologue
    .line 30
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 31
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public initTexture(ILjavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "category"
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 35
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->noIcon:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->bitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->bitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/core/StreamTextureManager;->initTexture(ILjavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v1, 0x40

    invoke-static {p1, v1, v2}, Lcom/layar/data/ImageCache;->readCategoryIcon(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    .line 45
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->bitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->task:Lcom/layar/core/StreamTextureManager$DownloadTask;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->noIcon:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 48
    new-instance v0, Lcom/layar/core/StreamTextureManager$DownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/layar/core/StreamTextureManager$DownloadTask;-><init>(Lcom/layar/core/StreamTextureManager;I)V

    iput-object v0, p0, Lcom/layar/core/StreamTextureManager;->task:Lcom/layar/core/StreamTextureManager$DownloadTask;

    .line 49
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager;->task:Lcom/layar/core/StreamTextureManager$DownloadTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/core/StreamTextureManager$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public resetTextures()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 71
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/layar/core/StreamTextureManager;->textureIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
