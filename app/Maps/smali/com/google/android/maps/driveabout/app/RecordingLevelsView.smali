.class public Lcom/google/android/maps/driveabout/app/RecordingLevelsView;
.super Landroid/view/View;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:[F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a(II)I
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sparse-switch v0, :sswitch_data_0

    move v0, p1

    :goto_0
    return v0

    :sswitch_0
    move v0, p1

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    iget v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->invalidate()V

    return-void
.end method

.method public a(IF)V
    .locals 9

    const/high16 v1, 0x3f80

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    move v0, v2

    :goto_1
    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    aput v0, v1, p1

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->invalidate()V

    goto :goto_0

    :cond_2
    cmpl-float v0, p2, v1

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    aput v0, v1, v2

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    sub-int/2addr v2, v8

    aget v1, v1, v2

    :goto_3
    sub-float/2addr v0, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v8

    :goto_4
    if-gt v3, v2, :cond_6

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    sub-int v5, v3, v8

    iget v6, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    add-int/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, v0

    int-to-float v7, v2

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    goto :goto_2

    :cond_7
    move v0, p2

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->getHeight()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object v2, v0

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    move v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    add-float/2addr v3, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    move v2, v0

    int-to-float v2, v2

    const/4 v4, 0x0

    add-float/2addr v4, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->i:I

    move v5, v0

    add-int/2addr v2, v5

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    int-to-float v2, v2

    const/4 v5, 0x0

    sub-float v5, v2, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->j:I

    move v6, v0

    add-int/2addr v2, v6

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    int-to-float v2, v2

    const/4 v6, 0x0

    sub-float v6, v2, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->i:I

    move v2, v0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    move v3, v0

    int-to-float v3, v3

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->j:I

    move v2, v0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    move v3, v0

    add-int/lit8 v15, v3, 0x1

    add-int v16, v2, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    move v2, v0

    add-int/lit8 v17, v2, 0x1

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    move v2, v0

    move/from16 v0, v18

    move v1, v2

    if-ge v0, v1, :cond_2

    move/from16 v0, v18

    int-to-float v0, v0

    move v2, v0

    mul-float/2addr v2, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    add-float/2addr v3, v2

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    move-object v4, v0

    aget v4, v4, v18

    sub-float/2addr v2, v4

    mul-float/2addr v2, v14

    int-to-float v4, v15

    add-float/2addr v2, v4

    const/high16 v4, 0x3f00

    sub-float v4, v2, v4

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    move-object v5, v0

    aget v5, v5, v18

    add-float/2addr v2, v5

    mul-float/2addr v2, v14

    int-to-float v5, v15

    add-float/2addr v2, v5

    const/high16 v5, 0x3f00

    add-float v6, v2, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object v2, v0

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object v2, v0

    const/high16 v5, -0x100

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v15

    cmpl-float v2, v4, v2

    if-lez v2, :cond_0

    int-to-float v9, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object v12, v0

    move-object/from16 v7, p1

    move v8, v3

    move v10, v3

    move v11, v4

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    move/from16 v0, v16

    int-to-float v0, v0

    move v2, v0

    cmpg-float v2, v6, v2

    if-gez v2, :cond_1

    move/from16 v0, v16

    int-to-float v0, v0

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object v9, v0

    move-object/from16 v4, p1

    move v5, v3

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->i:I

    :goto_0
    int-to-float v1, v0

    const/high16 v2, 0x4070

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    :cond_0
    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    invoke-direct {p0, v1, p2}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    if-le v1, v2, :cond_2

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    iput v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->j:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iput v3, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->i:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->j:I

    goto :goto_1
.end method
