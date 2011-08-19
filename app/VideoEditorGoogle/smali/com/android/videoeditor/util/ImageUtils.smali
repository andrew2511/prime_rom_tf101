.class public Lcom/android/videoeditor/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static MATCH_LARGER_DIMENSION:I = 0x0

.field public static MATCH_SMALLER_DIMENSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static final sResizePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/videoeditor/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    .line 54
    const/4 v0, 0x1

    sput v0, Lcom/android/videoeditor/util/ImageUtils;->MATCH_SMALLER_DIMENSION:I

    .line 55
    sput v1, Lcom/android/videoeditor/util/ImageUtils;->MATCH_LARGER_DIMENSION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "inputBitmap"
    .parameter "overlayType"
    .parameter "title"
    .parameter "subTitle"
    .parameter "width"
    .parameter "height"

    .prologue
    const v5, 0x7f020057

    const v2, 0x7f020056

    const/4 v3, -0x1

    const/high16 v4, -0x100

    .line 235
    if-nez p1, :cond_0

    .line 236
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p5, p6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 241
    .local v8, overlayBitmap:Landroid/graphics/Bitmap;
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 242
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 244
    .local v1, canvas:Landroid/graphics/Canvas;
    packed-switch p2, :pswitch_data_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported overlay type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v8           #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_0
    move-object v8, p1

    .restart local v8       #overlayBitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .restart local v1       #canvas:Landroid/graphics/Canvas;
    :pswitch_0
    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 246
    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/util/ImageUtils;->drawCenterOverlay(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;II)V

    .line 274
    :goto_1
    return-object v8

    :pswitch_1
    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 252
    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/util/ImageUtils;->drawBottomOverlay(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :pswitch_2
    move-object v0, p0

    move v2, v5

    move v3, v4

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 258
    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/util/ImageUtils;->drawCenterOverlay(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :pswitch_3
    move-object v0, p0

    move v2, v5

    move v3, v4

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 264
    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/util/ImageUtils;->drawBottomOverlay(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static buildOverlayPreview(Landroid/content/Context;Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 10
    .parameter "context"
    .parameter "canvas"
    .parameter "overlayType"
    .parameter "title"
    .parameter "subTitle"
    .parameter "startX"
    .parameter "startY"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 377
    packed-switch p2, :pswitch_data_0

    .line 393
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported overlay type: "

    .end local p3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    .restart local p0
    .restart local p1
    .restart local p3
    :pswitch_0
    const v2, 0x7f020056

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/util/ImageUtils;->drawOverlayPreview(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 396
    :goto_0
    return-void

    .line 387
    :pswitch_1
    const v2, 0x7f020057

    const/high16 v3, -0x100

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/util/ImageUtils;->drawOverlayPreview(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;IIII)V

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static drawBottomOverlay(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter "context"
    .parameter "canvas"
    .parameter "drawableId"
    .parameter "textColor"
    .parameter "title"
    .parameter "subTitle"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 334
    div-int/lit8 v0, p6, 0x48

    .line 335
    .local v0, INSET:I
    mul-int/lit8 v1, p7, 0x2

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    .line 336
    .local v1, startHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 337
    .local p0, background:Landroid/graphics/drawable/Drawable;
    sub-int p2, p6, v0

    sub-int v2, p7, v0

    invoke-virtual {p0, v0, v1, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 338
    .end local p2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    new-instance p2, Landroid/graphics/Paint;

    const/4 p0, 0x3

    invoke-direct {p2, p0}, Landroid/graphics/Paint;-><init>(I)V

    .line 341
    .end local p0           #background:Landroid/graphics/drawable/Drawable;
    .local p2, p:Landroid/graphics/Paint;
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 342
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    div-int/lit8 v2, p7, 0xc

    .line 345
    .local v2, titleFontSize:I
    mul-int/lit8 p0, v0, 0x2

    sub-int p0, p6, p0

    mul-int/lit8 p3, v2, 0x2

    sub-int/2addr p0, p3

    .line 346
    .local p0, maxWidth:I
    div-int/lit8 p3, p7, 0x6

    .end local p3
    add-int/2addr p3, v1

    .line 347
    .local p3, startYOffset:I
    if-eqz p4, :cond_0

    .line 348
    int-to-float p7, v2

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 349
    .end local p7
    invoke-static {p4, p2, p0}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p4

    .line 350
    mul-int/lit8 p7, v0, 0x2

    sub-int p7, p6, p7

    int-to-float p7, p7

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .end local v1           #startHeight:I
    sub-float/2addr p7, v1

    const/high16 v1, 0x4000

    div-float/2addr p7, v1

    int-to-float v1, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, p4, p7, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 354
    :cond_0
    if-eqz p5, :cond_1

    .line 355
    const/4 p4, 0x6

    sub-int p4, v2, p4

    int-to-float p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 356
    .end local p4
    invoke-static {p5, p2, p0}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p5

    .line 357
    mul-int/lit8 p0, v0, 0x2

    sub-int p0, p6, p0

    int-to-float p0, p0

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .end local p0           #maxWidth:I
    move-result p4

    sub-float/2addr p0, p4

    const/high16 p4, 0x4000

    div-float/2addr p0, p4

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    .end local p3           #startYOffset:I
    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p1, p5, p0, p3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 360
    :cond_1
    return-void
.end method

.method private static drawCenterOverlay(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter "context"
    .parameter "canvas"
    .parameter "drawableId"
    .parameter "textColor"
    .parameter "title"
    .parameter "subTitle"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 291
    div-int/lit8 v0, p6, 0x48

    .line 292
    .local v0, INSET:I
    div-int/lit8 v1, p7, 0x3

    add-int/2addr v1, v0

    .line 293
    .local v1, startHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 294
    .local p0, background:Landroid/graphics/drawable/Drawable;
    sub-int p2, p6, v0

    mul-int/lit8 v2, p7, 0x2

    div-int/lit8 v2, v2, 0x3

    .end local p2
    sub-int/2addr v2, v0

    invoke-virtual {p0, v0, v1, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    new-instance p2, Landroid/graphics/Paint;

    const/4 p0, 0x3

    invoke-direct {p2, p0}, Landroid/graphics/Paint;-><init>(I)V

    .line 299
    .end local p0           #background:Landroid/graphics/drawable/Drawable;
    .local p2, p:Landroid/graphics/Paint;
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 300
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    div-int/lit8 v2, p7, 0xc

    .line 303
    .local v2, titleFontSize:I
    mul-int/lit8 p0, v0, 0x2

    sub-int p0, p6, p0

    mul-int/lit8 p3, v2, 0x2

    sub-int/2addr p0, p3

    .line 304
    .local p0, maxWidth:I
    div-int/lit8 p3, p7, 0x6

    .end local p3
    add-int/2addr p3, v1

    .line 305
    .local p3, startYOffset:I
    if-eqz p4, :cond_0

    .line 306
    int-to-float p7, v2

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 307
    .end local p7
    invoke-static {p4, p2, p0}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p4

    .line 308
    mul-int/lit8 p7, v0, 0x2

    sub-int p7, p6, p7

    int-to-float p7, p7

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .end local v1           #startHeight:I
    sub-float/2addr p7, v1

    const/high16 v1, 0x4000

    div-float/2addr p7, v1

    int-to-float v1, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, p4, p7, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    :cond_0
    if-eqz p5, :cond_1

    .line 313
    const/4 p4, 0x6

    sub-int p4, v2, p4

    int-to-float p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 314
    .end local p4
    invoke-static {p5, p2, p0}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p5

    .line 315
    mul-int/lit8 p0, v0, 0x2

    sub-int p0, p6, p0

    int-to-float p0, p0

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .end local p0           #maxWidth:I
    move-result p4

    sub-float/2addr p0, p4

    const/high16 p4, 0x4000

    div-float/2addr p0, p4

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    .end local p3           #startYOffset:I
    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p1, p5, p0, p3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    :cond_1
    return-void
.end method

.method private static drawOverlayPreview(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 2
    .parameter "context"
    .parameter "canvas"
    .parameter "drawableId"
    .parameter "textColor"
    .parameter "title"
    .parameter "subTitle"
    .parameter "startX"
    .parameter "startY"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, INSET:I
    add-int/lit8 v0, p7, 0x0

    .line 414
    .local v0, startHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 415
    .local p0, background:Landroid/graphics/drawable/Drawable;
    add-int/lit8 p2, p6, 0x0

    add-int/2addr p6, p8

    const/4 v1, 0x0

    sub-int/2addr p6, v1

    const/4 v1, 0x0

    sub-int v1, p9, v1

    add-int/2addr p7, v1

    invoke-virtual {p0, p2, v0, p6, p7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 417
    .end local p2
    .end local p6
    .end local p7
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 419
    new-instance p2, Landroid/graphics/Paint;

    const/4 p0, 0x3

    invoke-direct {p2, p0}, Landroid/graphics/Paint;-><init>(I)V

    .line 420
    .end local p0           #background:Landroid/graphics/drawable/Drawable;
    .local p2, p:Landroid/graphics/Paint;
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 421
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    div-int/lit8 p6, p9, 0x4

    .line 424
    .local p6, titleFontSize:I
    const/4 p0, 0x0

    sub-int p0, p8, p0

    mul-int/lit8 p3, p6, 0x2

    sub-int/2addr p0, p3

    .line 425
    .local p0, maxWidth:I
    div-int/lit8 p3, p9, 0x2

    .end local p3
    add-int/2addr p3, v0

    .line 426
    .local p3, startYOffset:I
    if-eqz p4, :cond_0

    .line 427
    int-to-float p7, p6

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 428
    invoke-static {p4, p2, p0}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p4

    .line 429
    const/4 p7, 0x0

    sub-int p7, p8, p7

    int-to-float p7, p7

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p9

    .end local p9
    sub-float/2addr p7, p9

    const/high16 p9, 0x4000

    div-float/2addr p7, p9

    int-to-float p9, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v0

    .end local v0           #startHeight:I
    sub-float/2addr p9, v0

    invoke-virtual {p1, p4, p7, p9, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 433
    :cond_0
    if-eqz p5, :cond_1

    .line 434
    const/4 p4, 0x6

    sub-int p4, p6, p4

    int-to-float p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 435
    .end local p4
    invoke-static {p5, p2, p0}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p5

    .line 436
    const/4 p0, 0x0

    sub-int p0, p8, p0

    int-to-float p0, p0

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .end local p0           #maxWidth:I
    move-result p4

    sub-float/2addr p0, p4

    const/high16 p4, 0x4000

    div-float/2addr p0, p4

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    .end local p3           #startYOffset:I
    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p1, p5, p0, p3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 439
    :cond_1
    return-void
.end method

.method private static rotateImage(Ljava/lang/String;ILjava/io/File;)V
    .locals 9
    .parameter "inputFilename"
    .parameter "orientation"
    .parameter "outputFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    .local v0, originalBmp:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 205
    .local v5, mtx:Landroid/graphics/Matrix;
    int-to-float v2, p1

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 209
    .local v8, rotatedBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 213
    .local v7, fos:Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v8, v1, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 216
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    return-void
.end method

.method public static scaleImage(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .parameter "match"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 76
    .local v0, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 77
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 79
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 80
    .local v3, nativeWidth:I
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 84
    .local v2, nativeHeight:I
    if-gt v3, p1, :cond_0

    if-le v2, p2, :cond_5

    .line 85
    :cond_0
    int-to-float v0, v3

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 86
    .local v0, dx:F
    int-to-float v1, v2

    int-to-float v4, p2

    div-float/2addr v1, v4

    .line 87
    .local v1, dy:F
    sget v4, Lcom/android/videoeditor/util/ImageUtils;->MATCH_SMALLER_DIMENSION:I

    if-ne p3, v4, :cond_2

    .line 88
    cmpl-float p3, v0, v1

    if-lez p3, :cond_1

    .line 89
    .end local p3
    int-to-float p2, p1

    .line 90
    .local p2, bitmapWidth:F
    int-to-float p1, v2

    div-float/2addr p1, v0

    .line 106
    .local p1, bitmapHeight:F
    :goto_0
    int-to-float p3, v3

    div-float/2addr p3, p2

    const/high16 v0, 0x3f80

    cmpl-float p3, p3, v0

    if-lez p3, :cond_4

    .line 107
    .end local v0           #dx:F
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    .local p3, options:Landroid/graphics/BitmapFactory$Options;
    float-to-int v0, p2

    div-int v0, v3, v0

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 109
    invoke-static {p0, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .local p3, srcBitmap:Landroid/graphics/Bitmap;
    :goto_1
    move-object v0, p3

    .line 119
    .end local v1           #dy:F
    .end local p3           #srcBitmap:Landroid/graphics/Bitmap;
    .local v0, srcBitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-nez v0, :cond_6

    .line 120
    new-instance p1, Ljava/io/IOException;

    .end local p1           #bitmapHeight:F
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #bitmapWidth:F
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot decode file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    .local v0, dx:F
    .restart local v1       #dy:F
    .restart local p0
    .local p1, width:I
    .local p2, height:I
    :cond_1
    int-to-float p1, v3

    div-float p3, p1, v1

    .line 93
    .local p3, bitmapWidth:F
    int-to-float p1, p2

    .local p1, bitmapHeight:F
    move p2, p3

    .end local p3           #bitmapWidth:F
    .local p2, bitmapWidth:F
    goto :goto_0

    .line 96
    .local p1, width:I
    .local p2, height:I
    .local p3, match:I
    :cond_2
    cmpl-float p3, v0, v1

    if-lez p3, :cond_3

    .line 97
    .end local p3           #match:I
    int-to-float p1, v3

    div-float p3, p1, v1

    .line 98
    .local p3, bitmapWidth:F
    int-to-float p1, p2

    .local p1, bitmapHeight:F
    move p2, p3

    .end local p3           #bitmapWidth:F
    .local p2, bitmapWidth:F
    goto :goto_0

    .line 100
    .local p1, width:I
    .local p2, height:I
    :cond_3
    int-to-float p2, p1

    .line 101
    .local p2, bitmapWidth:F
    int-to-float p1, v2

    div-float/2addr p1, v0

    .local p1, bitmapHeight:F
    goto :goto_0

    .line 111
    .end local v0           #dx:F
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    .local p3, srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 114
    .end local v1           #dy:F
    .local v0, dbo:Landroid/graphics/BitmapFactory$Options;
    .local p1, width:I
    .local p2, height:I
    .local p3, match:I
    :cond_5
    int-to-float p3, p1

    .line 115
    .local p3, bitmapWidth:F
    int-to-float p1, p2

    .line 116
    .local p1, bitmapHeight:F
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .local p2, srcBitmap:Landroid/graphics/Bitmap;
    move-object v0, p2

    .end local p2           #srcBitmap:Landroid/graphics/Bitmap;
    .local v0, srcBitmap:Landroid/graphics/Bitmap;
    move p2, p3

    .end local p3           #bitmapWidth:F
    .local p2, bitmapWidth:F
    goto :goto_2

    .line 124
    :cond_6
    float-to-int p0, p2

    float-to-int p3, p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    invoke-static {p0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 126
    .local p0, bitmap:Landroid/graphics/Bitmap;
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local p3, canvas:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v2           #nativeHeight:I
    .end local v3           #nativeWidth:I
    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int p2, p2

    float-to-int p1, p1

    invoke-direct {v2, v3, v4, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local p1           #bitmapHeight:F
    .end local p2           #bitmapWidth:F
    sget-object p1, Lcom/android/videoeditor/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    return-object p0
.end method

.method public static transformJpeg(Ljava/lang/String;Ljava/io/File;)Z
    .locals 7
    .parameter "inputFilename"
    .parameter "outputFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, exif:Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    invoke-virtual {v0, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, orientation:I
    const-string v2, "ImageUtils"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exif orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    packed-switch v1, :pswitch_data_0

    move v2, v5

    .line 187
    :goto_0
    return v2

    .line 154
    :pswitch_0
    const/16 v2, 0x5a

    invoke-static {p0, v2, p1}, Lcom/android/videoeditor/util/ImageUtils;->rotateImage(Ljava/lang/String;ILjava/io/File;)V

    move v2, v6

    .line 155
    goto :goto_0

    .line 159
    :pswitch_1
    const/16 v2, 0xb4

    invoke-static {p0, v2, p1}, Lcom/android/videoeditor/util/ImageUtils;->rotateImage(Ljava/lang/String;ILjava/io/File;)V

    move v2, v6

    .line 160
    goto :goto_0

    .line 164
    :pswitch_2
    const/16 v2, 0x10e

    invoke-static {p0, v2, p1}, Lcom/android/videoeditor/util/ImageUtils;->rotateImage(Ljava/lang/String;ILjava/io/File;)V

    move v2, v6

    .line 165
    goto :goto_0

    :pswitch_3
    move v2, v5

    .line 169
    goto :goto_0

    :pswitch_4
    move v2, v5

    .line 173
    goto :goto_0

    :pswitch_5
    move v2, v5

    .line 177
    goto :goto_0

    :pswitch_6
    move v2, v5

    .line 181
    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
