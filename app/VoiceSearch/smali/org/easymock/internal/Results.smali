.class public Lorg/easymock/internal/Results;
.super Ljava/lang/Object;
.source "Results.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x25c6abc0dc4f29e5L


# instance fields
.field private callCount:I

.field private ranges:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/easymock/internal/Range;",
            ">;"
        }
    .end annotation
.end field

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/easymock/internal/Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/easymock/internal/Results;->ranges:Ljava/util/LinkedList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/easymock/internal/Results;->results:Ljava/util/List;

    return-void
.end method

.method private getMainInterval()Lorg/easymock/internal/Range;
    .locals 5

    .prologue
    const v4, 0x7fffffff

    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lorg/easymock/internal/Results;->ranges:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/Range;

    .line 64
    invoke-virtual {p0}, Lorg/easymock/internal/Range;->getMinimum()I

    move-result v3

    add-int/2addr v2, v3

    .line 65
    invoke-virtual {p0}, Lorg/easymock/internal/Range;->hasOpenCount()Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    move v1, v4

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lorg/easymock/internal/Range;->getMaximum()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Lorg/easymock/internal/Range;

    invoke-direct {v0, v2, v1}, Lorg/easymock/internal/Range;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/easymock/internal/Result;Lorg/easymock/internal/Range;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lorg/easymock/internal/Results;->ranges:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lorg/easymock/internal/Results;->ranges:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/Range;

    .line 25
    invoke-virtual {v0}, Lorg/easymock/internal/Range;->hasFixedCount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "last method called on mock already has a non-fixed count set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/Results;->ranges:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lorg/easymock/internal/Results;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public getCallCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/easymock/internal/Results;->callCount:I

    return v0
.end method

.method public hasValidCallCount()Z
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/easymock/internal/Results;->getMainInterval()Lorg/easymock/internal/Range;

    move-result-object v0

    invoke-virtual {p0}, Lorg/easymock/internal/Results;->getCallCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/easymock/internal/Range;->contains(I)Z

    move-result v0

    return v0
.end method

.method public next()Lorg/easymock/internal/Result;
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    .line 36
    :goto_0
    iget-object v0, p0, Lorg/easymock/internal/Results;->ranges:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 37
    iget-object v0, p0, Lorg/easymock/internal/Results;->ranges:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/Range;

    .line 38
    invoke-virtual {v0}, Lorg/easymock/internal/Range;->hasOpenCount()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    iget v0, p0, Lorg/easymock/internal/Results;->callCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/easymock/internal/Results;->callCount:I

    .line 40
    iget-object v0, p0, Lorg/easymock/internal/Results;->results:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/Result;

    move-object v0, p0

    .line 48
    :goto_1
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lorg/easymock/internal/Range;->getMaximum()I

    move-result v0

    add-int/2addr v0, v2

    .line 43
    iget v2, p0, Lorg/easymock/internal/Results;->callCount:I

    if-le v0, v2, :cond_1

    .line 44
    iget v0, p0, Lorg/easymock/internal/Results;->callCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/easymock/internal/Results;->callCount:I

    .line 45
    iget-object v0, p0, Lorg/easymock/internal/Results;->results:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/Result;

    move-object v0, p0

    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/easymock/internal/Results;->getMainInterval()Lorg/easymock/internal/Range;

    move-result-object v0

    invoke-virtual {p0}, Lorg/easymock/internal/Results;->getCallCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/easymock/internal/Range;->expectedAndActual(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
