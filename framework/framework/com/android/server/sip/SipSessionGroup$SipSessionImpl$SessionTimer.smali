.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionTimer"
.end annotation


# instance fields
.field private mRunning:Z

.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 3
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->timeout()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->sleep(I)V

    return-void
.end method

.method private declared-synchronized sleep(I)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 428
    monitor-enter p0

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    :try_start_4
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_9

    .line 432
    :goto_7
    monitor-exit p0

    return-void

    .line 429
    :catch_9
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "SipSession"

    const-string/jumbo v2, "session timer interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    goto :goto_7

    .line 428
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private timeout()V
    .registers 5

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 422
    :try_start_5
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, -0x5

    const-string v3, "Session timed out!"

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V

    .line 423
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 416
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    .line 417
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 418
    monitor-exit p0

    return-void

    .line 416
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method start(I)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 407
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V

    const-string v2, "SipSessionTimerThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 413
    return-void
.end method
