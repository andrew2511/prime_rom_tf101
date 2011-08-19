.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$1;,
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;
    }
.end annotation


# static fields
.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDither:Z

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRectIsDirty:Z

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 155
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .registers 4
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 1029
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 119
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 122
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 129
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1030
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1031
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 1032
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 1033
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .registers 4
    .parameter "orientation"
    .parameter "colors"

    .prologue
    .line 162
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 163
    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .registers 16
    .parameter "st"

    .prologue
    const/4 v13, -0x1

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x43b4

    .line 391
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v8, :cond_17

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z
    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-boolean v8, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v8, :cond_17

    :cond_14
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 439
    :goto_16
    return-object v8

    .line 392
    :cond_17
    iput-boolean v11, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 394
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z
    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v8

    if-eqz v8, :cond_97

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v10

    const v9, 0x461c4000

    div-float/2addr v8, v9

    move v4, v8

    .line 396
    .local v4, sweep:F
    :goto_2a
    new-instance v0, Landroid/graphics/RectF;

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 398
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float v6, v8, v12

    .line 399
    .local v6, x:F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v7, v8, v12

    .line 401
    .local v7, y:F
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-eq v8, v13, :cond_99

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v8, v8

    move v5, v8

    .line 404
    .local v5, thickness:F
    :goto_45
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v8, v13, :cond_a2

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v8, v8

    move v2, v8

    .line 407
    .local v2, radius:F
    :goto_4d
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 408
    .local v1, innerBounds:Landroid/graphics/RectF;
    sub-float v8, v6, v2

    sub-float v9, v7, v2

    invoke-virtual {v1, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 410
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #bounds:Landroid/graphics/RectF;
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 411
    .restart local v0       #bounds:Landroid/graphics/RectF;
    neg-float v8, v5

    neg-float v9, v5

    invoke-virtual {v0, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 413
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v8, :cond_ab

    .line 414
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 419
    :goto_6e
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 422
    .local v3, ringPath:Landroid/graphics/Path;
    cmpg-float v8, v4, v10

    if-gez v8, :cond_b1

    const/high16 v8, -0x3c4c

    cmpl-float v8, v4, v8

    if-lez v8, :cond_b1

    .line 423
    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 425
    add-float v8, v6, v2

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 427
    add-float v8, v6, v2

    add-float/2addr v8, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 429
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 431
    neg-float v8, v4

    invoke-virtual {v3, v1, v4, v8, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 432
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    :goto_95
    move-object v8, v3

    .line 439
    goto :goto_16

    .end local v0           #bounds:Landroid/graphics/RectF;
    .end local v1           #innerBounds:Landroid/graphics/RectF;
    .end local v2           #radius:F
    .end local v3           #ringPath:Landroid/graphics/Path;
    .end local v4           #sweep:F
    .end local v5           #thickness:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_97
    move v4, v10

    .line 394
    goto :goto_2a

    .line 401
    .restart local v0       #bounds:Landroid/graphics/RectF;
    .restart local v4       #sweep:F
    .restart local v6       #x:F
    .restart local v7       #y:F
    :cond_99
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v8, v9

    move v5, v8

    goto :goto_45

    .line 404
    .restart local v5       #thickness:F
    :cond_a2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float/2addr v8, v9

    move v2, v8

    goto :goto_4d

    .line 416
    .restart local v1       #innerBounds:Landroid/graphics/RectF;
    .restart local v2       #radius:F
    :cond_ab
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    goto :goto_6e

    .line 435
    .restart local v3       #ringPath:Landroid/graphics/Path;
    :cond_b1
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 436
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_95
.end method

.method private ensureValidRect()Z
    .registers 29

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    move v5, v0

    if-eqz v5, :cond_b6

    .line 509
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v18

    .line 512
    .local v18, bounds:Landroid/graphics/Rect;
    const/16 v21, 0x0

    .line 514
    .local v21, inset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-eqz v5, :cond_27

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3f00

    mul-float v21, v5, v6

    .line 518
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v25, v0

    .line 520
    .local v25, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v6, v6

    add-float v6, v6, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    add-float v7, v7, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    int-to-float v8, v8

    sub-float v8, v8, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    int-to-float v9, v9

    sub-float v9, v9, v21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 523
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object v10, v0

    .line 524
    .local v10, colors:[I
    if-eqz v10, :cond_b6

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    .line 528
    .local v24, r:Landroid/graphics/RectF;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move v5, v0

    if-nez v5, :cond_162

    .line 529
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x461c4000

    div-float/2addr v5, v6

    move/from16 v23, v5

    .line 530
    .local v23, level:F
    :goto_7a
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_29c

    .line 560
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .local v6, x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 561
    .local v7, y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v5, v0

    mul-float v8, v23, v5

    .local v8, x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    mul-float v9, v23, v5

    .line 565
    .local v9, y1:F
    :goto_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v13, v0

    new-instance v5, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object v11, v0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 609
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    .end local v10           #colors:[I
    .end local v18           #bounds:Landroid/graphics/Rect;
    .end local v21           #inset:F
    .end local v23           #level:F
    .end local v24           #r:Landroid/graphics/RectF;
    .end local v25           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_b6
    :goto_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_298

    const/4 v5, 0x1

    :goto_c2
    return v5

    .line 529
    .restart local v10       #colors:[I
    .restart local v18       #bounds:Landroid/graphics/Rect;
    .restart local v21       #inset:F
    .restart local v24       #r:Landroid/graphics/RectF;
    .restart local v25       #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_c3
    const/high16 v5, 0x3f80

    move/from16 v23, v5

    goto :goto_7a

    .line 532
    .restart local v23       #level:F
    :pswitch_c8
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 533
    .restart local v7       #y0:F
    move v8, v6

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    mul-float v9, v23, v5

    .line 534
    .restart local v9       #y1:F
    goto :goto_a2

    .line 536
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_db
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 537
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    mul-float v9, v23, v5

    .line 538
    .restart local v9       #y1:F
    goto :goto_a2

    .line 540
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_f4
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 541
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move v9, v7

    .line 542
    .restart local v9       #y1:F
    goto :goto_a2

    .line 544
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_107
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    .line 545
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    mul-float v9, v23, v5

    .line 546
    .restart local v9       #y1:F
    goto :goto_a2

    .line 548
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_120
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    .line 549
    .restart local v7       #y0:F
    move v8, v6

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    mul-float v9, v23, v5

    .line 550
    .restart local v9       #y1:F
    goto/16 :goto_a2

    .line 552
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_134
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    .line 553
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    mul-float v9, v23, v5

    .line 554
    .restart local v9       #y1:F
    goto/16 :goto_a2

    .line 556
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_14e
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 557
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move v9, v7

    .line 558
    .restart local v9       #y1:F
    goto/16 :goto_a2

    .line 567
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    .end local v23           #level:F
    :cond_162
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c8

    .line 568
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v7, v0

    sub-float/2addr v6, v7

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 569
    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v8, v0

    sub-float/2addr v7, v8

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    .line 571
    .restart local v7       #y0:F
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v5

    if-eqz v5, :cond_1c3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    const v8, 0x461c4000

    div-float/2addr v5, v8

    move/from16 v23, v5

    .line 573
    .restart local v23       #level:F
    :goto_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    new-instance v11, Landroid/graphics/RadialGradient;

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$400(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v8

    mul-float v14, v23, v8

    const/16 v16, 0x0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v12, v6

    move v13, v7

    move-object v15, v10

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_b6

    .line 571
    .end local v23           #level:F
    :cond_1c3
    const/high16 v5, 0x3f80

    move/from16 v23, v5

    goto :goto_1a7

    .line 576
    .end local v6           #x0:F
    .end local v7           #y0:F
    :cond_1c8
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b6

    .line 577
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v7, v0

    sub-float/2addr v6, v7

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 578
    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v8, v0

    sub-float/2addr v7, v8

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    .line 580
    .restart local v7       #y0:F
    move-object/from16 v26, v10

    .line 581
    .local v26, tempColors:[I
    const/16 v27, 0x0

    .line 583
    .local v27, tempPositions:[F
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v5

    if-eqz v5, :cond_282

    .line 584
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object/from16 v26, v0

    .line 585
    move-object v0, v10

    array-length v0, v0

    move/from16 v22, v0

    .line 586
    .local v22, length:I
    if-eqz v26, :cond_21a

    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    add-int/lit8 v8, v22, 0x1

    if-eq v5, v8, :cond_227

    .line 587
    :cond_21a
    add-int/lit8 v5, v22, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .end local v26           #tempColors:[I
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 589
    .restart local v26       #tempColors:[I
    :cond_227
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move v1, v5

    move-object/from16 v2, v26

    move v3, v8

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    const/4 v5, 0x1

    sub-int v5, v22, v5

    aget v5, v10, v5

    aput v5, v26, v22

    .line 592
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    move-object/from16 v27, v0

    .line 593
    const/high16 v5, 0x3f80

    const/4 v8, 0x1

    sub-int v8, v22, v8

    int-to-float v8, v8

    div-float v19, v5, v8

    .line 594
    .local v19, fraction:F
    if-eqz v27, :cond_252

    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    add-int/lit8 v8, v22, 0x1

    if-eq v5, v8, :cond_25f

    .line 595
    :cond_252
    add-int/lit8 v5, v22, 0x1

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v27, v0

    .end local v27           #tempPositions:[F
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 598
    .restart local v27       #tempPositions:[F
    :cond_25f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    const v8, 0x461c4000

    div-float v23, v5, v8

    .line 599
    .restart local v23       #level:F
    const/16 v20, 0x0

    .local v20, i:I
    :goto_26b
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_27e

    .line 600
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v19

    mul-float v5, v5, v23

    aput v5, v27, v20

    .line 599
    add-int/lit8 v20, v20, 0x1

    goto :goto_26b

    .line 602
    :cond_27e
    const/high16 v5, 0x3f80

    aput v5, v27, v22

    .line 605
    .end local v19           #fraction:F
    .end local v20           #i:I
    .end local v22           #length:I
    .end local v23           #level:F
    :cond_282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    new-instance v8, Landroid/graphics/SweepGradient;

    move-object v0, v8

    move v1, v6

    move v2, v7

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_b6

    .line 609
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v10           #colors:[I
    .end local v18           #bounds:Landroid/graphics/Rect;
    .end local v21           #inset:F
    .end local v24           #r:Landroid/graphics/RectF;
    .end local v25           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v26           #tempColors:[I
    .end local v27           #tempPositions:[F
    :cond_298
    const/4 v5, 0x0

    goto/16 :goto_c2

    .line 530
    nop

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_db
        :pswitch_f4
        :pswitch_107
        :pswitch_120
        :pswitch_134
        :pswitch_14e
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .registers 9
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    const/high16 v5, 0x3f80

    .line 847
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 848
    .local v0, tv:Landroid/util/TypedValue;
    move v1, p2

    .line 849
    .local v1, v:F
    if-eqz v0, :cond_17

    .line 850
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_18

    const/4 v3, 0x1

    move v2, v3

    .line 851
    .local v2, vIsFraction:Z
    :goto_10
    if-eqz v2, :cond_1b

    invoke-virtual {v0, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    move v1, v3

    .line 853
    .end local v2           #vIsFraction:Z
    :cond_17
    :goto_17
    return v1

    .line 850
    :cond_18
    const/4 v3, 0x0

    move v2, v3

    goto :goto_10

    .line 851
    .restart local v2       #vIsFraction:Z
    :cond_1b
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    move v1, v3

    goto :goto_17
.end method

.method private initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1036
    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    if-eqz v1, :cond_d

    .line 1037
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1039
    :cond_d
    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1040
    iget v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-ltz v1, :cond_4e

    .line 1041
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 1042
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1043
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1044
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1046
    iget v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_4e

    .line 1047
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    aput v3, v1, v2

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    aput v2, v1, v5

    invoke-direct {v0, v1, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1049
    .local v0, e:Landroid/graphics/DashPathEffect;
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1052
    .end local v0           #e:Landroid/graphics/DashPathEffect;
    :cond_4e
    return-void
.end method

.method private modulateAlpha(I)I
    .registers 5
    .parameter "alpha"

    .prologue
    .line 257
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v2, v2, 0x7

    add-int v0, v1, v2

    .line 258
    .local v0, scale:I
    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 263
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v5

    if-nez v5, :cond_7

    .line 388
    :cond_6
    :goto_6
    return-void

    .line 270
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    .line 271
    .local v17, prevFillAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-eqz v5, :cond_f4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    move/from16 v18, v5

    .line 273
    .local v18, prevStrokeAlpha:I
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v12

    .line 274
    .local v12, currFillAlpha:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v13

    .line 276
    .local v13, currStrokeAlpha:I
    if-lez v13, :cond_f9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_f9

    const/4 v5, 0x1

    move v15, v5

    .line 277
    .local v15, haveStroke:Z
    :goto_44
    if-lez v12, :cond_fd

    const/4 v5, 0x1

    move v14, v5

    .line 278
    .local v14, haveFill:Z
    :goto_48
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v21, v0

    .line 284
    .local v21, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    if-eqz v15, :cond_101

    if-eqz v14, :cond_101

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_101

    const/16 v5, 0xff

    if-ge v13, v5, :cond_101

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 294
    .local v22, useLayer:Z
    :goto_61
    if-eqz v22, :cond_106

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-nez v5, :cond_74

    .line 296
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 298
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v20

    .line 303
    .local v20, rad:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v6, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v7, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float v8, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float v9, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v10, v0

    const/4 v11, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 325
    .end local v20           #rad:F
    :cond_e5
    :goto_e5
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    move v5, v0

    packed-switch v5, :pswitch_data_2ba

    .line 380
    :cond_ed
    :goto_ed
    if-eqz v22, :cond_2a0

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 271
    .end local v12           #currFillAlpha:I
    .end local v13           #currStrokeAlpha:I
    .end local v14           #haveFill:Z
    .end local v15           #haveStroke:Z
    .end local v18           #prevStrokeAlpha:I
    .end local v21           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v22           #useLayer:Z
    :cond_f4
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_22

    .line 276
    .restart local v12       #currFillAlpha:I
    .restart local v13       #currStrokeAlpha:I
    .restart local v18       #prevStrokeAlpha:I
    :cond_f9
    const/4 v5, 0x0

    move v15, v5

    goto/16 :goto_44

    .line 277
    .restart local v15       #haveStroke:Z
    :cond_fd
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_48

    .line 284
    .restart local v14       #haveFill:Z
    .restart local v21       #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_101
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_61

    .line 315
    .restart local v22       #useLayer:Z
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 318
    if-eqz v15, :cond_e5

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_e5

    .line 327
    :pswitch_14d
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    move-object v5, v0

    if-eqz v5, :cond_1af

    .line 328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    move v5, v0

    if-nez v5, :cond_162

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    move v5, v0

    if-eqz v5, :cond_189

    .line 329
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    move-object v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 331
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 333
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 334
    if-eqz v15, :cond_ed

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 337
    :cond_1af
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_20d

    .line 343
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    move/from16 v20, v0

    .line 344
    .restart local v20       #rad:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x3f00

    mul-float v19, v5, v6

    .line 345
    .local v19, r:F
    cmpl-float v5, v20, v19

    if-lez v5, :cond_1df

    .line 346
    move/from16 v20, v19

    .line 348
    :cond_1df
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v20

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 349
    if-eqz v15, :cond_ed

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v20

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 353
    .end local v19           #r:F
    .end local v20           #rad:F
    :cond_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 354
    if-eqz v15, :cond_ed

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 360
    :pswitch_233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 361
    if-eqz v15, :cond_ed

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 366
    :pswitch_259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    .line 367
    .local v19, r:Landroid/graphics/RectF;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    .line 368
    .local v7, y:F
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 372
    .end local v7           #y:F
    .end local v19           #r:Landroid/graphics/RectF;
    :pswitch_27a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v16

    .line 373
    .local v16, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 374
    if-eqz v15, :cond_ed

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 383
    .end local v16           #path:Landroid/graphics/Path;
    :cond_2a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 384
    if-eqz v15, :cond_6

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_6

    .line 325
    :pswitch_data_2ba
    .packed-switch 0x0
        :pswitch_14d
        :pswitch_233
        :pswitch_259
        :pswitch_27a
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 450
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .prologue
    .line 868
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 869
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 858
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 481
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "padding"

    .prologue
    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_a
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 42
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v25, v0

    .line 619
    .local v25, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    sget-object v32, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 622
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, v32

    invoke-super {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 625
    const/16 v32, 0x2

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 627
    .local v24, shapeType:I
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 630
    .local v15, dither:Z
    const/16 v32, 0x3

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_be

    .line 631
    const/16 v32, 0x6

    const/16 v33, -0x1

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 633
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_76

    .line 634
    const/16 v32, 0x3

    const/high16 v33, 0x4040

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 637
    :cond_76
    const/16 v32, 0x7

    const/16 v33, -0x1

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 639
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_aa

    .line 640
    const/16 v32, 0x4

    const/high16 v33, 0x4110

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 643
    :cond_aa
    const/16 v32, 0x5

    const/16 v33, 0x1

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v32

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$102(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    .line 647
    :cond_be
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 650
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 654
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v32

    add-int/lit8 v20, v32, 0x1

    .line 657
    .local v20, innerDepth:I
    :cond_d4
    :goto_d4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    .local v30, type:I
    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_560

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .local v14, depth:I
    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_f1

    const/16 v32, 0x3

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_560

    .line 659
    :cond_f1
    const/16 v32, 0x2

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_d4

    .line 663
    move v0, v14

    move/from16 v1, v20

    if-gt v0, v1, :cond_d4

    .line 667
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 669
    .local v21, name:Ljava/lang/String;
    const-string/jumbo v32, "size"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_142

    .line 670
    sget-object v32, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 672
    const/16 v32, 0x1

    const/16 v33, -0x1

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    .line 674
    .local v31, width:I
    const/16 v32, 0x0

    const/16 v33, -0x1

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 676
    .local v19, height:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 677
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    goto :goto_d4

    .line 678
    .end local v19           #height:I
    .end local v31           #width:I
    :cond_142
    const-string v32, "gradient"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_36d

    .line 679
    sget-object v32, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 681
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 683
    .local v26, startColor:I
    const/16 v32, 0x8

    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    .line 685
    .local v18, hasCenterColor:Z
    const/16 v32, 0x8

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 687
    .local v10, centerColor:I
    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .line 689
    .local v16, endColor:I
    const/16 v32, 0x4

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 693
    .local v17, gradientType:I
    const/16 v32, 0x5

    const/high16 v33, 0x3f00

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v32

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$202(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    .line 698
    const/16 v32, 0x6

    const/high16 v33, 0x3f00

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v32

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$302(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    .line 703
    const/16 v32, 0x2

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v32

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    .line 705
    move/from16 v0, v17

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 707
    if-nez v17, :cond_2d8

    .line 708
    const/16 v32, 0x3

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move v6, v0

    .line 710
    .local v6, angle:I
    rem-int/lit16 v6, v6, 0x168

    .line 711
    rem-int/lit8 v32, v6, 0x2d

    if-eqz v32, :cond_215

    .line 712
    new-instance v32, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "<gradient> tag requires \'angle\' attribute to "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "be a multiple of 45"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 717
    :cond_215
    sparse-switch v6, :sswitch_data_562

    .line 758
    .end local v6           #angle:I
    :cond_218
    :goto_218
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 760
    if-eqz v18, :cond_349

    .line 761
    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 762
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v26, v32, v33

    .line 763
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aput v10, v32, v33

    .line 764
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v32, v0

    const/16 v33, 0x2

    aput v16, v32, v33

    .line 766
    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 767
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aput v34, v32, v33

    .line 769
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v32, v0

    const/16 v33, 0x1

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v34

    const/high16 v35, 0x3f00

    cmpl-float v34, v34, v35

    if-eqz v34, :cond_343

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v34

    :goto_279
    aput v34, v32, v33

    .line 770
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v32, v0

    const/16 v33, 0x2

    const/high16 v34, 0x3f80

    aput v34, v32, v33

    goto/16 :goto_d4

    .line 719
    .restart local v6       #angle:I
    :sswitch_289
    sget-object v32, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_218

    .line 722
    :sswitch_292
    sget-object v32, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_218

    .line 725
    :sswitch_29c
    sget-object v32, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_218

    .line 728
    :sswitch_2a6
    sget-object v32, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_218

    .line 731
    :sswitch_2b0
    sget-object v32, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_218

    .line 734
    :sswitch_2ba
    sget-object v32, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_218

    .line 737
    :sswitch_2c4
    sget-object v32, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_218

    .line 740
    :sswitch_2ce
    sget-object v32, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_218

    .line 744
    .end local v6           #angle:I
    :cond_2d8
    const/16 v32, 0x7

    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v29

    .line 746
    .local v29, tv:Landroid/util/TypedValue;
    if-eqz v29, :cond_318

    .line 747
    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_30e

    const/16 v32, 0x1

    move/from16 v23, v32

    .line 748
    .local v23, radiusRel:Z
    :goto_2f5
    if-eqz v23, :cond_313

    const/high16 v32, 0x3f80

    const/high16 v33, 0x3f80

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v32

    :goto_305
    move-object/from16 v0, v25

    move/from16 v1, v32

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$402(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    goto/16 :goto_218

    .line 747
    .end local v23           #radiusRel:Z
    :cond_30e
    const/16 v32, 0x0

    move/from16 v23, v32

    goto :goto_2f5

    .line 748
    .restart local v23       #radiusRel:Z
    :cond_313
    invoke-virtual/range {v29 .. v29}, Landroid/util/TypedValue;->getFloat()F

    move-result v32

    goto :goto_305

    .line 750
    .end local v23           #radiusRel:Z
    :cond_318
    const/16 v32, 0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_218

    .line 751
    new-instance v32, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "<gradient> tag requires \'gradientRadius\' "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "attribute with radial type"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 769
    .end local v29           #tv:Landroid/util/TypedValue;
    :cond_343
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v34

    goto/16 :goto_279

    .line 772
    :cond_349
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 773
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v26, v32, v33

    .line 774
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aput v16, v32, v33

    goto/16 :goto_d4

    .line 777
    .end local v10           #centerColor:I
    .end local v16           #endColor:I
    .end local v17           #gradientType:I
    .end local v18           #hasCenterColor:Z
    .end local v26           #startColor:I
    :cond_36d
    const-string/jumbo v32, "solid"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_39e

    .line 778
    sget-object v32, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 780
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 782
    .local v7, argb:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 783
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_d4

    .line 784
    .end local v7           #argb:I
    :cond_39e
    const-string/jumbo v32, "stroke"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_409

    .line 785
    sget-object v32, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 787
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    .line 789
    .restart local v31       #width:I
    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 791
    .local v11, color:I
    const/16 v32, 0x2

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 793
    .local v13, dashWidth:F
    const/16 v32, 0x0

    cmpl-float v32, v13, v32

    if-eqz v32, :cond_400

    .line 794
    const/16 v32, 0x3

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .line 796
    .local v12, dashGap:F
    move-object/from16 v0, p0

    move/from16 v1, v31

    move v2, v11

    move v3, v13

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 800
    .end local v12           #dashGap:F
    :goto_3fb
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_d4

    .line 798
    :cond_400
    move-object/from16 v0, p0

    move/from16 v1, v31

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_3fb

    .line 801
    .end local v11           #color:I
    .end local v13           #dashWidth:F
    .end local v31           #width:I
    :cond_409
    const-string v32, "corners"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4d4

    .line 802
    sget-object v32, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 804
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    .line 806
    .local v22, radius:I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 807
    const/16 v32, 0x1

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    .line 809
    .local v27, topLeftRadius:I
    const/16 v32, 0x2

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v28

    .line 811
    .local v28, topRightRadius:I
    const/16 v32, 0x3

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 813
    .local v8, bottomLeftRadius:I
    const/16 v32, 0x4

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 815
    .local v9, bottomRightRadius:I
    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_47c

    move/from16 v0, v28

    move/from16 v1, v22

    if-ne v0, v1, :cond_47c

    move v0, v8

    move/from16 v1, v22

    if-ne v0, v1, :cond_47c

    move v0, v9

    move/from16 v1, v22

    if-eq v0, v1, :cond_4cf

    .line 818
    :cond_47c
    const/16 v32, 0x8

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    const/16 v33, 0x1

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    const/16 v33, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    const/16 v33, 0x3

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    const/16 v33, 0x4

    move v0, v9

    int-to-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    const/16 v33, 0x5

    move v0, v9

    int-to-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    const/16 v33, 0x6

    move v0, v8

    int-to-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    const/16 v33, 0x7

    move v0, v8

    int-to-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 825
    :cond_4cf
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_d4

    .line 826
    .end local v8           #bottomLeftRadius:I
    .end local v9           #bottomRightRadius:I
    .end local v22           #radius:I
    .end local v27           #topLeftRadius:I
    .end local v28           #topRightRadius:I
    :cond_4d4
    const-string v32, "padding"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_542

    .line 827
    sget-object v32, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 829
    new-instance v32, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object v0, v5

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v34

    const/16 v35, 0x2

    const/16 v36, 0x0

    move-object v0, v5

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v35

    const/16 v36, 0x3

    const/16 v37, 0x0

    move-object v0, v5

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v36

    invoke-direct/range {v32 .. v36}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 838
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    goto/16 :goto_d4

    .line 841
    :cond_542
    const-string v32, "drawable"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Bad element under <shape>: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d4

    .line 844
    .end local v14           #depth:I
    .end local v21           #name:Ljava/lang/String;
    :cond_560
    return-void

    .line 717
    nop

    :sswitch_data_562
    .sparse-switch
        0x0 -> :sswitch_289
        0x2d -> :sswitch_292
        0x5a -> :sswitch_29c
        0x87 -> :sswitch_2a6
        0xb4 -> :sswitch_2b0
        0xe1 -> :sswitch_2ba
        0x10e -> :sswitch_2c4
        0x13b -> :sswitch_2ce
    .end sparse-switch
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 874
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_1b

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1b

    .line 875
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 876
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 879
    :cond_1b
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "r"

    .prologue
    const/4 v1, 0x1

    .line 486
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 488
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 489
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 490
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    .line 494
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 495
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 496
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 497
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 498
    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 456
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_9

    .line 457
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 458
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 460
    :cond_9
    return-void
.end method

.method public setColor(I)V
    .registers 3
    .parameter "argb"

    .prologue
    .line 443
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColor(I)V

    .line 444
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 445
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 446
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter "cf"

    .prologue
    .line 472
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_9

    .line 473
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 474
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 476
    :cond_9
    return-void
.end method

.method public setCornerRadii([F)V
    .registers 3
    .parameter "radii"

    .prologue
    .line 181
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 184
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3
    .parameter "radius"

    .prologue
    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 193
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 194
    return-void
.end method

.method public setDither(Z)V
    .registers 3
    .parameter "dither"

    .prologue
    .line 464
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    if-eq p1, v0, :cond_9

    .line 465
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    .line 466
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 468
    :cond_9
    return-void
.end method

.method public setGradientCenter(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    .line 243
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 244
    return-void
.end method

.method public setGradientRadius(F)V
    .registers 3
    .parameter "gradientRadius"

    .prologue
    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(F)V

    .line 248
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 249
    return-void
.end method

.method public setGradientType(I)V
    .registers 3
    .parameter "gradient"

    .prologue
    .line 236
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 238
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 239
    return-void
.end method

.method public setShape(I)V
    .registers 3
    .parameter "shape"

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 231
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    .line 232
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 233
    return-void
.end method

.method public setSize(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 223
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 225
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 226
    return-void
.end method

.method public setStroke(II)V
    .registers 4
    .parameter "width"
    .parameter "color"

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 202
    return-void
.end method

.method public setStroke(IIFF)V
    .registers 10
    .parameter "width"
    .parameter "color"
    .parameter "dashWidth"
    .parameter "dashGap"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(IIFF)V

    .line 207
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_19

    .line 208
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 209
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    :cond_19
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 212
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, e:Landroid/graphics/DashPathEffect;
    cmpl-float v1, p3, v3

    if-lez v1, :cond_36

    .line 216
    new-instance v0, Landroid/graphics/DashPathEffect;

    .end local v0           #e:Landroid/graphics/DashPathEffect;
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    aput p4, v1, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 218
    .restart local v0       #e:Landroid/graphics/DashPathEffect;
    :cond_36
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 220
    return-void
.end method

.method public setUseLevel(Z)V
    .registers 3
    .parameter "useLevel"

    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    .line 253
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 254
    return-void
.end method
