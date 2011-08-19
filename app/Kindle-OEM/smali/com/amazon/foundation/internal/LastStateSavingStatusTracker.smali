.class public Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;
.super Ljava/lang/Object;
.source "LastStateSavingStatusTracker.java"

# interfaces
.implements Lcom/amazon/foundation/IStatusTracker;


# instance fields
.field protected final delegate:Lcom/amazon/foundation/IStatusTracker;

.field protected latestMaxProgress:J

.field protected latestProgress:J

.field protected latestState:Ljava/lang/String;

.field protected latestSubstate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 2
    .parameter "delegate"

    .prologue
    const-wide/16 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestMaxProgress:J

    .line 23
    iput-wide v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestProgress:J

    .line 32
    iput-object p1, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    .line 33
    return-void
.end method


# virtual methods
.method public getLatestMaxProgress()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestMaxProgress:J

    return-wide v0
.end method

.method public getLatestProgress()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestProgress:J

    return-wide v0
.end method

.method public getLatestState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestState:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestSubstate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestSubstate:Ljava/lang/String;

    return-object v0
.end method

.method public reportCurrentProgress(J)V
    .locals 1
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V

    .line 53
    :cond_0
    iput-wide p1, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestProgress:J

    .line 54
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestState:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestSubstate:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0}, Lcom/amazon/foundation/IStatusTracker;->reset()V

    .line 73
    :cond_0
    iput-object v1, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestState:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestSubstate:Ljava/lang/String;

    .line 75
    iput-wide v2, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestMaxProgress:J

    .line 76
    iput-wide v2, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestProgress:J

    .line 77
    return-void
.end method

.method public setMaxProgress(J)V
    .locals 1
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    .line 63
    :cond_0
    iput-wide p1, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestMaxProgress:J

    .line 64
    return-void
.end method
