.class Lcom/amazon/kcp/store/StoreMetric$Metric;
.super Ljava/lang/Object;
.source "StoreMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metric"
.end annotation


# instance fields
.field private final count:I

.field private final level:Lcom/amazon/kcp/application/metrics/MetricType;

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->name:Ljava/lang/String;

    .line 26
    const-string v0, "level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreMetric$Metric;->convertToMetricType(Ljava/lang/String;)Lcom/amazon/kcp/application/metrics/MetricType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->level:Lcom/amazon/kcp/application/metrics/MetricType;

    .line 27
    const-string v0, "counter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->count:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject;Lcom/amazon/kcp/store/StoreMetric$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreMetric$Metric;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method private convertToMetricType(Ljava/lang/String;)Lcom/amazon/kcp/application/metrics/MetricType;
    .locals 2
    .parameter

    .prologue
    .line 62
    const-string v0, "debug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->DEBUG:Lcom/amazon/kcp/application/metrics/MetricType;

    .line 88
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const-string v0, "info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "warn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    goto :goto_0

    .line 78
    :cond_3
    const-string v0, "critical"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->CRITICAL:Lcom/amazon/kcp/application/metrics/MetricType;

    goto :goto_0

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid metric level reported from store: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaulting to DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->DEBUG:Lcom/amazon/kcp/application/metrics/MetricType;

    goto :goto_0
.end method


# virtual methods
.method public getMetricType()Lcom/amazon/kcp/application/metrics/MetricType;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->level:Lcom/amazon/kcp/application/metrics/MetricType;

    return-object v0
.end method

.method public getMetricsData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    const-string v1, "Count"

    iget v2, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->name:Ljava/lang/String;

    return-object v0
.end method
