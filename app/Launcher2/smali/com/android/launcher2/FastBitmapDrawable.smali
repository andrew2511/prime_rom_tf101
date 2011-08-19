.class Lcom/android/launcher2/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 35
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    .line 36
    iput-object p1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    .line 39
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/launcher2/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 48
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    .line 59
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 68
    return-void
.end method
