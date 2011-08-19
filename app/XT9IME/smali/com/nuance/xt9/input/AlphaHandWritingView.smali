.class public Lcom/nuance/xt9/input/AlphaHandWritingView;
.super Lcom/nuance/xt9/input/HandWritingView;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;,
        Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;
    }
.end annotation


# static fields
.field private static final FADING_DELAY:I = 0x32

.field private static final MSG_FADING:I = 0x1

.field private static final PEN_WIDTH:I = 0x6

.field private static final mFadingEffectOn:Z = true


# instance fields
.field private mDemoPaint:Landroid/graphics/Paint;

.field private mDemoString:Ljava/lang/String;

.field private mFaddingStrokeQueue:Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;

.field mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mPenColor:I

.field private mStroke:Lcom/nuance/xt9/input/Stroke;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/AlphaHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoString:Ljava/lang/String;

    .line 71
    new-instance v1, Lcom/nuance/xt9/input/AlphaHandWritingView$1;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/AlphaHandWritingView$1;-><init>(Lcom/nuance/xt9/input/AlphaHandWritingView;)V

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 49
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPenColor:I

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4140

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 60
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 61
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40c0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPenColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    new-instance v1, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;

    iget v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPenColor:I

    invoke-direct {v1, p0, p1, v2}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;-><init>(Lcom/nuance/xt9/input/AlphaHandWritingView;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;

    .line 67
    invoke-static {}, Lcom/nuance/xt9/input/Stroke;->create()Lcom/nuance/xt9/input/Stroke;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mStroke:Lcom/nuance/xt9/input/Stroke;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/AlphaHandWritingView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->fading()V

    return-void
.end method

.method private fading()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-static {v0}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->access$200(Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;)I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->invalidate()V

    .line 126
    :cond_0
    return-void
.end method

.method private startFading()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-static {v0}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->access$200(Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;)I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    :cond_0
    return-void
.end method

.method private stopFading()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->clear()V

    .line 138
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->stopFading()V

    .line 171
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->invalidate()V

    .line 172
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoString:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v2, v5

    .line 104
    .local v2, textWidth:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v3, v5, 0x2

    .line 105
    .local v3, x:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x4

    sub-int v4, v5, v6

    .line 106
    .local v4, y:I
    int-to-float v5, v4

    invoke-virtual {p1, v9, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoString:Ljava/lang/String;

    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mDemoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 108
    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual {p1, v9, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    .end local v2           #textWidth:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-static {v5, p1}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->access$100(Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;Landroid/graphics/Canvas;)V

    .line 113
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->reduceAlpha()V

    .line 115
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mStroke:Lcom/nuance/xt9/input/Stroke;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v1

    .line 116
    .local v1, paths:[Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 117
    aget-object v5, v1, v0

    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/HandWritingView;->onMeasure(II)V

    .line 92
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 93
    .local v0, h:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 96
    .local v1, w:I
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "me"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mStroke:Lcom/nuance/xt9/input/Stroke;

    invoke-virtual {v2, p1}, Lcom/nuance/xt9/input/Stroke;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 162
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->invalidate()V

    .line 166
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 147
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mOnWritingActionListener:Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;

    invoke-interface {v2, p0}, Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->invalidate()V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mStroke:Lcom/nuance/xt9/input/Stroke;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v1

    .line 153
    .local v1, paths:[Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->add(Landroid/graphics/Path;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->startFading()V

    .line 157
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mOnWritingActionListener:Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mStroke:Lcom/nuance/xt9/input/Stroke;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Stroke;->getArcs()[Lcom/nuance/xt9/input/Stroke$Arc;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;->penUp([Lcom/nuance/xt9/input/Stroke$Arc;Landroid/view/View;)V

    .line 158
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView;->mStroke:Lcom/nuance/xt9/input/Stroke;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/Stroke;->clear()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
