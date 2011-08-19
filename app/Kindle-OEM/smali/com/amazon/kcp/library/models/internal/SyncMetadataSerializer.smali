.class public Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;
.super Ljava/lang/Object;
.source "SyncMetadataSerializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

.field private path:Ljava/lang/String;

.field private syncMetadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)V
    .locals 0
    .parameter "syncMetadata"
    .parameter "fileConnection"
    .parameter "path"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->syncMetadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    .line 35
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 36
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->path:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 43
    invoke-static {}, Lcom/amazon/foundation/internal/TaskManager;->getInstance()Lcom/amazon/foundation/internal/TaskManager;

    move-result-object v0

    const-string v1, "SyncMetadataSerializer"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/foundation/internal/TaskManager;->createTaskControl(Ljava/lang/String;I)Lcom/amazon/foundation/internal/TaskManager$TaskControl;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->start()V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->path:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->end()V

    .line 141
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->syncMetadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v3

    .line 57
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->yield()V

    .line 59
    const-string v0, "<response>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<sync_time>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->syncMetadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getSyncTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</sync_time>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 63
    const-string v0, "<add_update_list>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v4

    move v5, v8

    .line 67
    :goto_1
    if-ge v5, v4, :cond_3

    .line 69
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->yield()V

    .line 70
    const-string v0, "<meta_data>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<ASIN>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "</ASIN>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<title>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "</title>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 79
    const-string v0, "<authors>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    move v6, v8

    .line 80
    :goto_2
    invoke-virtual {v3, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAuthors()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<author>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAuthors()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "</author>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 81
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 87
    :cond_1
    const-string v0, "</authors>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 89
    const-string v0, "<publishers>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    move v6, v8

    .line 90
    :goto_3
    invoke-virtual {v3, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getPublishers()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 93
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->yield()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<publisher>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getPublishers()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "</publisher>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 91
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    .line 99
    :cond_2
    const-string v0, "</publishers>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<publication_date>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "</publication_date>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<cde_contenttype>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getCdeContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "</cde_contenttype>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<content_type>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "</content_type>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 111
    const-string v0, "</meta_data>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 67
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    .line 114
    :cond_3
    const-string v0, "</add_update_list>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 115
    const-string v0, "</response>"

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataSerializer;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 139
    :goto_4
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->end()V

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 133
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 139
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->end()V

    throw v0

    :catch_1
    move-exception v0

    .line 123
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 131
    :catch_2
    move-exception v0

    .line 133
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 127
    :catchall_1
    move-exception v0

    .line 129
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 134
    :goto_5
    :try_start_8
    throw v0

    .line 131
    :catch_3
    move-exception v2

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5
.end method
