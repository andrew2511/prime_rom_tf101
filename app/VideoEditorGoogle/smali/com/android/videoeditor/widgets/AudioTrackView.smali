.class public Lcom/android/videoeditor/widgets/AudioTrackView;
.super Landroid/view/View;
.source "AudioTrackView.java"


# instance fields
.field private mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLoopPaint:Landroid/graphics/Paint;

.field private mNormalizedGains:[D

.field private mProgress:I

.field private final mProgressDestRect:Landroid/graphics/Rect;

.field private mScreenWidth:I

.field private final mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

.field private mScrollX:I

.field private final mSimpleGestureDetector:Landroid/view/GestureDetector;

.field private mTimelineDurationMs:J

.field private mWaveformData:Landroid/media/videoeditor/WaveformData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/AudioTrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 64
    .local v4, resources:Landroid/content/res/Resources;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    .line 65
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    const v6, 0x7f060002

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLoopPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLoopPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLoopPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLoopPaint:Landroid/graphics/Paint;

    const v6, 0x7f060003

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-static {p1}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v3

    .line 77
    .local v3, progressBar:Lcom/android/videoeditor/widgets/ProgressBar;
    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 78
    .local v1, layoutHeight:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/ProgressBar;->getHeight()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v1, v8

    invoke-direct {v5, v6, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgressDestRect:Landroid/graphics/Rect;

    .line 83
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/android/videoeditor/widgets/AudioTrackView$1;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/widgets/AudioTrackView$1;-><init>(Lcom/android/videoeditor/widgets/AudioTrackView;)V

    invoke-direct {v5, p1, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    .line 109
    new-instance v5, Lcom/android/videoeditor/widgets/AudioTrackView$2;

    invoke-direct {v5, p0}, Lcom/android/videoeditor/widgets/AudioTrackView$2;-><init>(Lcom/android/videoeditor/widgets/AudioTrackView;)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 132
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScreenWidth:I

    .line 138
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgress:I

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/AudioTrackView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/videoeditor/widgets/AudioTrackView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollX:I

    return p1
.end method


# virtual methods
.method public getWaveformData()Landroid/media/videoeditor/WaveformData;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 162
    .local v0, scrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollX:I

    .line 163
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 164
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 173
    .local v0, scrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 174
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 311
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object v2, v0

    if-nez v2, :cond_1

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgress:I

    move v2, v0

    if-ltz v2, :cond_0

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgress:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgressDestRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingRight()I

    move-result v7

    sub-int v7, v3, v7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/videoeditor/widgets/ProgressBar;->draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;II)V

    .line 360
    :cond_0
    return-void

    .line 318
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mTimelineDurationMs:J

    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 321
    .local v8, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieAudioTrack;->getBoundaryBeginTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    move-wide v0, v2

    long-to-int v0, v0

    move/from16 v16, v0

    .line 323
    .local v16, startFrame:I
    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieAudioTrack;->getTimelineDuration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v14, v2

    .line 326
    .local v14, numFrames:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getHeight()I

    move-result v2

    div-int/lit8 v9, v2, 0x2

    .line 329
    .local v9, ctr:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollX:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScreenWidth:I

    move v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 330
    .local v15, start:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollX:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScreenWidth:I

    move v3, v0

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 331
    .local v13, limit:I
    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieAudioTrack;->isAppLooping()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mTimelineDurationMs:J

    move-wide v2, v0

    long-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScreenWidth:I

    move v5, v0

    sub-int/2addr v2, v5

    mul-int/2addr v2, v4

    int-to-float v2, v2

    div-float v10, v3, v2

    .line 337
    .local v10, framesPerPixel:F
    move v11, v15

    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_0

    .line 338
    int-to-float v2, v11

    mul-float/2addr v2, v10

    float-to-int v2, v2

    add-int v12, v16, v2

    .line 339
    .local v12, index:I
    rem-int/2addr v12, v14

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mNormalizedGains:[D

    move-object v2, v0

    aget-wide v2, v2, v12

    double-to-int v2, v2

    move v0, v2

    int-to-short v0, v0

    move/from16 v17, v0

    .line 341
    .local v17, value:S
    int-to-float v3, v11

    sub-int v2, v9, v17

    int-to-float v4, v2

    int-to-float v5, v11

    add-int/lit8 v2, v9, 0x1

    add-int v2, v2, v17

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 343
    move v0, v12

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 344
    int-to-float v3, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingTop()I

    move-result v2

    int-to-float v4, v2

    int-to-float v5, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 337
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 350
    .end local v10           #framesPerPixel:F
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v17           #value:S
    :cond_3
    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieAudioTrack;->getTimelineDuration()J

    move-result-wide v2

    long-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    div-float v10, v2, v3

    .line 353
    .restart local v10       #framesPerPixel:F
    move v11, v15

    .restart local v11       #i:I
    :goto_1
    if-ge v11, v13, :cond_0

    .line 354
    int-to-float v2, v11

    mul-float/2addr v2, v10

    float-to-int v2, v2

    add-int v12, v16, v2

    .line 355
    .restart local v12       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mNormalizedGains:[D

    move-object v2, v0

    aget-wide v2, v2, v12

    double-to-int v2, v2

    move v0, v2

    int-to-short v0, v0

    move/from16 v17, v0

    .line 356
    .restart local v17       #value:S
    int-to-float v3, v11

    sub-int v2, v9, v17

    int-to-float v4, v2

    int-to-float v5, v11

    add-int/lit8 v2, v9, 0x1

    add-int v2, v2, v17

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 370
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 181
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 294
    iput p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgress:I

    .line 296
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->invalidate()V

    .line 297
    return-void
.end method

.method public setWaveformData(Landroid/media/videoeditor/WaveformData;)V
    .locals 29
    .parameter "waveformData"

    .prologue
    .line 189
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/videoeditor/WaveformData;->getFramesCount()I

    move-result v11

    .line 191
    .local v11, numFrames:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/videoeditor/WaveformData;->getFrameGains()[S

    move-result-object v3

    .line 192
    .local v3, frameGains:[S
    move v0, v11

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 194
    .local v18, smoothedGains:[D
    const/16 v22, 0x1

    move v0, v11

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 195
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, v18, v22

    .line 210
    :cond_0
    :goto_0
    const-wide/high16 v7, 0x3ff0

    .line 211
    .local v7, maxGain:D
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v11, :cond_5

    .line 212
    aget-wide v22, v18, v6

    cmpl-double v22, v22, v7

    if-lez v22, :cond_1

    .line 213
    aget-wide v7, v18, v6

    .line 211
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 196
    .end local v6           #i:I
    .end local v7           #maxGain:D
    :cond_2
    const/16 v22, 0x2

    move v0, v11

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 197
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, v18, v22

    .line 198
    const/16 v22, 0x1

    const/16 v23, 0x1

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, v18, v22

    goto :goto_0

    .line 199
    :cond_3
    const/16 v22, 0x2

    move v0, v11

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 200
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    div-double v23, v23, v25

    const/16 v25, 0x1

    aget-short v25, v3, v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    div-double v25, v25, v27

    add-double v23, v23, v25

    aput-wide v23, v18, v22

    .line 201
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_2
    const/16 v22, 0x1

    sub-int v22, v11, v22

    move v0, v6

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 202
    const/16 v22, 0x1

    sub-int v22, v6, v22

    aget-short v22, v3, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4008

    div-double v22, v22, v24

    aget-short v24, v3, v6

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4008

    div-double v24, v24, v26

    add-double v22, v22, v24

    add-int/lit8 v24, v6, 0x1

    aget-short v24, v3, v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4008

    div-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v18, v6

    .line 201
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 205
    :cond_4
    const/16 v22, 0x1

    sub-int v22, v11, v22

    const/16 v23, 0x2

    sub-int v23, v11, v23

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    div-double v23, v23, v25

    const/16 v25, 0x1

    sub-int v25, v11, v25

    aget-short v25, v3, v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    div-double v25, v25, v27

    add-double v23, v23, v25

    aput-wide v23, v18, v22

    goto/16 :goto_0

    .line 217
    .restart local v7       #maxGain:D
    :cond_5
    const-wide/high16 v15, 0x3ff0

    .line 218
    .local v15, scaleFactor:D
    const-wide v22, 0x406fe00000000000L

    cmpl-double v22, v7, v22

    if-lez v22, :cond_6

    .line 219
    const-wide v22, 0x406fe00000000000L

    div-double v15, v22, v7

    .line 223
    :cond_6
    const-wide/16 v7, 0x0

    .line 224
    const/16 v22, 0x100

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object v4, v0

    .line 225
    .local v4, gainHist:[I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v11, :cond_a

    .line 226
    aget-wide v22, v18, v6

    mul-double v22, v22, v15

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v17, v0

    .line 227
    .local v17, smoothedGain:I
    if-gez v17, :cond_7

    .line 228
    const/16 v17, 0x0

    .line 230
    :cond_7
    const/16 v22, 0xff

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 231
    const/16 v17, 0xff

    .line 234
    :cond_8
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v22, v22, v7

    if-lez v22, :cond_9

    .line 235
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide v7, v0

    .line 238
    :cond_9
    aget v22, v4, v17

    add-int/lit8 v22, v22, 0x1

    aput v22, v4, v17

    .line 225
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 242
    .end local v17           #smoothedGain:I
    :cond_a
    const-wide/16 v9, 0x0

    .line 243
    .local v9, minGain:D
    const/16 v19, 0x0

    .line 244
    .local v19, sum:I
    :goto_4
    const-wide v22, 0x406fe00000000000L

    cmpg-double v22, v9, v22

    if-gez v22, :cond_b

    div-int/lit8 v22, v11, 0x14

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 245
    move-wide v0, v9

    double-to-int v0, v0

    move/from16 v22, v0

    aget v22, v4, v22

    add-int v19, v19, v22

    .line 246
    const-wide/high16 v22, 0x3ff0

    add-double v9, v9, v22

    goto :goto_4

    .line 250
    :cond_b
    const/16 v19, 0x0

    .line 251
    :goto_5
    const-wide/high16 v22, 0x4000

    cmpl-double v22, v7, v22

    if-lez v22, :cond_c

    div-int/lit8 v22, v11, 0x64

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 252
    move-wide v0, v7

    double-to-int v0, v0

    move/from16 v22, v0

    aget v22, v4, v22

    add-int v19, v19, v22

    .line 253
    const-wide/high16 v22, 0x3ff0

    sub-double v7, v7, v22

    goto :goto_5

    .line 257
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070002

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingBottom()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4080

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move v5, v0

    .line 260
    .local v5, halfHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 262
    .local v2, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->getDuration()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v23

    div-int v12, v22, v23

    .line 263
    .local v12, numFramesComp:I
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/AudioTrackView;->mNormalizedGains:[D

    .line 264
    sub-double v13, v7, v9

    .line 265
    .local v13, range:D
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v11, :cond_f

    .line 266
    aget-wide v22, v18, v6

    mul-double v22, v22, v15

    sub-double v22, v22, v9

    div-double v20, v22, v13

    .line 267
    .local v20, value:D
    const-wide/16 v22, 0x0

    cmpg-double v22, v20, v22

    if-gez v22, :cond_d

    .line 268
    const-wide/16 v20, 0x0

    .line 271
    :cond_d
    const-wide/high16 v22, 0x3ff0

    cmpl-double v22, v20, v22

    if-lez v22, :cond_e

    .line 272
    const-wide/high16 v20, 0x3ff0

    .line 275
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mNormalizedGains:[D

    move-object/from16 v22, v0

    mul-double v23, v20, v20

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    aput-wide v23, v22, v6

    .line 265
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 277
    .end local v20           #value:D
    :cond_f
    return-void
.end method

.method public updateTimelineDuration(J)V
    .locals 0
    .parameter "timelineDurationMs"

    .prologue
    .line 285
    iput-wide p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mTimelineDurationMs:J

    .line 286
    return-void
.end method
