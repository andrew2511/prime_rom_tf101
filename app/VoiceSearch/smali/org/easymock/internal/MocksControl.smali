.class public Lorg/easymock/internal/MocksControl;
.super Ljava/lang/Object;
.source "MocksControl.java"

# interfaces
.implements Lorg/easymock/IMocksControl;
.implements Lorg/easymock/IExpectationSetters;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/easymock/internal/MocksControl$MockType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/easymock/IMocksControl;",
        "Lorg/easymock/IExpectationSetters",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final AT_LEAST_ONCE:Lorg/easymock/internal/Range; = null

.field public static final ONCE:Lorg/easymock/internal/Range; = null

.field public static final ZERO_OR_MORE:Lorg/easymock/internal/Range; = null

.field private static final serialVersionUID:J = 0x62800535ce3a43eL


# instance fields
.field private behavior:Lorg/easymock/internal/IMocksBehavior;

.field private state:Lorg/easymock/internal/IMocksControlState;

.field private type:Lorg/easymock/internal/MocksControl$MockType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x1

    .line 230
    new-instance v0, Lorg/easymock/internal/Range;

    invoke-direct {v0, v1}, Lorg/easymock/internal/Range;-><init>(I)V

    sput-object v0, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    .line 235
    new-instance v0, Lorg/easymock/internal/Range;

    invoke-direct {v0, v1, v2}, Lorg/easymock/internal/Range;-><init>(II)V

    sput-object v0, Lorg/easymock/internal/MocksControl;->AT_LEAST_ONCE:Lorg/easymock/internal/Range;

    .line 240
    new-instance v0, Lorg/easymock/internal/Range;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/easymock/internal/Range;-><init>(II)V

    sput-object v0, Lorg/easymock/internal/MocksControl;->ZERO_OR_MORE:Lorg/easymock/internal/Range;

    return-void
.end method

.method public constructor <init>(Lorg/easymock/internal/MocksControl$MockType;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/easymock/internal/MocksControl;->type:Lorg/easymock/internal/MocksControl$MockType;

    .line 29
    invoke-virtual {p0}, Lorg/easymock/internal/MocksControl;->reset()V

    .line 30
    return-void
.end method


# virtual methods
.method public andAnswer(Lorg/easymock/IAnswer;)Lorg/easymock/IExpectationSetters;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->andAnswer(Lorg/easymock/IAnswer;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-object p0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->andReturn(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-object p0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public andStubAnswer(Lorg/easymock/IAnswer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->andStubAnswer(Lorg/easymock/IAnswer;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public andStubReturn(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->andStubReturn(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public andStubThrow(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->andStubThrow(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->andThrow(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-object p0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public anyTimes()Lorg/easymock/IExpectationSetters;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    sget-object v1, Lorg/easymock/internal/MocksControl;->ZERO_OR_MORE:Lorg/easymock/internal/Range;

    invoke-interface {v0, v1}, Lorg/easymock/internal/IMocksControlState;->times(Lorg/easymock/internal/Range;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-object p0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public asStub()V
    .locals 1

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0}, Lorg/easymock/internal/IMocksControlState;->asStub()V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public atLeastOnce()Lorg/easymock/IExpectationSetters;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    sget-object v1, Lorg/easymock/internal/MocksControl;->AT_LEAST_ONCE:Lorg/easymock/internal/Range;

    invoke-interface {v0, v1}, Lorg/easymock/internal/IMocksControlState;->times(Lorg/easymock/internal/Range;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-object p0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public checkOrder(Z)V
    .locals 1
    .parameter

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->checkOrder(Z)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public createMock(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0}, Lorg/easymock/internal/IMocksControlState;->assertRecordState()V

    .line 39
    invoke-virtual {p0, p1}, Lorg/easymock/internal/MocksControl;->createProxyFactory(Ljava/lang/Class;)Lorg/easymock/internal/IProxyFactory;

    move-result-object v0

    .line 40
    new-instance v1, Lorg/easymock/internal/ObjectMethodsFilter;

    new-instance v2, Lorg/easymock/internal/MockInvocationHandler;

    invoke-direct {v2, p0}, Lorg/easymock/internal/MockInvocationHandler;-><init>(Lorg/easymock/internal/MocksControl;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/easymock/internal/ObjectMethodsFilter;-><init>(Ljava/lang/Class;Lorg/easymock/internal/MockInvocationHandler;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lorg/easymock/internal/IProxyFactory;->createProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public createMock(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0}, Lorg/easymock/internal/IMocksControlState;->assertRecordState()V

    .line 50
    invoke-virtual {p0, p2}, Lorg/easymock/internal/MocksControl;->createProxyFactory(Ljava/lang/Class;)Lorg/easymock/internal/IProxyFactory;

    move-result-object v0

    .line 51
    new-instance v1, Lorg/easymock/internal/ObjectMethodsFilter;

    new-instance v2, Lorg/easymock/internal/MockInvocationHandler;

    invoke-direct {v2, p0}, Lorg/easymock/internal/MockInvocationHandler;-><init>(Lorg/easymock/internal/MocksControl;)V

    invoke-direct {v1, p2, v2, p1}, Lorg/easymock/internal/ObjectMethodsFilter;-><init>(Ljava/lang/Class;Lorg/easymock/internal/MockInvocationHandler;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Lorg/easymock/internal/IProxyFactory;->createProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method protected createProxyFactory(Ljava/lang/Class;)Lorg/easymock/internal/IProxyFactory;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/easymock/internal/IProxyFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lorg/easymock/internal/JavaProxyFactory;

    invoke-direct {v0}, Lorg/easymock/internal/JavaProxyFactory;-><init>()V

    return-object v0
.end method

.method public getState()Lorg/easymock/internal/IMocksControlState;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    return-object v0
.end method

.method public makeThreadSafe(Z)V
    .locals 1
    .parameter

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->makeThreadSafe(Z)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public once()Lorg/easymock/IExpectationSetters;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    sget-object v1, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    invoke-interface {v0, v1}, Lorg/easymock/internal/IMocksControlState;->times(Lorg/easymock/internal/Range;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-object p0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public replay()V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0}, Lorg/easymock/internal/IMocksControlState;->replay()V

    .line 88
    new-instance v0, Lorg/easymock/internal/ReplayState;

    iget-object v1, p0, Lorg/easymock/internal/MocksControl;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-direct {v0, v1}, Lorg/easymock/internal/ReplayState;-><init>(Lorg/easymock/internal/IMocksBehavior;)V

    iput-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportLastControl(Lorg/easymock/internal/MocksControl;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public final reset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lorg/easymock/internal/MocksBehavior;

    iget-object v1, p0, Lorg/easymock/internal/MocksControl;->type:Lorg/easymock/internal/MocksControl$MockType;

    sget-object v2, Lorg/easymock/internal/MocksControl$MockType;->NICE:Lorg/easymock/internal/MocksControl$MockType;

    if-ne v1, v2, :cond_0

    move v1, v4

    :goto_0
    invoke-direct {v0, v1}, Lorg/easymock/internal/MocksBehavior;-><init>(Z)V

    iput-object v0, p0, Lorg/easymock/internal/MocksControl;->behavior:Lorg/easymock/internal/IMocksBehavior;

    .line 64
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v1, p0, Lorg/easymock/internal/MocksControl;->type:Lorg/easymock/internal/MocksControl$MockType;

    sget-object v2, Lorg/easymock/internal/MocksControl$MockType;->STRICT:Lorg/easymock/internal/MocksControl$MockType;

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_1
    invoke-interface {v0, v1}, Lorg/easymock/internal/IMocksBehavior;->checkOrder(Z)V

    .line 65
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-interface {v0, v3}, Lorg/easymock/internal/IMocksBehavior;->makeThreadSafe(Z)V

    .line 66
    new-instance v0, Lorg/easymock/internal/RecordState;

    iget-object v1, p0, Lorg/easymock/internal/MocksControl;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-direct {v0, v1}, Lorg/easymock/internal/RecordState;-><init>(Lorg/easymock/internal/IMocksBehavior;)V

    iput-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportLastControl(Lorg/easymock/internal/MocksControl;)V

    .line 68
    return-void

    :cond_0
    move v1, v3

    .line 63
    goto :goto_0

    :cond_1
    move v1, v3

    .line 64
    goto :goto_1
.end method

.method public resetToDefault()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/easymock/internal/MocksControl$MockType;->DEFAULT:Lorg/easymock/internal/MocksControl$MockType;

    iput-object v0, p0, Lorg/easymock/internal/MocksControl;->type:Lorg/easymock/internal/MocksControl$MockType;

    .line 77
    invoke-virtual {p0}, Lorg/easymock/internal/MocksControl;->reset()V

    .line 78
    return-void
.end method

.method public resetToNice()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/easymock/internal/MocksControl$MockType;->NICE:Lorg/easymock/internal/MocksControl$MockType;

    iput-object v0, p0, Lorg/easymock/internal/MocksControl;->type:Lorg/easymock/internal/MocksControl$MockType;

    .line 72
    invoke-virtual {p0}, Lorg/easymock/internal/MocksControl;->reset()V

    .line 73
    return-void
.end method

.method public resetToStrict()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/easymock/internal/MocksControl$MockType;->STRICT:Lorg/easymock/internal/MocksControl$MockType;

    iput-object v0, p0, Lorg/easymock/internal/MocksControl;->type:Lorg/easymock/internal/MocksControl$MockType;

    .line 82
    invoke-virtual {p0}, Lorg/easymock/internal/MocksControl;->reset()V

    .line 83
    return-void
.end method

.method public setLegacyDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->setDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public setLegacyDefaultReturnValue(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->setDefaultReturnValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public setLegacyDefaultThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksControlState;->setDefaultThrowable(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public setLegacyDefaultVoidCallable()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0}, Lorg/easymock/internal/IMocksControlState;->setDefaultVoidCallable()V

    .line 270
    return-void
.end method

.method public setLegacyMatcher(Lorg/easymock/ArgumentsMatcher;)V
    .locals 2
    .parameter

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/easymock/internal/IMocksControlState;->setMatcher(Ljava/lang/reflect/Method;Lorg/easymock/ArgumentsMatcher;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public times(I)Lorg/easymock/IExpectationSetters;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    new-instance v1, Lorg/easymock/internal/Range;

    invoke-direct {v1, p1}, Lorg/easymock/internal/Range;-><init>(I)V

    invoke-interface {v0, v1}, Lorg/easymock/internal/IMocksControlState;->times(Lorg/easymock/internal/Range;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-object p0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public times(II)Lorg/easymock/IExpectationSetters;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    new-instance v1, Lorg/easymock/internal/Range;

    invoke-direct {v1, p1, p2}, Lorg/easymock/internal/Range;-><init>(II)V

    invoke-interface {v0, v1}, Lorg/easymock/internal/IMocksControlState;->times(Lorg/easymock/internal/Range;)V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-object p0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public verify()V
    .locals 1

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/easymock/internal/MocksControl;->state:Lorg/easymock/internal/IMocksControlState;

    invoke-interface {v0}, Lorg/easymock/internal/IMocksControlState;->verify()V
    :try_end_0
    .catch Lorg/easymock/internal/RuntimeExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/easymock/internal/AssertionErrorWrapper; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Lorg/easymock/internal/RuntimeExceptionWrapper;->getRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    invoke-virtual {v0}, Lorg/easymock/internal/AssertionErrorWrapper;->getAssertionError()Ljava/lang/AssertionError;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/AssertionError;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/AssertionError;

    throw p0
.end method
