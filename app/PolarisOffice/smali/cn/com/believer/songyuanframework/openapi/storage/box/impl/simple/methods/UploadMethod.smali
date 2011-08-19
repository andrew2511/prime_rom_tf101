.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "UploadMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method

.method private toFileStatusList(Lorg/dom4j/Element;)Ljava/util/List;
    .locals 12
    .parameter "filesElm"

    .prologue
    .line 107
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v6, list:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v11

    if-lt v4, v11, :cond_0

    .line 136
    return-object v6

    .line 110
    :cond_0
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createUploadResult()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;

    move-result-object v10

    .line 111
    .local v10, uploadFileStatus:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object v9

    .line 112
    .local v9, soapFileInfo:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    invoke-interface {v10, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;->setFile(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;)V

    .line 113
    invoke-interface {p1, v4}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 114
    .local v1, fileElm:Lorg/dom4j/Element;
    const-string v11, "file_name"

    invoke-interface {v1, v11}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, fileName:Ljava/lang/String;
    invoke-interface {v9, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setFileName(Ljava/lang/String;)V

    .line 116
    const-string v11, "error"

    invoke-interface {v1, v11}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, errorStr:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 118
    :cond_1
    const-string v11, "id"

    invoke-interface {v1, v11}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, id:Ljava/lang/String;
    const-string v11, "folder_id"

    invoke-interface {v1, v11}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, folderId:Ljava/lang/String;
    const-string v11, "shared"

    invoke-interface {v1, v11}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, shared:Ljava/lang/String;
    const-string v11, "public_name"

    invoke-interface {v1, v11}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, publicName:Ljava/lang/String;
    invoke-interface {v9, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setFileId(Ljava/lang/String;)V

    .line 123
    invoke-interface {v9, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setFolderId(Ljava/lang/String;)V

    .line 124
    const-string v11, "1"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 125
    const/4 v11, 0x1

    invoke-interface {v9, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setShared(Z)V

    .line 129
    :goto_1
    invoke-interface {v9, v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setSharedName(Ljava/lang/String;)V

    .line 134
    .end local v3           #folderId:Ljava/lang/String;
    .end local v5           #id:Ljava/lang/String;
    .end local v7           #publicName:Ljava/lang/String;
    .end local v8           #shared:Ljava/lang/String;
    :goto_2
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .restart local v3       #folderId:Ljava/lang/String;
    .restart local v5       #id:Ljava/lang/String;
    .restart local v7       #publicName:Ljava/lang/String;
    .restart local v8       #shared:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setShared(Z)V

    goto :goto_1

    .line 132
    .end local v3           #folderId:Ljava/lang/String;
    .end local v5           #id:Ljava/lang/String;
    .end local v7           #publicName:Ljava/lang/String;
    .end local v8           #shared:Ljava/lang/String;
    :cond_3
    invoke-interface {v10, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;->setErrorInfo(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    .locals 24
    .parameter "uploadRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createUploadResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;

    move-result-object v20

    .line 50
    .local v20, uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;->getFolderId()Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, folderId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;->getDataMap()Ljava/util/Map;

    move-result-object v15

    .line 53
    .local v15, nameValueMap:Ljava/util/Map;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;->isAsFile()Z

    move-result v3

    .line 55
    .local v3, asFile:Z
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v21, urlBuff:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;->apiUploadUrlPrefix:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;->apiVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v22, "upload"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const/16 v17, 0x0

    .line 67
    .local v17, result:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v9, fileList:Ljava/util/List;
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 70
    .local v14, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doMultipartPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    .line 81
    .end local v9           #fileList:Ljava/util/List;
    .end local v14           #iterator:Ljava/util/Iterator;
    :goto_1
    const/4 v6, 0x0

    .line 83
    .local v6, doc:Lorg/dom4j/Document;
    :try_start_0
    invoke-static/range {v17 .. v17}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 90
    invoke-interface {v6}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 91
    .local v16, responseElm:Lorg/dom4j/Element;
    const-string v22, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 92
    .local v19, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v19 .. v19}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v18

    .line 93
    .local v18, status:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;->setStatus(Ljava/lang/String;)V

    .line 94
    const-string v22, "files"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v11

    .line 95
    .local v11, filesElm:Lorg/dom4j/Element;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;->toFileStatusList(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v10

    .line 96
    .local v10, fileStatusList:Ljava/util/List;
    move-object/from16 v0, v20

    move-object v1, v10

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;->setUploadResultList(Ljava/util/List;)V

    .line 97
    return-object v20

    .line 71
    .end local v6           #doc:Lorg/dom4j/Document;
    .end local v10           #fileStatusList:Ljava/util/List;
    .end local v11           #filesElm:Lorg/dom4j/Element;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusElm:Lorg/dom4j/Element;
    .restart local v9       #fileList:Ljava/util/List;
    .restart local v14       #iterator:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 73
    .local v8, entry:Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    .line 74
    .local v13, inFIle:Ljava/io/File;
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v8           #entry:Ljava/util/Map$Entry;
    .end local v9           #fileList:Ljava/util/List;
    .end local v13           #inFIle:Ljava/io/File;
    .end local v14           #iterator:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doMultipartPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 84
    .restart local v6       #doc:Lorg/dom4j/Document;
    :catch_0
    move-exception v7

    .line 85
    .local v7, e:Lorg/dom4j/DocumentException;
    new-instance v5, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 86
    const-string v22, "failed to parse to a document."

    .line 85
    move-object v0, v5

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .local v5, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface/range {v20 .. v20}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;->getStatus()Ljava/lang/String;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 88
    throw v5
.end method
