.class public final Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;
.super Lcom/ecareme/pixwe/media/Texture;
.source "AdaptiveBackgroundTexture.java"


# static fields
.field private static final BLUE_MASK:I = 0xff

.field private static final GREEN_MASK:I = 0xff00

.field private static final GREEN_MASK_SHIFT:I = 0x8

.field private static final KERNEL_NORM:[I = null

.field private static final KERNEL_SIZE:I = 0x9

.field private static final MAX_COLOR_VALUE:I = 0xff

.field private static final MULTIPLY_COLOR:I = -0x555556

.field private static final NUM_COLORS:I = 0x100

.field private static final RADIUS:I = 0x4

.field private static final RED_MASK:I = 0xff0000

.field private static final RED_MASK_SHIFT:I = 0x10

.field private static final START_FADE_X:I = 0x60

.field private static final THUMBNAIL_MAX_X:I = 0x80


# instance fields
.field private mBaseTexture:Lcom/ecareme/pixwe/media/Texture;

.field private final mHeight:I

.field private final mSource:Landroid/graphics/Bitmap;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v1, 0x900

    new-array v1, v1, [I

    sput-object v1, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    .line 47
    const/16 v0, 0x8ff

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 25
    return-void

    .line 48
    :cond_0
    sget-object v1, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    div-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "source"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Texture;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mSource:Landroid/graphics/Bitmap;

    .line 54
    iput p2, p0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mWidth:I

    .line 55
    iput p3, p0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mHeight:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mBaseTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/ecareme/pixwe/media/Texture;II)V
    .locals 1
    .parameter "texture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Texture;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mBaseTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mSource:Landroid/graphics/Bitmap;

    .line 62
    iput p2, p0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mWidth:I

    .line 63
    iput p3, p0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mHeight:I

    .line 64
    return-void
.end method

.method private static boxBlurFilter([I[IIII)V
    .locals 15
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"
    .parameter "startFadeX"

    .prologue
    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, inPos:I
    const/4 v3, 0x1

    sub-int v7, p2, v3

    .line 159
    .local v7, maxX:I
    const/4 v3, 0x0

    .local v3, y:I
    move v12, v3

    .end local v3           #y:I
    .local v12, y:I
    move v6, v2

    .end local v2           #inPos:I
    .local v6, inPos:I
    :goto_0
    move v0, v12

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 191
    return-void

    .line 161
    :cond_0
    const/4 v5, 0x0

    .line 162
    .local v5, red:I
    const/4 v3, 0x0

    .line 163
    .local v3, green:I
    const/4 v2, 0x0

    .line 164
    .local v2, blue:I
    const/4 v4, -0x4

    .local v4, i:I
    move v8, v5

    .end local v5           #red:I
    .local v8, red:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    move v4, v3

    .end local v3           #green:I
    .local v4, green:I
    move v3, v2

    .end local v2           #blue:I
    .local v3, blue:I
    :goto_1
    const/4 v2, 0x4

    if-le v5, v2, :cond_1

    .line 171
    move v0, v12

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    const/16 v2, 0xff

    .line 173
    .end local v5           #i:I
    .local v2, alpha:I
    :goto_2
    move v5, v12

    .line 174
    .local v5, outPos:I
    const/4 v9, 0x0

    .local v9, x:I
    move v11, v9

    .end local v9           #x:I
    .local v11, x:I
    move v10, v8

    .end local v8           #red:I
    .local v10, red:I
    move v8, v5

    .end local v5           #outPos:I
    .local v8, outPos:I
    :goto_3
    move v0, v11

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 189
    add-int v2, v6, p2

    .line 159
    .end local v6           #inPos:I
    .local v2, inPos:I
    add-int/lit8 v3, v12, 0x1

    .end local v12           #y:I
    .local v3, y:I
    move v12, v3

    .end local v3           #y:I
    .restart local v12       #y:I
    move v6, v2

    .end local v2           #inPos:I
    .restart local v6       #inPos:I
    goto :goto_0

    .line 165
    .end local v10           #red:I
    .end local v11           #x:I
    .local v3, blue:I
    .local v5, i:I
    .local v8, red:I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v5, v2, v7}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(III)I

    move-result v2

    add-int/2addr v2, v6

    aget v2, p0, v2

    .line 166
    .local v2, argb:I
    const/high16 v9, 0xff

    and-int/2addr v9, v2

    shr-int/lit8 v9, v9, 0x10

    add-int/2addr v8, v9

    .line 167
    const v9, 0xff00

    and-int/2addr v9, v2

    shr-int/lit8 v9, v9, 0x8

    add-int/2addr v4, v9

    .line 168
    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v3

    .line 164
    .end local v3           #blue:I
    .local v2, blue:I
    add-int/lit8 v3, v5, 0x1

    .end local v5           #i:I
    .local v3, i:I
    move v5, v3

    .end local v3           #i:I
    .restart local v5       #i:I
    move v3, v2

    .end local v2           #blue:I
    .local v3, blue:I
    goto :goto_1

    .line 171
    :cond_2
    sub-int v2, p3, v12

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    mul-int/lit16 v2, v2, 0xff

    sub-int v5, p3, p4

    div-int/2addr v2, v5

    .end local v5           #i:I
    goto :goto_2

    .line 176
    .local v2, alpha:I
    .local v8, outPos:I
    .restart local v10       #red:I
    .restart local v11       #x:I
    :cond_3
    shl-int/lit8 v5, v2, 0x18

    sget-object v9, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    aget v9, v9, v10

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v5, v9

    sget-object v9, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    aget v9, v9, v4

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    .line 177
    sget-object v9, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    aget v9, v9, v3

    or-int/2addr v5, v9

    .line 176
    aput v5, p1, v8

    .line 180
    const/4 v5, 0x4

    sub-int v5, v11, v5

    const/4 v9, 0x0

    invoke-static {v5, v9, v7}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(III)I

    move-result v9

    .line 181
    .local v9, prevX:I
    add-int/lit8 v5, v11, 0x4

    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x0

    invoke-static {v5, v13, v7}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(III)I

    move-result v5

    .line 182
    .local v5, nextX:I
    add-int/2addr v9, v6

    aget v9, p0, v9

    .line 183
    .local v9, prevArgb:I
    add-int/2addr v5, v6

    aget v5, p0, v5

    .line 184
    .local v5, nextArgb:I
    const/high16 v13, 0xff

    and-int/2addr v13, v5

    const/high16 v14, 0xff

    and-int/2addr v14, v9

    sub-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x10

    add-int/2addr v10, v13

    .line 185
    const v13, 0xff00

    and-int/2addr v13, v5

    const v14, 0xff00

    and-int/2addr v14, v9

    sub-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x8

    add-int/2addr v4, v13

    .line 186
    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v9, v9, 0xff

    sub-int/2addr v5, v9

    add-int/2addr v3, v5

    .line 187
    add-int v5, v8, p3

    .line 174
    .end local v8           #outPos:I
    .local v5, outPos:I
    add-int/lit8 v8, v11, 0x1

    .end local v11           #x:I
    .local v8, x:I
    move v11, v8

    .end local v8           #x:I
    .restart local v11       #x:I
    move v8, v5

    .end local v5           #outPos:I
    .local v8, outPos:I
    goto/16 :goto_3
.end method


# virtual methods
.method public isCached()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method protected load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;
    .locals 26
    .parameter "view"

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mSource:Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 81
    .local v5, source:Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mBaseTexture:Lcom/ecareme/pixwe/media/Texture;

    move-object v7, v0

    if-eqz v7, :cond_0

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mBaseTexture:Lcom/ecareme/pixwe/media/Texture;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Texture;->load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 84
    if-nez v5, :cond_1

    .line 85
    const/4 v7, 0x0

    .line 153
    :goto_0
    return-object v7

    .line 88
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 91
    :cond_1
    const/16 v7, 0x80

    invoke-static {v5, v7}, Lcom/ecareme/pixwe/media/Utils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 93
    .local v24, sourceWidth:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    .line 94
    .local v23, sourceHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mWidth:I

    move v15, v0

    .line 95
    .local v15, destWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mHeight:I

    move v14, v0

    .line 96
    .local v14, destHeight:I
    move/from16 v0, v24

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v15

    div-float v17, v7, v8

    .line 97
    .local v17, fitX:F
    move/from16 v0, v23

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v14

    div-float v18, v7, v8

    .line 103
    .local v18, fitY:F
    cmpg-float v7, v17, v18

    if-gez v7, :cond_2

    .line 105
    move/from16 v8, v24

    .line 106
    .local v8, cropWidth:I
    int-to-float v7, v14

    mul-float v7, v7, v17

    float-to-int v12, v7

    .line 107
    .local v12, cropHeight:I
    const/4 v9, 0x0

    .line 108
    .local v9, cropX:I
    sub-int v7, v23, v12

    div-int/lit8 v10, v7, 0x2

    .line 109
    .local v10, cropY:I
    const/high16 v7, 0x3f80

    div-float v22, v7, v17

    .line 120
    .local v22, scale:F
    :goto_1
    mul-int v19, v8, v12

    .line 121
    .local v19, numPixels:I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object v6, v0

    .line 122
    .local v6, in:[I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 125
    .local v25, tmp:[I
    const/4 v7, 0x0

    move v11, v8

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 134
    move-object v0, v6

    move-object/from16 v1, v25

    move v2, v8

    move v3, v12

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->boxBlurFilter([I[IIII)V

    .line 135
    const/16 v7, 0x60

    move-object/from16 v0, v25

    move-object v1, v6

    move v2, v12

    move v3, v8

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->boxBlurFilter([I[IIII)V

    .line 138
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v12, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 141
    .local v16, filtered:Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 142
    .local v20, output:Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    .local v13, canvas:Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 144
    .local v21, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 145
    const/4 v7, 0x1

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 146
    new-instance v7, Landroid/graphics/LightingColorFilter;

    const v8, -0x555556

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .end local v8           #cropWidth:I
    .end local v9           #cropX:I
    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 147
    move-object v0, v13

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 148
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v1, v16

    move v2, v7

    move v3, v8

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;->mBaseTexture:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v7, v20

    .line 153
    goto/16 :goto_0

    .line 112
    .end local v6           #in:[I
    .end local v10           #cropY:I
    .end local v12           #cropHeight:I
    .end local v13           #canvas:Landroid/graphics/Canvas;
    .end local v16           #filtered:Landroid/graphics/Bitmap;
    .end local v19           #numPixels:I
    .end local v20           #output:Landroid/graphics/Bitmap;
    .end local v21           #paint:Landroid/graphics/Paint;
    .end local v22           #scale:F
    .end local v25           #tmp:[I
    :cond_2
    int-to-float v7, v14

    mul-float v7, v7, v18

    float-to-int v8, v7

    .line 113
    .restart local v8       #cropWidth:I
    move/from16 v12, v23

    .line 114
    .restart local v12       #cropHeight:I
    sub-int v7, v24, v8

    div-int/lit8 v9, v7, 0x2

    .line 115
    .restart local v9       #cropX:I
    const/4 v10, 0x0

    .line 116
    .restart local v10       #cropY:I
    const/high16 v7, 0x3f80

    div-float v22, v7, v18

    .restart local v22       #scale:F
    goto/16 :goto_1
.end method

.method protected shouldQueue()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
