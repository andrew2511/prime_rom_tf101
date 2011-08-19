.class public Lar/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/location/internal/c;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/location/internal/d;

.field private c:Lar/d;

.field private d:Z

.field private e:I

.field private final f:Lar/d;

.field private final g:Lar/d;

.field private final h:Lar/e;

.field private final i:Lcom/google/android/location/internal/f;

.field private final j:Landroid/os/HandlerThread;

.field private final k:Lar/c;

.field private final l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lar/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/b;->d:Z

    new-instance v0, Lar/d;

    invoke-direct {v0, p0, v1}, Lar/d;-><init>(Lar/b;Lar/a;)V

    iput-object v0, p0, Lar/b;->f:Lar/d;

    new-instance v0, Lar/d;

    invoke-direct {v0, p0, v1}, Lar/d;-><init>(Lar/b;Lar/a;)V

    iput-object v0, p0, Lar/b;->g:Lar/d;

    new-instance v0, Lar/a;

    invoke-direct {v0, p0}, Lar/a;-><init>(Lar/b;)V

    iput-object v0, p0, Lar/b;->i:Lcom/google/android/location/internal/f;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NLP Client"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lar/b;->j:Landroid/os/HandlerThread;

    iput p2, p0, Lar/b;->e:I

    iput-object p1, p0, Lar/b;->l:Landroid/content/Context;

    new-instance v0, Lar/e;

    invoke-direct {v0, p3, p4}, Lar/e;-><init>(Landroid/location/LocationListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lar/b;->h:Lar/e;

    iget-object v0, p0, Lar/b;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lar/c;

    iget-object v1, p0, Lar/b;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p5}, Lar/c;-><init>(Lar/b;Landroid/os/Looper;I)V

    iput-object v0, p0, Lar/b;->k:Lar/c;

    iget-object v0, p0, Lar/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a(Lcom/google/android/location/internal/c;)V

    invoke-direct {p0}, Lar/b;->c()Lcom/google/android/location/internal/d;

    move-result-object v1

    invoke-direct {p0, v1}, Lar/b;->a(Lcom/google/android/location/internal/d;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lar/b;)Lar/e;
    .locals 1

    iget-object v0, p0, Lar/b;->h:Lar/e;

    return-object v0
.end method

.method static synthetic a(Lar/b;Lcom/google/android/location/internal/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lar/b;->a(Lcom/google/android/location/internal/d;)V

    return-void
.end method

.method private a(Lcom/google/android/location/internal/d;)V
    .locals 4

    iput-object p1, p0, Lar/b;->b:Lcom/google/android/location/internal/d;

    iget-object v0, p1, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/g;

    sget-object v1, Lcom/google/android/location/internal/g;->a:Lcom/google/android/location/internal/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lar/b;->f:Lar/d;

    :goto_0
    iput-object v0, p0, Lar/b;->c:Lar/d;

    const-string v0, "NetworkLocationClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/location/internal/d;->e:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lar/b;->l:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/location/internal/d;->e:Landroid/content/Intent;

    iget-object v2, p0, Lar/b;->c:Lar/d;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lar/b;->g:Lar/d;

    goto :goto_0
.end method

.method static synthetic b(Lar/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lar/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lar/b;)Lar/d;
    .locals 1

    iget-object v0, p0, Lar/b;->c:Lar/d;

    return-object v0
.end method

.method private c()Lcom/google/android/location/internal/d;
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/google/android/location/internal/g;->a:Lcom/google/android/location/internal/g;

    iget-object v1, p0, Lar/b;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/location/internal/g;Landroid/content/Context;)Lcom/google/android/location/internal/d;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/internal/g;->b:Lcom/google/android/location/internal/g;

    iget-object v2, p0, Lar/b;->l:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/location/internal/g;Landroid/content/Context;)Lcom/google/android/location/internal/d;

    move-result-object v1

    const-string v2, "NetworkLocationClient"

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "NetworkLocationClient"

    invoke-virtual {v1}, Lcom/google/android/location/internal/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Lcom/google/android/location/internal/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Lcom/google/android/location/internal/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/google/android/location/internal/d;->d:I

    iget v3, v1, Lcom/google/android/location/internal/d;->d:I

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Lcom/google/android/location/internal/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no compatible NLP found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lar/b;)Lar/c;
    .locals 1

    iget-object v0, p0, Lar/b;->k:Lar/c;

    return-object v0
.end method

.method static synthetic e(Lar/b;)Z
    .locals 1

    iget-boolean v0, p0, Lar/b;->d:Z

    return v0
.end method

.method static synthetic f(Lar/b;)I
    .locals 1

    iget v0, p0, Lar/b;->e:I

    return v0
.end method

.method static synthetic g(Lar/b;)Lcom/google/android/location/internal/f;
    .locals 1

    iget-object v0, p0, Lar/b;->i:Lcom/google/android/location/internal/f;

    return-object v0
.end method

.method static synthetic h(Lar/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lar/b;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lar/b;)Lcom/google/android/location/internal/d;
    .locals 1

    invoke-direct {p0}, Lar/b;->c()Lcom/google/android/location/internal/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lar/b;)Lcom/google/android/location/internal/d;
    .locals 1

    iget-object v0, p0, Lar/b;->b:Lcom/google/android/location/internal/d;

    return-object v0
.end method

.method static synthetic k(Lar/b;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lar/b;->j:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)Law/e;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NetworkLocationClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid location passed to getRmiInfo -- provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lar/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lar/b;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkLocationClient"

    const-string v2, "Already closed in getRmiInfo."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lar/b;->c:Lar/d;

    invoke-static {v1}, Lar/d;->a(Lar/d;)Lcom/google/android/location/internal/b;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1, p1}, Lcom/google/android/location/internal/b;->a(Landroid/location/Location;)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :try_start_3
    new-instance v1, Law/e;

    sget-object v2, Lbd/a;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v0}, Law/e;->a([B)Law/e;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkLocationClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "NetworkLocationClient"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    goto :goto_0

    :cond_3
    const-string v0, "NetworkLocationClient"

    const-string v1, "nli null in getRmiInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lar/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lar/b;->k:Lar/c;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lar/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lar/b;->d:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->b(Lcom/google/android/location/internal/c;)V

    iget-object v1, p0, Lar/b;->k:Lar/c;

    const/4 v2, 0x2

    iget-object v3, p0, Lar/b;->c:Lar/d;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lar/b;->k:Lar/c;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lar/b;->d:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
