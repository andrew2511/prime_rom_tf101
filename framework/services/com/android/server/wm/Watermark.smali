.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field final mDeltaX:I

.field final mDeltaY:I

.field mDrawNeeded:Z

.field mLastDH:I

.field mLastDW:I

.field mSurface:Landroid/view/Surface;

.field final mText:Ljava/lang/String;

.field final mTextAscent:I

.field final mTextDescent:I

.field final mTextHeight:I

.field final mTextPaint:Landroid/graphics/Paint;

.field final mTextWidth:I

.field final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;[Ljava/lang/String;)V
    .registers 31
    .parameter "display"
    .parameter "session"
    .parameter "tokens"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    .local v18, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    .line 66
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .local v14, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    .line 68
    .local v22, len:I
    and-int/lit8 v22, v22, -0x2

    .line 69
    const/16 v21, 0x0

    .local v21, i:I
    :goto_2c
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a9

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 71
    .local v15, c1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    add-int/lit8 v6, v21, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 72
    .local v16, c2:I
    const/16 v5, 0x61

    if-lt v15, v5, :cond_7f

    const/16 v5, 0x66

    if-gt v15, v5, :cond_7f

    const/16 v5, 0x61

    sub-int v5, v15, v5

    add-int/lit8 v15, v5, 0xa

    .line 75
    :goto_5d
    const/16 v5, 0x61

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_91

    const/16 v5, 0x66

    move/from16 v0, v16

    move v1, v5

    if-gt v0, v1, :cond_91

    const/16 v5, 0x61

    sub-int v5, v16, v5

    add-int/lit8 v16, v5, 0xa

    .line 78
    :goto_71
    const/16 v5, 0xff

    mul-int/lit8 v6, v15, 0x10

    add-int v6, v6, v16

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v21, v21, 0x2

    goto :goto_2c

    .line 73
    :cond_7f
    const/16 v5, 0x41

    if-lt v15, v5, :cond_8e

    const/16 v5, 0x46

    if-gt v15, v5, :cond_8e

    const/16 v5, 0x41

    sub-int v5, v15, v5

    add-int/lit8 v15, v5, 0xa

    goto :goto_5d

    .line 74
    :cond_8e
    add-int/lit8 v15, v15, -0x30

    goto :goto_5d

    .line 76
    :cond_91
    const/16 v5, 0x41

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_a6

    const/16 v5, 0x46

    move/from16 v0, v16

    move v1, v5

    if-gt v0, v1, :cond_a6

    const/16 v5, 0x41

    sub-int v5, v16, v5

    add-int/lit8 v16, v5, 0xa

    goto :goto_71

    .line 77
    :cond_a6
    add-int/lit8 v16, v16, -0x30

    goto :goto_71

    .line 80
    .end local v15           #c1:I
    .end local v16           #c2:I
    :cond_a9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 85
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x14

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v20

    .line 88
    .local v20, fontSize:I
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v19

    .line 93
    .local v19, fm:Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 94
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/Watermark;->mTextAscent:I

    .line 95
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/Watermark;->mTextDescent:I

    .line 96
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 98
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    move v7, v0

    mul-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 100
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    move v7, v0

    mul-int/lit8 v7, v7, 0x3

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 102
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v7, -0x5000

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v23

    .line 104
    .local v23, shadowColor:I
    const/4 v5, 0x5

    const/4 v6, 0x0

    const v7, 0x60ffffff

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v17

    .line 106
    .local v17, color:I
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x7

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v26

    .line 108
    .local v26, shadowRadius:I
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v24

    .line 110
    .local v24, shadowDx:I
    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v25

    .line 113
    .local v25, shadowDy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v8, v0

    move-object v0, v5

    move v1, v6

    move v2, v7

    move v3, v8

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 117
    :try_start_1ca
    new-instance v5, Landroid/view/Surface;

    const/4 v7, 0x0

    const-string v8, "WatermarkSurface"

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x3

    const/4 v13, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v13}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    const v6, 0xf4240

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_1fb
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1ca .. :try_end_1fb} :catch_1fc

    .line 124
    :goto_1fb
    return-void

    .line 122
    :catch_1fc
    move-exception v5

    goto :goto_1fb
.end method


# virtual methods
.method drawIfNeeded()V
    .registers 16

    .prologue
    const/4 v12, 0x0

    .line 136
    iget-boolean v11, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-eqz v11, :cond_5b

    .line 137
    iget v6, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 138
    .local v6, dw:I
    iget v3, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 140
    .local v3, dh:I
    iput-boolean v12, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 141
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v12, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    .local v4, dirty:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 144
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_11
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_5e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11 .. :try_end_16} :catch_5c

    move-result-object v0

    .line 148
    :goto_17
    if-eqz v0, :cond_5b

    .line 149
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 151
    iget v1, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 152
    .local v1, deltaX:I
    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 156
    .local v2, deltaY:I
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    div-int v5, v11, v1

    .line 157
    .local v5, div:I
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    mul-int v12, v5, v1

    sub-int v8, v11, v12

    .line 158
    .local v8, rem:I
    div-int/lit8 v7, v1, 0x4

    .line 159
    .local v7, qdelta:I
    if-lt v8, v7, :cond_36

    sub-int v11, v1, v7

    if-le v8, v11, :cond_39

    .line 160
    :cond_36
    div-int/lit8 v11, v1, 0x3

    add-int/2addr v1, v11

    .line 163
    :cond_39
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v10, v11

    .line 164
    .local v10, y:I
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v9, v11

    .line 165
    .local v9, x:I
    :cond_3f
    :goto_3f
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v11, v3

    if-ge v10, v11, :cond_56

    .line 166
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v12, v9

    int-to-float v13, v10

    iget-object v14, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 167
    add-int/2addr v9, v1

    .line 168
    if-lt v9, v6, :cond_3f

    .line 169
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    sub-int/2addr v9, v11

    .line 170
    add-int/2addr v10, v2

    goto :goto_3f

    .line 173
    :cond_56
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 176
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    .end local v3           #dh:I
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #div:I
    .end local v6           #dw:I
    .end local v7           #qdelta:I
    .end local v8           #rem:I
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_5b
    return-void

    .line 146
    .restart local v0       #c:Landroid/graphics/Canvas;
    .restart local v3       #dh:I
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v6       #dw:I
    :catch_5c
    move-exception v11

    goto :goto_17

    .line 145
    :catch_5e
    move-exception v11

    goto :goto_17
.end method

.method positionSurface(II)V
    .registers 4
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    .line 128
    :cond_8
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 129
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 133
    :cond_14
    return-void
.end method
