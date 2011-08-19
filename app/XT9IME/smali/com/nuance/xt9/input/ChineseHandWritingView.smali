.class public Lcom/nuance/xt9/input/ChineseHandWritingView;
.super Lcom/nuance/xt9/input/HandWritingView;
.source "ChineseHandWritingView.java"


# static fields
.field private static final TOUCH_TOLERANCE:I = 0x2


# instance fields
.field private mLastEndX:I

.field private mLastEndY:I

.field private mLastX:I

.field private mLastY:I

.field private mMemoryBitmap:Landroid/graphics/Bitmap;

.field private mMemoryCanvas:Landroid/graphics/Canvas;

.field private mModeName:Ljava/lang/String;

.field private mPath:Landroid/graphics/Path;

.field private mPathBouns:I

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncObject:Ljava/lang/Object;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mUseBackBuffer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/ChineseHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    .line 26
    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    .line 33
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z

    .line 37
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mSyncObject:Ljava/lang/Object;

    .line 46
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    .line 47
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 50
    .local v0, dm:Landroid/util/DisplayMetrics;
    const/high16 v4, 0x41c0

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 51
    .local v3, textSize:I
    const/high16 v4, 0x40c0

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 52
    .local v2, stroke:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 54
    .local v1, penColor:I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 59
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    const v5, 0x40c0c000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 66
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 67
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    mul-int/lit8 v4, v2, 0x2

    iput v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathBouns:I

    .line 70
    return-void
.end method

.method private doTouchDown(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "me"

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 210
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 212
    .local v1, y:I
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;

    invoke-interface {v2, p0}, Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 214
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->invalidateDifference(IIII)V

    .line 218
    iput v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastX:I

    .line 219
    iput v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastY:I

    .line 220
    iput v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastEndX:I

    .line 221
    iput v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastEndY:I

    .line 222
    return-void
.end method

.method private doTouchMove(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "me"

    .prologue
    const/4 v12, 0x2

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    .line 226
    .local v5, points:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 227
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 231
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 232
    .local v7, y:I
    iget v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastX:I

    sub-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 233
    .local v0, dx:I
    iget v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastY:I

    sub-int v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 234
    .local v1, dy:I
    if-ge v0, v12, :cond_1

    if-lt v1, v12, :cond_3

    .line 235
    :cond_1
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastX:I

    add-int/2addr v8, v6

    div-int/lit8 v2, v8, 0x2

    .line 238
    .local v2, endX:I
    iget v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastY:I

    add-int/2addr v8, v7

    div-int/lit8 v3, v8, 0x2

    .line 239
    .local v3, endY:I
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v9, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastX:I

    int-to-float v9, v9

    iget v10, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastY:I

    int-to-float v10, v10

    int-to-float v11, v2

    int-to-float v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 241
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mSyncObject:Ljava/lang/Object;

    monitor-enter v8

    .line 242
    :try_start_0
    iget-boolean v9, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z

    if-eqz v9, :cond_2

    .line 243
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 244
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 245
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v10, v2

    int-to-float v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 247
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastEndX:I

    iget v9, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastEndY:I

    invoke-direct {p0, v8, v9, v2, v3}, Lcom/nuance/xt9/input/ChineseHandWritingView;->invalidateDifference(IIII)V

    .line 250
    iput v6, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastX:I

    .line 251
    iput v7, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastY:I

    .line 252
    iput v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastEndX:I

    .line 253
    iput v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastEndY:I

    .line 255
    .end local v2           #endX:I
    .end local v3           #endY:I
    :cond_3
    return-void

    .line 247
    .restart local v2       #endX:I
    .restart local v3       #endY:I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method private doTouchUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "me"

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 259
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 261
    .local v1, y:I
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v2, v3, p0}, Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 263
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 264
    iget v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastEndX:I

    iget v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastEndY:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->invalidateDifference(IIII)V

    .line 265
    return-void
.end method

.method private drawForAll(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 115
    return-void
.end method

.method private invalidateDifference(IIII)V
    .locals 5
    .parameter "origX"
    .parameter "origY"
    .parameter "destX"
    .parameter "destY"

    .prologue
    .line 268
    move v1, p1

    .local v1, left:I
    move v3, p2

    .local v3, top:I
    move v2, p3

    .local v2, right:I
    move v0, p4

    .line 269
    .local v0, bottom:I
    if-ge p3, p1, :cond_0

    .line 270
    move v1, p3

    .line 271
    move v2, p1

    .line 273
    :cond_0
    if-ge p4, p2, :cond_1

    .line 274
    move v3, p4

    .line 275
    move v0, p2

    .line 278
    :cond_1
    iget v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathBouns:I

    sub-int/2addr v1, v4

    .line 279
    iget v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathBouns:I

    sub-int/2addr v3, v4

    .line 280
    iget v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathBouns:I

    add-int/2addr v2, v4

    .line 281
    iget v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathBouns:I

    add-int/2addr v0, v4

    .line 283
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->invalidate(IIII)V

    .line 284
    return-void
.end method


# virtual methods
.method public allocateMemory()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-boolean v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 178
    :try_start_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 179
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    .line 181
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryCanvas:Landroid/graphics/Canvas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_2

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->freeMemory()V

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    move v2, v6

    :goto_0
    iput-boolean v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z

    .line 192
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_3
    :goto_1
    monitor-exit v1

    .line 193
    return-void

    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_4
    move v2, v5

    .line 189
    goto :goto_0

    .line 184
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v2

    .line 186
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_6

    .line 187
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->freeMemory()V

    .line 189
    :cond_6
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    move v2, v6

    :goto_2
    iput-boolean v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_7
    move v2, v5

    .line 189
    goto :goto_2

    .line 186
    :catchall_1
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_9

    .line 187
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->freeMemory()V

    .line 189
    :cond_9
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_a

    move v3, v6

    :goto_3
    iput-boolean v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    move v3, v5

    goto :goto_3
.end method

.method public clearArcs()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 152
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mLastY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 163
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->invalidate()V

    .line 166
    return-void

    .line 160
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->freeMemory()V

    .line 143
    return-void
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryCanvas:Landroid/graphics/Canvas;

    .line 198
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    .line 202
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z

    .line 203
    monitor-exit v0

    .line 206
    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isArcsEmpty()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "c"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 77
    :try_start_0
    iget-boolean v6, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z

    if-eqz v6, :cond_0

    .line 78
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mMemoryBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 83
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;

    check-cast v2, Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    .line 84
    .local v2, v:Lcom/nuance/xt9/input/ChineseHandWritingInputView;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getHandWritingMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    .line 87
    .end local v2           #v:Lcom/nuance/xt9/input/ChineseHandWritingInputView;
    :cond_1
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 89
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    const-string v6, "ALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 90
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->drawForAll(Landroid/graphics/Canvas;)V

    .line 105
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 106
    :try_start_1
    iget-boolean v6, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mUseBackBuffer:Z

    if-nez v6, :cond_3

    .line 107
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 109
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    return-void

    .line 80
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 93
    :cond_4
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v1, v5

    .line 94
    .local v1, textWidth:I
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 95
    .local v0, textSize:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v3, v5, 0x2

    .line 96
    .local v3, x:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->getHeight()I

    move-result v5

    sub-int v4, v5, v0

    .line 99
    .local v4, y:I
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 109
    .end local v0           #textSize:I
    .end local v1           #textWidth:I
    .end local v3           #x:I
    .end local v4           #y:I
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "me"

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 122
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->doTouchDown(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 123
    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->doTouchMove(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 127
    goto :goto_0

    .line 130
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->doTouchUp(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 131
    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setModeString(Ljava/lang/String;)V
    .locals 0
    .parameter "strMode"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->invalidate()V

    .line 172
    return-void
.end method
