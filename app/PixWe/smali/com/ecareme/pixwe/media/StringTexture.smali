.class public final Lcom/ecareme/pixwe/media/StringTexture;
.super Lcom/ecareme/pixwe/media/Texture;
.source "StringTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/StringTexture$Config;
    }
.end annotation


# static fields
.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mBaselineHeight:I

.field private mConfig:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field private mPaint:Landroid/graphics/Paint;

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/StringTexture;->sPaint:Landroid/graphics/Paint;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Texture;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/ecareme/pixwe/media/StringTexture;->mString:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->DEFAULT_CONFIG_SCALED:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/StringTexture;->mConfig:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V
    .locals 2
    .parameter "string"
    .parameter "config"

    .prologue
    .line 83
    iget v0, p2, Lcom/ecareme/pixwe/media/StringTexture$Config;->width:I

    iget v1, p2, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;II)V
    .locals 0
    .parameter "string"
    .parameter "config"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Texture;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/ecareme/pixwe/media/StringTexture;->mString:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/ecareme/pixwe/media/StringTexture;->mConfig:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 89
    iput p3, p0, Lcom/ecareme/pixwe/media/StringTexture;->mWidth:I

    .line 90
    iput p4, p0, Lcom/ecareme/pixwe/media/StringTexture;->mHeight:I

    .line 91
    return-void
.end method

.method public static computeTextWidthForConfig(FLandroid/graphics/Typeface;Ljava/lang/String;)I
    .locals 3
    .parameter "textSize"
    .parameter "typeface"
    .parameter "string"

    .prologue
    .line 47
    sget-object v0, Lcom/ecareme/pixwe/media/StringTexture;->sPaint:Landroid/graphics/Paint;

    .line 48
    .local v0, paint:Landroid/graphics/Paint;
    monitor-enter v0

    .line 49
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    const/high16 v1, 0x4120

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static computeTextWidthForConfig(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)I
    .locals 2
    .parameter "string"
    .parameter "config"

    .prologue
    .line 43
    iget v0, p1, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    iget-boolean v1, p1, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    invoke-static {v0, v1, p0}, Lcom/ecareme/pixwe/media/StringTexture;->computeTextWidthForConfig(FLandroid/graphics/Typeface;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static lengthToFit(FFLandroid/graphics/Typeface;Ljava/lang/String;)I
    .locals 6
    .parameter "textSize"
    .parameter "maxWidth"
    .parameter "typeface"
    .parameter "string"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    move v3, v4

    .line 73
    :goto_0
    return v3

    .line 60
    :cond_0
    sget-object v1, Lcom/ecareme/pixwe/media/StringTexture;->sPaint:Landroid/graphics/Paint;

    .line 61
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 63
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 65
    .local v0, length:I
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 66
    .local v2, retVal:F
    cmpg-float v3, v2, p1

    if-gtz v3, :cond_2

    move v3, v0

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 71
    sub-int v3, v0, v5

    invoke-virtual {v1, p3, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    .line 69
    :cond_2
    cmpl-float v3, v2, p1

    if-gtz v3, :cond_1

    move v3, v0

    .line 73
    goto :goto_0
.end method


# virtual methods
.method protected computePaint()Landroid/graphics/Paint;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x437f

    .line 115
    iget-object v10, p0, Lcom/ecareme/pixwe/media/StringTexture;->mPaint:Landroid/graphics/Paint;

    if-eqz v10, :cond_0

    .line 116
    iget-object v10, p0, Lcom/ecareme/pixwe/media/StringTexture;->mPaint:Landroid/graphics/Paint;

    .line 159
    :goto_0
    return-object v10

    .line 117
    :cond_0
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 118
    .local v7, paint:Landroid/graphics/Paint;
    iput-object v7, p0, Lcom/ecareme/pixwe/media/StringTexture;->mPaint:Landroid/graphics/Paint;

    .line 119
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v3, p0, Lcom/ecareme/pixwe/media/StringTexture;->mConfig:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 121
    .local v3, config:Lcom/ecareme/pixwe/media/StringTexture$Config;
    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->a:F

    mul-float/2addr v10, v11

    float-to-int v0, v10

    .line 122
    .local v0, alpha:I
    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->r:F

    mul-float/2addr v10, v11

    float-to-int v8, v10

    .line 123
    .local v8, red:I
    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->g:F

    mul-float/2addr v10, v11

    float-to-int v5, v10

    .line 124
    .local v5, green:I
    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->b:F

    mul-float/2addr v10, v11

    float-to-int v1, v10

    .line 125
    .local v1, blue:I
    invoke-static {v0, v8, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 126
    .local v2, color:I
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->shadowRadius:I

    int-to-float v10, v10

    const/high16 v11, -0x100

    invoke-virtual {v7, v10, v13, v13, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 128
    iget-boolean v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->underline:Z

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 129
    iget-boolean v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    if-eqz v10, :cond_4

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 130
    iget-boolean v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->strikeThrough:Z

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 132
    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    if-ne v10, v12, :cond_5

    .line 133
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 141
    :goto_2
    iget-boolean v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->italic:Z

    if-eqz v10, :cond_1

    .line 142
    const/high16 v10, -0x4180

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 143
    :cond_1
    iget-object v9, p0, Lcom/ecareme/pixwe/media/StringTexture;->mString:Ljava/lang/String;

    .line 144
    .local v9, stringToDraw:Ljava/lang/String;
    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 145
    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    if-ne v10, v12, :cond_3

    .line 149
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    .line 150
    .local v4, currentTextSize:F
    const/4 v6, 0x0

    .line 151
    .local v6, measuredTextWidth:F
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 152
    iget v10, p0, Lcom/ecareme/pixwe/media/StringTexture;->mWidth:I

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-gez v10, :cond_7

    .end local v4           #currentTextSize:F
    .end local v6           #measuredTextWidth:F
    :cond_3
    :goto_3
    move-object v10, v7

    .line 159
    goto :goto_0

    .line 129
    .end local v9           #stringToDraw:Ljava/lang/String;
    :cond_4
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_1

    .line 134
    :cond_5
    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 135
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2

    .line 138
    :cond_6
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2

    .line 154
    .restart local v4       #currentTextSize:F
    .restart local v6       #measuredTextWidth:F
    .restart local v9       #stringToDraw:Ljava/lang/String;
    :cond_7
    const/high16 v10, 0x3f80

    sub-float v10, v4, v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    const/high16 v10, 0x40c0

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_2

    goto :goto_3
.end method

.method public computeTextWidth()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/StringTexture;->computePaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 95
    .local v0, paint:Landroid/graphics/Paint;
    if-eqz v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/ecareme/pixwe/media/StringTexture;->mString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/ecareme/pixwe/media/StringTexture;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 101
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 99
    goto :goto_0

    :cond_1
    move v1, v2

    .line 101
    goto :goto_0
.end method

.method public getBaselineHeight()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/ecareme/pixwe/media/StringTexture;->mBaselineHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method protected load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;
    .locals 29
    .parameter "view"

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/StringTexture;->mString:Ljava/lang/String;

    move-object v7, v0

    if-nez v7, :cond_0

    .line 165
    const/4 v7, 0x0

    .line 216
    :goto_0
    return-object v7

    .line 166
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/StringTexture;->computePaint()Landroid/graphics/Paint;

    move-result-object v12

    .line 167
    .local v12, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/StringTexture;->mString:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 168
    .local v26, stringToDraw:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/StringTexture;->mConfig:Lcom/ecareme/pixwe/media/StringTexture$Config;

    move-object/from16 v20, v0

    .line 169
    .local v20, config:Lcom/ecareme/pixwe/media/StringTexture$Config;
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 170
    .local v17, bmConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v23

    .line 172
    .local v23, metrics:Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->shadowRadius:I

    move v7, v0

    add-int/lit8 v24, v7, 0x1

    .line 173
    .local v24, padding:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v7, v0

    sub-int v13, v7, v24

    .line 174
    .local v13, ascent:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v7, v0

    add-int v21, v7, v24

    .line 175
    .local v21, descent:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/StringTexture;->mWidth:I

    move v15, v0

    .line 176
    .local v15, backWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/StringTexture;->mHeight:I

    move v14, v0

    .line 178
    .local v14, backHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/StringTexture;->mString:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 179
    .local v25, string:Ljava/lang/String;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v18, bounds:Landroid/graphics/Rect;
    const/4 v7, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v8

    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v7

    move v3, v8

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 182
    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    move v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 184
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v7

    mul-int/lit8 v8, v24, 0x2

    add-int v15, v7, v8

    .line 185
    sub-int v22, v21, v13

    .line 186
    .local v22, height:I
    add-int v14, v22, v24

    .line 188
    .end local v22           #height:I
    :cond_1
    if-lez v15, :cond_2

    if-gtz v14, :cond_3

    .line 189
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 190
    :cond_3
    move v0, v15

    move v1, v14

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 191
    .local v16, bitmap:Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 193
    .local v19, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    move v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move/from16 v27, v24

    .line 195
    .local v27, x:I
    :goto_1
    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->yalignment:I

    move v7, v0

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v7, v0

    neg-int v7, v7

    add-int v7, v7, v24

    move/from16 v28, v7

    .line 199
    .local v28, y:I
    :goto_2
    move/from16 v0, v27

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move v8, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move v2, v7

    move v3, v8

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v15, :cond_4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->overflowMode:I

    move v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 204
    const/16 v7, 0x1e

    sub-int v7, v15, v7

    int-to-float v6, v7

    .line 205
    .local v6, gradientLeft:F
    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    int-to-float v8, v15

    const/4 v9, 0x0

    const/4 v10, -0x1

    const v11, 0xffffff

    .line 206
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 205
    .end local v12           #paint:Landroid/graphics/Paint;
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 207
    .local v5, gradient:Landroid/graphics/LinearGradient;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 208
    .restart local v12       #paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 209
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 210
    const/4 v7, 0x1

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 211
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 212
    const/4 v9, 0x0

    int-to-float v10, v15

    int-to-float v11, v14

    move-object/from16 v7, v19

    move v8, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 215
    .end local v5           #gradient:Landroid/graphics/LinearGradient;
    .end local v6           #gradientLeft:F
    :cond_4
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v7, v0

    add-int v7, v7, v24

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/StringTexture;->mBaselineHeight:I

    move-object/from16 v7, v16

    .line 216
    goto/16 :goto_0

    .line 193
    .end local v27           #x:I
    .end local v28           #y:I
    :cond_5
    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    move v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    sub-int v7, v15, v24

    move/from16 v27, v7

    goto/16 :goto_1

    .line 194
    :cond_6
    div-int/lit8 v7, v15, 0x2

    move/from16 v27, v7

    goto/16 :goto_1

    .line 196
    .restart local v27       #x:I
    :cond_7
    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->yalignment:I

    move v7, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    sub-int v7, v14, v21

    move/from16 v28, v7

    goto/16 :goto_2

    .line 197
    :cond_8
    add-int v7, v21, v13

    sub-int v7, v14, v7

    div-int/lit8 v7, v7, 0x2

    move/from16 v28, v7

    goto/16 :goto_2
.end method
