.class public Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/AlbumArtUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 992
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 993
    iput-object p1, p0, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 994
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->setBounds(IIII)V

    .line 995
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1001
    iget-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1002
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1005
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1009
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 1012
    return-void
.end method
