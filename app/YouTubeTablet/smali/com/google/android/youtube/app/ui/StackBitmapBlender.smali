.class public Lcom/google/android/youtube/app/ui/StackBitmapBlender;
.super Ljava/lang/Object;
.source "StackBitmapBlender.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/BitmapBlender;


# instance fields
.field private final defaultBitmap:Landroid/graphics/Bitmap;

.field private final defaultBitmapColor:I

.field private final defaultBitmapHeight:I

.field private final defaultBitmapWidth:I

.field private final delta:I

.field private final innerBorder:I

.field private final innerBorderColor:I

.field private final outerBorder:I

.field private final outerBorderColor:I

.field private final placeholder:Landroid/graphics/Bitmap;

.field private final rotationAngles:[I

.field private final stackHeight:I

.field private final stackOffsetX:I

.field private final stackOffsetY:I

.field private final stackScale:F

.field private final stackSize:I

.field private final stackWidth:I


# direct methods
.method public constructor <init>(IIII[IIIIIIIIIII)V
    .locals 4
    .parameter "stackSize"
    .parameter "stackWidth"
    .parameter "stackHeight"
    .parameter "scale"
    .parameter "rotationAngles"
    .parameter "delta"
    .parameter "stackOffsetX"
    .parameter "stackOffsetY"
    .parameter "outerBorder"
    .parameter "outerBorderColor"
    .parameter "innerBorder"
    .parameter "innerBorderColor"
    .parameter "defaultBitmapWidth"
    .parameter "defaultBitmapHeight"
    .parameter "defaultBitmapColor"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-lez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "stackSize must be > 0"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 82
    if-lez p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v3, "width must be > 0"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 83
    if-lez p3, :cond_2

    const/4 v2, 0x1

    :goto_2
    const-string v3, "height must be > 0"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 84
    if-lez p4, :cond_3

    const/4 v2, 0x1

    :goto_3
    const-string v3, "scale must be > 0"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 85
    array-length v2, p5

    if-lt v2, p1, :cond_4

    const/4 v2, 0x1

    :goto_4
    const-string v3, "rotationAngles count must be greater or equal than stackSize"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 88
    if-lez p9, :cond_5

    const/4 v2, 0x1

    :goto_5
    const-string v3, "outerBorder must be > 0"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 89
    if-lez p11, :cond_6

    const/4 v2, 0x1

    :goto_6
    const-string v3, "innerBorder must be > 0"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 90
    if-lez p13, :cond_7

    const/4 v2, 0x1

    :goto_7
    const-string v3, "defaultBitmapWidth must be > 0"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 91
    if-lez p14, :cond_8

    const/4 v2, 0x1

    :goto_8
    const-string v3, "defaultBitmapHeight must be > 0"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 93
    iput p1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackSize:I

    .line 94
    iput p2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackWidth:I

    .line 95
    iput p3, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackHeight:I

    .line 96
    int-to-float v2, p4

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackScale:F

    .line 97
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->rotationAngles:[I

    .line 98
    iput p6, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->delta:I

    .line 99
    iput p7, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackOffsetX:I

    .line 100
    iput p8, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackOffsetY:I

    .line 101
    iput p9, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->outerBorder:I

    .line 102
    iput p10, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->outerBorderColor:I

    .line 103
    iput p11, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->innerBorder:I

    .line 104
    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->innerBorderColor:I

    .line 105
    move/from16 v0, p13

    move-object v1, p0

    iput v0, v1, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapWidth:I

    .line 106
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapHeight:I

    .line 107
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapColor:I

    .line 109
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->generateDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->blend(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->placeholder:Landroid/graphics/Bitmap;

    .line 111
    return-void

    .line 81
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 82
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 83
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 84
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 85
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 88
    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    .line 89
    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 90
    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    .line 91
    :cond_8
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 18
    .parameter "res"

    .prologue
    .line 47
    const v2, 0x7f0b0006

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v2, 0x7f09002b

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v2, 0x7f09002c

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v2, 0x7f0b0007

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/high16 v2, 0x7f0c

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    const v2, 0x7f09002a

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v2, 0x7f09002d

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v2, 0x7f09002e

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v2, 0x7f09002f

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v2, 0x7f0a000d

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const v2, 0x7f090030

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v2, 0x7f0a000e

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    const v2, 0x7f090031

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    const v2, 0x7f090032

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v2, 0x7f0a000f

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v17}, Lcom/google/android/youtube/app/ui/StackBitmapBlender;-><init>(IIII[IIIIIIIIIII)V

    .line 62
    return-void
.end method

.method private generateDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 196
    iget v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapWidth:I

    iget v3, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 197
    .local v1, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 199
    return-object v1
.end method

.method public static generatePlaceholder(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "res"

    .prologue
    .line 192
    new-instance v0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/StackBitmapBlender;-><init>(Landroid/content/res/Resources;)V

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->placeholder:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private renderBitmap(Landroid/graphics/Bitmap;IIILandroid/graphics/Canvas;)V
    .locals 9
    .parameter "src"
    .parameter "width"
    .parameter "height"
    .parameter "index"
    .parameter "canvas"

    .prologue
    .line 143
    invoke-virtual {p5}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackScale:F

    iget v1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->delta:I

    int-to-float v1, v1

    mul-float v8, v0, v1

    .line 146
    .local v8, scaledDelta:F
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackScale:F

    iget v1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->outerBorder:I

    iget v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->innerBorder:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 148
    .local v7, scaledBorder:I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 150
    .local v6, m:Landroid/graphics/Matrix;
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 151
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapWidth:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapHeight:I

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->rotationAngles:[I

    aget v0, v0, p4

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 158
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 163
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackScale:F

    iget v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    div-int/lit8 v1, v7, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackOffsetX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackScale:F

    iget v3, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-int/lit8 v2, v7, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackOffsetY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 167
    invoke-virtual {p5, v6}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 170
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 171
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->outerBorder:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->outerBorderColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p2

    int-to-float v4, p3

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 180
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->innerBorder:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->innerBorderColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p2

    int-to-float v4, p3

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 186
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p5, p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    invoke-virtual {p5}, Landroid/graphics/Canvas;->restore()V

    .line 189
    return-void
.end method


# virtual methods
.method public blend(Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, bitmaps:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->placeholder:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->placeholder:Landroid/graphics/Bitmap;

    .line 139
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackWidth:I

    iget v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 130
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v5, canvas:Landroid/graphics/Canvas;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapWidth:I

    iget v3, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->defaultBitmapHeight:I

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->renderBitmap(Landroid/graphics/Bitmap;IIILandroid/graphics/Canvas;)V

    :cond_1
    move-object v0, v6

    .line 139
    goto :goto_0

    .line 134
    :cond_2
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    sub-int v4, v0, v2

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_1

    .line 135
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 136
    .local v1, src:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->renderBitmap(Landroid/graphics/Bitmap;IIILandroid/graphics/Canvas;)V

    .line 134
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public preferredBitmapCount()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->stackSize:I

    return v0
.end method
