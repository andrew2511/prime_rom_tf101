.class Lcom/android/launcher2/Utilities$BubbleText;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BubbleText"
.end annotation


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mBubbleRect:Landroid/graphics/RectF;

.field private final mDensity:I

.field private final mFirstLineY:I

.field private final mLeading:I

.field private final mLineHeight:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mTextWidth:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 280
    .local v8, resources:Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 281
    .local v5, metrics:Landroid/util/DisplayMetrics;
    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    .line 282
    .local v9, scale:F
    iget v11, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mDensity:I

    .line 284
    const/high16 v11, 0x4000

    mul-float v6, v11, v9

    .line 285
    .local v6, paddingLeft:F
    const/high16 v11, 0x4000

    mul-float v7, v11, v9

    .line 286
    .local v7, paddingRight:F
    const/high16 v11, 0x7f0d

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 288
    .local v2, cellWidth:F
    iget-object v1, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    .line 289
    .local v1, bubbleRect:Landroid/graphics/RectF;
    const/4 v11, 0x0

    iput v11, v1, Landroid/graphics/RectF;->left:F

    .line 290
    const/4 v11, 0x0

    iput v11, v1, Landroid/graphics/RectF;->top:F

    .line 291
    float-to-int v11, v2

    int-to-float v11, v11

    iput v11, v1, Landroid/graphics/RectF;->right:F

    .line 293
    sub-float v11, v2, v6

    sub-float/2addr v11, v7

    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mTextWidth:F

    .line 295
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    iput-object v10, p0, Lcom/android/launcher2/Utilities$BubbleText;->mTextPaint:Landroid/text/TextPaint;

    .line 296
    .local v10, textPaint:Landroid/text/TextPaint;
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 297
    const/high16 v11, 0x4150

    mul-float/2addr v11, v9

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 298
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 299
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 304
    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v11

    neg-float v0, v11

    .line 305
    .local v0, ascent:F
    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v3

    .line 306
    .local v3, descent:F
    const/4 v4, 0x0

    .line 307
    .local v4, leading:F
    const/high16 v11, 0x3f00

    add-float/2addr v11, v4

    float-to-int v11, v11

    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mLeading:I

    .line 308
    add-float v11, v4, v0

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mFirstLineY:I

    .line 309
    add-float v11, v4, v0

    add-float/2addr v11, v3

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mLineHeight:I

    .line 311
    iget-object v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBitmapWidth:I

    .line 312
    iget v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mLineHeight:I

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v4

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Lcom/android/launcher2/Utilities;->roundToPow2(I)I

    move-result v11

    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBitmapHeight:I

    .line 314
    iget-object v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    iget v12, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBitmapWidth:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 321
    return-void
.end method


# virtual methods
.method createTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "text"

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mBitmapWidth:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mBitmapHeight:I

    move v5, v0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 326
    .local v11, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mDensity:I

    move v4, v0

    invoke-virtual {v11, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 327
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 329
    .local v12, c:Landroid/graphics/Canvas;
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mTextWidth:F

    move v4, v0

    float-to-int v6, v4

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 331
    .local v3, layout:Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v14

    .line 332
    .local v14, lineCount:I
    const/4 v4, 0x2

    if-le v14, v4, :cond_0

    .line 333
    const/4 v14, 0x2

    .line 340
    :cond_0
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_1

    .line 343
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 344
    .local v15, lineText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    invoke-virtual {v6, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move v0, v4

    float-to-int v0, v0

    move/from16 v16, v0

    .line 346
    .local v16, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mFirstLineY:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mLineHeight:I

    move v5, v0

    mul-int/2addr v5, v13

    add-int v17, v4, v5

    .line 347
    .local v17, y:I
    move/from16 v0, v16

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Utilities$BubbleText;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    invoke-virtual {v12, v15, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 340
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 350
    .end local v15           #lineText:Ljava/lang/String;
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_1
    return-object v11
.end method
