.class Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;
.super Ljava/lang/Object;
.source "GetItemsWebservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TodoItemLoader"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public forcedUpdate:Ljava/lang/String;

.field public incremental:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public priority:Ljava/lang/String;

.field public removalBaseUrl:Ljava/lang/String;

.field public sequence:Ljava/lang/String;

.field public softwareVersion:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;-><init>()V

    return-void
.end method

.method private populateTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Lcom/amazon/kcp/application/models/internal/TodoItem;
    .locals 5
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setTitle(Ljava/lang/String;)V

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->priority:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setTypeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setActionString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setKey(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->incremental:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->incremental:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setIncremental(Z)V

    .line 135
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->sequence:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setSequence(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setURL(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->removalBaseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setRemoveBaseURL(Ljava/lang/String;)V

    .line 151
    return-object p1

    .line 115
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v2, "InvalidPriorityValue"

    iget-object v3, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->priority:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "GetItems"

    const-string v3, "PriorityDataError"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2

    .line 143
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    const-string v2, "InvalidSequenceValue"

    iget-object v3, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->sequence:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v2, "GetItems"

    const-string v3, "SequenceDataError"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    goto :goto_1
.end method


# virtual methods
.method public getConcreteTodoItemInstance()Lcom/amazon/kcp/application/models/internal/TodoItem;
    .locals 6

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->type:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->action:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->action:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    new-instance v0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->setDescription(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->forcedUpdate:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->forcedUpdate:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->setForcedUpdate(Z)V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->softwareVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->setSoftwareVersion(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->populateTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server reports invalid software version data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string v3, "InvalidSoftwareVersion"

    iget-object v4, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->softwareVersion:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v3, "GetItems"

    const-string v4, "SoftwareVersionDataError"

    sget-object v5, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    goto :goto_1

    .line 97
    :cond_2
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;-><init>()V

    goto :goto_1
.end method
