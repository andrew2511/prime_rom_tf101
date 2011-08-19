.class public Lcom/amazon/foundation/internal/CrossThreadCallbackManager;
.super Ljava/lang/Object;
.source "CrossThreadCallbackManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager;


# instance fields
.field private final manager:Lcom/amazon/foundation/internal/CallbackManager;

.field private volatile notifyOnUIThread:Z

.field private final threadUtilities:Lcom/amazon/system/Utilities;

.field private volatile triggerOnUIThreadOnly:Z


# direct methods
.method public constructor <init>(Lcom/amazon/system/Utilities;)V
    .locals 2
    .parameter "threadUtilities"

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 27
    iput-object p1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->threadUtilities:Lcom/amazon/system/Utilities;

    .line 28
    iput-boolean v1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->notifyOnUIThread:Z

    .line 29
    iput-boolean v1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->triggerOnUIThreadOnly:Z

    .line 30
    return-void
.end method


# virtual methods
.method public executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V
    .locals 5
    .parameter "executor"

    .prologue
    .line 60
    iget-object v3, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->threadUtilities:Lcom/amazon/system/Utilities;

    invoke-interface {v3}, Lcom/amazon/system/Utilities;->isEventThread()Z

    move-result v2

    .line 61
    .local v2, onUIThread:Z
    iget-boolean v3, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->triggerOnUIThreadOnly:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 63
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 66
    :cond_0
    iget-boolean v3, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->notifyOnUIThread:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 68
    iget-object v3, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->threadUtilities:Lcom/amazon/system/Utilities;

    new-instance v4, Lcom/amazon/foundation/internal/CrossThreadCallbackManager$1;

    invoke-direct {v4, p0, p1}, Lcom/amazon/foundation/internal/CrossThreadCallbackManager$1;-><init>(Lcom/amazon/foundation/internal/CrossThreadCallbackManager;Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    invoke-interface {v3, v4}, Lcom/amazon/system/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 89
    :cond_1
    return-void

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    monitor-enter v3

    .line 81
    :try_start_0
    iget-object v4, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v4}, Lcom/amazon/foundation/internal/CallbackManager;->getCallbacksArray()[Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, callbacks:[Ljava/lang/Object;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 86
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;->executeCallback(Ljava/lang/Object;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0           #callbacks:[Ljava/lang/Object;
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getCallbacksArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/CallbackManager;->getCallbacksArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered(Ljava/lang/Object;)Z
    .locals 2
    .parameter "callback"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v1, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public register(Ljava/lang/Object;)Z
    .locals 2
    .parameter "callback"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v1, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNotifyOnUIThread(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->notifyOnUIThread:Z

    .line 42
    return-void
.end method

.method public setTriggerOnUIThreadOnly(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->triggerOnUIThreadOnly:Z

    .line 53
    return-void
.end method

.method public unregister(Ljava/lang/Object;)Z
    .locals 2
    .parameter "callback"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v1, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
