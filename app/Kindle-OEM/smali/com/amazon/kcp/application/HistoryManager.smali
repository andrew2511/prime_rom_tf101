.class public Lcom/amazon/kcp/application/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# instance fields
.field private historizableArray:Ljava/util/Vector;

.field private stateArray:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    .line 16
    iput-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 74
    return-void
.end method

.method public hasBack()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pop()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/application/HistoryManager;->hasBack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/util/EmptyStackException;

    invoke-direct {v2}, Ljava/util/EmptyStackException;-><init>()V

    throw v2

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 52
    .local v1, state:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/Historizable;

    invoke-interface {v2, v1}, Lcom/amazon/kcp/application/Historizable;->restoreState([Ljava/lang/Object;)V

    .line 53
    iget-object v2, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    iget-object v3, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 54
    iget-object v2, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    iget-object v3, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 55
    return v4
.end method

.method public push(Lcom/amazon/kcp/application/Historizable;)Z
    .locals 2
    .parameter "historizable"

    .prologue
    .line 34
    invoke-interface {p1}, Lcom/amazon/kcp/application/Historizable;->saveState()[Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, state:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 37
    const/4 v1, 0x1

    return v1
.end method
