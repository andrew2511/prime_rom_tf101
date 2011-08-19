.class public Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;
.super Ljava/lang/Object;
.source "AndroidFileFactory.java"

# interfaces
.implements Lcom/amazon/system/io/IFileConnectionFactory;


# instance fields
.field private pathDescriptor:Lcom/amazon/system/io/IPathDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/system/io/IPathDescriptor;

    .line 32
    new-instance v5, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;

    invoke-direct {v5, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/system/io/IPathDescriptor;

    .line 35
    iget-object v5, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/system/io/IPathDescriptor;

    invoke-interface {v5}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, repoOrig:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 38
    .local v3, path:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectory(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/system/io/IPathDescriptor;

    invoke-interface {v5}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectory(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private createDirectory(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    .line 102
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->getFileSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 107
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 108
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 110
    :cond_0
    :try_start_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->getFileSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    if-lez v2, :cond_0

    .line 117
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating directory "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "FileFactory"

    const-string v3, "MkDirFailed_ret_false"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v6, p1

    .line 132
    :goto_1
    invoke-virtual {v5}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "FileFactory"

    const-string v2, "MkDirFailed_SecurEx"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v6, v1

    goto :goto_1
.end method


# virtual methods
.method public avaliableSizeForPath(Ljava/lang/String;)J
    .locals 4
    .parameter

    .prologue
    .line 48
    const-wide/16 v0, -0x1

    .line 49
    const/4 v2, 0x0

    .line 53
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 64
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 66
    int-to-long v2, v0

    int-to-long v0, v1

    mul-long/2addr v0, v2

    .line 70
    :cond_0
    :goto_0
    return-wide v0

    .line 55
    :catch_0
    move-exception v3

    .line 57
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-eqz v2, :cond_0

    .line 63
    throw v2

    move-result v0

    .line 64
    throw v2

    move-result v1

    .line 66
    int-to-long v2, v0

    int-to-long v0, v1

    mul-long/2addr v0, v2

    .line 67
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 63
    throw v2

    .line 64
    throw v2

    .line 66
    :cond_1
    throw v0
.end method

.method public getFileSeparator()C
    .locals 1

    .prologue
    .line 76
    sget-char v0, Ljava/io/File;->separatorChar:C

    return v0
.end method

.method public getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/system/io/IPathDescriptor;

    return-object v0
.end method

.method public openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    new-instance v0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;

    invoke-direct {v0, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
