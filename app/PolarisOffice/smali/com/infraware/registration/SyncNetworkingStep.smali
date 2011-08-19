.class public Lcom/infraware/registration/SyncNetworkingStep;
.super Ljava/lang/Object;
.source "SyncNetworkingStep.java"


# instance fields
.field public bEndFromThread:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/registration/SyncNetworkingStep;->bEndFromThread:Z

    .line 3
    return-void
.end method


# virtual methods
.method public declared-synchronized waitTurn()V
    .locals 1

    .prologue
    .line 9
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    .line 11
    :catch_0
    move-exception v0

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitTurn(J)V
    .locals 1
    .parameter "timemil"

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    monitor-exit p0

    return-void

    .line 22
    :catch_0
    move-exception v0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized yourTurn(Z)V
    .locals 1
    .parameter "isEndOfThread"

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/infraware/registration/SyncNetworkingStep;->bEndFromThread:Z

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
