.class public Lcom/android/browser/view/PieMenu;
.super Landroid/widget/FrameLayout;
.source "PieMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/view/PieMenu$PieView;,
        Lcom/android/browser/view/PieMenu$PieController;
    }
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCenter:Landroid/graphics/Point;

.field private mController:Lcom/android/browser/view/PieMenu$PieController;

.field private mCounts:[I

.field mCurrentItem:Lcom/android/browser/view/PieItem;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/view/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLevels:I

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mOpen:Z

.field private mPieView:Lcom/android/browser/view/PieMenu$PieView;

.field private mRadius:I

.field private mRadiusInc:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSlop:I

.field private mTouchOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/browser/view/PieMenu;->init(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/browser/view/PieMenu;->init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/browser/view/PieMenu;->init(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method private deselect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/view/PieItem;->setSelected(Z)V

    .line 405
    :cond_0
    iput-object v2, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    .line 406
    iput-object v2, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 407
    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/android/browser/view/PieItem;)V
    .locals 7
    .parameter "canvas"
    .parameter "item"

    .prologue
    .line 277
    invoke-virtual {p2}, Lcom/android/browser/view/PieItem;->getOuterRadius()I

    move-result v1

    .line 278
    .local v1, outer:I
    iget-object v5, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v0, v5, v1

    .line 279
    .local v0, left:I
    iget-object v5, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v3, v5, v1

    .line 281
    .local v3, top:I
    invoke-virtual {p2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v4

    .line 282
    .local v4, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 283
    .local v2, state:I
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 285
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 286
    return-void
.end method

.method private drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "canvas"
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 289
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    return-void
.end method

.method private findItem(Landroid/graphics/PointF;)Lcom/android/browser/view/PieItem;
    .locals 4
    .parameter "polar"

    .prologue
    .line 434
    iget-object v2, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/view/PieItem;

    .line 435
    .local v1, item:Lcom/android/browser/view/PieItem;
    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getInnerRadius()I

    move-result v2

    iget v3, p0, Lcom/android/browser/view/PieMenu;->mTouchOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getOuterRadius()I

    move-result v2

    iget v3, p0, Lcom/android/browser/view/PieMenu;->mTouchOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getStartAngle()F

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getStartAngle()F

    move-result v2

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getSweep()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move-object v2, v1

    .line 442
    .end local v1           #item:Lcom/android/browser/view/PieItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDegrees(D)F
    .locals 6
    .parameter "angle"

    .prologue
    .line 242
    const-wide v0, 0x4070e00000000000L

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v2, p1

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getPolar(FF)Landroid/graphics/PointF;
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 410
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 412
    .local v0, res:Landroid/graphics/PointF;
    const v1, 0x3fc90fdb

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 413
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    .line 414
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    if-ge v1, v2, :cond_0

    .line 415
    neg-float p1, p1

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float p2, v1, p2

    .line 418
    mul-float v1, p1, p1

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 419
    cmpl-float v1, p2, v3

    if-lez v1, :cond_2

    .line 420
    iget v1, v0, Landroid/graphics/PointF;->y:F

    div-float v1, p1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 424
    :cond_1
    :goto_0
    return-object v0

    .line 421
    :cond_2
    cmpg-float v1, p2, v3

    if-gez v1, :cond_1

    .line 422
    const-wide v1, 0x400921fb54442d18L

    iget v3, v0, Landroid/graphics/PointF;->y:F

    div-float v3, p1, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    .line 121
    iput v2, p0, Lcom/android/browser/view/PieMenu;->mLevels:I

    .line 122
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mCounts:[I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mRadius:I

    .line 125
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    .line 126
    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    .line 127
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mTouchOffset:I

    .line 128
    iput-boolean v2, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/browser/view/PieMenu;->setWillNotDraw(Z)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/browser/view/PieMenu;->setDrawingCacheEnabled(Z)V

    .line 131
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    .line 132
    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 133
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    .line 134
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    .line 137
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    return-void
.end method

.method private layoutPie()V
    .locals 31

    .prologue
    .line 194
    const v17, 0x3e490fdb

    .line 195
    .local v17, emptyangle:F
    const/16 v26, 0x2

    .line 196
    .local v26, rgap:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/PieMenu;->mRadius:I

    move v5, v0

    add-int v9, v5, v26

    .line 197
    .local v9, inner:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/PieMenu;->mRadius:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    move v6, v0

    add-int/2addr v5, v6

    sub-int v8, v5, v26

    .line 198
    .local v8, outer:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/PieMenu;->mRadius:I

    move/from16 v25, v0

    .line 199
    .local v25, radius:I
    const/16 v18, 0x1

    .line 200
    .local v18, gap:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/PieMenu;->mLevels:I

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 201
    add-int/lit8 v23, v20, 0x1

    .line 202
    .local v23, level:I
    const-wide v5, 0x400921fb54442d18L

    const/high16 v7, 0x4000

    mul-float v7, v7, v17

    float-to-double v10, v7

    sub-double/2addr v5, v10

    double-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/PieMenu;->mCounts:[I

    move-object v6, v0

    aget v6, v6, v23

    int-to-float v6, v6

    div-float v12, v5, v6

    .line 203
    .local v12, sweep:F
    const/high16 v5, 0x4000

    div-float v5, v12, v5

    add-float v16, v17, v5

    .line 204
    .local v16, angle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/browser/view/PieItem;

    .line 205
    .local v22, item:Lcom/android/browser/view/PieItem;
    invoke-virtual/range {v22 .. v22}, Lcom/android/browser/view/PieItem;->getLevel()I

    move-result v5

    move v0, v5

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 206
    invoke-virtual/range {v22 .. v22}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v27

    .line 207
    .local v27, view:Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v27

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 209
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 210
    .local v28, w:I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    .line 211
    .local v19, h:I
    sub-int v5, v8, v9

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int v24, v9, v5

    .line 212
    .local v24, r:I
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v5, v10

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v29, v0

    .line 213
    .local v29, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->y:I

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide v6, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v6, v10

    double-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v19, 0x2

    sub-int v30, v5, v6

    .line 214
    .local v30, y:I
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int v5, v5, v29

    div-int/lit8 v6, v28, 0x2

    sub-int v29, v5, v6

    .line 219
    :goto_2
    add-int v5, v29, v28

    add-int v6, v30, v19

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 220
    const/high16 v5, 0x4000

    div-float v5, v12, v5

    sub-float v11, v16, v5

    .line 221
    .local v11, itemstart:F
    float-to-double v5, v11

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/browser/view/PieMenu;->getDegrees(D)F

    move-result v5

    move/from16 v0, v18

    int-to-float v0, v0

    move v6, v0

    sub-float v6, v5, v6

    add-float v5, v11, v12

    float-to-double v13, v5

    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-direct {v0, v1, v2}, Lcom/android/browser/view/PieMenu;->getDegrees(D)F

    move-result v5

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    add-float/2addr v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    move-object v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/browser/view/PieMenu;->makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;

    move-result-object v15

    .local v15, slice:Landroid/graphics/Path;
    move-object/from16 v10, v22

    move v13, v9

    move v14, v8

    .line 224
    invoke-virtual/range {v10 .. v15}, Lcom/android/browser/view/PieItem;->setGeometry(FFIILandroid/graphics/Path;)V

    .line 225
    add-float v16, v16, v12

    goto/16 :goto_1

    .line 217
    .end local v11           #itemstart:F
    .end local v15           #slice:Landroid/graphics/Path;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v5, v5, v29

    div-int/lit8 v6, v28, 0x2

    sub-int v29, v5, v6

    goto :goto_2

    .line 228
    .end local v19           #h:I
    .end local v22           #item:Lcom/android/browser/view/PieItem;
    .end local v24           #r:I
    .end local v27           #view:Landroid/view/View;
    .end local v28           #w:I
    .end local v29           #x:I
    .end local v30           #y:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    move v5, v0

    add-int/2addr v9, v5

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    move v5, v0

    add-int/2addr v8, v5

    .line 200
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 231
    .end local v12           #sweep:F
    .end local v16           #angle:F
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v23           #level:I
    :cond_3
    return-void
.end method

.method private layoutPieView(Lcom/android/browser/view/PieMenu$PieView;IIF)V
    .locals 1
    .parameter "pv"
    .parameter "x"
    .parameter "y"
    .parameter "angle"

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v0

    invoke-interface {p1, p2, p3, v0, p4}, Lcom/android/browser/view/PieMenu$PieView;->layout(IIZF)V

    .line 380
    return-void
.end method

.method private makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "outer"
    .parameter "inner"
    .parameter "center"

    .prologue
    .line 293
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p3

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p3

    int-to-float v4, v4

    iget v5, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    iget v6, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p3

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 296
    .local v0, bb:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p4

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p4

    int-to-float v4, v4

    iget v5, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, p4

    int-to-float v5, v5

    iget v6, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p4

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 299
    .local v1, bbi:Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 300
    .local v2, path:Landroid/graphics/Path;
    sub-float v3, p2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, p1, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 301
    sub-float v3, p1, p2

    invoke-virtual {v2, v1, p2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 302
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 303
    return-object v2
.end method

.method private onEnter(Lcom/android/browser/view/PieItem;)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    invoke-virtual {v0, v1}, Lcom/android/browser/view/PieItem;->setSelected(Z)V

    .line 392
    :cond_0
    if-eqz p1, :cond_1

    .line 394
    invoke-virtual {p0, v1}, Lcom/android/browser/view/PieMenu;->playSoundEffect(I)V

    .line 395
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/browser/view/PieItem;->setSelected(Z)V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 398
    :cond_1
    iput-object p1, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    .line 399
    return-void
.end method

.method private onTheLeft()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCenter(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 185
    iget v0, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    if-ge p1, v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 191
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private show(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    .line 171
    iget-boolean v0, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mController:Lcom/android/browser/view/PieMenu$PieController;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mController:Lcom/android/browser/view/PieMenu$PieController;

    invoke-interface {v0}, Lcom/android/browser/view/PieMenu$PieController;->onOpen()Z

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->layoutPie()V

    .line 177
    :cond_1
    if-nez p1, :cond_2

    .line 178
    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    .line 179
    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->invalidate()V

    .line 182
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/browser/view/PieItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p1}, Lcom/android/browser/view/PieItem;->getLevel()I

    move-result v0

    .line 149
    .local v0, l:I
    iget v1, p0, Lcom/android/browser/view/PieMenu;->mLevels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mLevels:I

    .line 150
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mCounts:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 151
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x3f80

    const/high16 v11, -0x4080

    .line 247
    iget-boolean v8, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v8, :cond_4

    .line 248
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 249
    .local v7, w:I
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 250
    .local v0, h:I
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int v3, v8, v7

    .line 251
    .local v3, left:I
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    div-int/lit8 v9, v0, 0x2

    sub-int v6, v8, v9

    .line 252
    .local v6, top:I
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    add-int v9, v3, v7

    add-int v10, v6, v0

    invoke-virtual {v8, v3, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 255
    .local v5, state:I
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 256
    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 258
    :cond_0
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 260
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/view/PieItem;

    .line 261
    .local v2, item:Lcom/android/browser/view/PieItem;
    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    move-object v4, v8

    .line 262
    .local v4, p:Landroid/graphics/Paint;
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 263
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 264
    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 266
    :cond_1
    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v8

    invoke-direct {p0, p1, v8, v4}, Lcom/android/browser/view/PieMenu;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 268
    invoke-direct {p0, p1, v2}, Lcom/android/browser/view/PieMenu;->drawItem(Landroid/graphics/Canvas;Lcom/android/browser/view/PieItem;)V

    goto :goto_0

    .line 261
    .end local v4           #p:Landroid/graphics/Paint;
    :cond_2
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    move-object v4, v8

    goto :goto_1

    .line 270
    .end local v2           #item:Lcom/android/browser/view/PieItem;
    :cond_3
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    if-eqz v8, :cond_4

    .line 271
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    invoke-interface {v8, p1}, Lcom/android/browser/view/PieMenu$PieView;->draw(Landroid/graphics/Canvas;)V

    .line 274
    .end local v0           #h:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #left:I
    .end local v5           #state:I
    .end local v6           #top:I
    .end local v7           #w:I
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "evt"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 311
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 312
    .local v9, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 313
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v3

    .line 314
    .local v3, edges:I
    if-nez v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v8, v10

    if-gtz v10, :cond_0

    iget v10, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    int-to-float v10, v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_c

    .line 316
    :cond_0
    float-to-int v10, v8

    float-to-int v11, v9

    invoke-direct {p0, v10, v11}, Lcom/android/browser/view/PieMenu;->setCenter(II)V

    .line 317
    invoke-direct {p0, v12}, Lcom/android/browser/view/PieMenu;->show(Z)V

    move v10, v12

    .line 375
    .end local p0
    :goto_0
    return v10

    .line 320
    .restart local p0
    :cond_1
    if-ne v12, v0, :cond_4

    .line 321
    iget-boolean v10, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v10, :cond_c

    .line 322
    const/4 v4, 0x0

    .line 323
    .local v4, handled:Z
    iget-object v10, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    if-eqz v10, :cond_2

    .line 324
    iget-object v10, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    invoke-interface {v10, p1}, Lcom/android/browser/view/PieMenu$PieView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 326
    :cond_2
    iget-object v5, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    .line 327
    .local v5, item:Lcom/android/browser/view/PieItem;
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->deselect()V

    .line 328
    invoke-direct {p0, v13}, Lcom/android/browser/view/PieMenu;->show(Z)V

    .line 329
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    .line 330
    invoke-virtual {v5}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->performClick()Z

    :cond_3
    move v10, v12

    .line 332
    goto :goto_0

    .line 334
    .end local v4           #handled:Z
    .end local v5           #item:Lcom/android/browser/view/PieItem;
    :cond_4
    const/4 v10, 0x3

    if-ne v10, v0, :cond_6

    .line 335
    iget-boolean v10, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v10, :cond_5

    .line 336
    invoke-direct {p0, v13}, Lcom/android/browser/view/PieMenu;->show(Z)V

    .line 338
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->deselect()V

    move v10, v13

    .line 339
    goto :goto_0

    .line 340
    :cond_6
    const/4 v10, 0x2

    if-ne v10, v0, :cond_c

    .line 341
    const/4 v4, 0x0

    .line 342
    .restart local v4       #handled:Z
    invoke-direct {p0, v8, v9}, Lcom/android/browser/view/PieMenu;->getPolar(FF)Landroid/graphics/PointF;

    move-result-object v7

    .line 343
    .local v7, polar:Landroid/graphics/PointF;
    iget v10, p0, Lcom/android/browser/view/PieMenu;->mRadius:I

    iget v11, p0, Lcom/android/browser/view/PieMenu;->mLevels:I

    iget v12, p0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    add-int/lit8 v6, v10, 0x32

    .line 344
    .local v6, maxr:I
    iget-object v10, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    if-eqz v10, :cond_7

    .line 345
    iget-object v10, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    invoke-interface {v10, p1}, Lcom/android/browser/view/PieMenu$PieView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 347
    :cond_7
    if-eqz v4, :cond_8

    .line 348
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->invalidate()V

    move v10, v13

    .line 349
    goto :goto_0

    .line 351
    :cond_8
    iget v10, v7, Landroid/graphics/PointF;->y:F

    int-to-float v11, v6

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    .line 352
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->deselect()V

    .line 353
    invoke-direct {p0, v13}, Lcom/android/browser/view/PieMenu;->show(Z)V

    .line 354
    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->setAction(I)V

    .line 355
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 356
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    move v10, v13

    .line 358
    goto :goto_0

    .line 360
    .restart local p0
    :cond_a
    invoke-direct {p0, v7}, Lcom/android/browser/view/PieMenu;->findItem(Landroid/graphics/PointF;)Lcom/android/browser/view/PieItem;

    move-result-object v5

    .line 361
    .restart local v5       #item:Lcom/android/browser/view/PieItem;
    iget-object v10, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    if-eq v10, v5, :cond_c

    .line 362
    invoke-direct {p0, v5}, Lcom/android/browser/view/PieMenu;->onEnter(Lcom/android/browser/view/PieItem;)V

    .line 363
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/android/browser/view/PieItem;->isPieView()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 364
    invoke-virtual {v5}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v5}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    :goto_1
    add-int v1, v10, v11

    .line 366
    .local v1, cx:I
    invoke-virtual {v5}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    .line 367
    .local v2, cy:I
    invoke-virtual {v5}, Lcom/android/browser/view/PieItem;->getPieView()Lcom/android/browser/view/PieMenu$PieView;

    move-result-object v10

    iput-object v10, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 368
    iget-object v10, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    invoke-virtual {v5}, Lcom/android/browser/view/PieItem;->getStartAngle()F

    move-result v11

    invoke-virtual {v5}, Lcom/android/browser/view/PieItem;->getSweep()F

    move-result v12

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-direct {p0, v10, v1, v2, v11}, Lcom/android/browser/view/PieMenu;->layoutPieView(Lcom/android/browser/view/PieMenu$PieView;IIF)V

    .line 371
    .end local v1           #cx:I
    .end local v2           #cy:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->invalidate()V

    .end local v4           #handled:Z
    .end local v5           #item:Lcom/android/browser/view/PieItem;
    .end local v6           #maxr:I
    .end local v7           #polar:Landroid/graphics/PointF;
    :cond_c
    move v10, v13

    .line 375
    goto/16 :goto_0

    .restart local v4       #handled:Z
    .restart local v5       #item:Lcom/android/browser/view/PieItem;
    .restart local v6       #maxr:I
    .restart local v7       #polar:Landroid/graphics/PointF;
    :cond_d
    move v11, v13

    .line 364
    goto :goto_1
.end method

.method public setController(Lcom/android/browser/view/PieMenu$PieController;)V
    .locals 0
    .parameter "ctl"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/browser/view/PieMenu;->mController:Lcom/android/browser/view/PieMenu$PieController;

    .line 143
    return-void
.end method
