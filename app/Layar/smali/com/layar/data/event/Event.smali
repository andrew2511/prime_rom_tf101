.class public Lcom/layar/data/event/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public action:Ljava/lang/String;

.field public code:S

.field public distance:I

.field public layerName:Ljava/lang/String;

.field public poiId:Ljava/lang/String;

.field public timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/layar/data/event/Event;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/event/Event;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "layerName"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/layar/data/event/Event;->timeStamp:J

    .line 29
    iput-short p1, p0, Lcom/layar/data/event/Event;->code:S

    .line 30
    iput-object p2, p0, Lcom/layar/data/event/Event;->layerName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "code"
    .parameter "layerName"
    .parameter "poiId"
    .parameter "distance"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/layar/data/event/Event;-><init>(SLjava/lang/String;)V

    .line 35
    iput-object p3, p0, Lcom/layar/data/event/Event;->poiId:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/layar/data/event/Event;->distance:I

    .line 37
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "layerName"
    .parameter "poiId"
    .parameter "distance"
    .parameter "action"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/layar/data/event/Event;-><init>(SLjava/lang/String;Ljava/lang/String;I)V

    .line 41
    iput-object p5, p0, Lcom/layar/data/event/Event;->action:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public generateJSONString(Lorg/json/JSONStringer;)Lorg/json/JSONStringer;
    .locals 4
    .parameter "resultBuilder"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .end local p1
    .local v0, resultBuilder:Lorg/json/JSONStringer;
    move-object p1, v0

    .line 49
    .end local v0           #resultBuilder:Lorg/json/JSONStringer;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    .line 50
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-short v2, p0, Lcom/layar/data/event/Event;->code:S

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 51
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-wide v2, p0, Lcom/layar/data/event/Event;->timeStamp:J

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 52
    const-string v2, "layerName"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/data/event/Event;->layerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 53
    iget-object v1, p0, Lcom/layar/data/event/Event;->poiId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "poiId"

    invoke-virtual {p1, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/data/event/Event;->poiId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    .line 56
    const-string v2, "distance"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p0, Lcom/layar/data/event/Event;->distance:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 57
    iget-object v1, p0, Lcom/layar/data/event/Event;->action:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "action"

    invoke-virtual {p1, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/data/event/Event;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 60
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v1

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method
