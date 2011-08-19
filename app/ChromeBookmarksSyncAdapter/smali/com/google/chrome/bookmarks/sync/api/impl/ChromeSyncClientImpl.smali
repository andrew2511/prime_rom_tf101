.class public Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;
.super Ljava/lang/Object;
.source "ChromeSyncClientImpl.java"

# interfaces
.implements Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBaseUrl:Ljava/lang/String;

.field private final mHttpClientFactory:Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;

.field private final mProtocolVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;I)V
    .locals 1
    .parameter "httpClientFactory"
    .parameter "protocolVersion"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "http client factory must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "https://clients4.google.com/chrome-sync/command?client=55555"

    iput-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->mBaseUrl:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->mHttpClientFactory:Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;

    .line 57
    iput p2, p0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->mProtocolVersion:I

    .line 58
    return-void
.end method

.method private constructCommitRequest(Ljava/lang/String;Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
    .locals 2
    .parameter "accountName"
    .parameter "dataType"
    .parameter "commitMessage"

    .prologue
    .line 203
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setShare(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->COMMIT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setMessageContents(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->mProtocolVersion:I

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setProtocolVersion(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v0

    return-object v0
.end method

.method private constructUpdateRequest(Ljava/lang/String;Ljava/lang/Long;I[B)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
    .locals 5
    .parameter "accountName"
    .parameter "clientVersion"
    .parameter "batchSize"
    .parameter "progressMarkerToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 178
    sget-object v3, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->BOOKMARKS:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    invoke-static {v3}, Lcom/google/chrome/bookmarks/sync/api/impl/DataTypeTranslator;->translateDataTypeToEntitySpecifics(Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    .line 180
    .local v0, entitySpecifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setRequestedTypes(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setBatchSize(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v2

    .line 183
    .local v2, updatesBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v1

    .line 185
    .local v1, progressMarkerBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    if-eqz p2, :cond_1

    .line 186
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setTimestampTokenForMigration(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    .line 190
    :cond_0
    :goto_0
    const v3, 0x8088

    invoke-virtual {v1, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setDataTypeId(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    .line 191
    invoke-virtual {v2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->addFromProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    .line 193
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setShare(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->GET_UPDATES:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    invoke-virtual {v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setMessageContents(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->mProtocolVersion:I

    invoke-virtual {v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setProtocolVersion(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v3

    return-object v3

    .line 187
    :cond_1
    if-eqz p4, :cond_0

    .line 188
    invoke-static {p4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setToken(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    goto :goto_0
.end method


# virtual methods
.method public getServerUpdates(Lcom/google/chrome/bookmarks/sync/api/AuthInfo;Ljava/lang/Long;Ljava/lang/String;I[B)Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;
    .locals 18
    .parameter "accountInfo"
    .parameter "clientVersion"
    .parameter "clientGuid"
    .parameter "batchSize"
    .parameter "progressMarkerToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v15, "Account info must not be null"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v15, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 69
    sget-object v15, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getServerUpdates for account "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->mBaseUrl:Ljava/lang/String;

    move-object v15, v0

    invoke-direct {v11, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 73
    .local v11, post:Lorg/apache/http/client/methods/HttpPost;
    const/4 v6, 0x0

    .line 75
    .local v6, authToken:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAuthToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, accountName:Ljava/lang/String;
    const-string v15, "Authorization"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "GoogleLogin auth="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v15, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->constructUpdateRequest(Ljava/lang/String;Ljava/lang/Long;I[B)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->toByteArray()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v11, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->mHttpClientFactory:Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;

    move-object v15, v0

    invoke-interface {v15}, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;->createNewHttpClient()Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v8

    .line 90
    .local v8, httpClient:Lcom/google/android/common/http/GoogleHttpClient;
    :try_start_1
    invoke-virtual {v8, v11}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 92
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 93
    .local v14, statusLine:Lorg/apache/http/StatusLine;
    sget-object v15, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 94
    sget-object v15, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 97
    new-instance v15, Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;-><init>(Ljava/lang/String;I)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #statusLine:Lorg/apache/http/StatusLine;
    :catchall_0
    move-exception v15

    invoke-virtual {v8}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    throw v15

    .line 76
    .end local v5           #accountName:Ljava/lang/String;
    .end local v8           #httpClient:Lcom/google/android/common/http/GoogleHttpClient;
    :catch_0
    move-exception v10

    .line 77
    .local v10, oce:Landroid/accounts/OperationCanceledException;
    const-string v9, "Looks like the user canceled an authentication request"

    .line 78
    .local v9, msg:Ljava/lang/String;
    sget-object v15, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 79
    sget-object v15, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v15, v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_2
    new-instance v15, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v15, v9, v10}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 100
    .end local v9           #msg:Ljava/lang/String;
    .end local v10           #oce:Landroid/accounts/OperationCanceledException;
    .restart local v5       #accountName:Ljava/lang/String;
    .restart local v8       #httpClient:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #statusLine:Lorg/apache/http/StatusLine;
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v12

    .line 101
    .local v12, registry:Lcom/google/protobuf/ExtensionRegistryLite;
    sget-object v15, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v12, v15}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 103
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15, v12}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v7

    .line 106
    .local v7, clientToServerResponse:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    new-instance v15, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;

    invoke-direct {v15, v7}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-virtual {v8}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    return-object v15
.end method

.method public declared-synchronized postLocalCommits(Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;Ljava/util/List;ZLcom/google/chrome/bookmarks/sync/api/AuthInfo;Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;
    .locals 21
    .parameter "dataType"
    .parameter
    .parameter "syncProblemDetected"
    .parameter "accountInfo"
    .parameter "clientGuid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;",
            ">;Z",
            "Lcom/google/chrome/bookmarks/sync/api/AuthInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;
        }
    .end annotation

    .prologue
    .line 119
    .local p2, commitItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;>;"
    monitor-enter p0

    :try_start_0
    const-string v18, "Data type must not be null"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v18, "Commit items must not be null"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v18, "Account info must not be null"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v18, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 123
    sget-object v18, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "postLocalCommits for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " and account "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->setCacheGuid(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v6

    .line 128
    .local v6, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    .line 129
    .local v8, commitItem:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    invoke-virtual {v8}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getSyncEntity()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v9

    .line 130
    .local v9, entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    if-nez v9, :cond_1

    .line 131
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "A syncable item has a null constituent entity.  Ignoring."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v6           #builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .end local v8           #commitItem:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .end local v9           #entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .end local v11           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 134
    .restart local v6       #builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .restart local v8       #commitItem:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .restart local v9       #entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v6, v9}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    goto :goto_0

    .line 137
    .end local v8           #commitItem:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .end local v9           #entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :cond_2
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->mBaseUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .local v14, post:Lorg/apache/http/client/methods/HttpPost;
    const/4 v5, 0x0

    .line 140
    .local v5, authToken:Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAuthToken()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 146
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, accountName:Ljava/lang/String;
    const-string v18, "Authorization"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GoogleLogin auth="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v18, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->constructCommitRequest(Ljava/lang/String;Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->toByteArray()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->mHttpClientFactory:Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;->createNewHttpClient()Lcom/google/android/common/http/GoogleHttpClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 153
    .local v10, httpClient:Lcom/google/android/common/http/GoogleHttpClient;
    :try_start_4
    invoke-virtual {v10, v14}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 155
    .local v16, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    .line 156
    .local v17, statusLine:Lorg/apache/http/StatusLine;
    sget-object v18, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 157
    sget-object v18, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 160
    new-instance v18, Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;-><init>(Ljava/lang/String;I)V

    throw v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #statusLine:Lorg/apache/http/StatusLine;
    :catchall_1
    move-exception v18

    :try_start_5
    invoke-virtual {v10}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    throw v18

    .line 141
    .end local v4           #accountName:Ljava/lang/String;
    .end local v10           #httpClient:Lcom/google/android/common/http/GoogleHttpClient;
    :catch_0
    move-exception v13

    .line 142
    .local v13, oce:Landroid/accounts/OperationCanceledException;
    const-string v12, "Looks like the user canceled an authentication request"

    .line 143
    .local v12, msg:Ljava/lang/String;
    sget-object v18, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v12

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    new-instance v18, Lcom/google/wireless/gdata2/client/AuthenticationException;

    move-object/from16 v0, v18

    move-object v1, v12

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    .end local v12           #msg:Ljava/lang/String;
    .end local v13           #oce:Landroid/accounts/OperationCanceledException;
    .restart local v4       #accountName:Ljava/lang/String;
    .restart local v10       #httpClient:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v16       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #statusLine:Lorg/apache/http/StatusLine;
    :cond_4
    :try_start_6
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v15

    .line 164
    .local v15, registry:Lcom/google/protobuf/ExtensionRegistryLite;
    sget-object v18, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 166
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v7

    .line 168
    .local v7, clientToServerResponse:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    new-instance v18, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 170
    :try_start_7
    invoke-virtual {v10}, Lcom/google/android/common/http/GoogleHttpClient;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v18
.end method
