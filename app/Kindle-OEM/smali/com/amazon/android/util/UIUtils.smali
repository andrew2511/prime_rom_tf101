.class public Lcom/amazon/android/util/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSoftKeyboard(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 113
    :cond_0
    return-void
.end method

.method public static convertConfigurationToScreenOrientation(I)I
    .locals 1
    .parameter "configurationOrientation"

    .prologue
    .line 142
    packed-switch p0, :pswitch_data_0

    .line 149
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 145
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertDipsToPixels(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dip"

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static convertScreenToConfigurationOrientation(I)I
    .locals 1
    .parameter "screenOrientation"

    .prologue
    .line 123
    packed-switch p0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 126
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 128
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertSpsToPixels(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "sp"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 77
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static createReflectedImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "src"
    .parameter "reflectionHeightFactor"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 470
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 471
    .local v7, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 473
    .local v6, srcHeight:I
    int-to-float v8, v6

    mul-float/2addr v8, p1

    float-to-int v2, v8

    .line 475
    .local v2, reflectionHeight:I
    move v5, v7

    .line 476
    .local v5, resultWidth:I
    add-int v4, v6, v2

    .line 478
    .local v4, resultHeight:I
    invoke-static {p0, v2}, Lcom/amazon/android/util/UIUtils;->createReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 479
    .local v1, reflection:Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 480
    .local v3, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 481
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 482
    add-int/lit8 v8, v6, 0x1

    int-to-float v8, v8

    invoke-virtual {v0, v1, v9, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 483
    return-object v3
.end method

.method public static createReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 494
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 497
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p0, v6, v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v2, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 510
    new-instance v9, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v9, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 512
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 513
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 514
    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 515
    invoke-virtual {v9, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 518
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p1

    const v5, 0x70ffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 523
    new-instance v2, Landroid/graphics/ComposeShader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v9, v0, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 526
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 527
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 530
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 531
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 534
    return-object v8
.end method

.method public static formatLongPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "bookItem"
    .parameter "context"

    .prologue
    .line 195
    const v0, 0x7f0b0001

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/android/util/UIUtils;->formatPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    .line 217
    :cond_0
    const-wide/16 v0, 0x0

    .line 222
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getGMTOffsetInMilliSeconds()I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    sub-long v0, v2, v0

    .line 240
    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 229
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 236
    :try_start_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v0

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static formatShortPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "bookItem"
    .parameter "context"

    .prologue
    .line 207
    const v0, 0x7f0b0002

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/android/util/UIUtils;->formatPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateByteDownloadStatusString(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "downloadItem"

    .prologue
    .line 332
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadTarget()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getMaxDownloadProgress()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgress()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/amazon/android/util/UIUtils;->generateBytesRemainingString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getMaxDownloadProgress()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/amazon/android/util/UIUtils;->generateBytesRemainingString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static generateBytesRemainingString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "bytes"

    .prologue
    const-wide/high16 v5, 0x4090

    .line 351
    long-to-double v3, p1

    div-double v0, v3, v5

    .line 353
    .local v0, displayedBytes:D
    const-wide v3, 0x408f400000000000L

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_0

    .line 355
    div-double/2addr v0, v5

    .line 356
    const v3, 0x7f0b0061

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, suffix:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/DecimalFormat;

    const v5, 0x7f0b0003

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 360
    .end local v2           #suffix:Ljava/lang/String;
    :cond_0
    const v3, 0x7f0b0060

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #suffix:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "bookItem"
    .parameter "shorten"
    .parameter "context"

    .prologue
    .line 261
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 264
    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p0, p2}, Lcom/amazon/android/util/UIUtils;->formatShortPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 266
    .local v0, dateOrAuthor:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_1
    :goto_1
    return-object v0

    .line 264
    .end local v0           #dateOrAuthor:Ljava/lang/String;
    :cond_2
    invoke-static {p0, p2}, Lcom/amazon/android/util/UIUtils;->formatLongPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 275
    :cond_3
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #dateOrAuthor:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getContentDownloadProgressPercent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)D
    .locals 8
    .parameter "book"

    .prologue
    const-wide/high16 v6, 0x4059

    .line 301
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move-wide v2, v6

    .line 318
    :goto_0
    return-wide v2

    .line 306
    :cond_0
    const-wide/16 v0, 0x0

    .line 307
    .local v0, progress:D
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadTarget()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 309
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getMaxDownloadProgress()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 311
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgress()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getMaxDownloadProgress()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    mul-double v0, v2, v6

    :cond_1
    :goto_1
    move-wide v2, v0

    .line 318
    goto :goto_0

    .line 314
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadTarget()I

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    const-wide/high16 v0, 0x4059

    goto :goto_1
.end method

.method public static getScreenHeightInInches(Landroid/content/Context;)F
    .locals 2
    .parameter "context"

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static getScreenWidthInInches(Landroid/content/Context;)F
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static isStatusBarVisible(Landroid/view/Window;)Z
    .locals 3
    .parameter "window"

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 183
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x400

    const/16 v2, 0x400

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDownloadProgress(Landroid/widget/ProgressBar;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 2
    .parameter "progressBar"
    .parameter "bookItem"

    .prologue
    .line 287
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getContentDownloadProgressPercent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 288
    return-void
.end method

.method public static setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
    .locals 2
    .parameter "downloadProgressBarState"
    .parameter "downloadProgressBarOverlayVisibility"
    .parameter "book"
    .parameter "downloadProgressBar"

    .prologue
    .line 419
    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/amazon/android/util/DownloadProgressBarState;->calculateState(Lcom/amazon/kcp/library/models/IDownloadBookItem;I)V

    .line 420
    invoke-virtual {p0}, Lcom/amazon/android/util/DownloadProgressBarState;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 421
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisibile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/android/util/DownloadProgressBarState;->isDrawableIndeterminate()Z

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/amazon/android/util/UIUtils;->setProgressDrawable(Landroid/widget/ProgressBar;Landroid/graphics/drawable/Drawable;Z)V

    .line 426
    invoke-virtual {p0}, Lcom/amazon/android/util/DownloadProgressBarState;->getProgress()I

    move-result v1

    invoke-static {p3, v1}, Lcom/amazon/android/util/UIUtils;->setProgressForceRefresh(Landroid/widget/ProgressBar;I)V

    .line 428
    return-object p1

    .line 421
    :cond_0
    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    move-object p1, v1

    goto :goto_0
.end method

.method private static setProgressDrawable(Landroid/widget/ProgressBar;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "progressBar"
    .parameter "drawable"
    .parameter "isIndeterminate"

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 385
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 386
    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 388
    if-eqz p2, :cond_0

    .line 390
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static setProgressForceRefresh(Landroid/widget/ProgressBar;I)V
    .locals 1
    .parameter "progressBar"
    .parameter "progress"

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 452
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 453
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public static setStatusBarVisible(Landroid/view/Window;Z)V
    .locals 2
    .parameter "window"
    .parameter "visible"

    .prologue
    const/16 v1, 0x400

    .line 160
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 165
    :cond_0
    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method
