.class public Lcom/amazon/kcp/library/FreeBookManager;
.super Ljava/lang/Object;
.source "FreeBookManager.java"


# static fields
.field public static FREE_BOOKS_ASSET_PATH:Ljava/lang/String;

.field private static METRICS_CLASS_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "freeBooks"

    sput-object v0, Lcom/amazon/kcp/library/FreeBookManager;->FREE_BOOKS_ASSET_PATH:Ljava/lang/String;

    .line 30
    const-string v0, "FreeBooks"

    sput-object v0, Lcom/amazon/kcp/library/FreeBookManager;->METRICS_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "inputStream"
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 128
    .local v0, buffer:[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 129
    .local v1, bytesRead:I
    :goto_0
    if-lez v1, :cond_0

    .line 132
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 138
    return-void
.end method

.method public static copyFreeBooksToLocation(Landroid/content/res/AssetManager;Lcom/amazon/kcp/library/IAndroidLibraryController;Ljava/lang/String;C)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 43
    if-nez p0, :cond_1

    move v0, v9

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    if-nez p1, :cond_2

    move v0, v9

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v9

    .line 58
    goto :goto_0

    .line 62
    :cond_3
    const/4 v0, 0x1

    .line 65
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/FreeBookManager;->FREE_BOOKS_ASSET_PATH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 66
    array-length v2, v1

    move v3, v0

    move v0, v9

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v4, v1, v0

    .line 68
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kcp/library/FreeBookManager;->FREE_BOOKS_ASSET_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 75
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v6, v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 79
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    invoke-static {v7, v5}, Lcom/amazon/kcp/library/FreeBookManager;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copy of file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "successful!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/FreeBookManager;->METRICS_CLASS_NAME:Ljava/lang/String;

    const-string v5, "CopyFreeBooksFailedExists"

    sget-object v6, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v9

    goto :goto_2

    .line 104
    :cond_5
    invoke-interface {p1}, Lcom/amazon/kcp/library/IAndroidLibraryController;->refreshBookDirectory()V

    move v0, v3

    .line 107
    :goto_3
    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/FreeBookManager;->METRICS_CLASS_NAME:Ljava/lang/String;

    const-string v3, "CopyFreeBooksSucceeded"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 97
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/FreeBookManager;->METRICS_CLASS_NAME:Ljava/lang/String;

    const-string v2, "CopyFreeBooksFailed"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-interface {p1}, Lcom/amazon/kcp/library/IAndroidLibraryController;->refreshBookDirectory()V

    move v0, v9

    .line 105
    goto :goto_3

    .line 104
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/IAndroidLibraryController;->refreshBookDirectory()V

    throw v0
.end method
