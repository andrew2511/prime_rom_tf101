.class public Lcom/amazon/foundation/internal/CountingCanceler;
.super Ljava/lang/Object;
.source "CountingCanceler.java"

# interfaces
.implements Lcom/amazon/foundation/internal/ICanceler;


# instance fields
.field private volatile cancelRequests:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/foundation/internal/CountingCanceler;->cancelRequests:I

    return-void
.end method


# virtual methods
.method public cancelRequested()Z
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/amazon/foundation/internal/CountingCanceler;->cancelRequests:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized requestCancel()V
    .locals 1

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/amazon/foundation/internal/CountingCanceler;->cancelRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/foundation/internal/CountingCanceler;->cancelRequests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/amazon/foundation/internal/CountingCanceler;->cancelRequests:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/foundation/internal/CountingCanceler;->cancelRequests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
