.class Lcom/amazon/kcp/store/StoreMetric;
.super Ljava/lang/Object;
.source "StoreMetric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StoreMetric$1;,
        Lcom/amazon/kcp/store/StoreMetric$TimingMetric;,
        Lcom/amazon/kcp/store/StoreMetric$Metric;
    }
.end annotation


# instance fields
.field private metrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/store/StoreMetric$Metric;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/store/StoreMetric;->name:Ljava/lang/String;

    .line 125
    const-string v1, "timings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 126
    const-string v2, "counters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/amazon/kcp/store/StoreMetric;->metrics:Ljava/util/List;

    move v2, v6

    .line 129
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/amazon/kcp/store/StoreMetric;->metrics:Ljava/util/List;

    new-instance v4, Lcom/amazon/kcp/store/StoreMetric$TimingMetric;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazon/kcp/store/StoreMetric$TimingMetric;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v1, v6

    .line 133
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreMetric;->metrics:Ljava/util/List;

    new-instance v3, Lcom/amazon/kcp/store/StoreMetric$Metric;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/amazon/kcp/store/StoreMetric$Metric;-><init>(Lorg/json/JSONObject;Lcom/amazon/kcp/store/StoreMetric$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreMetric;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getMetrics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/store/StoreMetric$Metric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreMetric;->metrics:Ljava/util/List;

    return-object v0
.end method
