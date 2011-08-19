.class public Lcom/android/videoeditor/widgets/PlayheadView;
.super Landroid/view/View;
.source "PlayheadView.java"


# instance fields
.field private final mLinePaint:Landroid/graphics/Paint;

.field private mProject:Lcom/android/videoeditor/service/VideoEditorProject;

.field private final mScreenWidth:I

.field private final mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

.field private mScrollX:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTicksHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/PlayheadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/PlayheadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v5, 0x7f060004

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    .line 56
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTicksHeight:I

    .line 70
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 72
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    .line 77
    new-instance v3, Lcom/android/videoeditor/widgets/PlayheadView$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/PlayheadView$1;-><init>(Lcom/android/videoeditor/widgets/PlayheadView;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/PlayheadView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 123
    .local v0, scrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    .line 124
    iget-object v1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 125
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 134
    .local v0, scrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 135
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 149
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v12

    .line 156
    .local v12, durationMs:J
    const-wide/16 v7, 0x3e8

    div-long v14, v12, v7

    .line 157
    .local v14, durationSec:J
    const-wide/16 v7, 0x0

    cmp-long v5, v12, v7

    if-eqz v5, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v5, v14, v7

    if-nez v5, :cond_3

    .line 158
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v7, v8}, Lcom/android/videoeditor/util/StringUtils;->getSimpleTimestampAsString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    .line 159
    .local v23, timeText:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0x23

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 163
    .end local v23           #timeText:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    move v6, v0

    sub-int v24, v5, v6

    .line 165
    .local v24, width:I
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v7, v0

    div-long/2addr v7, v14

    move-wide v0, v7

    long-to-int v0, v0

    move/from16 v17, v0

    .line 169
    .local v17, pixelsPerSec:I
    const/4 v5, 0x4

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_4

    .line 170
    const-wide/32 v21, 0x3a980

    .line 183
    .local v21, tickMs:J
    :goto_1
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v7, v0

    mul-long v7, v7, v21

    long-to-float v5, v7

    long-to-float v6, v12

    div-float v18, v5, v6

    .line 184
    .local v18, spacing:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    move v7, v0

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    rem-float v6, v6, v18

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 186
    .local v20, startX:F
    move-wide/from16 v0, v21

    long-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v20, v6

    mul-float/2addr v5, v6

    div-float v19, v5, v18

    .line 187
    .local v19, startMs:F
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v19, v0

    .line 188
    move-wide/from16 v0, v21

    long-to-float v0, v0

    move v5, v0

    rem-float v5, v19, v5

    sub-float v19, v19, v5

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v16, v0

    .line 191
    .local v16, endX:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 192
    .local v11, context:Landroid/content/Context;
    move/from16 v6, v20

    .local v6, i:F
    :goto_2
    cmpg-float v5, v6, v16

    if-gtz v5, :cond_0

    .line 193
    move/from16 v0, v19

    float-to-long v0, v0

    move-wide v7, v0

    invoke-static {v11, v7, v8}, Lcom/android/videoeditor/util/StringUtils;->getSimpleTimestampAsString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    .line 194
    .restart local v23       #timeText:Ljava/lang/String;
    const/high16 v5, 0x420c

    sub-float v5, v6, v5

    const/high16 v7, 0x41e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move v2, v5

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 195
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mTicksHeight:I

    move v5, v0

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    move v8, v6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    add-float v6, v6, v18

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move v5, v0

    add-float v19, v19, v5

    goto :goto_2

    .line 171
    .end local v6           #i:F
    .end local v11           #context:Landroid/content/Context;
    .end local v16           #endX:F
    .end local v18           #spacing:F
    .end local v19           #startMs:F
    .end local v20           #startX:F
    .end local v21           #tickMs:J
    .end local v23           #timeText:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x6

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_5

    .line 172
    const-wide/32 v21, 0x1d4c0

    .restart local v21       #tickMs:J
    goto/16 :goto_1

    .line 173
    .end local v21           #tickMs:J
    :cond_5
    const/16 v5, 0xa

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 174
    const-wide/32 v21, 0xea60

    .restart local v21       #tickMs:J
    goto/16 :goto_1

    .line 175
    .end local v21           #tickMs:J
    :cond_6
    const/16 v5, 0x32

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_7

    .line 176
    const-wide/16 v21, 0x2710

    .restart local v21       #tickMs:J
    goto/16 :goto_1

    .line 177
    .end local v21           #tickMs:J
    :cond_7
    const/16 v5, 0xc8

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 178
    const-wide/16 v21, 0x1388

    .restart local v21       #tickMs:J
    goto/16 :goto_1

    .line 180
    .end local v21           #tickMs:J
    :cond_8
    const-wide/16 v21, 0x3e8

    .restart local v21       #tickMs:J
    goto/16 :goto_1
.end method

.method public setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V
    .locals 0
    .parameter "project"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 142
    return-void
.end method
