.class public abstract Lcom/zinio/mobile/android/modules/bitmaploader/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/zinio/mobile/android/modules/bitmaploader/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a:Ljava/lang/String;

    .line 240
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zinio/mobile/android/modules/bitmaploader/a;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 276
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 278
    :cond_0
    const-class v0, Lcom/zinio/mobile/android/modules/bitmaploader/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 279
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 281
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    invoke-static {p0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    invoke-static {p0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 224
    .line 226
    invoke-static {p0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 231
    new-instance v2, Lcom/zinio/mobile/android/e/e;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-direct {v2, v1, p1, v0}, Lcom/zinio/mobile/android/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    move-object v0, v5

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Rect;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 86
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 93
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    move-object v2, p1

    .line 99
    :goto_0
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 100
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 101
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 103
    if-ne v1, v2, :cond_1

    .line 104
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int/2addr v0, v3

    move v1, v0

    move v0, v4

    .line 112
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 95
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    move-object v2, p0

    .line 96
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 108
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int/2addr v1, v3

    .line 109
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move-object v1, p1

    move-object v2, p0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 118
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 125
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    move-object v2, p1

    .line 131
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 136
    new-instance v5, Lcom/zinio/mobile/android/e/e;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-direct {v5, v4, p2, v3}, Lcom/zinio/mobile/android/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-static {v5, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 147
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 149
    if-ne v1, v2, :cond_1

    .line 150
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int/2addr v0, v3

    move v1, v0

    move v0, v4

    .line 168
    :goto_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 127
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    move-object v2, p0

    .line 128
    goto :goto_0

    .line 141
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 154
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    new-instance v5, Lcom/zinio/mobile/android/e/e;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-direct {v5, v1, p2, v2}, Lcom/zinio/mobile/android/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-static {v5, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :goto_3
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int/2addr v1, v3

    .line 165
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 159
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_2
    move-object v1, p1

    move-object v2, p0

    goto :goto_0
.end method

.method protected static a()V
    .locals 10

    .prologue
    const-wide/16 v7, 0x3e8

    .line 257
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 258
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    div-long/2addr v1, v7

    .line 260
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    div-long/2addr v3, v7

    .line 261
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    div-long/2addr v5, v7

    .line 263
    sget-wide v7, Lcom/zinio/mobile/android/modules/bitmaploader/a;->b:J

    cmp-long v7, v3, v7

    if-lez v7, :cond_0

    .line 264
    sput-wide v3, Lcom/zinio/mobile/android/modules/bitmaploader/a;->b:J

    .line 266
    :cond_0
    const-string v7, "Memory info => availProc=%d, total=%dk, free=%dk, max=%dk, peak=%dk"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v0

    const/4 v0, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v0

    const/4 v0, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    sget-wide v1, Lcom/zinio/mobile/android/modules/bitmaploader/a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/graphics/Bitmap;
.end method
