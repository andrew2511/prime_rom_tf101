.class public abstract Lcom/google/android/music/sync/common/UpstreamSender;
.super Ljava/lang/Object;
.source "UpstreamSender.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

.field protected final mTag:Ljava/lang/String;

.field private final mUpstreamPageSize:I

.field private final mUseVerboseLogging:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;ILjava/lang/String;)V
    .locals 1
    .parameter "queue"
    .parameter "upstreamPageSize"
    .parameter "logTag"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    .line 34
    iput p2, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mUpstreamPageSize:I

    .line 35
    iput-object p3, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mTag:Ljava/lang/String;

    .line 36
    invoke-static {p3}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mUseVerboseLogging:Z

    .line 37
    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v5, 0x1

    .line 50
    .local v5, shouldBail:Z
    new-instance v6, Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;

    invoke-direct {v6}, Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;-><init>()V

    .line 52
    .local v6, upstreamSenderResult:Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;
    const/4 v1, 0x0

    .line 54
    .local v1, count:I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    iget v8, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mUpstreamPageSize:I

    invoke-virtual {v7, v8}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->take(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 55
    .local v3, entityList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 56
    iget-boolean v7, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mUseVerboseLogging:Z

    if-eqz v7, :cond_1

    .line 57
    iget-object v7, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mTag:Ljava/lang/String;

    const-string v8, "Upstream sender: Queue empty.  Exiting. "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    :cond_1
    const/4 v5, 0x0

    .line 86
    if-eqz v5, :cond_2

    .line 90
    iget-object v7, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v7}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->kill()V

    .line 93
    :cond_2
    return-object v6

    .line 62
    :cond_3
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/google/android/music/sync/common/UpstreamSender;->processUpstreamEntityBlock(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/music/sync/common/ConflictDetectedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 71
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 72
    :try_start_2
    iget-boolean v7, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mUseVerboseLogging:Z

    if-eqz v7, :cond_0

    .line 73
    iget-object v7, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upstream sender: Pulled block "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from upstream queue."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 78
    .end local v3           #entityList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 79
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v7, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v8, "Upstream sender thread interrupted.  Bailing. "

    invoke-direct {v7, v8, v2}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_5

    .line 90
    iget-object v8, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v8}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->kill()V

    :cond_5
    throw v7

    .line 63
    .restart local v3       #entityList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    :catch_1
    move-exception v2

    .line 64
    .local v2, e:Lcom/google/android/music/sync/common/ConflictDetectedException;
    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/music/sync/common/ConflictDetectedException;->getConflictCount()I

    move-result v0

    .line 65
    .local v0, conflictCount:I
    iget v7, v6, Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;->mNumConflicts:I

    add-int/2addr v7, v0

    iput v7, v6, Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;->mNumConflicts:I

    .line 66
    iget-boolean v7, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mUseVerboseLogging:Z

    if-eqz v7, :cond_4

    .line 67
    iget-object v7, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upstream sender: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " conflict(s) detected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 80
    .end local v0           #conflictCount:I
    .end local v2           #e:Lcom/google/android/music/sync/common/ConflictDetectedException;
    .end local v3           #entityList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 81
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upstream sender thread threw an unknown error.  Bailing. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, exitMsg:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/music/sync/common/UpstreamSender;->mTag:Ljava/lang/String;

    invoke-static {v7, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    new-instance v7, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v7, v4, v2}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/UpstreamSender;->call()Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;

    move-result-object v0

    return-object v0
.end method

.method protected abstract processUpstreamEntityBlock(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/common/ConflictDetectedException;
        }
    .end annotation
.end method
