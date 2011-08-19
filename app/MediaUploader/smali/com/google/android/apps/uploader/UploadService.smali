.class public Lcom/google/android/apps/uploader/UploadService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/android/apps/uploader/UploaderApplication;

.field private b:Lcom/google/android/apps/uploader/I;

.field private c:Lcom/google/android/apps/uploader/D;

.field private d:Lcom/google/android/apps/uploader/J;

.field private e:Ljava/lang/Thread;

.field private f:Lcom/google/android/apps/uploader/w;

.field private g:Lcom/google/android/apps/uploader/v;

.field private h:Landroid/os/ConditionVariable;

.field private i:Lcom/google/android/apps/uploader/E;

.field private j:Z

.field private k:Z

.field private l:Landroid/net/wifi/WifiManager$WifiLock;

.field private m:Landroid/os/IBinder;

.field private n:Lcom/google/android/apps/uploader/F;

.field private o:Landroid/os/ConditionVariable;

.field private p:J

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 258
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    .line 522
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/UploadService;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/google/android/apps/uploader/UploadService;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/J;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/UploadService;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/F;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->n:Lcom/google/android/apps/uploader/F;

    return-object v0
.end method

.method private b(Lcom/google/android/apps/uploader/y;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Lcom/google/android/apps/uploader/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/google/android/apps/uploader/B;->e:Lcom/google/android/apps/uploader/B;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/B;->d:Lcom/google/android/apps/uploader/B;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/UploadService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/apps/uploader/UploadService;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/v;

    return-object v0
.end method

.method private c(Lcom/google/android/apps/uploader/y;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/y;)V

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadService adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/J;->a(Lcom/google/android/apps/uploader/y;)V

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->e:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "MediaUploader"

    const-string v1, "UploadService starting new thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->e:Ljava/lang/Thread;

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    :cond_0
    return-void
.end method

.method private d(Lcom/google/android/apps/uploader/y;)V
    .locals 11
    .parameter

    .prologue
    const-wide/32 v9, 0xea60

    move-object v1, p1

    move-object v6, p0

    .line 279
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/apps/uploader/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/y;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 292
    new-instance v5, Lcom/google/android/apps/uploader/x;

    invoke-direct {v5, v6, v1}, Lcom/google/android/apps/uploader/x;-><init>(Lcom/google/android/apps/uploader/UploadService;Lcom/google/android/apps/uploader/y;)V

    .line 387
    monitor-enter v6

    .line 388
    :try_start_1
    sget-object v0, Lcom/google/android/apps/uploader/B;->b:Lcom/google/android/apps/uploader/B;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;)V

    .line 389
    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/J;->b(Lcom/google/android/apps/uploader/y;)V

    .line 390
    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/I;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/I;->a(Lcom/google/android/apps/uploader/y;)V

    .line 392
    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 393
    invoke-virtual {v1}, Lcom/google/android/apps/uploader/y;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "youtube.com/resumable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "resumable/photos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    new-instance v0, Lcom/google/android/apps/uploader/f;

    iget-object v3, v6, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/UploaderApplication;->g()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/apps/uploader/f;-><init>(Lorg/apache/http/client/HttpClient;)V

    :goto_1
    iput-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->f:Lcom/google/android/apps/uploader/w;

    .line 394
    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->f:Lcom/google/android/apps/uploader/w;

    iget-object v3, v6, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/y;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Ljava/lang/String;)Lcom/google/android/apps/uploader/b;

    move-result-object v3

    iget-boolean v4, v6, Lcom/google/android/apps/uploader/UploadService;->q:Z

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/uploader/w;->a(Lcom/google/android/apps/uploader/y;Ljava/io/InputStream;Lcom/google/android/apps/uploader/b;ZLcom/google/android/apps/uploader/x;)V

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v6, Lcom/google/android/apps/uploader/UploadService;->p:J

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/google/android/apps/uploader/UploadService;->q:Z

    .line 402
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    const-string v0, "MediaUploader"

    const-string v3, "Waiting for upload request ..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_2
    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0, v9, v10}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    monitor-enter v6

    .line 408
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, v6, Lcom/google/android/apps/uploader/UploadService;->p:J

    sub-long/2addr v3, v7

    cmp-long v0, v3, v9

    if-lez v0, :cond_5

    .line 409
    const-string v0, "MediaUploader"

    const-string v3, "Progress update timed out, notifying as a network failure"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/google/android/apps/uploader/x;->a(Lcom/google/android/apps/uploader/u;)V

    .line 411
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 415
    :cond_1
    const-string v0, "MediaUploader"

    const-string v3, "... continuing after upload request"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz v2, :cond_2

    .line 419
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 426
    :cond_2
    :goto_3
    iget-boolean v0, v6, Lcom/google/android/apps/uploader/UploadService;->q:Z

    if-eqz v0, :cond_3

    .line 427
    const-string v0, "MediaUploader"

    const-string v2, "Going for a second chance"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    const-string v2, "MediaUploader"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    sget-object v0, Lcom/google/android/apps/uploader/B;->g:Lcom/google/android/apps/uploader/B;

    const v2, 0x7f06002a

    invoke-virtual {v6, v2}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;Ljava/lang/String;)V

    .line 286
    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/J;->b(Lcom/google/android/apps/uploader/y;)V

    .line 287
    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/I;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/I;->a(Lcom/google/android/apps/uploader/y;)V

    .line 431
    :cond_3
    return-void

    .line 393
    :cond_4
    :try_start_4
    new-instance v0, Lcom/google/android/apps/uploader/o;

    iget-object v3, v6, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-direct {v0, v3}, Lcom/google/android/apps/uploader/o;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 413
    :cond_5
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    .line 421
    :catch_1
    move-exception v0

    .line 422
    const-string v2, "MediaUploader"

    const-string v3, "Couldn\'t close stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->f:Lcom/google/android/apps/uploader/w;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->f:Lcom/google/android/apps/uploader/w;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/w;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_0
    monitor-exit p0

    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/google/android/apps/uploader/UploadService;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->j:Z

    return v0
.end method

.method private declared-synchronized f()V
    .locals 2

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->e()Z

    move-result v0

    .line 505
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    if-eq v0, v1, :cond_0

    .line 506
    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    .line 507
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    if-eqz v0, :cond_1

    .line 508
    const-string v0, "MediaUploader"

    const-string v1, "Acquring WiFi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/J;->a(Z)V

    .line 518
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_0
    monitor-exit p0

    return-void

    .line 511
    :cond_1
    :try_start_1
    const-string v0, "MediaUploader"

    const-string v1, "Releasing WiFi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 515
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/google/android/apps/uploader/UploadService;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/I;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/I;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/apps/uploader/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->e()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    const-string v1, "Pause on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->r:Z

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 479
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->e()V

    .line 480
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 481
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/v;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/v;->c()V

    .line 483
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/I;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/I;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/apps/uploader/F;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadService;->n:Lcom/google/android/apps/uploader/F;

    .line 251
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/apps/uploader/y;)V
    .locals 3
    .parameter

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling upload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/J;->d(Lcom/google/android/apps/uploader/y;)V

    .line 450
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->e()V

    .line 452
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/v;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/v;->c()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/J;->b()I

    move-result v0

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/I;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/I;->c()V

    .line 458
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 465
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    const-string v1, "Pause off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->r:Z

    .line 490
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 493
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->m:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/google/android/apps/uploader/G;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/G;-><init>(Lcom/google/android/apps/uploader/UploadService;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->m:Landroid/os/IBinder;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->m:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 76
    const-string v0, "MediaUploader"

    const-string v1, "UploadService.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->a()V

    .line 80
    new-instance v0, Lcom/google/android/apps/uploader/D;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/D;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->c:Lcom/google/android/apps/uploader/D;

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->b()Lcom/google/android/apps/uploader/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->c()Lcom/google/android/apps/uploader/I;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/I;

    .line 84
    new-instance v0, Lcom/google/android/apps/uploader/v;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/v;

    .line 85
    new-instance v0, Lcom/google/android/apps/uploader/E;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/E;-><init>(Lcom/google/android/apps/uploader/UploadService;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->i:Lcom/google/android/apps/uploader/E;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->i:Lcom/google/android/apps/uploader/E;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/E;->a()V

    .line 88
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 89
    const-string v1, "MediaUploader"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 93
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->h:Landroid/os/ConditionVariable;

    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->f()V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "MediaUploader"

    const-string v1, "UploadService.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 102
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadService.onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/uploader/D;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->c:Lcom/google/android/apps/uploader/D;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/D;->c(Landroid/content/Intent;)Lcom/google/android/apps/uploader/y;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->a()Lcom/google/android/apps/uploader/B;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/uploader/B;->a:Lcom/google/android/apps/uploader/B;

    if-ne v1, v2, :cond_4

    .line 113
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/y;)V

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Z)V

    .line 129
    :cond_2
    :goto_2
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->f()V

    .line 134
    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->d()V

    .line 136
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->r:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/I;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/I;->b()V

    goto :goto_0

    .line 115
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/y;)V

    monitor-enter p0

    :try_start_0
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadService will retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/J;->b(Lcom/google/android/apps/uploader/y;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/v;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/v;->c()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_5
    invoke-static {p1}, Lcom/google/android/apps/uploader/D;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->c:Lcom/google/android/apps/uploader/D;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/D;->d(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/y;

    .line 123
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/y;)V

    goto :goto_3

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Z)V

    goto :goto_2
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    move v0, v3

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/v;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/v;->a()V

    .line 193
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 195
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/J;->a()Lcom/google/android/apps/uploader/y;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_4

    .line 197
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Lcom/google/android/apps/uploader/y;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    if-eqz v2, :cond_2

    .line 198
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/y;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 207
    :goto_1
    if-nez v0, :cond_3

    .line 208
    iput-object v4, p0, Lcom/google/android/apps/uploader/UploadService;->e:Ljava/lang/Thread;

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/J;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/J;->b()I

    move-result v0

    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/I;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/I;->a()V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Z)V

    .line 217
    :cond_1
    const-string v0, "MediaUploader"

    const-string v1, "Releasing WiFi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->stopSelf()V

    .line 221
    const-string v0, "MediaUploader"

    const-string v1, "UploadService stopping self"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/I;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/I;->a(Lcom/google/android/apps/uploader/y;)V

    move v1, v0

    move-object v0, v4

    .line 203
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_1
.end method
