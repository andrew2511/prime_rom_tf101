.class public Lcom/amazon/kcp/library/models/internal/SyncMetadata;
.super Ljava/lang/Object;
.source "SyncMetadata.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/ISyncMetadata;


# instance fields
.field private annotationSyncStatus:Z

.field private fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

.field private resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

.field private syncMetadataRequestInterval:I

.field private syncTime:Ljava/lang/String;

.field private todoItemRequestInterval:I


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IFileConnectionFactory;)V
    .locals 1
    .parameter "fileConnection"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    .line 40
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 42
    return-void
.end method


# virtual methods
.method public deSerializeMetaData(Ljava/lang/String;Lcom/amazon/system/drawing/ImageFactory;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->openFileInputStream(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/system/io/IFileInputStream;

    move-result-object v0

    .line 142
    invoke-static {p0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->getNewSyncMetadataDescriber(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    new-instance v2, Lcom/amazon/foundation/internal/parser/xml/SAXParser;

    invoke-direct {v2, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;-><init>(Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;)V

    .line 150
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->size()J

    move-result-wide v3

    .line 154
    long-to-int v1, v3

    new-array v1, v1, [B

    .line 158
    const/4 v5, 0x0

    long-to-int v3, v3

    invoke-virtual {v0, v1, v5, v3}, Lcom/amazon/system/io/IFileInputStream;->read([BII)I

    .line 160
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->initialize()Z

    .line 161
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->write([C)I

    .line 162
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->close()Z

    .line 164
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->get_parse_error()I

    move-result v1

    if-lez v1, :cond_0

    .line 168
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "SyncMetadata"

    const-string v3, "DeserializeMetaDataFailure"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 169
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v0, 0x0

    .line 171
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->empty(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_0
    if-eqz v0, :cond_1

    .line 185
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 177
    if-eqz v0, :cond_1

    .line 185
    :try_start_3
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 183
    :goto_1
    if-eqz v1, :cond_2

    .line 185
    :try_start_4
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 190
    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2

    .line 181
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public empty(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->empty()V

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    .line 121
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 125
    :cond_0
    return-void
.end method

.method public getAnnotationSyncStatus()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    return v0
.end method

.method public getMinSyncMetadataRequestIntervalMinutes()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncMetadataRequestInterval:I

    return v0
.end method

.method public getMinTodoItemRequestIntervalMinutes()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->todoItemRequestInterval:I

    return v0
.end method

.method public getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getSyncTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/amazon/kcp/library/models/internal/IMetadata;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getCdeContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 98
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getCdeContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getCdeContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->remove(I)V

    .line 108
    :cond_0
    return-void

    .line 95
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public serializeMetaData(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-direct {v1, p0, v2, p1}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;-><init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    .local v0, serializeThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method public setAnnotationSyncStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 66
    if-ne v0, p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    .line 68
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinSyncMetadataRequestInterval(I)V
    .locals 0
    .parameter "intervalInMinutes"

    .prologue
    .line 72
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncMetadataRequestInterval:I

    .line 73
    return-void
.end method

.method public setMinTodoItemRequestInterval(I)V
    .locals 0
    .parameter "intervalInMinutes"

    .prologue
    .line 77
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->todoItemRequestInterval:I

    .line 78
    return-void
.end method

.method public setSyncTime(Ljava/lang/String;)V
    .locals 0
    .parameter "syncTime"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    .line 83
    return-void
.end method
