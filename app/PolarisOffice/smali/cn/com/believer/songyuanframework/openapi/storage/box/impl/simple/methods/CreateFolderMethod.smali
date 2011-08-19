.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "CreateFolderMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public createFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    .locals 31
    .parameter "createFolderRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createCreateFolderResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;

    move-result-object v10

    .line 54
    .local v10, createFolderResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->getFolderName()Ljava/lang/String;

    move-result-object v15

    .line 57
    .local v15, name:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->getParentFolderId()Ljava/lang/String;

    move-result-object v17

    .line 58
    .local v17, parentFolderId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->isShare()Z

    move-result v22

    .line 60
    .local v22, share:Z
    const-string v28, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 62
    new-instance v9, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v9}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 63
    .local v9, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v28, "ISO-8859-1"

    move-object v0, v9

    move-object v1, v15

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 65
    const-string v28, "create_folder"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    .line 66
    .local v27, urlBuff:Ljava/lang/StringBuffer;
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v28, "api_key"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    move-object/from16 v0, v27

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v28, "auth_token"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v28, "parent_id"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v28, "name"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    move-object/from16 v0, v27

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v28, "share"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    if-eqz v22, :cond_1

    .line 86
    const-string v28, "1"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 92
    .local v11, doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v20

    .line 94
    .local v20, responseElm:Lorg/dom4j/Element;
    const-string v28, "status"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v26

    .line 95
    .local v26, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v26 .. v26}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v25

    .line 96
    .local v25, status:Ljava/lang/String;
    move-object v0, v10

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->setStatus(Ljava/lang/String;)V

    .line 97
    const-string v28, "create_ok"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 99
    const-string v28, "folder"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 101
    .local v14, folderElm:Lorg/dom4j/Element;
    invoke-static {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toBoxFolder(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    move-result-object v24

    .line 102
    .local v24, soapFolder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    move-object v0, v10

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->setFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v14           #folderElm:Lorg/dom4j/Element;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v24           #soapFolder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .end local v25           #status:Ljava/lang/String;
    .end local v26           #statusElm:Lorg/dom4j/Element;
    .end local v27           #urlBuff:Ljava/lang/StringBuffer;
    :cond_0
    :goto_1
    return-object v10

    .line 88
    .restart local v9       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v27       #urlBuff:Ljava/lang/StringBuffer;
    :cond_1
    const-string v28, "0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 104
    :catch_0
    move-exception v28

    move-object/from16 v13, v28

    .line 105
    .local v13, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 106
    const-string v28, "failed to parse to a document."

    .line 105
    move-object v0, v8

    move-object/from16 v1, v28

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->getStatus()Ljava/lang/String;

    move-result-object v28

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 108
    throw v8

    .line 111
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v27           #urlBuff:Ljava/lang/StringBuffer;
    :cond_2
    const-string v28, "xml"

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 113
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v12

    .line 115
    .local v12, document:Lorg/dom4j/Document;
    const-string v28, "request"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 116
    .local v19, requestElm:Lorg/dom4j/Element;
    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 119
    const-string v28, "action"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 121
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v28, "api_key"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 123
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v28, "auth_token"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 125
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v28, "parent_id"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 127
    .local v18, parentIdElm:Lorg/dom4j/Element;
    const-string v28, "name"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 129
    .local v16, nameElm:Lorg/dom4j/Element;
    const-string v28, "share"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 130
    .local v23, shareElm:Lorg/dom4j/Element;
    move-object/from16 v0, v19

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 131
    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 132
    move-object/from16 v0, v19

    move-object v1, v7

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 133
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 134
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 135
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 137
    const-string v28, "create_folder"

    move-object v0, v3

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 138
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 139
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 142
    if-eqz v22, :cond_3

    .line 143
    const-string v28, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 147
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-interface {v12}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 150
    .local v21, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v21 .. v21}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 151
    .restart local v11       #doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v20

    .line 153
    .restart local v20       #responseElm:Lorg/dom4j/Element;
    const-string v28, "status"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v26

    .line 154
    .restart local v26       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v26 .. v26}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v25

    .line 155
    .restart local v25       #status:Ljava/lang/String;
    move-object v0, v10

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->setStatus(Ljava/lang/String;)V

    .line 156
    const-string v28, "create_ok"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 158
    const-string v28, "folder"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 160
    .restart local v14       #folderElm:Lorg/dom4j/Element;
    invoke-static {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toBoxFolder(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    move-result-object v24

    .line 161
    .restart local v24       #soapFolder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    move-object v0, v10

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->setFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 163
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v14           #folderElm:Lorg/dom4j/Element;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v24           #soapFolder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .end local v25           #status:Ljava/lang/String;
    .end local v26           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v28

    move-object/from16 v13, v28

    .line 164
    .restart local v13       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 165
    const-string v28, "failed to parse to a document."

    .line 164
    move-object v0, v8

    move-object/from16 v1, v28

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->getStatus()Ljava/lang/String;

    move-result-object v28

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 167
    throw v8

    .line 145
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v21           #result:Ljava/lang/String;
    :cond_3
    const-string v28, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 170
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v12           #document:Lorg/dom4j/Document;
    .end local v16           #nameElm:Lorg/dom4j/Element;
    .end local v18           #parentIdElm:Lorg/dom4j/Element;
    .end local v19           #requestElm:Lorg/dom4j/Element;
    .end local v23           #shareElm:Lorg/dom4j/Element;
    :cond_4
    const-string v28, "soap"

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
