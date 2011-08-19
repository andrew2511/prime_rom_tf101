.class public final Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;
.super Lcom/zinio/mobile/android/modules/bitmaploader/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zinio/mobile/android/modules/bitmaploader/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 22
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a()V

    .line 23
    if-eqz p4, :cond_1

    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 25
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 29
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 33
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 34
    invoke-virtual {v2, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 36
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a()V

    .line 43
    :goto_1
    invoke-static {p2, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 44
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    int-to-float v0, v0

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 46
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a()V

    .line 50
    :cond_0
    return-object v1

    :cond_1
    move v0, v5

    .line 23
    goto :goto_0

    .line 39
    :cond_2
    const/16 v3, 0xff

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 56
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a()V

    .line 58
    invoke-static {p1, p2, p4}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    new-instance v5, Lcom/zinio/mobile/android/e/e;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-direct {v5, v4, p4, v3}, Lcom/zinio/mobile/android/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 79
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    invoke-virtual {v2, v3, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 82
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a()V

    .line 88
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 91
    new-instance v5, Lcom/zinio/mobile/android/e/e;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-direct {v5, v4, p4, v3}, Lcom/zinio/mobile/android/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 98
    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    int-to-float v0, v0

    invoke-virtual {v2, v3, v0, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;->a()V

    .line 104
    :cond_0
    return-object v1

    .line 74
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v3, v8

    .line 77
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 92
    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v3, v8

    .line 95
    goto :goto_2
.end method
