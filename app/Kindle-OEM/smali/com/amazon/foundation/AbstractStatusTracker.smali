.class public abstract Lcom/amazon/foundation/AbstractStatusTracker;
.super Ljava/lang/Object;
.source "AbstractStatusTracker.java"

# interfaces
.implements Lcom/amazon/foundation/IStatusTracker;


# instance fields
.field private max:J

.field private progress:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    .line 31
    iput-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    return-void
.end method


# virtual methods
.method public getMax()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    return-wide v0
.end method

.method public getProgress()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    return-wide v0
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
    .line 48
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 54
    iget-wide p1, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    .line 56
    :cond_1
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 58
    iget-wide p1, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    .line 61
    :cond_2
    iput-wide p1, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    .line 62
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    .line 103
    iput-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    .line 104
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
    .line 87
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 92
    :cond_0
    iput-wide p1, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    .line 93
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    iget-wide v2, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 95
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    iput-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    .line 97
    :cond_1
    return-void
.end method
