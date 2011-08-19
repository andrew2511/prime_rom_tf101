.class public final Lorg/easymock/internal/MockInvocationHandler;
.super Ljava/lang/Object;
.source "MockInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6c3e58a41ce1bd0aL


# instance fields
.field private final control:Lorg/easymock/internal/MocksControl;


# direct methods
.method public constructor <init>(Lorg/easymock/internal/MocksControl;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/easymock/internal/MockInvocationHandler;->control:Lorg/easymock/internal/MocksControl;

    .line 19
    return-void
.end method


# virtual methods
.method public getControl()Lorg/easymock/internal/MocksControl;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/easymock/internal/MockInvocationHandler;->control:Lorg/easymock/internal/MocksControl;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MockInvocationHandler;->control:Lorg/easymock/internal/MocksControl;

    invoke-virtual {v0}, Lorg/easymock/internal/MocksControl;->getState()Lorg/easymock/internal/IMocksControlState;

    move-result-object v0

    instance-of v0, v0, Lorg/easymock/internal/RecordState;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lorg/easymock/internal/MockInvocationHandler;->control:Lorg/easymock/internal/MocksControl;

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportLastControl(Lorg/easymock/internal/MocksControl;)V

    .line 27
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/MockInvocationHandler;->control:Lorg/easymock/internal/MocksControl;

    invoke-virtual {v0}, Lorg/easymock/internal/MocksControl;->getState()Lorg/easymock/internal/IMocksControlState;

    move-result-object v0

    new-instance v1, Lorg/easymock/internal/Invocation;

    invoke-direct {v1, p1, p2, p3}, Lorg/easymock/internal/Invocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/easymock/internal/IMocksControlState;->invoke(Lorg/easymock/internal/Invocation;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/easymock/internal/AssertionErrorWrapper; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/easymock/internal/ThrowableWrapper; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    invoke-virtual {v0}, Lorg/easymock/internal/AssertionErrorWrapper;->getAssertionError()Ljava/lang/AssertionError;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/AssertionError;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 33
    :catch_2
    move-exception v0

    .line 34
    invoke-virtual {v0}, Lorg/easymock/internal/ThrowableWrapper;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
