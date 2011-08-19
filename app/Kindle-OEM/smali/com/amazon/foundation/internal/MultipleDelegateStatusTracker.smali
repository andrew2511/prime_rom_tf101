.class public Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;
.super Lcom/amazon/foundation/AbstractStatusTracker;
.source "MultipleDelegateStatusTracker.java"


# instance fields
.field private final delegates:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazon/foundation/IStatusTracker;",
            ">;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/String;

.field private substate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/amazon/foundation/AbstractStatusTracker;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->delegates:Ljava/util/LinkedList;

    .line 35
    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getSubstate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->substate:Ljava/lang/String;

    return-object v0
.end method

.method public registerDelegate(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->registerDelegate(Lcom/amazon/foundation/IStatusTracker;Z)V

    .line 109
    return-void
.end method

.method public registerDelegate(Lcom/amazon/foundation/IStatusTracker;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->delegates:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 126
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->getMax()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->delegates:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/IStatusTracker;

    .line 132
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->getMax()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    .line 133
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->getProgress()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V

    .line 134
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public reportCurrentProgress(J)V
    .locals 4
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/amazon/foundation/AbstractStatusTracker;->reportCurrentProgress(J)V

    .line 44
    iget-object v2, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->delegates:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/foundation/IStatusTracker;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/foundation/IStatusTracker;

    .line 48
    .local v1, statusTracker:Lcom/amazon/foundation/IStatusTracker;
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->getProgress()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V

    goto :goto_0

    .line 50
    .end local v1           #statusTracker:Lcom/amazon/foundation/IStatusTracker;
    :cond_0
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->state:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->substate:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->delegates:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/foundation/IStatusTracker;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/foundation/IStatusTracker;

    .line 64
    .local v1, statusTracker:Lcom/amazon/foundation/IStatusTracker;
    invoke-interface {v1, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v1           #statusTracker:Lcom/amazon/foundation/IStatusTracker;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/amazon/foundation/AbstractStatusTracker;->reset()V

    .line 90
    iget-object v1, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->delegates:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/foundation/IStatusTracker;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {p0}, Lcom/amazon/foundation/IStatusTracker;->reset()V

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public setMaxProgress(J)V
    .locals 4
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/amazon/foundation/AbstractStatusTracker;->setMaxProgress(J)V

    .line 75
    iget-object v2, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->delegates:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/foundation/IStatusTracker;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/foundation/IStatusTracker;

    .line 79
    .local v1, statusTracker:Lcom/amazon/foundation/IStatusTracker;
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->getMax()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    goto :goto_0

    .line 81
    .end local v1           #statusTracker:Lcom/amazon/foundation/IStatusTracker;
    :cond_0
    return-void
.end method

.method public unregisterDelegate(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->delegates:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method
