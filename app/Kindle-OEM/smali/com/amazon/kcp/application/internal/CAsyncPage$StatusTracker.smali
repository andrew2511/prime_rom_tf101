.class Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;
.super Ljava/lang/Object;
.source "CAsyncPage.java"

# interfaces
.implements Lcom/amazon/foundation/IStatusTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/CAsyncPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusTracker"
.end annotation


# instance fields
.field private delegate:Lcom/amazon/foundation/IStatusTracker;

.field final synthetic this$0:Lcom/amazon/kcp/application/internal/CAsyncPage;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/internal/CAsyncPage;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter
    .parameter "delegate"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;->this$0:Lcom/amazon/kcp/application/internal/CAsyncPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    .line 28
    return-void
.end method


# virtual methods
.method public reportCurrentProgress(J)V
    .locals 1
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V

    .line 45
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "AsyncPage"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0}, Lcom/amazon/foundation/IStatusTracker;->reset()V

    .line 55
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
    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    .line 50
    return-void
.end method
