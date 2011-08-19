.class abstract Lcom/android/camera/ui/CanvasTexture;
.super Lcom/android/camera/ui/BitmapTexture;
.source "CanvasTexture.java"


# instance fields
.field protected mCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/ui/BitmapTexture;-><init>()V

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/CanvasTexture;->setSize(II)V

    .line 29
    return-void
.end method


# virtual methods
.method protected freeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 33
    iget v1, p0, Lcom/android/camera/ui/CanvasTexture;->mWidth:I

    iget v2, p0, Lcom/android/camera/ui/CanvasTexture;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/camera/ui/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 35
    iget-object v1, p0, Lcom/android/camera/ui/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/CanvasTexture;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 36
    return-object v0
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method
