.class public final Lcom/google/android/music/utils/LabelMaker;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/LabelMaker$Config;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

.field private mDestBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mPaddingX:I

.field private mPaint:Landroid/text/TextPaint;

.field private mString:Ljava/lang/String;

.field private mTextBottom:I

.field private mTextBottomBaseline:I

.field private mTextRightClipped:I

.field private mTextRightEdge:I

.field private mTextTop:I

.field private mTextTopBaseline:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;)V
    .locals 2
    .parameter "string"
    .parameter "config"

    .prologue
    .line 42
    iget v0, p2, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    iget v1, p2, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;II)V
    .locals 0
    .parameter "string"
    .parameter "config"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 53
    iput p3, p0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    .line 54
    iput p4, p0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "string"
    .parameter "config"
    .parameter "destBitmap"

    .prologue
    .line 46
    iget v0, p2, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    iget v1, p2, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;II)V

    .line 47
    iput-object p3, p0, Lcom/google/android/music/utils/LabelMaker;->mDestBitmap:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method

.method private createBitmapWithBackground(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "backgroundColor"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/google/android/music/utils/LabelMaker;->mDestBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/music/utils/LabelMaker;->mDestBitmap:Landroid/graphics/Bitmap;

    .line 61
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/utils/LabelMaker;->mDestBitmap:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {v0, p4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object v1, v0

    .line 69
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 65
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz p4, :cond_1

    .line 67
    invoke-virtual {v0, p4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    move-object v1, v0

    .line 69
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private drawClippedString(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIII)V
    .locals 5
    .parameter "paint"
    .parameter "stringToDraw"
    .parameter "bounds"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 263
    .local v0, config:Lcom/google/android/music/utils/LabelMaker$Config;
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    if-le v1, v2, :cond_0

    iget v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    if-ne v1, v4, :cond_0

    .line 264
    invoke-virtual {p4, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 265
    iget v1, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    iget v2, p0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    invoke-virtual {p4, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 266
    int-to-float v1, p5

    int-to-float v2, p6

    invoke-virtual {p4, p2, v1, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    .line 268
    int-to-float v1, p7

    int-to-float v2, p8

    invoke-direct {p0, p4, v1, v2}, Lcom/google/android/music/utils/LabelMaker;->fadeElipsisise(Landroid/graphics/Canvas;FF)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    int-to-float v1, p5

    int-to-float v2, p6

    invoke-virtual {p4, p2, v1, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private fadeElipsisise(Landroid/graphics/Canvas;FF)V
    .locals 8
    .parameter "canvas"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 397
    iget v3, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    const/16 v4, 0x1e

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 398
    .local v1, gradientLeft:F
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    int-to-float v3, v3

    const/4 v5, -0x1

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 400
    .local v0, gradient:Landroid/graphics/LinearGradient;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 401
    .local v7, paint:Landroid/graphics/Paint;
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 402
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 403
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 404
    iget v2, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    int-to-float v5, v2

    move-object v2, p1

    move v3, v1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 405
    return-void
.end method

.method private loadImp(Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "needBitmap"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iget-boolean v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/music/utils/LabelMaker;->loadMultiLine(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/music/utils/LabelMaker;->loadOneLine(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private loadMultiLine(Z)Landroid/graphics/Bitmap;
    .locals 30
    .parameter "needBitmap"

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 276
    .local v29, splits:[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_4

    const/4 v5, 0x0

    aget-object v5, v29, v5

    move-object v10, v5

    .line 277
    .local v10, first:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    move-object v9, v0

    .line 280
    .local v9, config:Lcom/google/android/music/utils/LabelMaker$Config;
    iget v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    add-int/lit8 v28, v5, 0x1

    .line 281
    .local v28, padding:I
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mPaddingX:I

    .line 283
    const/16 v22, 0x0

    .line 284
    .local v22, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    move v6, v0

    iget-object v7, v9, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iget v8, v9, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/utils/LabelMaker;->createBitmapWithBackground(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 290
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    .line 291
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    .line 293
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextBottomBaseline:I

    .line 294
    iget v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    add-int v5, v5, v28

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    .line 296
    const/4 v11, 0x0

    .line 297
    .local v11, canvas:Landroid/graphics/Canvas;
    if-eqz p1, :cond_1

    .line 298
    new-instance v11, Landroid/graphics/Canvas;

    .end local v11           #canvas:Landroid/graphics/Canvas;
    move-object v0, v11

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .restart local v11       #canvas:Landroid/graphics/Canvas;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/utils/LabelMaker;->computePaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 301
    .local v8, paint:Landroid/text/TextPaint;
    move/from16 v6, v28

    .line 302
    .local v6, x:I
    move/from16 v7, v28

    .line 303
    .local v7, y:I
    iget v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->yoffset:I

    add-int/2addr v7, v5

    .line 305
    iget v12, v9, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 306
    .local v12, maxLines:I
    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    move v0, v5

    neg-float v0, v0

    move/from16 v21, v0

    .line 307
    .local v21, ascent:F
    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v23

    .line 308
    .local v23, descent:F
    add-float v5, v21, v23

    const/high16 v13, 0x3f00

    add-float/2addr v5, v13

    move v0, v5

    float-to-int v0, v0

    move/from16 v26, v0

    .line 310
    .local v26, lineHeight:I
    move/from16 v27, v7

    .local v27, oldY:I
    move-object/from16 v5, p0

    .line 311
    invoke-direct/range {v5 .. v12}, Lcom/google/android/music/utils/LabelMaker;->renderString(IILandroid/text/TextPaint;Lcom/google/android/music/utils/LabelMaker$Config;Ljava/lang/String;Landroid/graphics/Canvas;I)I

    move-result v7

    .line 312
    sub-int v5, v7, v27

    div-int v25, v5, v26

    .line 313
    .local v25, lineCount:I
    const/4 v5, 0x1

    move/from16 v0, v25

    move v1, v5

    if-le v0, v1, :cond_2

    .line 314
    const/4 v12, 0x1

    .line 317
    :cond_2
    const/16 v24, 0x1

    .end local v10           #first:Ljava/lang/String;
    .local v24, i:I
    :goto_1
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 318
    const/4 v5, 0x1

    move/from16 v0, v24

    move v1, v5

    if-ne v0, v1, :cond_5

    iget v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    :goto_2
    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 319
    const/4 v5, 0x1

    move/from16 v0, v24

    move v1, v5

    if-ne v0, v1, :cond_6

    iget v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    const/high16 v10, 0x437f

    mul-float/2addr v5, v10

    :goto_3
    float-to-int v5, v5

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 321
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 322
    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    move v0, v5

    neg-float v0, v0

    move/from16 v21, v0

    .line 323
    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v23

    .line 324
    add-float v5, v21, v23

    const/high16 v10, 0x3f00

    add-float/2addr v5, v10

    move v0, v5

    float-to-int v0, v0

    move/from16 v26, v0

    .line 325
    int-to-float v5, v7

    const/4 v7, 0x1

    move/from16 v0, v24

    move v1, v7

    if-ne v0, v1, :cond_7

    .end local v7           #y:I
    iget v7, v9, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontExtraSpace:F

    :goto_4
    add-float/2addr v5, v7

    float-to-int v7, v5

    .line 326
    .restart local v7       #y:I
    move/from16 v27, v7

    .line 327
    aget-object v18, v29, v24

    move-object/from16 v13, p0

    move v14, v6

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v19, v11

    move/from16 v20, v12

    invoke-direct/range {v13 .. v20}, Lcom/google/android/music/utils/LabelMaker;->renderString(IILandroid/text/TextPaint;Lcom/google/android/music/utils/LabelMaker$Config;Ljava/lang/String;Landroid/graphics/Canvas;I)I

    move-result v7

    .line 328
    sub-int v5, v7, v27

    div-int v25, v5, v26

    .line 329
    const/4 v5, 0x1

    move/from16 v0, v25

    move v1, v5

    if-le v0, v1, :cond_3

    .line 330
    const/4 v12, 0x1

    .line 317
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 276
    .end local v6           #x:I
    .end local v7           #y:I
    .end local v8           #paint:Landroid/text/TextPaint;
    .end local v9           #config:Lcom/google/android/music/utils/LabelMaker$Config;
    .end local v11           #canvas:Landroid/graphics/Canvas;
    .end local v12           #maxLines:I
    .end local v21           #ascent:F
    .end local v22           #bitmap:Landroid/graphics/Bitmap;
    .end local v23           #descent:F
    .end local v24           #i:I
    .end local v25           #lineCount:I
    .end local v26           #lineHeight:I
    .end local v27           #oldY:I
    .end local v28           #padding:I
    :cond_4
    const-string v5, ""

    move-object v10, v5

    goto/16 :goto_0

    .line 318
    .restart local v6       #x:I
    .restart local v7       #y:I
    .restart local v8       #paint:Landroid/text/TextPaint;
    .restart local v9       #config:Lcom/google/android/music/utils/LabelMaker$Config;
    .restart local v11       #canvas:Landroid/graphics/Canvas;
    .restart local v12       #maxLines:I
    .restart local v21       #ascent:F
    .restart local v22       #bitmap:Landroid/graphics/Bitmap;
    .restart local v23       #descent:F
    .restart local v24       #i:I
    .restart local v25       #lineCount:I
    .restart local v26       #lineHeight:I
    .restart local v27       #oldY:I
    .restart local v28       #padding:I
    :cond_5
    iget v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontSize:F

    goto :goto_2

    .line 319
    :cond_6
    iget v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryOpacity:F

    const/high16 v10, 0x437f

    mul-float/2addr v5, v10

    goto :goto_3

    .line 325
    .end local v7           #y:I
    :cond_7
    iget v7, v9, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontExtraSpace:F

    goto :goto_4

    .line 334
    .restart local v7       #y:I
    :cond_8
    iget v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 335
    .end local v6           #x:I
    iget v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 336
    iget-boolean v5, v9, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    if-eqz v5, :cond_9

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_5
    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 338
    return-object v22

    .line 336
    :cond_9
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_5
.end method

.method private loadOneLine(Z)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "needBitmap"

    .prologue
    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/utils/LabelMaker;->computePaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 201
    .local v6, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    move-object v7, v0

    .line 202
    .local v7, stringToDraw:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    move-object/from16 v19, v0

    .line 203
    .local v19, config:Lcom/google/android/music/utils/LabelMaker$Config;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v18, v0

    .line 204
    .local v18, bmConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v22

    .line 206
    .local v22, metrics:Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    move v5, v0

    add-int/lit8 v23, v5, 0x1

    .line 207
    .local v23, padding:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    sub-int v14, v5, v23

    .line 208
    .local v14, ascent:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    add-int v20, v5, v23

    .line 209
    .local v20, descent:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    move/from16 v16, v0

    .line 210
    .local v16, backWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    move v15, v0

    .line 212
    .local v15, backHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 213
    .local v24, string:Ljava/lang/String;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v8, bounds:Landroid/graphics/Rect;
    const/4 v5, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v9

    move-object v0, v6

    move-object/from16 v1, v24

    move v2, v5

    move v3, v9

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 216
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    move v5, v0

    const/4 v9, 0x2

    if-eq v5, v9, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    move v5, v0

    const/4 v9, 0x3

    if-ne v5, v9, :cond_1

    .line 219
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/lit8 v9, v23, 0x2

    add-int v16, v5, v9

    .line 220
    sub-int v21, v20, v14

    .line 221
    .local v21, height:I
    add-int v15, v21, v23

    .line 223
    .end local v21           #height:I
    :cond_1
    if-lez v16, :cond_2

    if-gtz v15, :cond_3

    .line 224
    :cond_2
    const/4 v5, 0x0

    .line 256
    :goto_0
    return-object v5

    .line 225
    :cond_3
    const/16 v17, 0x0

    .line 226
    .local v17, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 227
    .local v9, canvas:Landroid/graphics/Canvas;
    if-eqz p1, :cond_4

    .line 228
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v15

    move-object/from16 v3, v18

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/utils/LabelMaker;->createBitmapWithBackground(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 230
    new-instance v9, Landroid/graphics/Canvas;

    .end local v9           #canvas:Landroid/graphics/Canvas;
    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    move v5, v0

    const/4 v10, 0x1

    if-ne v5, v10, :cond_8

    move/from16 v5, v23

    :goto_1
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->xmargin:I

    move v10, v0

    add-int/2addr v10, v5

    .line 236
    .local v10, x:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    move v5, v0

    const/4 v11, 0x3

    if-eq v5, v11, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    move v5, v0

    const/4 v11, 0x4

    if-ne v5, v11, :cond_6

    .line 237
    :cond_5
    iget v5, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v5

    .line 239
    :cond_6
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    move v5, v0

    const/4 v11, 0x3

    if-ne v5, v11, :cond_a

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v5, v0

    neg-int v5, v5

    add-int v5, v5, v23

    move v11, v5

    .line 243
    .local v11, y:I
    :goto_2
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->yoffset:I

    move v5, v0

    add-int/2addr v11, v5

    .line 245
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mPaddingX:I

    .line 246
    iget v5, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v11

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    .line 247
    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    .line 248
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    add-int/2addr v5, v11

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextBottomBaseline:I

    .line 250
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    move v5, v0

    add-int v5, v5, v23

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    .line 251
    add-int v5, v10, v23

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    move v12, v0

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextRightClipped:I

    .line 253
    if-eqz p1, :cond_7

    .line 254
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    move v13, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/music/utils/LabelMaker;->drawClippedString(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIII)V

    :cond_7
    move-object/from16 v5, v17

    .line 256
    goto/16 :goto_0

    .line 234
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_8
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    move v5, v0

    const/4 v10, 0x2

    if-ne v5, v10, :cond_9

    sub-int v5, v16, v23

    goto/16 :goto_1

    :cond_9
    div-int/lit8 v5, v16, 0x2

    goto/16 :goto_1

    .line 239
    .restart local v10       #x:I
    :cond_a
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    move v5, v0

    const/4 v11, 0x4

    if-ne v5, v11, :cond_b

    sub-int v5, v15, v20

    :goto_3
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->ymargin:I

    move v11, v0

    add-int/2addr v5, v11

    move v11, v5

    goto/16 :goto_2

    :cond_b
    add-int v5, v20, v14

    sub-int v5, v15, v5

    div-int/lit8 v5, v5, 0x2

    goto :goto_3
.end method

.method private renderString(IILandroid/text/TextPaint;Lcom/google/android/music/utils/LabelMaker$Config;Ljava/lang/String;Landroid/graphics/Canvas;I)I
    .locals 27
    .parameter "x"
    .parameter "y"
    .parameter "paint"
    .parameter "config"
    .parameter "text"
    .parameter "canvas"
    .parameter "maxLines"

    .prologue
    .line 347
    move-object/from16 v0, p4

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    move/from16 v26, v6

    .line 348
    .local v26, rightJustify:Z
    :goto_0
    if-eqz v26, :cond_4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object v9, v6

    .line 351
    .local v9, alignment:Landroid/text/Layout$Alignment;
    :goto_1
    new-instance v5, Landroid/text/StaticLayout;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    move v8, v0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 353
    .local v5, layout:Landroid/text/StaticLayout;
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v22

    .line 354
    .local v22, lineCount:I
    move/from16 v0, v22

    move/from16 v1, p7

    if-le v0, v1, :cond_0

    .line 355
    move/from16 v22, p7

    .line 358
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    move v0, v6

    neg-float v0, v0

    move/from16 v19, v0

    .line 359
    .local v19, ascent:F
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->descent()F

    move-result v20

    .line 360
    .local v20, descent:F
    add-float v6, v19, v20

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v23, v0

    .line 361
    .local v23, lineHeight:I
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v24

    .line 363
    .local v24, metrics:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 364
    const/4 v6, 0x1

    sub-int v6, v22, v6

    move/from16 v0, v21

    move v1, v6

    if-ge v0, v1, :cond_5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    move-object/from16 v0, p5

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    .line 367
    .local v12, lineText:Ljava/lang/String;
    :goto_3
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 368
    .local v13, bounds:Landroid/graphics/Rect;
    const/4 v6, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p3

    move-object v1, v12

    move v2, v6

    move v3, v7

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 369
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    sub-int v16, p2, v6

    .line 370
    .local v16, baselineY:I
    iget v6, v13, Landroid/graphics/Rect;->left:I

    sub-int v15, p1, v6

    .line 371
    .local v15, tightX:I
    if-eqz v26, :cond_1

    .line 372
    const/4 v6, 0x0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    move v7, v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mPaddingX:I

    move v8, v0

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v15, v6

    .line 374
    :cond_1
    new-instance v25, Landroid/graphics/Rect;

    move-object/from16 v0, v25

    move-object v1, v13

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 375
    .local v25, r2:Landroid/graphics/Rect;
    move-object/from16 v0, v25

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    move v6, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    move v6, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    .line 379
    if-eqz p6, :cond_2

    .line 380
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v14, p6

    invoke-direct/range {v10 .. v18}, Lcom/google/android/music/utils/LabelMaker;->drawClippedString(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIII)V

    .line 383
    :cond_2
    add-int p2, p2, v23

    .line 363
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 347
    .end local v5           #layout:Landroid/text/StaticLayout;
    .end local v9           #alignment:Landroid/text/Layout$Alignment;
    .end local v12           #lineText:Ljava/lang/String;
    .end local v13           #bounds:Landroid/graphics/Rect;
    .end local v15           #tightX:I
    .end local v16           #baselineY:I
    .end local v19           #ascent:F
    .end local v20           #descent:F
    .end local v21           #i:I
    .end local v22           #lineCount:I
    .end local v23           #lineHeight:I
    .end local v24           #metrics:Landroid/graphics/Paint$FontMetricsInt;
    .end local v25           #r2:Landroid/graphics/Rect;
    .end local v26           #rightJustify:Z
    :cond_3
    const/4 v6, 0x0

    move/from16 v26, v6

    goto/16 :goto_0

    .line 348
    .restart local v26       #rightJustify:Z
    :cond_4
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v9, v6

    goto/16 :goto_1

    .line 364
    .restart local v5       #layout:Landroid/text/StaticLayout;
    .restart local v9       #alignment:Landroid/text/Layout$Alignment;
    .restart local v19       #ascent:F
    .restart local v20       #descent:F
    .restart local v21       #i:I
    .restart local v22       #lineCount:I
    .restart local v23       #lineHeight:I
    .restart local v24       #metrics:Landroid/graphics/Paint$FontMetricsInt;
    :cond_5
    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    move-object/from16 v0, p5

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    goto/16 :goto_3

    .line 386
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    move v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottomBaseline:I

    move v6, v0

    const/4 v7, 0x1

    sub-int v7, v22, v7

    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mTextBottomBaseline:I

    .line 390
    return p2
.end method


# virtual methods
.method protected computePaint()Landroid/text/TextPaint;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x437f

    .line 131
    iget-object v10, p0, Lcom/google/android/music/utils/LabelMaker;->mPaint:Landroid/text/TextPaint;

    if-eqz v10, :cond_0

    .line 132
    iget-object v10, p0, Lcom/google/android/music/utils/LabelMaker;->mPaint:Landroid/text/TextPaint;

    .line 178
    :goto_0
    return-object v10

    .line 133
    :cond_0
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    .line 134
    .local v7, paint:Landroid/text/TextPaint;
    iput-object v7, p0, Lcom/google/android/music/utils/LabelMaker;->mPaint:Landroid/text/TextPaint;

    .line 135
    invoke-virtual {v7, v12}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 136
    invoke-virtual {v7, v12}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 137
    iget-object v3, p0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 138
    .local v3, config:Lcom/google/android/music/utils/LabelMaker$Config;
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    mul-float/2addr v10, v11

    float-to-int v0, v10

    .line 139
    .local v0, alpha:I
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->r:F

    mul-float/2addr v10, v11

    float-to-int v8, v10

    .line 140
    .local v8, red:I
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->g:F

    mul-float/2addr v10, v11

    float-to-int v5, v10

    .line 141
    .local v5, green:I
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->b:F

    mul-float/2addr v10, v11

    float-to-int v1, v10

    .line 142
    .local v1, blue:I
    invoke-static {v0, v8, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 143
    .local v2, color:I
    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 144
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->shadow:Z

    if-eqz v10, :cond_1

    .line 145
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    int-to-float v10, v10

    const/high16 v11, -0x100

    invoke-virtual {v7, v10, v13, v13, v11}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 147
    :cond_1
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->underline:Z

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 148
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    if-eqz v10, :cond_5

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 149
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->strikeThrough:Z

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 151
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    if-ne v10, v12, :cond_6

    .line 152
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 160
    :goto_2
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->italic:Z

    if-eqz v10, :cond_2

    .line 161
    const/high16 v10, -0x4180

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 162
    :cond_2
    iget-object v9, p0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    .line 163
    .local v9, stringToDraw:Ljava/lang/String;
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 164
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    if-ne v10, v12, :cond_4

    .line 168
    :cond_3
    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    .line 169
    .local v4, currentTextSize:F
    const/4 v6, 0x0

    .line 170
    .local v6, measuredTextWidth:F
    invoke-virtual {v7, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 171
    iget v10, p0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-gez v10, :cond_8

    .end local v4           #currentTextSize:F
    .end local v6           #measuredTextWidth:F
    :cond_4
    :goto_3
    move-object v10, v7

    .line 178
    goto :goto_0

    .line 148
    .end local v9           #stringToDraw:Ljava/lang/String;
    :cond_5
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_1

    .line 153
    :cond_6
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 154
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2

    .line 157
    :cond_7
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2

    .line 173
    .restart local v4       #currentTextSize:F
    .restart local v6       #measuredTextWidth:F
    .restart local v9       #stringToDraw:Ljava/lang/String;
    :cond_8
    const/high16 v10, 0x3f80

    sub-float v10, v4, v10

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 174
    const/high16 v10, 0x40c0

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_3

    goto :goto_3
.end method

.method public getPaddingX()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mPaddingX:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBottom()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    return v0
.end method

.method public getTextBottomBaseline()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mTextBottomBaseline:I

    return v0
.end method

.method public getTextHeight()I
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    iget v1, p0, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTextRightClipped()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightClipped:I

    return v0
.end method

.method public getTextRightEdge()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    return v0
.end method

.method public getTextTop()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    return v0
.end method

.method public getTextTopBaseline()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    return v0
.end method

.method public getTextVCenter()I
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    iget v1, p0, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method public load()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/LabelMaker;->loadImp(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public measure()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/LabelMaker;->loadImp(Z)Landroid/graphics/Bitmap;

    .line 197
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 77
    iput p1, p0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    .line 78
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 81
    iput p1, p0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    .line 82
    return-void
.end method
