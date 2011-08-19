.class public final Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;
.super Lcom/zinio/mobile/android/modules/bitmaploader/a;
.source "SourceFile"


# static fields
.field private static a:Landroid/graphics/Bitmap;


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

    .line 24
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a()V

    .line 25
    if-eqz p4, :cond_3

    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 27
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 29
    if-eqz p3, :cond_4

    .line 30
    sget-object v1, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget-object v2, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tcreating sBitmap => width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a()V

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    .line 36
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a()V

    .line 39
    :cond_1
    sget-object v1, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    .line 44
    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 48
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 49
    invoke-virtual {v2, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 50
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 51
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a()V

    .line 58
    :goto_2
    invoke-static {p2, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 59
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 60
    int-to-float v0, v0

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a()V

    .line 65
    :cond_2
    return-object v1

    :cond_3
    move v0, v5

    .line 25
    goto/16 :goto_0

    .line 41
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 54
    :cond_5
    const/16 v3, 0xff

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_2
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

    .line 71
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a()V

    .line 73
    invoke-static {p1, p2, p4}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 77
    if-eqz p3, :cond_3

    .line 78
    sget-object v1, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget-object v2, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tsBitmap created => width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a()V

    .line 88
    :cond_1
    sget-object v1, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a:Landroid/graphics/Bitmap;

    .line 94
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 113
    new-instance v5, Lcom/zinio/mobile/android/e/e;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-direct {v5, v4, p4, v3}, Lcom/zinio/mobile/android/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 120
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 121
    invoke-virtual {v2, v3, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 123
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a()V

    .line 129
    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 132
    new-instance v5, Lcom/zinio/mobile/android/e/e;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-direct {v5, v4, p4, v3}, Lcom/zinio/mobile/android/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 139
    :goto_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 140
    int-to-float v0, v0

    invoke-virtual {v2, v3, v0, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    invoke-static {}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a()V

    .line 145
    :cond_2
    return-object v1

    .line 90
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/zinio/mobile/android/modules/bitmaploader/caching/a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v3, v8

    .line 118
    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 133
    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v3, v8

    .line 136
    goto :goto_3
.end method
