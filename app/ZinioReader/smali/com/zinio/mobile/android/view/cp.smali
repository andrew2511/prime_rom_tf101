.class public final Lcom/zinio/mobile/android/view/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/util/Map;

.field private d:Landroid/graphics/Bitmap$CompressFormat;

.field private synthetic e:Lcom/zinio/mobile/android/view/bo;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/bo;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cp;->e:Lcom/zinio/mobile/android/view/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/16 v0, 0x32

    iput v0, p0, Lcom/zinio/mobile/android/view/cp;->b:I

    .line 271
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/cp;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 274
    new-instance v0, Lcom/a/a/a/ao;

    invoke-direct {v0}, Lcom/a/a/a/ao;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/a/ao;->a()Lcom/a/a/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/ao;->c()Lcom/a/a/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/ao;->f()Lcom/a/a/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/ao;->h()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/android-reader/imagecache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/cp;->a:Ljava/lang/String;

    .line 279
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/cp;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/cp;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/cp;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 355
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zinio/mobile/android/view/cp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/a/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/f;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/cp;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 298
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 300
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 302
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/zinio/mobile/android/view/cp;->b:I

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 305
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    .line 307
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    check-cast p1, Lcom/zinio/mobile/android/a/a/f;

    .line 289
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 348
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/cp;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    check-cast p1, Lcom/zinio/mobile/android/a/a/f;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/zinio/mobile/android/view/cp;->a(Lcom/zinio/mobile/android/a/a/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .parameter

    .prologue
    .line 315
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
