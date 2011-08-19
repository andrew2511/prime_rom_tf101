.class public Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;
.super Ljava/lang/Object;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetricEntry"
.end annotation


# instance fields
.field public lineEntry:Ljava/lang/String;

.field public priority:Lcom/amazon/kcp/application/metrics/MetricType;

.field final synthetic this$0:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->this$0:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
