.class public Lcom/android/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 196
    if-nez p0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 199
    :cond_0
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 268
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 296
    if-le p0, p2, :cond_0

    move v0, p2

    .line 298
    :goto_0
    return v0

    .line 297
    :cond_0
    if-ge p0, p1, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p0

    .line 298
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v10, 0x1

    .line 139
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 140
    .local v4, w:D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .line 142
    .local v0, h:D
    if-gez p2, :cond_0

    move v2, v10

    .line 144
    .local v2, lowerBound:I
    :goto_0
    if-gez p1, :cond_1

    const/16 v6, 0x80

    move v3, v6

    .line 148
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_2

    move v6, v2

    .line 158
    :goto_2
    return v6

    .line 142
    .end local v2           #lowerBound:I
    .end local v3           #upperBound:I
    :cond_0
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v2, v6

    goto :goto_0

    .line 144
    .restart local v2       #lowerBound:I
    :cond_1
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    move v3, v6

    goto :goto_1

    .line 153
    .restart local v3       #upperBound:I
    :cond_2
    if-gez p2, :cond_3

    if-gez p1, :cond_3

    move v6, v10

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    if-gez p1, :cond_4

    move v6, v2

    .line 156
    goto :goto_2

    :cond_4
    move v6, v3

    .line 158
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 121
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 125
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 126
    const/4 v1, 0x1

    .line 127
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 128
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 134
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 290
    sub-float v0, p0, p2

    .line 291
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 292
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 272
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .parameter "currentActivity"

    .prologue
    const/4 v6, -0x1

    .line 417
    const/4 v1, -0x1

    .line 419
    .local v1, cameraId:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 422
    .local v3, intentCameraId:I
    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 425
    .local v2, frontCameraId:I
    if-eq v2, v6, :cond_0

    .line 426
    move v1, v2

    .line 435
    .end local v2           #frontCameraId:I
    :cond_0
    :goto_0
    return v1

    .line 428
    :cond_1
    invoke-static {v3}, Lcom/android/camera/Util;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 431
    .local v0, backCameraId:I
    if-eq v0, v6, :cond_0

    .line 432
    move v1, v0

    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 304
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 310
    :goto_0
    return v1

    :pswitch_0
    move v1, v2

    .line 305
    goto :goto_0

    .line 306
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 307
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 308
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 11
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 333
    .local v0, ASPECT_TOLERANCE:D
    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 374
    .end local v0           #ASPECT_TOLERANCE:D
    .end local p0
    .end local p1           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local p2
    :goto_0
    return-object p0

    .line 335
    .restart local v0       #ASPECT_TOLERANCE:D
    .restart local p0
    .restart local p1       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local p2
    :cond_0
    const/4 v2, 0x0

    .line 336
    .local v2, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v0, 0x7fefffffffffffffL

    .line 344
    .local v0, minDiff:D
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .end local p0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 345
    .local p0, display:Landroid/view/Display;
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 347
    .local v3, targetHeight:I
    if-gtz v3, :cond_6

    .line 349
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    .end local v3           #targetHeight:I
    .local p0, targetHeight:I
    move v6, p0

    .line 353
    .end local p0           #targetHeight:I
    .local v6, targetHeight:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 354
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v7, v7

    div-double/2addr v3, v7

    .line 355
    .local v3, ratio:D
    sub-double/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .end local v3           #ratio:D
    move-result-wide v3

    const-wide v7, 0x3f50624dd2f1a9fcL

    cmpl-double v3, v3, v7

    if-gtz v3, :cond_1

    .line 356
    iget v3, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    cmpg-double v3, v3, v0

    if-gez v3, :cond_1

    .line 357
    move-object v2, v5

    .line 358
    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    .end local v0           #minDiff:D
    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    .restart local v0       #minDiff:D
    goto :goto_2

    .line 364
    .end local v5           #size:Landroid/hardware/Camera$Size;
    :cond_2
    if-nez v2, :cond_4

    .line 365
    const-string p0, "Util"

    .end local p0           #i$:Ljava/util/Iterator;
    const-string p2, "No preview size match the aspect ratio"

    .end local p2
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-wide p2, 0x7fefffffffffffffL

    .line 367
    .end local v0           #minDiff:D
    .local p2, minDiff:D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .restart local p0       #i$:Ljava/util/Iterator;
    move-wide v9, p2

    .end local p2           #minDiff:D
    .local v9, minDiff:D
    move-wide p1, v9

    .end local v9           #minDiff:D
    .local p1, minDiff:D
    move-object p3, v2

    .end local v2           #optimalSize:Landroid/hardware/Camera$Size;
    .local p3, optimalSize:Landroid/hardware/Camera$Size;
    :cond_3
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 368
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpg-double v1, v1, p1

    if-gez v1, :cond_3

    .line 369
    move-object p3, v0

    .line 370
    iget p1, v0, Landroid/hardware/Camera$Size;->height:I

    .end local p1           #minDiff:D
    sub-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    .restart local p1       #minDiff:D
    goto :goto_3

    .end local p3           #optimalSize:Landroid/hardware/Camera$Size;
    .local v0, minDiff:D
    .restart local v2       #optimalSize:Landroid/hardware/Camera$Size;
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .local p2, targetRatio:D
    :cond_4
    move-wide p1, v0

    .end local v0           #minDiff:D
    .end local p2           #targetRatio:D
    .local p1, minDiff:D
    move-object p3, v2

    .end local v2           #optimalSize:Landroid/hardware/Camera$Size;
    .restart local p3       #optimalSize:Landroid/hardware/Camera$Size;
    :cond_5
    move-object p0, p3

    .line 374
    goto/16 :goto_0

    .end local v6           #targetHeight:I
    .end local p3           #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v0       #minDiff:D
    .restart local v2       #optimalSize:Landroid/hardware/Camera$Size;
    .local v3, targetHeight:I
    .local p0, display:Landroid/view/Display;
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local p2       #targetRatio:D
    :cond_6
    move v6, v3

    .end local v3           #targetHeight:I
    .restart local v6       #targetHeight:I
    goto :goto_1
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    .line 443
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    const/4 v0, 0x1

    .line 439
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMmsCapable(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 390
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 392
    if-nez p0, :cond_0

    move v0, v1

    .line 412
    :goto_0
    return v0

    .line 397
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 398
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "isVoiceCapable"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 401
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 402
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 403
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 412
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 407
    :catch_1
    move-exception v0

    goto :goto_1

    .line 404
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 164
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 165
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 166
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 168
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v4, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_1

    :cond_0
    move-object v2, v5

    .line 182
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 172
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v2, -0x1

    invoke-static {v1, v2, p1}, Lcom/android/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 177
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 178
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 180
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 181
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v2, "Util"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 182
    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 280
    add-int/lit8 p0, p0, -0x1

    .line 281
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 282
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 283
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 284
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 285
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 286
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x0

    .line 70
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p0, :cond_3

    .line 71
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 74
    if-eqz p2, :cond_2

    .line 75
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 76
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 77
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_4

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 87
    :cond_2
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 89
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_3

    .line 90
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    move-object p0, v7

    .line 97
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object p0

    .line 79
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_4
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_6

    .line 80
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 82
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static setCameraDisplayOrientation(IILandroid/hardware/Camera;)V
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 317
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 318
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 320
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 321
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 322
    .local v1, result:I
    const/16 v2, 0x168

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x168

    .line 326
    :goto_0
    invoke-virtual {p2, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 327
    return-void

    .line 324
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 203
    new-instance v0, Lcom/android/camera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 209
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 216
    return-void
.end method
