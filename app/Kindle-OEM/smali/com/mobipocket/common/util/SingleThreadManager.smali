.class public Lcom/mobipocket/common/util/SingleThreadManager;
.super Ljava/lang/Object;
.source "SingleThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;
    }
.end annotation


# instance fields
.field private currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

.field private currentThread:Ljava/lang/Thread;

.field private lock:Ljava/lang/Object;

.field private queued:Z

.field private final threadInvoker:Lcom/amazon/system/util/Utilities;


# direct methods
.method public constructor <init>(Lcom/amazon/system/util/Utilities;Ljava/lang/Object;)V
    .locals 1
    .parameter "threadInvoker"
    .parameter "lock"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mobipocket/common/util/SingleThreadManager;->threadInvoker:Lcom/amazon/system/util/Utilities;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->queued:Z

    .line 49
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->lock:Ljava/lang/Object;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-object p2, p0, Lcom/mobipocket/common/util/SingleThreadManager;->lock:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mobipocket/common/util/SingleThreadManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mobipocket/common/util/SingleThreadManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/mobipocket/common/util/SingleThreadManager;->queued:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mobipocket/common/util/SingleThreadManager;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mobipocket/common/util/SingleThreadManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentThread:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public isTaskLaunched()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->queued:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleForLaunch(Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->queued:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleForLaunch: Changing the runnable of the thread @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    iput-object p1, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    .line 99
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->queued:Z

    .line 100
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleForLaunch: Stacking the thread @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lcom/mobipocket/common/util/SingleThreadManager;->stop()V

    .line 79
    iput-object p1, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    .line 80
    iget-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->threadInvoker:Lcom/amazon/system/util/Utilities;

    new-instance v1, Lcom/mobipocket/common/util/SingleThreadManager$1;

    invoke-direct {v1, p0}, Lcom/mobipocket/common/util/SingleThreadManager$1;-><init>(Lcom/mobipocket/common/util/SingleThreadManager;)V

    invoke-interface {v0, v1}, Lcom/amazon/system/util/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop: Stopping the thread @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    invoke-interface {v0}, Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;->requestInterrupt()V

    .line 113
    invoke-virtual {p0}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    .line 117
    return-void
.end method

.method public waitForLaunchedTaskCompletion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitForLaunchedTaskCompletion: waiting the thread @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitForLaunchedTaskCompletion: joining the two thread @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    iput-object v2, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentThread:Ljava/lang/Thread;

    .line 146
    :cond_0
    iput-object v2, p0, Lcom/mobipocket/common/util/SingleThreadManager;->currentRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    .line 148
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
