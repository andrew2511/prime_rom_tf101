.class Lcom/google/android/talk/videochat/Ringer$Worker;
.super Ljava/lang/Object;
.source "Ringer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/google/android/talk/videochat/Ringer;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/Ringer;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/talk/videochat/Ringer$Worker;->this$0:Lcom/google/android/talk/videochat/Ringer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/videochat/Ringer$Worker;->mLock:Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 236
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/Ringer$Worker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 240
    :try_start_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/Ringer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v2

    goto :goto_0

    .line 244
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 254
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/Ringer$Worker;->mLooper:Landroid/os/Looper;

    .line 255
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 258
    return-void

    .line 256
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
