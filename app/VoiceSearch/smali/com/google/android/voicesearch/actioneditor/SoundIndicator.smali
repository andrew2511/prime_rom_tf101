.class public Lcom/google/android/voicesearch/actioneditor/SoundIndicator;
.super Landroid/widget/ImageView;
.source "SoundIndicator.java"


# static fields
.field private static final AUDIO_METER_DB_RANGE:F = 20.0f

.field private static final AUDIO_METER_MIN_DB:F = 7.0f

.field private static final DOWN_SMOOTHING_FACTOR:F = 0.4f

.field private static final FRAME_DELAY:J = 0x32L

.field private static final UP_SMOOTHING_FACTOR:F = 0.9f


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
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    .line 58
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator$1;-><init>(Lcom/google/android/voicesearch/actioneditor/SoundIndicator;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mEdgeBitmap:Landroid/graphics/Bitmap;

    .line 76
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mEdgeBitmapOffset:I

    .line 78
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawingBuffer:Landroid/graphics/Bitmap;

    .line 82
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawingBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mClearPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mClearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mMultPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mMultPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/SoundIndicator;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/SoundIndicator;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 102
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mClearPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    const-wide/high16 v5, 0x3ff0

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    float-to-double v7, v2

    sub-double/2addr v5, v7

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mEdgeBitmapOffset:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    float-to-double v7, v2

    mul-double/2addr v5, v7

    double-to-int v2, v5

    iget v5, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mEdgeBitmapOffset:I

    sub-int/2addr v2, v5

    float-to-int v5, v3

    float-to-int v6, v4

    invoke-direct {v0, v9, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 111
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 114
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-direct {v5, v9, v9, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 115
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 120
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mEdgeBitmap:Landroid/graphics/Bitmap;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mMultPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawingBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    return-void
.end method

.method public setRmsdB(F)V
    .locals 2
    .parameter

    .prologue
    .line 132
    const/high16 v0, 0x40e0

    sub-float v0, p1, v0

    const/high16 v1, 0x41a0

    div-float/2addr v0, v1

    .line 133
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 136
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 137
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    sub-float/2addr v0, v1

    const v1, 0x3f666666

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    sub-float/2addr v0, v1

    const v1, 0x3ecccccd

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method
