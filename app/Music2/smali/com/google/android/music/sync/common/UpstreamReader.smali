.class public abstract Lcom/google/android/music/sync/common/UpstreamReader;
.super Ljava/lang/Object;
.source "UpstreamReader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Ljava/lang/String;)V
    .locals 0
    .parameter "queue"
    .parameter "logTag"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mTag:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/UpstreamReader;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v3, 0x0

    .line 39
    .local v3, shouldBail:Z
    const/4 v1, 0x0

    .line 40
    .local v1, entityCount:I
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/UpstreamReader;->fillQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-eqz v3, :cond_0

    .line 49
    iget-object v4, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->kill()V

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->close()V

    .line 54
    const/4 v4, 0x0

    return-object v4

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v3, 0x1

    .line 43
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upstream reader thread threw an unknown error.  Bailing. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, exitMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mTag:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    new-instance v4, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v4, v2, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v2           #exitMsg:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 49
    iget-object v5, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v5}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->kill()V

    .line 52
    :cond_1
    iget-object v5, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v5}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->close()V

    throw v4
.end method

.method public abstract fillQueue()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method

.method protected getQueue()Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    return-object v0
.end method
