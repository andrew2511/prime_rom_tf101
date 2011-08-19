.class final Lcom/zinio/mobile/android/modules/imageloader/eager/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/zinio/mobile/android/view/issue/d;

.field private c:Z

.field private final d:J

.field private e:J

.field private f:Z

.field private synthetic g:Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;)V
    .locals 2
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->g:Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->a:I

    .line 363
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->d:J

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->setDaemon(Z)V

    .line 371
    invoke-virtual {p0}, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->start()V

    .line 372
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/zinio/mobile/android/view/issue/d;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    .line 427
    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->a:I

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->e:J

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->c:Z

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 378
    :cond_0
    :goto_0
    monitor-enter p0

    .line 379
    :goto_1
    :try_start_0
    iget v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    .line 381
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 386
    :cond_1
    :try_start_3
    iget v9, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->a:I

    .line 387
    const/4 v0, -0x1

    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->a:I

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->c:Z

    .line 389
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 393
    const-wide/16 v0, 0x64

    :try_start_4
    invoke-static {v0, v1}, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 394
    :catch_1
    move-exception v0

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 399
    :cond_2
    iget-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->c:Z

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v0

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-static {v9}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v1

    add-int/lit8 v2, v9, 0x1

    invoke-static {v2}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v3

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    move v5, v4

    :goto_3
    if-eqz v3, :cond_4

    invoke-static {v0, v2}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    move v5, v4

    :cond_4
    if-nez v5, :cond_7

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/s;Lcom/zinio/mobile/android/a/a/s;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_4
    iput-boolean v4, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->f:Z

    :goto_5
    if-eqz v1, :cond_7

    new-instance v2, Lcom/zinio/mobile/android/view/issue/h;

    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v3

    iget-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v5

    invoke-virtual {v0, v9}, Lcom/zinio/mobile/android/a/a/j;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v1, v3, v5, v0}, Lcom/zinio/mobile/android/view/issue/h;-><init>(Landroid/graphics/Bitmap;IILjava/util/List;)V

    .line 411
    :goto_6
    if-eqz v2, :cond_0

    .line 413
    new-instance v0, Lcom/zinio/mobile/android/view/issue/d;

    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->a()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->c()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v3

    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->f:Z

    iget-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v6}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v6

    iget-object v7, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v7}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v7

    iget-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v8}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v8

    invoke-direct/range {v0 .. v9}, Lcom/zinio/mobile/android/view/issue/d;-><init>(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;ZZIILcom/zinio/mobile/android/a/a/j;I)V

    iput-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    .line 418
    iget-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->c:Z

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->g:Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;

    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->c(Lcom/zinio/mobile/android/view/issue/d;)V

    goto/16 :goto_0

    .line 406
    :cond_5
    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/s;Lcom/zinio/mobile/android/a/a/s;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->b:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/s;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-boolean v10, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->f:Z

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_6

    :cond_8
    move v5, v10

    goto/16 :goto_3
.end method
