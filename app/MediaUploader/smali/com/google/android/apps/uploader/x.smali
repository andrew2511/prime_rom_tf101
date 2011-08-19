.class public Lcom/google/android/apps/uploader/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/uploader/y;

.field final synthetic b:Lcom/google/android/apps/uploader/UploadService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/UploadService;Lcom/google/android/apps/uploader/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    iput-object p2, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    .line 313
    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.uploadComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    sget-object v2, Lcom/google/android/apps/uploader/B;->f:Lcom/google/android/apps/uploader/B;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;)V

    .line 316
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/J;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/J;->b(Lcom/google/android/apps/uploader/y;)V

    .line 318
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/v;->b()V

    .line 319
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;J)J

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/y;->a(J)V

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/J;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/J;->c(Lcom/google/android/apps/uploader/y;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/F;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/y;->o()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/F;->a(I)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/v;->b()V

    .line 309
    return-void
.end method

.method public a(Lcom/google/android/apps/uploader/a;)V
    .locals 4
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    .line 375
    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.applicationFailure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    sget-object v2, Lcom/google/android/apps/uploader/B;->g:Lcom/google/android/apps/uploader/B;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/J;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/J;->b(Lcom/google/android/apps/uploader/y;)V

    .line 379
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->g(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/I;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/I;->a(Lcom/google/android/apps/uploader/y;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/v;->b()V

    .line 382
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 383
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public a(Lcom/google/android/apps/uploader/u;)V
    .locals 6
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    .line 338
    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.networkFailure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    const/4 v1, 0x0

    .line 342
    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->e(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->f(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/v;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    sget-object v2, Lcom/google/android/apps/uploader/B;->c:Lcom/google/android/apps/uploader/B;

    .line 345
    iget-object v3, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v3}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/v;->f()I

    move-result v3

    .line 346
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 347
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/J;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/J;->b(Lcom/google/android/apps/uploader/y;)V

    .line 364
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->g(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/I;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/I;->a(Lcom/google/android/apps/uploader/y;)V

    .line 368
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->h(Lcom/google/android/apps/uploader/UploadService;)V

    .line 369
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 370
    monitor-exit v0

    return-void

    .line 351
    :cond_2
    sget-object v1, Lcom/google/android/apps/uploader/B;->g:Lcom/google/android/apps/uploader/B;

    .line 352
    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    const v3, 0x7f06002c

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 353
    iget-object v3, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v3}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/v;->b()V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/v;->e()V

    .line 359
    sget-object v1, Lcom/google/android/apps/uploader/B;->c:Lcom/google/android/apps/uploader/B;

    .line 360
    iget-object v2, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    const v3, 0x7f060029

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    .line 325
    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.retry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;Z)Z

    .line 329
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->a:Lcom/google/android/apps/uploader/y;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/y;->a(J)V

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/v;->b()V

    .line 332
    iget-object v1, p0, Lcom/google/android/apps/uploader/x;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
