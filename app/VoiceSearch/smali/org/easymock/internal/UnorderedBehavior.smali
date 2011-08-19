.class public Lorg/easymock/internal/UnorderedBehavior;
.super Ljava/lang/Object;
.source "UnorderedBehavior.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1e557da3562430ddL


# instance fields
.field private final checkOrder:Z

.field private final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/easymock/internal/ExpectedInvocationAndResults;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/easymock/internal/UnorderedBehavior;->results:Ljava/util/List;

    .line 20
    iput-boolean p1, p0, Lorg/easymock/internal/UnorderedBehavior;->checkOrder:Z

    .line 21
    return-void
.end method


# virtual methods
.method public addActual(Lorg/easymock/internal/Invocation;)Lorg/easymock/internal/Result;
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lorg/easymock/internal/UnorderedBehavior;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/ExpectedInvocationAndResults;

    .line 38
    invoke-virtual {p0}, Lorg/easymock/internal/ExpectedInvocationAndResults;->getExpectedInvocation()Lorg/easymock/internal/ExpectedInvocation;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/easymock/internal/ExpectedInvocation;->matches(Lorg/easymock/internal/Invocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/easymock/internal/ExpectedInvocationAndResults;->getResults()Lorg/easymock/internal/Results;

    move-result-object v1

    invoke-virtual {v1}, Lorg/easymock/internal/Results;->next()Lorg/easymock/internal/Result;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 46
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addExpected(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;Lorg/easymock/internal/Range;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lorg/easymock/internal/UnorderedBehavior;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/ExpectedInvocationAndResults;

    .line 26
    invoke-virtual {v0}, Lorg/easymock/internal/ExpectedInvocationAndResults;->getExpectedInvocation()Lorg/easymock/internal/ExpectedInvocation;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/easymock/internal/ExpectedInvocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v0}, Lorg/easymock/internal/ExpectedInvocationAndResults;->getResults()Lorg/easymock/internal/Results;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/easymock/internal/Results;->add(Lorg/easymock/internal/Result;Lorg/easymock/internal/Range;)V

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Lorg/easymock/internal/Results;

    invoke-direct {v0}, Lorg/easymock/internal/Results;-><init>()V

    .line 32
    invoke-virtual {v0, p2, p3}, Lorg/easymock/internal/Results;->add(Lorg/easymock/internal/Result;Lorg/easymock/internal/Range;)V

    .line 33
    iget-object v1, p0, Lorg/easymock/internal/UnorderedBehavior;->results:Ljava/util/List;

    new-instance v2, Lorg/easymock/internal/ExpectedInvocationAndResults;

    invoke-direct {v2, p1, v0}, Lorg/easymock/internal/ExpectedInvocationAndResults;-><init>(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Results;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public allowsExpectedInvocation(Lorg/easymock/internal/ExpectedInvocation;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-boolean v0, p0, Lorg/easymock/internal/UnorderedBehavior;->checkOrder:Z

    if-eq v0, p2, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/UnorderedBehavior;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/easymock/internal/UnorderedBehavior;->checkOrder:Z

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lorg/easymock/internal/UnorderedBehavior;->results:Ljava/util/List;

    iget-object v1, p0, Lorg/easymock/internal/UnorderedBehavior;->results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/ExpectedInvocationAndResults;

    invoke-virtual {p0}, Lorg/easymock/internal/ExpectedInvocationAndResults;->getExpectedInvocation()Lorg/easymock/internal/ExpectedInvocation;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Lorg/easymock/internal/ExpectedInvocation;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/easymock/internal/UnorderedBehavior;->toString(Lorg/easymock/internal/Invocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/easymock/internal/Invocation;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    iget-object v0, p0, Lorg/easymock/internal/UnorderedBehavior;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/ExpectedInvocationAndResults;

    .line 66
    iget-boolean v3, p0, Lorg/easymock/internal/UnorderedBehavior;->checkOrder:Z

    if-nez v3, :cond_2

    move v3, v7

    .line 67
    :goto_1
    invoke-virtual {v0}, Lorg/easymock/internal/ExpectedInvocationAndResults;->getResults()Lorg/easymock/internal/Results;

    move-result-object v4

    invoke-virtual {v4}, Lorg/easymock/internal/Results;->hasValidCallCount()Z

    move-result v4

    .line 68
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lorg/easymock/internal/ExpectedInvocationAndResults;->getExpectedInvocation()Lorg/easymock/internal/ExpectedInvocation;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/easymock/internal/ExpectedInvocation;->matches(Lorg/easymock/internal/Invocation;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    .line 71
    :goto_2
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_0

    .line 74
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/easymock/internal/ExpectedInvocationAndResults;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    if-eqz v5, :cond_0

    .line 76
    const-string v0, " (+1)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    move v3, v6

    .line 66
    goto :goto_1

    :cond_3
    move v5, v6

    .line 68
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/easymock/internal/UnorderedBehavior;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/ExpectedInvocationAndResults;

    .line 51
    invoke-virtual {p0}, Lorg/easymock/internal/ExpectedInvocationAndResults;->getResults()Lorg/easymock/internal/Results;

    move-result-object v1

    invoke-virtual {v1}, Lorg/easymock/internal/Results;->hasValidCallCount()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
