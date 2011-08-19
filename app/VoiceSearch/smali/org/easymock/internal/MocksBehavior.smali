.class public Lorg/easymock/internal/MocksBehavior;
.super Ljava/lang/Object;
.source "MocksBehavior.java"

# interfaces
.implements Lorg/easymock/internal/IMocksBehavior;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2d52316996eddd03L


# instance fields
.field private final behaviorLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/easymock/internal/UnorderedBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private checkOrder:Z

.field private isThreadSafe:Z

.field private volatile transient lastThread:Ljava/lang/Thread;

.field private legacyMatcherProvider:Lorg/easymock/internal/LegacyMatcherProvider;

.field private final nice:Z

.field private position:I

.field private stubResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/easymock/internal/ExpectedInvocationAndResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/easymock/internal/MocksBehavior;->stubResults:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    .line 31
    iput-boolean p1, p0, Lorg/easymock/internal/MocksBehavior;->nice:Z

    .line 32
    return-void
.end method

.method private addBehaviorListIfNecessary(Lorg/easymock/internal/ExpectedInvocation;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/easymock/internal/MocksBehavior;->lastBehaviorList()Lorg/easymock/internal/UnorderedBehavior;

    move-result-object v0

    iget-boolean v1, p0, Lorg/easymock/internal/MocksBehavior;->checkOrder:Z

    invoke-virtual {v0, p1, v1}, Lorg/easymock/internal/UnorderedBehavior;->allowsExpectedInvocation(Lorg/easymock/internal/ExpectedInvocation;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    new-instance v1, Lorg/easymock/internal/UnorderedBehavior;

    iget-boolean v2, p0, Lorg/easymock/internal/MocksBehavior;->checkOrder:Z

    invoke-direct {v1, v2}, Lorg/easymock/internal/UnorderedBehavior;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    return-void
.end method

.method private final getStubResult(Lorg/easymock/internal/Invocation;)Lorg/easymock/internal/Result;
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->stubResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/ExpectedInvocationAndResult;

    .line 50
    invoke-virtual {p0}, Lorg/easymock/internal/ExpectedInvocationAndResult;->getExpectedInvocation()Lorg/easymock/internal/ExpectedInvocation;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/easymock/internal/ExpectedInvocation;->matches(Lorg/easymock/internal/Invocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/easymock/internal/ExpectedInvocationAndResult;->getResult()Lorg/easymock/internal/Result;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lastBehaviorList()Lorg/easymock/internal/UnorderedBehavior;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    iget-object v1, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/UnorderedBehavior;

    return-object p0
.end method


# virtual methods
.method public final addActual(Lorg/easymock/internal/Invocation;)Lorg/easymock/internal/Result;
    .locals 5
    .parameter

    .prologue
    .line 71
    iget v1, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    .line 72
    const-string v0, ""

    move-object v2, v0

    .line 73
    :goto_0
    iget v0, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    iget-object v3, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 74
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    iget v3, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/UnorderedBehavior;

    invoke-virtual {v0, p1}, Lorg/easymock/internal/UnorderedBehavior;->addActual(Lorg/easymock/internal/Invocation;)Lorg/easymock/internal/Result;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 94
    :goto_1
    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    iget v3, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/UnorderedBehavior;

    invoke-virtual {v0, p1}, Lorg/easymock/internal/UnorderedBehavior;->toString(Lorg/easymock/internal/Invocation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    iget v3, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/UnorderedBehavior;

    invoke-virtual {v0}, Lorg/easymock/internal/UnorderedBehavior;->verify()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 84
    :goto_2
    invoke-direct {p0, p1}, Lorg/easymock/internal/MocksBehavior;->getStubResult(Lorg/easymock/internal/Invocation;)Lorg/easymock/internal/Result;

    move-result-object v2

    .line 85
    if-nez v2, :cond_1

    iget-boolean v3, p0, Lorg/easymock/internal/MocksBehavior;->nice:Z

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {p1}, Lorg/easymock/internal/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/easymock/internal/RecordState;->emptyReturnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/easymock/internal/Result;->createReturnResult(Ljava/lang/Object;)Lorg/easymock/internal/Result;

    move-result-object v2

    .line 91
    :cond_1
    iput v1, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    .line 93
    if-eqz v2, :cond_3

    move-object v0, v2

    .line 94
    goto :goto_1

    .line 82
    :cond_2
    iget v0, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    goto :goto_0

    .line 96
    :cond_3
    new-instance v1, Lorg/easymock/internal/AssertionErrorWrapper;

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  Unexpected method call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/easymock/MockControl;->EQUALS_MATCHER:Lorg/easymock/ArgumentsMatcher;

    invoke-virtual {p1, v4}, Lorg/easymock/internal/Invocation;->toString(Lorg/easymock/ArgumentsMatcher;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lorg/easymock/internal/AssertionErrorWrapper;-><init>(Ljava/lang/AssertionError;)V

    throw v1

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public addExpected(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;Lorg/easymock/internal/Range;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->legacyMatcherProvider:Lorg/easymock/internal/LegacyMatcherProvider;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->legacyMatcherProvider:Lorg/easymock/internal/LegacyMatcherProvider;

    invoke-virtual {p1}, Lorg/easymock/internal/ExpectedInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/easymock/internal/LegacyMatcherProvider;->getMatcher(Ljava/lang/reflect/Method;)Lorg/easymock/ArgumentsMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/easymock/internal/ExpectedInvocation;->withMatcher(Lorg/easymock/ArgumentsMatcher;)Lorg/easymock/internal/ExpectedInvocation;

    move-result-object v0

    .line 44
    :goto_0
    invoke-direct {p0, v0}, Lorg/easymock/internal/MocksBehavior;->addBehaviorListIfNecessary(Lorg/easymock/internal/ExpectedInvocation;)V

    .line 45
    invoke-direct {p0}, Lorg/easymock/internal/MocksBehavior;->lastBehaviorList()Lorg/easymock/internal/UnorderedBehavior;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lorg/easymock/internal/UnorderedBehavior;->addExpected(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;Lorg/easymock/internal/Range;)V

    .line 46
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public final addStub(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->stubResults:Ljava/util/List;

    new-instance v1, Lorg/easymock/internal/ExpectedInvocationAndResult;

    invoke-direct {v1, p1, p2}, Lorg/easymock/internal/ExpectedInvocationAndResult;-><init>(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public checkCurrentThreadSameAsLastThread()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->lastThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/MocksBehavior;->lastThread:Ljava/lang/Thread;

    .line 142
    :cond_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->lastThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 139
    new-instance v0, Lorg/easymock/internal/AssertionErrorWrapper;

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "\n  Un-thread-safe mock called from multiple threads"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/AssertionErrorWrapper;-><init>(Ljava/lang/AssertionError;)V

    throw v0
.end method

.method public checkOrder(Z)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-boolean p1, p0, Lorg/easymock/internal/MocksBehavior;->checkOrder:Z

    .line 125
    return-void
.end method

.method public getLegacyMatcherProvider()Lorg/easymock/internal/LegacyMatcherProvider;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->legacyMatcherProvider:Lorg/easymock/internal/LegacyMatcherProvider;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lorg/easymock/internal/LegacyMatcherProvider;

    invoke-direct {v0}, Lorg/easymock/internal/LegacyMatcherProvider;-><init>()V

    iput-object v0, p0, Lorg/easymock/internal/MocksBehavior;->legacyMatcherProvider:Lorg/easymock/internal/LegacyMatcherProvider;

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/MocksBehavior;->legacyMatcherProvider:Lorg/easymock/internal/LegacyMatcherProvider;

    return-object v0
.end method

.method public isThreadSafe()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/easymock/internal/MocksBehavior;->isThreadSafe:Z

    return v0
.end method

.method public makeThreadSafe(Z)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-boolean p1, p0, Lorg/easymock/internal/MocksBehavior;->isThreadSafe:Z

    .line 129
    return-void
.end method

.method public setDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/easymock/internal/MocksBehavior;->getLegacyMatcherProvider()Lorg/easymock/internal/LegacyMatcherProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/easymock/internal/LegacyMatcherProvider;->setDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V

    .line 156
    return-void
.end method

.method public setMatcher(Ljava/lang/reflect/Method;Lorg/easymock/ArgumentsMatcher;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/easymock/internal/MocksBehavior;->getLegacyMatcherProvider()Lorg/easymock/internal/LegacyMatcherProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/easymock/internal/LegacyMatcherProvider;->setMatcher(Ljava/lang/reflect/Method;Lorg/easymock/ArgumentsMatcher;)V

    .line 161
    return-void
.end method

.method public verify()V
    .locals 5

    .prologue
    .line 105
    const/4 v0, 0x1

    .line 106
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    iget-object v2, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    iget v3, p0, Lorg/easymock/internal/MocksBehavior;->position:I

    iget-object v4, p0, Lorg/easymock/internal/MocksBehavior;->behaviorLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/UnorderedBehavior;

    .line 110
    invoke-virtual {p0}, Lorg/easymock/internal/UnorderedBehavior;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p0}, Lorg/easymock/internal/UnorderedBehavior;->verify()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    .line 116
    return-void

    .line 119
    :cond_2
    new-instance v0, Lorg/easymock/internal/AssertionErrorWrapper;

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  Expectation failure on verify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lorg/easymock/internal/AssertionErrorWrapper;-><init>(Ljava/lang/AssertionError;)V

    throw v0
.end method
