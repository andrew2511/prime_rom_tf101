.class public Lcom/ecareme/pixwe/wallpaper/Slideshow;
.super Landroid/view/SurfaceView;
.source "Slideshow.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;
    }
.end annotation


# static fields
.field public static final SLIDESHOW_DURATION:I = 0x7d0

.field private static final sGrow:Lcom/ecareme/pixwe/media/Vector3f;

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sQueuedGrow:Lcom/ecareme/pixwe/media/Vector3f;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentSlideshowCounter:I

.field private final mDrawFrame:Ljava/lang/Runnable;

.field private mFrameRect:Landroid/graphics/RectF;

.field private final mHandler:Landroid/os/Handler;

.field private mPrevTime:J

.field private mQueuedBitmap:Landroid/graphics/Bitmap;

.field private mQueuedFrameRect:Landroid/graphics/RectF;

.field private mQueuedRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mSource:Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;

.field private mTimeElapsed:J

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sPaint:Landroid/graphics/Paint;

    .line 62
    sget-object v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 63
    sget-object v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 71
    new-instance v0, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sGrow:Lcom/ecareme/pixwe/media/Vector3f;

    .line 75
    new-instance v0, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sQueuedGrow:Lcom/ecareme/pixwe/media/Vector3f;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v1, Lcom/ecareme/pixwe/wallpaper/Slideshow$1;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow$1;-><init>(Lcom/ecareme/pixwe/wallpaper/Slideshow;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mVisible:Z

    .line 39
    invoke-virtual {p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 40
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 41
    return-void
.end method

.method private getRandomBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mSource:Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mSource:Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mCurrentSlideshowCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mCurrentSlideshowCounter:I

    invoke-interface {v0, v1, v2}, Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;->getBitmapForIndex(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRectToFitBitmap(IIII)Landroid/graphics/Rect;
    .locals 8
    .parameter "bitmapWidth"
    .parameter "bitmapHeight"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 212
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 213
    .local v2, rect:Landroid/graphics/Rect;
    int-to-float v4, p4

    int-to-float v5, p3

    div-float v3, v4, v5

    .line 214
    .local v3, viewAspect:F
    int-to-float v4, p1

    mul-float v1, v4, v3

    .line 215
    .local v1, newWidth:F
    int-to-float v4, p2

    cmpg-float v4, v4, v1

    if-gez v4, :cond_0

    .line 217
    int-to-float v4, p2

    div-float v1, v4, v3

    .line 218
    div-int/lit8 v4, p1, 0x2

    int-to-float v4, v4

    div-float v5, v1, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v5, p1, 0x2

    int-to-float v5, v5

    div-float v6, v1, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v4, v7, v5, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    :goto_0
    return-object v2

    .line 221
    :cond_0
    int-to-float v4, p1

    mul-float v0, v4, v3

    .line 222
    .local v0, newHeight:F
    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    div-float v5, v0, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v5, p2, 0x2

    int-to-float v5, v5

    div-float v6, v0, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v7, v4, p1, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private performSetup(II)V
    .locals 5
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->getRandomBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    .line 188
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->getRectToFitBitmap(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    .line 191
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 192
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 193
    sget-object v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sGrow:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ecareme/pixwe/media/Vector3f;->set(FFF)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->getRandomBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    .line 198
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->getRectToFitBitmap(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    .line 203
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    .line 204
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 205
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 206
    sget-object v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sQueuedGrow:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ecareme/pixwe/media/Vector3f;->set(FFF)V

    .line 209
    :cond_2
    return-void
.end method

.method private performUpdate(Landroid/graphics/RectF;Lcom/ecareme/pixwe/media/Vector3f;J)V
    .locals 6
    .parameter "rect"
    .parameter "grow"
    .parameter "delta"

    .prologue
    const/high16 v5, 0x3f80

    .line 175
    long-to-float v3, p3

    const/high16 v4, 0x447a

    div-float v2, v3, v4

    .line 176
    .local v2, timeElapsed:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x4170

    div-float/2addr v3, v4

    mul-float v0, v2, v3

    .line 177
    .local v0, amountToGrowX:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    mul-float v1, v0, v3

    .line 178
    .local v1, amountToGrowY:F
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->top:F

    .line 179
    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p2, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->left:F

    .line 181
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 182
    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p2, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 183
    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 21

    .prologue
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    .line 110
    .local v11, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v11}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v10

    .line 111
    .local v10, frame:Landroid/graphics/Rect;
    sget-object v14, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sPaint:Landroid/graphics/Paint;

    .line 112
    .local v14, paint:Landroid/graphics/Paint;
    const/4 v6, 0x0

    .line 114
    .local v6, c:Landroid/graphics/Canvas;
    :try_start_0
    invoke-interface {v11}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    .line 115
    if-eqz v6, :cond_3

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 117
    .local v12, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mPrevTime:J

    move-wide/from16 v17, v0

    sub-long v8, v12, v17

    .line 118
    .local v8, delta:J
    const-wide/16 v17, 0x32

    cmp-long v17, v8, v17

    if-lez v17, :cond_0

    .line 119
    const-wide/16 v8, 0x32

    .line 120
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mTimeElapsed:J

    move-wide/from16 v17, v0

    add-long v17, v17, v8

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mTimeElapsed:J

    .line 121
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mPrevTime:J

    .line 122
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->performSetup(II)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 125
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mTimeElapsed:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x7d0

    cmp-long v17, v17, v19

    if-lez v17, :cond_6

    .line 126
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mTimeElapsed:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x7d0

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x44fa

    div-float v5, v17, v18

    .line 127
    .local v5, alpha:F
    const/16 v17, 0x0

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object v0, v6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 136
    const/high16 v17, 0x3f80

    cmpg-float v17, v5, v17

    if-gez v17, :cond_1

    .line 137
    const/high16 v17, 0x437f

    mul-float v17, v17, v5

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 138
    .local v16, val:I
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    .line 139
    .local v15, srcColor:I
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v17, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v7

    move v1, v15

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 140
    .local v7, colorFilter:Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 143
    .end local v7           #colorFilter:Landroid/graphics/PorterDuffColorFilter;
    .end local v15           #srcColor:I
    .end local v16           #val:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object v0, v6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sQueuedGrow:Lcom/ecareme/pixwe/media/Vector3f;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-wide v3, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->performUpdate(Landroid/graphics/RectF;Lcom/ecareme/pixwe/media/Vector3f;J)V

    .line 145
    const/high16 v17, 0x3f80

    cmpl-float v17, v5, v17

    if-ltz v17, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    .line 150
    sget-object v17, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sGrow:Lcom/ecareme/pixwe/media/Vector3f;

    sget-object v18, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sQueuedGrow:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 151
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    .line 152
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    .line 153
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    .line 154
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mTimeElapsed:J

    .line 160
    .end local v5           #alpha:F
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ecareme/pixwe/wallpaper/Slideshow;->sGrow:Lcom/ecareme/pixwe/media/Vector3f;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-wide v3, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->performUpdate(Landroid/graphics/RectF;Lcom/ecareme/pixwe/media/Vector3f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v8           #delta:J
    .end local v12           #now:J
    :cond_3
    if-eqz v6, :cond_4

    .line 166
    invoke-interface {v11, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 168
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x14

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    :cond_5
    return-void

    .line 157
    .restart local v8       #delta:J
    .restart local v12       #now:J
    :cond_6
    const/16 v17, 0x0

    :try_start_1
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object v0, v6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    .end local v8           #delta:J
    .end local v12           #now:J
    :catchall_0
    move-exception v17

    .line 165
    if-eqz v6, :cond_7

    .line 166
    invoke-interface {v11, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 167
    :cond_7
    throw v17
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mVisible:Z

    .line 236
    if-nez p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->drawFrame()V

    .line 240
    return-void
.end method

.method public setDataSource(Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mSource:Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;

    .line 82
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->getRectToFitBitmap(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    .line 88
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 89
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->getRectToFitBitmap(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    .line 93
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 94
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 96
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 106
    return-void
.end method
