.class public Lcom/android/inputmethod/voice/SoundIndicator;
.super Landroid/widget/ImageView;
.source "SoundIndicator.java"


# instance fields
.field private mBufferCanvas:Landroid/graphics/Canvas;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mDrawFrame:Ljava/lang/Runnable;

.field private mDrawingBuffer:Landroid/graphics/Bitmap;

.field private mEdgeBitmap:Landroid/graphics/Bitmap;

.field private mEdgeBitmapOffset:I

.field private mFrontDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mLevel:F

.field private mMultPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/voice/SoundIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mLevel:F

    .line 61
    new-instance v1, Lcom/android/inputmethod/voice/SoundIndicator$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/SoundIndicator$1;-><init>(Lcom/android/inputmethod/voice/SoundIndicator;)V

    iput-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    .line 75
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/SoundIndicator;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 78
    .local v0, edgeDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mEdgeBitmap:Landroid/graphics/Bitmap;

    .line 79
    iget-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mEdgeBitmapOffset:I

    .line 81
    iget-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mDrawingBuffer:Landroid/graphics/Bitmap;

    .line 85
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mDrawingBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mClearPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mClearPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mMultPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mMultPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 94
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/voice/SoundIndicator;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/voice/SoundIndicator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/SoundIndicator;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 102
    .local v3, w:F
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/SoundIndicator;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 105
    .local v4, h:F
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mClearPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    new-instance v6, Landroid/graphics/Rect;

    const-wide/high16 v7, 0x3ff0

    iget v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mLevel:F

    float-to-double v9, v0

    sub-double/2addr v7, v9

    iget v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mEdgeBitmapOffset:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-double v9, v0

    mul-double/2addr v7, v9

    double-to-int v0, v7

    iget v2, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mEdgeBitmapOffset:I

    sub-int/2addr v0, v2

    float-to-int v2, v3

    float-to-int v5, v4

    invoke-direct {v6, v11, v0, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 113
    .local v6, clip:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 114
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 117
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    float-to-int v5, v3

    float-to-int v7, v4

    invoke-direct {v2, v11, v11, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 118
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 123
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mEdgeBitmap:Landroid/graphics/Bitmap;

    iget v5, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v7, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mMultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mDrawingBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    return-void
.end method

.method public setRmsdB(F)V
    .locals 3
    .parameter "rmsdB"

    .prologue
    .line 135
    const/high16 v1, 0x40e0

    sub-float v1, p1, v1

    const/high16 v2, 0x41a0

    div-float v0, v1, v2

    .line 137
    .local v0, level:F
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 140
    iget v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mLevel:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 141
    iget v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mLevel:F

    sub-float v1, v0, v1

    const v2, 0x3f666666

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mLevel:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mLevel:F

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/SoundIndicator;->invalidate()V

    .line 146
    return-void

    .line 143
    :cond_0
    iget v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mLevel:F

    sub-float v1, v0, v1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mLevel:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mLevel:F

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method
