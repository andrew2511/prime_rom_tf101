.class public Lcom/layar/util/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "layar.DownloadManager"

.field private static instance:Lcom/layar/util/DownloadManager;


# instance fields
.field private downloadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private downloadThread:Ljava/lang/Thread;

.field private enabled:Z

.field private final handleQueue:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/util/DownloadManager;->enabled:Z

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/layar/util/DownloadManager;->downloadQueue:Ljava/util/Queue;

    .line 76
    new-instance v0, Lcom/layar/util/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/layar/util/DownloadManager$1;-><init>(Lcom/layar/util/DownloadManager;)V

    iput-object v0, p0, Lcom/layar/util/DownloadManager;->handleQueue:Ljava/lang/Runnable;

    .line 8
    return-void
.end method

.method static synthetic access$0(Lcom/layar/util/DownloadManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/layar/util/DownloadManager;->enabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/layar/util/DownloadManager;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/layar/util/DownloadManager;->downloadQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/util/DownloadManager;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/layar/util/DownloadManager;->downloadThread:Ljava/lang/Thread;

    return-void
.end method

.method public static clearInstance()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/layar/util/DownloadManager;->instance:Lcom/layar/util/DownloadManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layar/util/DownloadManager;->instance:Lcom/layar/util/DownloadManager;

    invoke-virtual {v0}, Lcom/layar/util/DownloadManager;->stop()V

    .line 22
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/layar/util/DownloadManager;->instance:Lcom/layar/util/DownloadManager;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/layar/util/DownloadManager;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/layar/util/DownloadManager;->instance:Lcom/layar/util/DownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/layar/util/DownloadManager;

    invoke-direct {v0}, Lcom/layar/util/DownloadManager;-><init>()V

    sput-object v0, Lcom/layar/util/DownloadManager;->instance:Lcom/layar/util/DownloadManager;

    .line 16
    :cond_0
    sget-object v0, Lcom/layar/util/DownloadManager;->instance:Lcom/layar/util/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public enqueueRunnable(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "runnable"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/layar/util/DownloadManager;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/layar/util/DownloadManager;->downloadQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/layar/util/DownloadManager;->downloadQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/layar/util/DownloadManager;->downloadThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/layar/util/DownloadManager;->handleQueue:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/layar/util/DownloadManager;->downloadThread:Ljava/lang/Thread;

    .line 70
    iget-object v0, p0, Lcom/layar/util/DownloadManager;->downloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/util/DownloadManager;->enabled:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/util/DownloadManager;->downloadThread:Ljava/lang/Thread;

    .line 44
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/util/DownloadManager;->enabled:Z

    .line 34
    iget-object v0, p0, Lcom/layar/util/DownloadManager;->downloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/layar/util/DownloadManager;->handleQueue:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/layar/util/DownloadManager;->downloadThread:Ljava/lang/Thread;

    .line 36
    iget-object v0, p0, Lcom/layar/util/DownloadManager;->downloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/util/DownloadManager;->enabled:Z

    .line 50
    iget-object v0, p0, Lcom/layar/util/DownloadManager;->downloadQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/layar/util/DownloadManager;->downloadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/util/DownloadManager;->downloadThread:Ljava/lang/Thread;

    .line 55
    return-void

    .line 50
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
