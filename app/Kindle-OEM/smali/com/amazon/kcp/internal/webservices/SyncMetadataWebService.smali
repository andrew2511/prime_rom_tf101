.class public Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "SyncMetadataWebService.java"


# instance fields
.field private primedRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 1
    .parameter "wc"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->primedRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 37
    return-void
.end method

.method private createProtoSyncMetadataRequest(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getSyncMetadataURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v0

    .line 45
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getSyncTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->getSyncURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {p1}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->getNewSyncMetadataDescriber(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    .line 49
    if-nez v2, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, p2, v4}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 59
    const-string v0, "text/xml"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    :cond_1
    move-object v0, v1

    .line 62
    goto :goto_0
.end method

.method public static getNewSyncMetadataDescriber(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v2, v6

    .line 134
    :goto_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 136
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/internal/MetaData;-><init>()V

    .line 197
    new-instance v2, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 199
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    .line 200
    if-nez v3, :cond_1

    move-object v0, v8

    .line 476
    :goto_1
    return-object v0

    .line 201
    :cond_1
    if-eqz v7, :cond_2

    const-string v4, "response"

    invoke-virtual {v3, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    .line 203
    :goto_2
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 204
    if-nez v5, :cond_3

    move-object v0, v8

    goto :goto_1

    :cond_2
    move v4, v6

    .line 201
    goto :goto_2

    .line 205
    :cond_3
    if-eqz v4, :cond_4

    const-string v4, "sync_time"

    invoke-virtual {v5, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v7

    .line 206
    :goto_3
    if-eqz v4, :cond_5

    new-instance v4, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$1;-><init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    invoke-virtual {v5, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v7

    .line 215
    :goto_4
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 216
    if-nez v5, :cond_6

    move-object v0, v8

    goto :goto_1

    :cond_4
    move v4, v6

    .line 205
    goto :goto_3

    :cond_5
    move v4, v6

    .line 206
    goto :goto_4

    .line 217
    :cond_6
    if-eqz v4, :cond_7

    const-string v4, "add_update_list"

    invoke-virtual {v5, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v7

    .line 218
    :goto_5
    if-eqz v4, :cond_8

    new-instance v4, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$2;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$2;-><init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    invoke-virtual {v5, v9, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v7

    .line 227
    :goto_6
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 228
    if-eqz v4, :cond_9

    const-string v4, "meta_data"

    invoke-virtual {v5, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v7

    .line 229
    :goto_7
    if-eqz v4, :cond_a

    new-instance v4, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;

    invoke-direct {v4, v1, v0, p0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/internal/MetaData;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    invoke-virtual {v5, v9, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v7

    .line 246
    :goto_8
    if-eqz v1, :cond_b

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$4;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$4;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v5, v6, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v7

    .line 256
    :goto_9
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 257
    if-nez v4, :cond_c

    move-object v0, v8

    goto/16 :goto_1

    :cond_7
    move v4, v6

    .line 217
    goto :goto_5

    :cond_8
    move v4, v6

    .line 218
    goto :goto_6

    :cond_9
    move v4, v6

    .line 228
    goto :goto_7

    :cond_a
    move v1, v6

    .line 229
    goto :goto_8

    :cond_b
    move v1, v6

    .line 246
    goto :goto_9

    .line 258
    :cond_c
    if-eqz v1, :cond_d

    const-string v1, "ASIN"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v7

    .line 259
    :goto_a
    if-eqz v1, :cond_e

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$5;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$5;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v7

    .line 268
    :goto_b
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 269
    if-nez v4, :cond_f

    move-object v0, v8

    goto/16 :goto_1

    :cond_d
    move v1, v6

    .line 258
    goto :goto_a

    :cond_e
    move v1, v6

    .line 259
    goto :goto_b

    .line 270
    :cond_f
    if-eqz v1, :cond_10

    const-string v1, "title"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v7

    .line 271
    :goto_c
    if-eqz v1, :cond_11

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$6;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$6;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v7

    .line 280
    :goto_d
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 281
    if-nez v4, :cond_12

    move-object v0, v8

    goto/16 :goto_1

    :cond_10
    move v1, v6

    .line 270
    goto :goto_c

    :cond_11
    move v1, v6

    .line 271
    goto :goto_d

    .line 282
    :cond_12
    if-eqz v1, :cond_13

    const-string v1, "publication_date"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v7

    .line 283
    :goto_e
    if-eqz v1, :cond_14

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$7;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$7;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v7

    .line 292
    :goto_f
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 293
    if-nez v4, :cond_15

    move-object v0, v8

    goto/16 :goto_1

    :cond_13
    move v1, v6

    .line 282
    goto :goto_e

    :cond_14
    move v1, v6

    .line 283
    goto :goto_f

    .line 294
    :cond_15
    if-eqz v1, :cond_16

    const-string v1, "cde_contenttype"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v7

    .line 295
    :goto_10
    if-eqz v1, :cond_17

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$8;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$8;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v7

    .line 304
    :goto_11
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 305
    if-nez v4, :cond_18

    move-object v0, v8

    goto/16 :goto_1

    :cond_16
    move v1, v6

    .line 294
    goto :goto_10

    :cond_17
    move v1, v6

    .line 295
    goto :goto_11

    .line 306
    :cond_18
    if-eqz v1, :cond_19

    const-string v1, "content_type"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v7

    .line 307
    :goto_12
    if-eqz v1, :cond_1a

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$9;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$9;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v7

    .line 316
    :goto_13
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 317
    if-nez v4, :cond_1b

    move-object v0, v8

    goto/16 :goto_1

    :cond_19
    move v1, v6

    .line 306
    goto :goto_12

    :cond_1a
    move v1, v6

    .line 307
    goto :goto_13

    .line 318
    :cond_1b
    if-eqz v1, :cond_1c

    const-string v1, "authors"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v7

    .line 319
    :goto_14
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 320
    if-nez v4, :cond_1d

    move-object v0, v8

    goto/16 :goto_1

    :cond_1c
    move v1, v6

    .line 318
    goto :goto_14

    .line 321
    :cond_1d
    if-eqz v1, :cond_1e

    const-string v1, "author"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v7

    .line 322
    :goto_15
    if-eqz v1, :cond_1f

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$10;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$10;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v7

    .line 331
    :goto_16
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 332
    if-nez v4, :cond_20

    move-object v0, v8

    goto/16 :goto_1

    :cond_1e
    move v1, v6

    .line 321
    goto :goto_15

    :cond_1f
    move v1, v6

    .line 322
    goto :goto_16

    .line 333
    :cond_20
    if-eqz v1, :cond_21

    const-string v1, "publishers"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v7

    .line 334
    :goto_17
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 335
    if-nez v4, :cond_22

    move-object v0, v8

    goto/16 :goto_1

    :cond_21
    move v1, v6

    .line 333
    goto :goto_17

    .line 336
    :cond_22
    if-eqz v1, :cond_23

    const-string v1, "publisher"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v7

    .line 337
    :goto_18
    if-eqz v1, :cond_24

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$11;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$11;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v7

    .line 347
    :goto_19
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 348
    if-nez v4, :cond_25

    move-object v0, v8

    goto/16 :goto_1

    :cond_23
    move v1, v6

    .line 336
    goto :goto_18

    :cond_24
    move v1, v6

    .line 337
    goto :goto_19

    .line 349
    :cond_25
    if-eqz v1, :cond_26

    const-string v1, "removal_list"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v7

    .line 351
    :goto_1a
    if-eqz v1, :cond_27

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$12;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$12;-><init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    invoke-virtual {v4, v9, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v7

    .line 360
    :goto_1b
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 361
    if-eqz v1, :cond_28

    const-string v1, "meta_data"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v7

    .line 362
    :goto_1c
    if-eqz v1, :cond_29

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$13;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$13;-><init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v9, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v7

    .line 371
    :goto_1d
    if-eqz v1, :cond_2a

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$14;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$14;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v6, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v7

    .line 381
    :goto_1e
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 382
    if-nez v5, :cond_2b

    move-object v0, v8

    goto/16 :goto_1

    :cond_26
    move v1, v6

    .line 349
    goto :goto_1a

    :cond_27
    move v1, v6

    .line 351
    goto :goto_1b

    :cond_28
    move v1, v6

    .line 361
    goto :goto_1c

    :cond_29
    move v1, v6

    .line 362
    goto :goto_1d

    :cond_2a
    move v1, v6

    .line 371
    goto :goto_1e

    .line 383
    :cond_2b
    if-eqz v1, :cond_2c

    const-string v1, "ASIN"

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v7

    .line 384
    :goto_1f
    if-eqz v1, :cond_2d

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$15;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$15;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v7

    .line 393
    :goto_20
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 394
    if-nez v4, :cond_2e

    move-object v0, v8

    goto/16 :goto_1

    :cond_2c
    move v1, v6

    .line 383
    goto :goto_1f

    :cond_2d
    move v1, v6

    .line 384
    goto :goto_20

    .line 395
    :cond_2e
    if-eqz v1, :cond_2f

    const-string v1, "cde_contenttype"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v7

    .line 396
    :goto_21
    if-eqz v1, :cond_30

    new-instance v1, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$16;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$16;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v7

    .line 406
    :goto_22
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 408
    if-nez v1, :cond_31

    move-object v0, v8

    goto/16 :goto_1

    :cond_2f
    move v1, v6

    .line 395
    goto :goto_21

    :cond_30
    move v0, v6

    .line 396
    goto :goto_22

    .line 409
    :cond_31
    if-eqz v0, :cond_32

    const-string v0, "annotation_sync_status"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    move v0, v7

    .line 410
    :goto_23
    if-eqz v0, :cond_33

    new-instance v0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$17;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$17;-><init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v7

    .line 428
    :goto_24
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 430
    if-nez v1, :cond_34

    move-object v0, v8

    goto/16 :goto_1

    :cond_32
    move v0, v6

    .line 409
    goto :goto_23

    :cond_33
    move v0, v6

    .line 410
    goto :goto_24

    .line 431
    :cond_34
    if-eqz v0, :cond_35

    const-string v0, "min_todo_item_request_interval"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v7

    .line 432
    :goto_25
    if-eqz v0, :cond_36

    new-instance v0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$18;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$18;-><init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v7

    .line 450
    :goto_26
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 452
    if-nez v1, :cond_37

    move-object v0, v8

    goto/16 :goto_1

    :cond_35
    move v0, v6

    .line 431
    goto :goto_25

    :cond_36
    move v0, v6

    .line 432
    goto :goto_26

    .line 453
    :cond_37
    if-eqz v0, :cond_38

    const-string v0, "min_sync_metadata_request_interval"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v7

    .line 454
    :goto_27
    if-eqz v0, :cond_39

    new-instance v0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$19;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$19;-><init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v7

    .line 471
    :goto_28
    if-nez v0, :cond_3a

    move-object v0, v8

    .line 473
    goto/16 :goto_1

    :cond_38
    move v0, v6

    .line 453
    goto :goto_27

    :cond_39
    move v0, v6

    .line 454
    goto :goto_28

    :cond_3a
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private getSyncURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "syncTime"
    .parameter "syncURL"

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?last_sync_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mobipocket/common/util/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method public createSyncMetadataRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 6
    .parameter "authenticationManager"
    .parameter "model"
    .parameter "statusTracker"

    .prologue
    .line 97
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getSyncMetadataURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v1

    .line 98
    .local v1, serviceURL:Lcom/amazon/foundation/internal/WebserviceURL;
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getSyncTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->getSyncURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, url:Ljava/lang/String;
    const-string v4, "GET"

    const-string v5, ""

    invoke-static {p1, v4, v3, v5}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;->generateSignedHeaders(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 102
    .local v2, signedHeaders:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->primedRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 103
    .local v0, request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->primedRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 105
    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->createProtoSyncMetadataRequest(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0, p3}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->setStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V

    .line 113
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addHeaders(Ljava/util/Hashtable;)V

    .line 116
    :cond_1
    return-object v0
.end method

.method public primeSyncMetadataRequest(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V
    .locals 1
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->primedRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->createProtoSyncMetadataRequest(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->primedRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->primedRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->prime()V

    .line 87
    :cond_0
    return-void
.end method
