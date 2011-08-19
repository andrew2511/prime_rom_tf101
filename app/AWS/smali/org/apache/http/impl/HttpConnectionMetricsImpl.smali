.class public Lorg/apache/http/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"

# interfaces
.implements Lorg/apache/http/HttpConnectionMetrics;


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"

.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"

.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"

.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"


# instance fields
.field private final inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

.field private metricsCache:Ljava/util/HashMap;

.field private final outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

.field private requestCount:J

.field private responseCount:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V
    .locals 2
    .parameter "inTransportMetric"
    .parameter "outTransportMetric"

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 53
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 64
    iput-object p1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    .line 65
    iput-object p2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    .line 66
    return-void
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "metricName"

    .prologue
    const/4 v2, 0x0

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .end local v0           #value:Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_6

    .line 108
    const-string v1, "http.request-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .local v0, value:Ljava/lang/Long;
    move-object v1, v0

    .line 126
    .end local v0           #value:Ljava/lang/Long;
    :goto_0
    return-object v1

    .line 110
    :cond_1
    const-string v1, "http.response-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .restart local v0       #value:Ljava/lang/Long;
    move-object v1, v0

    goto :goto_0

    .line 112
    .end local v0           #value:Ljava/lang/Long;
    :cond_2
    const-string v1, "http.received-bytes-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v1, :cond_3

    .line 114
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v2}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 116
    goto :goto_0

    .line 118
    :cond_4
    const-string v1, "http.sent-bytes-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 119
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v1, :cond_5

    .line 120
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v2}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_5
    move-object v1, v2

    .line 122
    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    .line 74
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getRequestCount()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    return-wide v0
.end method

.method public getResponseCount()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    return-wide v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    .line 82
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public incrementRequestCount()V
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 92
    return-void
.end method

.method public incrementResponseCount()V
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 100
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 137
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    .line 143
    :cond_1
    iput-wide v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 144
    iput-wide v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    .line 146
    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "metricName"
    .parameter "obj"

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method
