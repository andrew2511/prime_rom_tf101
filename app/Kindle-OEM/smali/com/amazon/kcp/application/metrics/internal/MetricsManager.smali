.class public Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
.super Ljava/lang/Object;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;
    }
.end annotation


# static fields
.field public static final DELIMITER:C = '\n'

.field private static final METRICS_MAXIMUM_ENTRIES:I = 0x3e8

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static debugDisableMetrics:Z

.field private static final instance:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;


# instance fields
.field private domain:Ljava/lang/String;

.field private fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

.field private metricsCachePath:Ljava/lang/String;

.field private metricsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;",
            ">;"
        }
    .end annotation
.end field

.field private timers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->instance:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->debugDisableMetrics:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->domain:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->timers:Ljava/util/Map;

    .line 109
    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->instance:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-object v0
.end method

.method private getMetricsList()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 187
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 190
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;

    iget-object v0, v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->lineEntry:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 201
    :cond_0
    sget-boolean v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->debugDisableMetrics:Z

    if-eqz v0, :cond_1

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/amazon/kcp/application/metrics/MetricData;

    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->domain:Ljava/lang/String;

    const-string v2, "MetricsManager"

    const-string v3, "MetricUploadSkipped"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->DEBUG:Lcom/amazon/kcp/application/metrics/MetricType;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/application/metrics/MetricData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/MetricData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private loadDataFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    if-nez v0, :cond_0

    move-object v0, v5

    .line 318
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->openFileInputStream(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/system/io/IFileInputStream;

    move-result-object v0

    .line 274
    if-nez v0, :cond_1

    move-object v0, v5

    .line 276
    goto :goto_0

    .line 285
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->size()J

    move-result-wide v1

    .line 286
    long-to-int v3, v1

    new-array v3, v3, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    const/4 v4, 0x0

    long-to-int v1, v1

    :try_start_1
    invoke-virtual {v0, v3, v4, v1}, Lcom/amazon/system/io/IFileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 297
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v3

    .line 305
    :goto_1
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 311
    :try_start_3
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 313
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .line 314
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v5

    .line 291
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 302
    goto :goto_1

    .line 301
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 295
    :catchall_0
    move-exception v1

    .line 297
    :try_start_5
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 301
    :goto_3
    throw v1

    :catch_3
    move-exception v0

    :cond_2
    move-object v0, v5

    .line 318
    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v1, v3

    goto :goto_2
.end method

.method public static makeMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .parameter

    .prologue
    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 601
    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    .line 603
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 605
    aget-object v2, p0, v1

    .line 606
    add-int/lit8 v3, v1, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    .line 607
    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 606
    :cond_0
    const-string v3, "ERROR_NO_VALUE"

    goto :goto_1

    .line 610
    :cond_1
    return-object v0
.end method

.method private removeLowestPriorityOldestMetric()V
    .locals 5

    .prologue
    .line 572
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->ORDERED_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 575
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->ORDERED_TYPES:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/metrics/MetricType;

    .line 577
    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 578
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;

    .line 582
    iget-object v4, v1, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->priority:Lcom/amazon/kcp/application/metrics/MetricType;

    if-ne v4, v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 589
    :cond_1
    return-void

    .line 572
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private declared-synchronized reportMetric(Lcom/amazon/kcp/application/metrics/MetricData;)V
    .locals 3
    .parameter

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/metrics/MetricData;->getType()Lcom/amazon/kcp/application/metrics/MetricType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/metrics/MetricType;->DEBUG:Lcom/amazon/kcp/application/metrics/MetricType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 564
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 552
    :cond_1
    :try_start_1
    new-instance v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;-><init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)V

    .line 553
    invoke-virtual {p1}, Lcom/amazon/kcp/application/metrics/MetricData;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->lineEntry:Ljava/lang/String;

    .line 554
    invoke-virtual {p1}, Lcom/amazon/kcp/application/metrics/MetricData;->getType()Lcom/amazon/kcp/application/metrics/MetricType;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->priority:Lcom/amazon/kcp/application/metrics/MetricType;

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting the following metric "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->lineEntry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->removeLowestPriorityOldestMetric()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancelMetricTimer(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->timers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    return-void
.end method

.method public formatForTransfer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, ""

    .line 181
    :goto_0
    return-object v0

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getMetricsList()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 176
    const-string v2, "\nFiles: messages.0\n------------------\nMFBS/1.0 1\n\nContent-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 178
    const-string v2, "\nContent-Name: Content\nContent-Encoding: text\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->domain:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsCachePath:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsCachePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->loadDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->parseMetricsData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    .line 148
    :cond_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->resetMetrics()V

    .line 139
    const-string v0, "MetricsManager"

    const-string v1, "MetricsParseError"

    sget-object v2, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public parseMetricsData(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 331
    .line 334
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move v0, v8

    .line 336
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    if-ge v0, v2, :cond_3

    .line 338
    add-int/lit8 v0, v0, 0x1

    .line 339
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 340
    if-ne v2, v8, :cond_0

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 347
    :cond_0
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 354
    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v4, v6

    .line 363
    :goto_1
    if-eqz v4, :cond_2

    .line 366
    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ORDERED_TYPES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 368
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->ORDERED_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    .line 371
    :cond_1
    new-instance v4, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;-><init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)V

    .line 372
    sget-object v5, Lcom/amazon/kcp/application/metrics/MetricType;->ORDERED_TYPES:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/metrics/MetricType;

    iput-object v0, v4, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->priority:Lcom/amazon/kcp/application/metrics/MetricType;

    .line 373
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->lineEntry:Ljava/lang/String;

    .line 375
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v2

    .line 377
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse priority from metric line: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v7

    move v4, v7

    .line 360
    goto :goto_1

    .line 378
    :cond_3
    return-object v1
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "callingClass"
    .parameter "event"

    .prologue
    .line 390
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 391
    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V
    .locals 6
    .parameter "callingClass"
    .parameter "event"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 402
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V
    .locals 6
    .parameter "callingClass"
    .parameter "event"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/application/metrics/MetricType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p4, keyValuePairs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/application/metrics/MetricType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->domain:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 433
    new-instance v0, Lcom/amazon/kcp/application/metrics/MetricData;

    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->domain:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/application/metrics/MetricData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Lcom/amazon/kcp/application/metrics/MetricData;)V

    .line 436
    return-void
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 447
    :cond_0
    return-void
.end method

.method public serialize()V
    .locals 5

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsCachePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 231
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;

    .line 236
    sget-object v2, Lcom/amazon/kcp/application/metrics/MetricType;->ORDERED_TYPES:Ljava/util/List;

    iget-object v3, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->priority:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    iget-object v3, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager$MetricEntry;->lineEntry:Ljava/lang/String;

    .line 238
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 239
    const-string v2, "UTF-8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 240
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 245
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 255
    :catch_1
    move-exception v0

    goto :goto_0

    .line 251
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 255
    :catch_2
    move-exception v0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v1

    .line 251
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 255
    :goto_2
    throw v1

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public startMetricTimer(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->timers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->timers:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    return-void
.end method

.method public stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/lang/String;)V
    .locals 6
    .parameter "callingClass"
    .parameter "event"
    .parameter "type"
    .parameter "key"

    .prologue
    .line 494
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/application/metrics/MetricType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 508
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->timers:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 510
    if-nez p4, :cond_1

    .line 512
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v4, v1

    .line 515
    :goto_0
    if-nez v0, :cond_0

    .line 518
    const-string v0, "TimerError"

    const-string v1, "NoTimerDetected"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->DEBUG:Lcom/amazon/kcp/application/metrics/MetricType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 526
    :goto_1
    return-void

    .line 523
    :cond_0
    const-string v1, "Timer"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 524
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v4, p4

    goto :goto_0
.end method

.method public stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "callingClass"
    .parameter "event"
    .parameter "key"

    .prologue
    .line 481
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "callingClass"
    .parameter "event"
    .parameter "key"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->timers:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    return-void
.end method
