.class public Lcom/amazon/foundation/internal/ChainingCanceler;
.super Ljava/lang/Object;
.source "ChainingCanceler.java"

# interfaces
.implements Lcom/amazon/foundation/internal/ICanceler;


# instance fields
.field private volatile chainedCancelable:Lcom/amazon/foundation/internal/ICancelable;

.field private final local:Lcom/amazon/foundation/internal/ICanceler;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/ICanceler;)V
    .locals 1
    .parameter "internal"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/foundation/internal/ChainingCanceler;-><init>(Lcom/amazon/foundation/internal/ICanceler;Lcom/amazon/foundation/internal/ICancelable;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/ICanceler;Lcom/amazon/foundation/internal/ICancelable;)V
    .locals 1
    .parameter "local"
    .parameter "chained"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->local:Lcom/amazon/foundation/internal/ICanceler;

    .line 39
    iput-object p2, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->chainedCancelable:Lcom/amazon/foundation/internal/ICancelable;

    .line 40
    return-void
.end method


# virtual methods
.method public cancelRequested()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->local:Lcom/amazon/foundation/internal/ICanceler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICanceler;->cancelRequested()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized requestCancel()V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->local:Lcom/amazon/foundation/internal/ICanceler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICanceler;->requestCancel()V

    .line 60
    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->chainedCancelable:Lcom/amazon/foundation/internal/ICancelable;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->chainedCancelable:Lcom/amazon/foundation/internal/ICancelable;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICancelable;->requestCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->local:Lcom/amazon/foundation/internal/ICanceler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICanceler;->reset()V

    .line 74
    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->chainedCancelable:Lcom/amazon/foundation/internal/ICancelable;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->chainedCancelable:Lcom/amazon/foundation/internal/ICancelable;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICancelable;->reset()V

    .line 78
    :cond_0
    return-void
.end method

.method public declared-synchronized setChained(Lcom/amazon/foundation/internal/ICancelable;)V
    .locals 1
    .parameter "chained"

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->chainedCancelable:Lcom/amazon/foundation/internal/ICancelable;

    .line 51
    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->local:Lcom/amazon/foundation/internal/ICanceler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICanceler;->cancelRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->chainedCancelable:Lcom/amazon/foundation/internal/ICancelable;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amazon/foundation/internal/ChainingCanceler;->chainedCancelable:Lcom/amazon/foundation/internal/ICancelable;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICancelable;->requestCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
