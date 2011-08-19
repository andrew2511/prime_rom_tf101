.class public Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;
.super Lcom/amazon/kcp/library/models/internal/CLocalBookItem;
.source "CBookItemTopaz.java"


# static fields
.field public static final METRIC_CLASS_NAME:Ljava/lang/String; = "BookItemTopaz"


# instance fields
.field private annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

.field private asin:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private final baseLanguage:Ljava/lang/String;

.field private bookLength:Ljava/lang/String;

.field private coverCache:Lcom/amazon/system/drawing/Image;

.field private coverChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

.field private creationDate:J

.field private deviceInfo:Lcom/amazon/system/security/Security;

.field private fileName:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private imageFactoryExtended:Lcom/amazon/system/drawing/ImageFactoryExtended;

.field private inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

.field private isPidEncrypted:Z

.field private lastModificationDate:J

.field private final memorySize:J

.field private sample:Z

.field private saxFactory:Lcom/amazon/system/xml/SAXParserFactory;

.field private title:Ljava/lang/String;

.field private updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/kcp/application/ILocalStorage;J)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    .line 83
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->creationDate:J

    .line 91
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverCache:Lcom/amazon/system/drawing/Image;

    .line 117
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->isPidEncrypted:Z

    .line 150
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    .line 151
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->deviceInfo:Lcom/amazon/system/security/Security;

    .line 152
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    .line 153
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->imageFactoryExtended:Lcom/amazon/system/drawing/ImageFactoryExtended;

    .line 154
    move-wide/from16 v0, p9

    move-object v2, p0

    iput-wide v0, v2, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->memorySize:J

    .line 155
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileName:Ljava/lang/String;

    .line 157
    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v4, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->openFileInputStream(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/system/io/IFileInputStream;

    move-result-object v11

    .line 158
    if-nez v11, :cond_0

    .line 160
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " book."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    :cond_0
    :try_start_0
    new-instance v4, Lcom/amazon/topaz/TPZBook;

    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    iget-wide v6, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->memorySize:J

    invoke-direct {v4, v11, v5, v6, v7}, Lcom/amazon/topaz/TPZBook;-><init>(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;J)V

    .line 169
    const-string v5, "Title"

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->title:Ljava/lang/String;

    .line 170
    const-string v5, "ASIN"

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->asin:Ljava/lang/String;

    .line 171
    const-string v5, "Authors"

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->author:Ljava/lang/String;

    .line 172
    const-string v5, "Sample"

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->sample:Z

    .line 173
    const-string v5, "GUID"

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->guid:Ljava/lang/String;

    .line 174
    const-string v5, "bookLength"

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->bookLength:Ljava/lang/String;

    .line 175
    invoke-virtual {v4}, Lcom/amazon/topaz/TPZBook;->isPIDEncrypted()Z

    move-result v5

    iput-boolean v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->isPidEncrypted:Z

    .line 176
    const-string v5, "UpdateTime"

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->updateDate:Ljava/lang/String;

    .line 177
    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->METADATA_BASE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->baseLanguage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    const-string v5, "createTime"

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->creationDate:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->asin:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->guid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getBookType()I

    move-result v7

    invoke-virtual {v11}, Lcom/amazon/system/io/IFileInputStream;->getFileConnection()Lcom/amazon/system/io/IFileConnection;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/system/io/IFileConnection;->lastModified()J

    move-result-wide v9

    move-object v4, p0

    move-object v8, p1

    invoke-virtual/range {v4 .. v10}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->computeBookID(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->loadLocalBookState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    invoke-virtual {v11}, Lcom/amazon/system/io/IFileInputStream;->close()V

    .line 199
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->saxFactory:Lcom/amazon/system/xml/SAXParserFactory;

    .line 201
    new-instance v4, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    invoke-direct {v4}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;-><init>()V

    iput-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    .line 203
    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getSettingsFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/system/io/internal/FileSystemHelper;->getLastModifiedDate(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->lastModificationDate:J

    .line 204
    return-void

    .line 185
    :catch_0
    move-exception v4

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem parsing publication date of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v4

    invoke-virtual {v11}, Lcom/amazon/system/io/IFileInputStream;->close()V

    throw v4
.end method

.method private getEmbeddedCoverArt()[B
    .locals 6

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 658
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->openFileInputStream(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/system/io/IFileInputStream;

    move-result-object v1

    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->deviceInfo:Lcom/amazon/system/security/Security;

    iget-wide v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->memorySize:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/library/models/internal/CTPZBookBuilder;->build(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/security/Security;J)Lcom/amazon/topaz/TPZBook;

    move-result-object v2

    .line 662
    if-eqz v2, :cond_0

    .line 664
    invoke-virtual {v2}, Lcom/amazon/topaz/TPZBook;->getCoverArt()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/amazon/topaz/exception/DRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 683
    :cond_0
    if-eqz v1, :cond_1

    .line 685
    :try_start_1
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 694
    :cond_1
    :goto_0
    return-object v0

    .line 690
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 669
    :catch_1
    move-exception v2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " book due to DRM issue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    if-eqz v1, :cond_1

    .line 685
    :try_start_3
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 690
    :catch_2
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 673
    :catch_3
    move-exception v2

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " book."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 683
    if-eqz v1, :cond_1

    .line 685
    :try_start_5
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 690
    :catch_4
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 677
    :catch_5
    move-exception v2

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " book."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 683
    if-eqz v1, :cond_1

    .line 685
    :try_start_7
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 690
    :catch_6
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 681
    :catchall_0
    move-exception v0

    .line 683
    if-eqz v1, :cond_2

    .line 685
    :try_start_8
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 691
    :cond_2
    :goto_1
    throw v0

    .line 690
    :catch_7
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getTopazBookInstance()Lcom/amazon/topaz/TPZBook;
    .locals 6

    .prologue
    .line 614
    const/4 v0, 0x0

    .line 615
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->openFileInputStream(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/system/io/IFileInputStream;

    move-result-object v1

    .line 618
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->deviceInfo:Lcom/amazon/system/security/Security;

    iget-wide v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->memorySize:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/library/models/internal/CTPZBookBuilder;->build(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/security/Security;J)Lcom/amazon/topaz/TPZBook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/amazon/topaz/exception/DRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 636
    if-eqz v1, :cond_0

    .line 638
    :try_start_1
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 647
    :cond_0
    :goto_0
    return-object v0

    .line 643
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 622
    :catch_1
    move-exception v2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " book due to DRM issue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 636
    if-eqz v1, :cond_0

    .line 638
    :try_start_3
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 643
    :catch_2
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 626
    :catch_3
    move-exception v2

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " book."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 636
    if-eqz v1, :cond_0

    .line 638
    :try_start_5
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 643
    :catch_4
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 630
    :catch_5
    move-exception v2

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " book."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 636
    if-eqz v1, :cond_0

    .line 638
    :try_start_7
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 643
    :catch_6
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 634
    :catchall_0
    move-exception v0

    .line 636
    if-eqz v1, :cond_1

    .line 638
    :try_start_8
    invoke-virtual {v1}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 644
    :cond_1
    :goto_1
    throw v0

    .line 643
    :catch_7
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private refreshLastModificationDate()V
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getSettingsFileName()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, mbpFilename:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->getLastModifiedDate(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->lastModificationDate:J

    .line 260
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->lastReadDateChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    invoke-virtual {v1, p0}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 261
    return-void
.end method

.method private replaceLPRinAnnotations(ILjava/util/Vector;)V
    .locals 10
    .parameter "lprPosition"
    .parameter "tpzAnnotation"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 351
    if-eqz p2, :cond_0

    .line 353
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move v3, p1

    move v4, p1

    move v5, p1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    .line 356
    .local v0, lprAnnotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 358
    invoke-virtual {p2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 360
    .local v8, annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 363
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->setAnnotationAction(I)V

    .line 364
    invoke-virtual {p2, v0, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 372
    .end local v0           #lprAnnotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    .end local v8           #annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    .end local v9           #i:I
    :cond_0
    :goto_1
    return-void

    .line 356
    .restart local v0       #lprAnnotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    .restart local v8       #annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    .restart local v9       #i:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 370
    .end local v8           #annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public createDocument()Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 211
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->deviceInfo:Lcom/amazon/system/security/Security;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->imageFactoryExtended:Lcom/amazon/system/drawing/ImageFactoryExtended;

    iget-object v6, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v7, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->saxFactory:Lcom/amazon/system/xml/SAXParserFactory;

    iget-wide v8, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->memorySize:J

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;-><init>(Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/xml/SAXParserFactory;J)V

    .line 212
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->getDocumentCloseEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->closeDocumentCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->openBook(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/amazon/topaz/exception/DRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 246
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 222
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 223
    const-string v2, "reason"

    const-string v3, "InvalidPID"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v2, "BookItemTopaz"

    const-string v3, "DocumentOpenFailed"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    :cond_0
    move-object v0, v10

    .line 243
    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open book because of RuntimeException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_1

    .line 237
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 238
    const-string v3, "reason"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "BookItemTopaz"

    const-string v3, "DocumentOpenFailed"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    :cond_1
    move-object v0, v10

    .line 242
    goto :goto_0
.end method

.method public getAmzGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->guid:Ljava/lang/String;

    return-object v0
.end method

.method protected getAmznUserLocationFromPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 563
    invoke-static {p1}, Lcom/amazon/kcp/reader/models/internal/CTPZUserLocation;->getAmznUserLocationFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->baseLanguage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->baseLanguage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "de-DE"

    .line 730
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBookFurthestLocation()I
    .locals 2

    .prologue
    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->bookLength:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getAmznUserLocationFromPosition(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 554
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBookType()I
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->isSample()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCover()Lcom/amazon/system/drawing/Image;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverCache:Lcom/amazon/system/drawing/Image;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCreationDate()J
    .locals 2

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->creationDate:J

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->lastModificationDate:J

    return-wide v0
.end method

.method public getEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
    .locals 4
    .parameter "imageFactory"
    .parameter "maxDimensions"

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, embeddedCover:Lcom/amazon/system/drawing/Image;
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getEmbeddedCoverArt()[B

    move-result-object v1

    .line 461
    .local v1, imageData:[B
    if-eqz v1, :cond_0

    .line 463
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->imageFactoryExtended:Lcom/amazon/system/drawing/ImageFactoryExtended;

    const/4 v3, 0x2

    invoke-interface {v2, v1, p2, v3}, Lcom/amazon/system/drawing/ImageFactoryExtended;->getImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 466
    :cond_0
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
    .locals 4
    .parameter "imageFactory"
    .parameter "maxDimensions"

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, embeddedCover:Lcom/amazon/system/drawing/Image;
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getEmbeddedCoverArt()[B

    move-result-object v1

    .line 474
    .local v1, imageData:[B
    if-eqz v1, :cond_0

    .line 476
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->imageFactoryExtended:Lcom/amazon/system/drawing/ImageFactoryExtended;

    const/4 v3, 0x3

    invoke-interface {v2, v1, p2, v3}, Lcom/amazon/system/drawing/ImageFactoryExtended;->getImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 479
    :cond_0
    return-object v0
.end method

.method public getLocalBookItemCoverChangeEvent()Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsFileName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileName:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mbp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCurrentLocation()I
    .locals 3

    .prologue
    .line 538
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->getLastPositionRead(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)I

    move-result v0

    .line 539
    .local v0, position:I
    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZUserLocation;->getAmznUserLocationFromPosition(I)I

    move-result v1

    return v1
.end method

.method public getWatermark()Ljava/lang/String;
    .locals 3

    .prologue
    .line 579
    const/4 v1, 0x0

    .line 585
    .local v1, watermark:Ljava/lang/String;
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getTopazBookInstance()Lcom/amazon/topaz/TPZBook;

    move-result-object v0

    .line 587
    .local v0, book:Lcom/amazon/topaz/TPZBook;
    if-eqz v0, :cond_0

    .line 589
    const-string v2, "thumbnail"

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    :cond_0
    return-object v1
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->isPidEncrypted:Z

    return v0
.end method

.method public isSample()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->sample:Z

    return v0
.end method

.method public loadCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
    .locals 3
    .parameter "imageFactory"
    .parameter "dimensionMax"

    .prologue
    .line 442
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverCache:Lcom/amazon/system/drawing/Image;

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/amazon/system/drawing/Dimension;->height:I

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverCache:Lcom/amazon/system/drawing/Image;

    invoke-interface {v2}, Lcom/amazon/system/drawing/Image;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p2, Lcom/amazon/system/drawing/Dimension;->width:I

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverCache:Lcom/amazon/system/drawing/Image;

    invoke-interface {v2}, Lcom/amazon/system/drawing/Image;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->deSerializeCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 447
    .local v0, embeddedCover:Lcom/amazon/system/drawing/Image;
    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->setCover(Lcom/amazon/system/drawing/Image;)V

    .line 453
    .end local v0           #embeddedCover:Lcom/amazon/system/drawing/Image;
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverCache:Lcom/amazon/system/drawing/Image;

    return-object v1
.end method

.method protected onBookClose()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->onBookClose()V

    .line 253
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->refreshLastModificationDate()V

    .line 254
    return-void
.end method

.method protected replaceAnnotationFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "sourceFileName"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getSettingsFileName()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, mbpFilename:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v2, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectFileNameWithExtension(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    const/4 v3, 0x1

    invoke-static {v2, p1, v0, v3}, Lcom/amazon/system/io/internal/FileSystemHelper;->rename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 493
    .local v1, ok:Z
    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->setNowAsLastReadDate()Z

    move-result v1

    .line 497
    :cond_0
    return v1
.end method

.method public setAnnotationFile(Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 381
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v1, :cond_0

    .line 426
    :goto_0
    return v0

    .line 387
    :cond_0
    if-eqz p2, :cond_1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->getLastPositionRead(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->readAnnotations(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)Ljava/util/Vector;

    move-result-object v1

    .line 398
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->replaceLPRinAnnotations(ILjava/util/Vector;)V

    .line 401
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 402
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->writeAnnotations(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;[Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    .line 412
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->replaceAnnotationFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->replaceAnnotationFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCover(Lcom/amazon/system/drawing/Image;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverCache:Lcom/amazon/system/drawing/Image;

    .line 530
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->coverChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 531
    return-void
.end method

.method public setNowAsLastReadDate()Z
    .locals 3

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->getSettingsFileName()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, mbpFilename:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v2, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->setLastModifiedDateAsNow(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    .line 508
    .local v1, ret:Z
    if-eqz v1, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;->refreshLastModificationDate()V

    .line 513
    :cond_0
    return v1
.end method

.method public supportsDictionaryCapability()Z
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    return v0
.end method
