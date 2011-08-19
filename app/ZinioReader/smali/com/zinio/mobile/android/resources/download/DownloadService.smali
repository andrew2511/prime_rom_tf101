.class public Lcom/zinio/mobile/android/resources/download/DownloadService;
.super Lcom/zinio/mobile/android/util/BoundService;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field a:Lcom/zinio/mobile/android/resources/download/g;

.field private c:Lcom/zinio/mobile/android/resources/download/j;

.field private d:Lcom/zinio/mobile/android/resources/download/a;

.field private e:Lcom/zinio/mobile/android/resources/download/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/resources/download/DownloadService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/BoundService;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    .line 42
    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    .line 43
    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    .line 668
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    new-instance v0, Lcom/zinio/mobile/android/resources/download/a;

    invoke-direct {v0, p0, p0}, Lcom/zinio/mobile/android/resources/download/a;-><init>(Lcom/zinio/mobile/android/resources/download/DownloadService;Lcom/zinio/mobile/android/resources/download/DownloadService;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    .line 273
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/a;->start()V

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/zinio/mobile/android/resources/download/j;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/g;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/g;->a()Lcom/zinio/mobile/android/resources/download/j;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    .line 93
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    return-object v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing requests for pubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", issueId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    instance-of v0, v0, Lcom/zinio/mobile/android/resources/download/k;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    check-cast v0, Lcom/zinio/mobile/android/resources/download/k;

    .line 132
    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/download/a;->a(Lcom/zinio/mobile/android/resources/download/a;)Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/resources/download/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    invoke-virtual {v1, p1}, Lcom/zinio/mobile/android/resources/download/a;->a(Z)V

    .line 305
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    .line 306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/zinio/mobile/android/resources/download/j;)Z
    .locals 4
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    monitor-enter v1

    .line 62
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/zinio/mobile/android/resources/download/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    invoke-interface {v2}, Lcom/zinio/mobile/android/resources/download/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/zinio/mobile/android/resources/download/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/resources/download/g;->a(Lcom/zinio/mobile/android/resources/download/j;)Z

    move-result v0

    .line 68
    invoke-direct {p0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->h()V

    .line 70
    :cond_1
    monitor-exit v1

    .line 72
    return v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    monitor-enter v0

    .line 110
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/resources/download/DownloadService;->a(Z)V

    .line 111
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/g;->b()V

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    if-eqz v0, :cond_0

    const-class v0, Lcom/zinio/mobile/android/resources/download/k;

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zinio/mobile/android/App;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 160
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object p0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    check-cast p0, Lcom/zinio/mobile/android/resources/download/k;

    .line 160
    invoke-virtual {p0}, Lcom/zinio/mobile/android/resources/download/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zinio/mobile/android/resources/download/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->c:Lcom/zinio/mobile/android/resources/download/j;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/g;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/resources/download/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 250
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 255
    goto :goto_0
.end method

.method final e()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/g;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/resources/download/a;->a(Z)V

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    .line 290
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->h()V

    .line 322
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 196
    invoke-super {p0}, Lcom/zinio/mobile/android/util/BoundService;->onCreate()V

    .line 198
    new-instance v0, Lcom/zinio/mobile/android/resources/download/g;

    invoke-direct {v0}, Lcom/zinio/mobile/android/resources/download/g;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->a:Lcom/zinio/mobile/android/resources/download/g;

    .line 200
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zinio/mobile/android/resources/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/zinio/mobile/android/resources/a/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    new-instance v0, Lcom/zinio/mobile/android/resources/download/f;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/resources/download/f;-><init>(Lcom/zinio/mobile/android/resources/download/DownloadService;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->e:Lcom/zinio/mobile/android/resources/download/f;

    .line 202
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->e:Lcom/zinio/mobile/android/resources/download/f;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/resources/download/DownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->e:Lcom/zinio/mobile/android/resources/download/f;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/a;->interrupt()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/DownloadService;->d:Lcom/zinio/mobile/android/resources/download/a;

    .line 223
    :cond_0
    invoke-super {p0}, Lcom/zinio/mobile/android/util/BoundService;->onDestroy()V

    .line 224
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/util/BoundService;->onStart(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method
