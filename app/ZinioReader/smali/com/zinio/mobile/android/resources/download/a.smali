.class final Lcom/zinio/mobile/android/resources/download/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/resources/download/DownloadService;

.field private volatile b:Z

.field private c:Z

.field private d:Z

.field private e:[B

.field private f:I

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private synthetic i:Lcom/zinio/mobile/android/resources/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/resources/download/DownloadService;Lcom/zinio/mobile/android/resources/download/DownloadService;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 362
    iput-object p1, p0, Lcom/zinio/mobile/android/resources/download/a;->i:Lcom/zinio/mobile/android/resources/download/DownloadService;

    .line 363
    const-string v0, "BackgroundService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/a;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    .line 337
    iput-boolean v3, p0, Lcom/zinio/mobile/android/resources/download/a;->b:Z

    .line 338
    iput-boolean v3, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    .line 340
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/a;->e:[B

    .line 342
    iput v3, p0, Lcom/zinio/mobile/android/resources/download/a;->f:I

    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/zinio/mobile/android/resources/a/b;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "part"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/zinio/mobile/android/util/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/a;->g:Ljava/lang/String;

    .line 393
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/a;->h:Ljava/lang/Boolean;

    .line 364
    iput-object p2, p0, Lcom/zinio/mobile/android/resources/download/a;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    .line 365
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/net/HttpURLConnection;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 604
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 609
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move v2, v6

    .line 610
    :cond_0
    iget-object v3, p0, Lcom/zinio/mobile/android/resources/download/a;->e:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 619
    if-eq v3, v5, :cond_1

    .line 620
    add-int/2addr v2, v3

    .line 621
    iget-object v4, p0, Lcom/zinio/mobile/android/resources/download/a;->e:[B

    invoke-virtual {v1, v4, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 623
    :cond_1
    if-ne v3, v5, :cond_0

    .line 625
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 628
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 630
    return v2
.end method

.method private a(Lcom/zinio/mobile/android/resources/download/j;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 564
    iget v0, p0, Lcom/zinio/mobile/android/resources/download/a;->f:I

    if-gt v2, v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/a;->i:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->b()V

    .line 573
    :goto_0
    return-void

    .line 568
    :cond_0
    iget v0, p0, Lcom/zinio/mobile/android/resources/download/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zinio/mobile/android/resources/download/a;->f:I

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry() -> Retrying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/zinio/mobile/android/resources/download/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    invoke-interface {p1}, Lcom/zinio/mobile/android/resources/download/j;->b()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/zinio/mobile/android/resources/download/j;->a(I)V

    .line 571
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/a;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/resources/download/DownloadService;->a(Lcom/zinio/mobile/android/resources/download/j;)Z

    goto :goto_0
.end method

.method private static a(Lcom/zinio/mobile/android/resources/download/j;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 585
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lcom/zinio/mobile/android/resources/download/j;->a(J)V

    .line 589
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/zinio/mobile/android/resources/download/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 592
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 594
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/zinio/mobile/android/resources/download/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 598
    invoke-interface {p0}, Lcom/zinio/mobile/android/resources/download/j;->b_()V

    .line 599
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/resources/download/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    return v0
.end method

.method private b(Lcom/zinio/mobile/android/resources/download/j;)V
    .locals 2
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/a;->i:Lcom/zinio/mobile/android/resources/download/DownloadService;

    iget-object v0, v0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/a;->i:Lcom/zinio/mobile/android/resources/download/DownloadService;

    iget-object v1, v1, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v1, p1}, Lcom/zinio/mobile/android/resources/download/g;->a(Lcom/zinio/mobile/android/resources/download/j;)Z

    .line 578
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#finish()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    iput-boolean p1, p0, Lcom/zinio/mobile/android/resources/download/a;->d:Z

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/resources/download/a;->b:Z

    .line 371
    return-void
.end method

.method public final run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 376
    invoke-static {}, Lcom/zinio/mobile/android/App;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    return-void

    .line 382
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/zinio/mobile/android/resources/download/a;->b:Z

    if-nez v0, :cond_0

    .line 384
    iput v8, p0, Lcom/zinio/mobile/android/resources/download/a;->f:I

    .line 385
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/a;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->a()Lcom/zinio/mobile/android/resources/download/j;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/zinio/mobile/android/resources/download/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v1}, Lcom/zinio/mobile/android/resources/download/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/zinio/mobile/android/resources/download/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has already been downloaded!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zinio/mobile/android/resources/download/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-interface {v1}, Lcom/zinio/mobile/android/resources/download/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v3, 0x2710

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xea60

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadResources() -> check mFinished: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/zinio/mobile/android/resources/download/a;->b:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v3, p0, Lcom/zinio/mobile/android/resources/download/a;->b:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/zinio/mobile/android/resources/download/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/zinio/mobile/android/resources/download/a;->g:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/zinio/mobile/android/resources/download/a;->h:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_13

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    invoke-direct {p0, v2, v0}, Lcom/zinio/mobile/android/resources/download/a;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)I

    move-result v5

    iget-boolean v6, p0, Lcom/zinio/mobile/android/resources/download/a;->b:Z

    if-eqz v6, :cond_9

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/zinio/mobile/android/resources/download/a;->g:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/io/File;)Z

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/zinio/mobile/android/resources/download/a;->h:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/zinio/mobile/android/resources/download/a;->d:Z

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/resources/download/a;->b(Lcom/zinio/mobile/android/resources/download/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_4
    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    iget-boolean v3, p0, Lcom/zinio/mobile/android/resources/download/a;->d:Z

    if-eqz v3, :cond_7

    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/resources/download/a;->b(Lcom/zinio/mobile/android/resources/download/j;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_7
    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :cond_9
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v6, -0x1

    if-eq v3, v6, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v3, v5, :cond_c

    const-string v6, "DOWNLOADED"

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-ne v3, v5, :cond_f

    iget-object v4, p0, Lcom/zinio/mobile/android/resources/download/a;->i:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v4}, Lcom/zinio/mobile/android/resources/download/DownloadService;->f()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v3, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-nez v3, :cond_d

    invoke-static {v1, v2}, Lcom/zinio/mobile/android/resources/download/a;->a(Lcom/zinio/mobile/android/resources/download/j;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_b
    :goto_3
    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    goto/16 :goto_0

    :cond_c
    :try_start_4
    const-string v6, "ERROR IN DOWNLOADING"

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_4
    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_f
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrying resource token. contentLenght("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") != currentLenght("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/resources/download/a;->a(Lcom/zinio/mobile/android/resources/download/j;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_5
    :try_start_6
    new-instance v3, Landroid/content/Intent;

    const-string v4, "TimeOutException"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "exception"

    const-string v5, "time out"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/zinio/mobile/android/resources/download/a;->i:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v4, v3}, Lcom/zinio/mobile/android/resources/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/resources/download/a;->a(Lcom/zinio/mobile/android/resources/download/j;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    :cond_11
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "content-lenght = -1 # DOWNLOADED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zinio/mobile/android/resources/download/a;->a(Lcom/zinio/mobile/android/resources/download/j;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_2

    :catch_2
    move-exception v3

    :goto_6
    :try_start_8
    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/resources/download/a;->b(Lcom/zinio/mobile/android/resources/download/j;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-wide/16 v3, 0x3e8

    :try_start_9
    invoke-static {v3, v4}, Lcom/zinio/mobile/android/resources/download/a;->sleep(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_7
    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    :cond_13
    const/16 v4, 0x190

    if-lt v3, v4, :cond_16

    const/16 v4, 0x258

    if-ge v3, v4, :cond_16

    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping resource token. Connection returned response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    :catch_3
    move-exception v1

    :goto_8
    :try_start_b
    invoke-static {}, Lcom/zinio/mobile/android/resources/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/a;->i:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/DownloadService;->b()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_14
    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    :cond_16
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrying resource token. Connection returned response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/resources/download/a;->a(Lcom/zinio/mobile/android/resources/download/j;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v1

    :goto_9
    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_a
    iput-boolean v8, p0, Lcom/zinio/mobile/android/resources/download/a;->c:Z

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_19
    throw v0

    :cond_1a
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/a;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->e()V

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto/16 :goto_7

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v0, v3

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v0, v3

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v0, v3

    goto/16 :goto_6

    :catch_9
    move-exception v0

    move-object v0, v3

    goto/16 :goto_5

    :catch_a
    move-exception v0

    move-object v0, v3

    goto/16 :goto_4
.end method
