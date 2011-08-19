.class public Lorg/easymock/internal/ReplayState;
.super Ljava/lang/Object;
.source "ReplayState.java"

# interfaces
.implements Lorg/easymock/internal/IMocksControlState;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x57a0573e34559294L


# instance fields
.field private behavior:Lorg/easymock/internal/IMocksBehavior;


# direct methods
.method public constructor <init>(Lorg/easymock/internal/IMocksBehavior;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/easymock/internal/ReplayState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    .line 20
    return-void
.end method

.method private invokeInner(Lorg/easymock/internal/Invocation;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/easymock/internal/ReplayState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksBehavior;->addActual(Lorg/easymock/internal/Invocation;)Lorg/easymock/internal/Result;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lorg/easymock/internal/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/easymock/internal/LastControl;->pushCurrentArguments([Ljava/lang/Object;)V

    .line 41
    :try_start_0
    invoke-virtual {v0}, Lorg/easymock/internal/Result;->answer()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    invoke-static {}, Lorg/easymock/internal/LastControl;->popCurrentArguments()V

    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    :try_start_1
    new-instance v1, Lorg/easymock/internal/ThrowableWrapper;

    invoke-direct {v1, v0}, Lorg/easymock/internal/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/easymock/internal/LastControl;->popCurrentArguments()V

    throw v0
.end method

.method private throwWrappedIllegalStateException()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must not be called in replay state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
.end method


# virtual methods
.method public andAnswer(Lorg/easymock/IAnswer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 80
    return-void
.end method

.method public andReturn(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 72
    return-void
.end method

.method public andStubAnswer(Lorg/easymock/IAnswer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 92
    return-void
.end method

.method public andStubReturn(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 84
    return-void
.end method

.method public andStubThrow(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 88
    return-void
.end method

.method public andThrow(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 76
    return-void
.end method

.method public asStub()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 96
    return-void
.end method

.method public assertRecordState()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 131
    return-void
.end method

.method public callback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 60
    return-void
.end method

.method public checkOrder(Z)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 64
    return-void
.end method

.method public invoke(Lorg/easymock/internal/Invocation;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lorg/easymock/internal/ReplayState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-interface {v0}, Lorg/easymock/internal/IMocksBehavior;->isThreadSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    invoke-direct {p0, p1}, Lorg/easymock/internal/ReplayState;->invokeInner(Lorg/easymock/internal/Invocation;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    .line 33
    :goto_0
    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/ReplayState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-interface {v0}, Lorg/easymock/internal/IMocksBehavior;->checkCurrentThreadSameAsLastThread()V

    .line 33
    invoke-direct {p0, p1}, Lorg/easymock/internal/ReplayState;->invokeInner(Lorg/easymock/internal/Invocation;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public makeThreadSafe(Z)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 68
    return-void
.end method

.method public replay()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 56
    return-void
.end method

.method public setDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 110
    return-void
.end method

.method public setDefaultReturnValue(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 114
    return-void
.end method

.method public setDefaultThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 118
    return-void
.end method

.method public setDefaultVoidCallable()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 122
    return-void
.end method

.method public setMatcher(Ljava/lang/reflect/Method;Lorg/easymock/ArgumentsMatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 105
    return-void
.end method

.method public times(Lorg/easymock/internal/Range;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/easymock/internal/ReplayState;->throwWrappedIllegalStateException()V

    .line 100
    return-void
.end method

.method public verify()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/easymock/internal/ReplayState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-interface {v0}, Lorg/easymock/internal/IMocksBehavior;->verify()V

    .line 52
    return-void
.end method
