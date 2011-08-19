.class public Lcom/zinio/mobile/android/resources/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/zinio/mobile/android/modules/bitmaploader/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/zinio/mobile/android/resources/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/resources/a;->a:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/zinio/mobile/android/f/d;->a()Lcom/zinio/mobile/android/f/d;

    const-class v0, Lcom/zinio/mobile/android/resources/a;

    invoke-static {v0}, Lcom/zinio/mobile/android/f/d;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/modules/bitmaploader/BitmapLoaderModule;

    .line 56
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zinio/mobile/android/modules/bitmaploader/BitmapLoaderModule;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/modules/bitmaploader/a;

    sput-object v0, Lcom/zinio/mobile/android/resources/a;->b:Lcom/zinio/mobile/android/modules/bitmaploader/a;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 273
    .line 274
    invoke-static {}, Lcom/zinio/mobile/android/a/a/ae;->a()Lcom/zinio/mobile/android/a/a/ae;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v4

    .line 287
    :goto_0
    return-object v0

    .line 279
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    new-instance v1, Landroid/content/Intent;

    const-string v2, "OutOfMemoryError"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    const-string v2, "error"

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v4

    goto :goto_0
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 77
    .line 78
    invoke-static {p0, p1}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v4

    .line 102
    :goto_0
    return-object v0

    .line 85
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->V()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    if-eqz p2, :cond_2

    .line 91
    invoke-static {v0, p2}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    invoke-static {v0}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v2, "OutOfMemoryError"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v2, "error"

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v4

    goto :goto_0
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 126
    .line 127
    invoke-static {p0, p1}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p0, p2}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v5

    .line 156
    :goto_0
    return-object v0

    .line 138
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->V()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    sget-object v2, Lcom/zinio/mobile/android/resources/a;->b:Lcom/zinio/mobile/android/modules/bitmaploader/a;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_3
    sget-object v2, Lcom/zinio/mobile/android/resources/a;->b:Lcom/zinio/mobile/android/modules/bitmaploader/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, p3}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v2, "OutOfMemoryError"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v2, "error"

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v5

    goto :goto_0
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/s;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 177
    .line 178
    invoke-static {p0, p1}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v4

    .line 203
    :goto_0
    return-object v0

    .line 185
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_1
    if-eqz p2, :cond_2

    .line 191
    invoke-static {v0, p2}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_2
    invoke-static {v0}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Landroid/content/Intent;

    const-string v2, "OutOfMemoryError"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    const-string v2, "error"

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v4

    goto :goto_0
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/s;Lcom/zinio/mobile/android/a/a/s;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 227
    .line 228
    invoke-static {p0, p1}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {p0, p2}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v1

    .line 233
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v5

    .line 260
    :goto_0
    return-object v0

    .line 242
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->v()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    sget-object v2, Lcom/zinio/mobile/android/resources/a;->b:Lcom/zinio/mobile/android/modules/bitmaploader/a;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_3
    sget-object v2, Lcom/zinio/mobile/android/resources/a;->b:Lcom/zinio/mobile/android/modules/bitmaploader/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3, p3}, Lcom/zinio/mobile/android/modules/bitmaploader/a;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v2, "OutOfMemoryError"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    const-string v2, "error"

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v5

    goto :goto_0
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/z;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 303
    invoke-static {p0, p1}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 333
    :goto_0
    return-object v0

    .line 309
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 312
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 317
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 318
    new-instance v1, Lcom/zinio/mobile/android/e/a;

    invoke-direct {v1}, Lcom/zinio/mobile/android/e/a;-><init>()V

    .line 319
    const/4 v5, 0x0

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/e/a;->a([B)V

    .line 321
    new-instance v0, Lcom/zinio/mobile/android/e/d;

    invoke-direct {v0, v4, v1}, Lcom/zinio/mobile/android/e/d;-><init>(Ljava/io/InputStream;Lcom/zinio/mobile/android/e/a;)V

    move v1, v7

    .line 322
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/e/d;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 323
    if-lez v4, :cond_1

    .line 324
    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    add-int/2addr v1, v4

    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 330
    :catch_1
    move-exception v0

    .line 331
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
