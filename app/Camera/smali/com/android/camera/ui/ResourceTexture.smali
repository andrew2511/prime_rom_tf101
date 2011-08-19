.class Lcom/android/camera/ui/ResourceTexture;
.super Lcom/android/camera/ui/BitmapTexture;
.source "ResourceTexture.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected final mContext:Landroid/content/Context;

.field protected final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/BitmapTexture;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/camera/ui/ResourceTexture;->mContext:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcom/android/camera/ui/ResourceTexture;->mResId:I

    .line 34
    return-void
.end method


# virtual methods
.method protected freeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    :goto_0
    return-object v1

    .line 39
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 40
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 41
    iget-object v1, p0, Lcom/android/camera/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ResourceTexture;->mResId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 43
    iget-object v1, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/ResourceTexture;->setSize(II)V

    .line 44
    iget-object v1, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
