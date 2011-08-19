.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "AddToMyBoxMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public addToMyBox(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;
    .locals 34
    .parameter "addToMyBoxRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createAddToMyBoxResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;

    move-result-object v4

    .line 50
    .local v4, addToMyBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getApiKey()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getFileId()Ljava/lang/String;

    move-result-object v14

    .line 53
    .local v14, fileId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getPublicName()Ljava/lang/String;

    move-result-object v19

    .line 54
    .local v19, publicName:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getFolderId()Ljava/lang/String;

    move-result-object v16

    .line 55
    .local v16, folderId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getTags()[Ljava/lang/String;

    move-result-object v28

    .line 57
    .local v28, tags:[Ljava/lang/String;
    const-string v31, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 59
    new-instance v10, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v10}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 60
    .local v10, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v31, "ISO-8859-1"

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 61
    if-eqz v28, :cond_0

    .line 62
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v18

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    .line 69
    .end local v18           #i:I
    :cond_0
    const-string v31, "add_to_mybox"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 70
    .local v30, urlBuff:Ljava/lang/StringBuffer;
    const-string v31, "&"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v31, "api_key"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v31, "="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v31, "&"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v31, "auth_token"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v31, "="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    move-object/from16 v0, v30

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v31, "&"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v31, "file_id"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v31, "="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    move-object/from16 v0, v30

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v31, "&"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v31, "public_name"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v31, "="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v31, "&"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v31, "folder_id"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v31, "="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    if-nez v28, :cond_3

    .line 91
    const-string v31, "&"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v31, "tags[]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v31, "="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 105
    .local v11, doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v22

    .line 107
    .local v22, responseElm:Lorg/dom4j/Element;
    const-string v31, "status"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v25

    .line 108
    .local v25, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v25 .. v25}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v24

    .line 109
    .local v24, status:Ljava/lang/String;
    move-object v0, v4

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v22           #responseElm:Lorg/dom4j/Element;
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #statusElm:Lorg/dom4j/Element;
    .end local v30           #urlBuff:Ljava/lang/StringBuffer;
    :goto_1
    return-object v4

    .line 63
    .restart local v10       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v18       #i:I
    :cond_2
    aget-object v26, v28, v18

    .line 64
    .local v26, tag:Ljava/lang/String;
    const-string v31, "ISO-8859-1"

    move-object v0, v10

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 65
    aput-object v26, v28, v18

    .line 62
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 95
    .end local v18           #i:I
    .end local v26           #tag:Ljava/lang/String;
    .restart local v30       #urlBuff:Ljava/lang/StringBuffer;
    :cond_3
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_2
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v18

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    .line 96
    aget-object v26, v28, v18

    .line 97
    .restart local v26       #tag:Ljava/lang/String;
    const-string v31, "&"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v31, "tags[]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v31, "="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 112
    .end local v18           #i:I
    .end local v26           #tag:Ljava/lang/String;
    :catch_0
    move-exception v31

    move-object/from16 v13, v31

    .line 113
    .local v13, e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 114
    const-string v31, "failed to parse to a document."

    .line 113
    move-object v0, v9

    move-object/from16 v1, v31

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .local v9, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;->getStatus()Ljava/lang/String;

    move-result-object v31

    move-object v0, v9

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 116
    throw v9

    .line 119
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v30           #urlBuff:Ljava/lang/StringBuffer;
    :cond_4
    const-string v31, "xml"

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 121
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v12

    .line 123
    .local v12, document:Lorg/dom4j/Document;
    const-string v31, "request"

    invoke-static/range {v31 .. v31}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 124
    .local v21, requestElm:Lorg/dom4j/Element;
    move-object v0, v12

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 127
    const-string v31, "action"

    invoke-static/range {v31 .. v31}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 129
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v31, "api_key"

    invoke-static/range {v31 .. v31}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 131
    .local v6, apiKeyElm:Lorg/dom4j/Element;
    const-string v31, "auth_token"

    invoke-static/range {v31 .. v31}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 133
    .local v8, authTokenElm:Lorg/dom4j/Element;
    const-string v31, "file_id"

    invoke-static/range {v31 .. v31}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 135
    .local v15, fileIdElm:Lorg/dom4j/Element;
    const-string v31, "public_name"

    invoke-static/range {v31 .. v31}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 137
    .local v20, publicNameElm:Lorg/dom4j/Element;
    const-string v31, "folder_id"

    invoke-static/range {v31 .. v31}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 139
    .local v17, folderIdElm:Lorg/dom4j/Element;
    const-string v31, "tags"

    invoke-static/range {v31 .. v31}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v29

    .line 140
    .local v29, tagsElm:Lorg/dom4j/Element;
    move-object/from16 v0, v21

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 141
    move-object/from16 v0, v21

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 142
    move-object/from16 v0, v21

    move-object v1, v8

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 143
    move-object/from16 v0, v21

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 144
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 145
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 146
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 148
    const-string v31, "add_to_mybox"

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 149
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 150
    invoke-interface {v8, v7}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 151
    invoke-interface {v15, v14}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 154
    if-eqz v28, :cond_5

    .line 155
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_3
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v18

    move/from16 v1, v31

    if-lt v0, v1, :cond_6

    .line 163
    .end local v18           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-interface {v12}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 166
    .local v23, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 167
    .restart local v11       #doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v22

    .line 169
    .restart local v22       #responseElm:Lorg/dom4j/Element;
    const-string v31, "status"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v25

    .line 170
    .restart local v25       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v25 .. v25}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v24

    .line 171
    .restart local v24       #status:Ljava/lang/String;
    move-object v0, v4

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 174
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v22           #responseElm:Lorg/dom4j/Element;
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v31

    move-object/from16 v13, v31

    .line 175
    .restart local v13       #e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 176
    const-string v31, "failed to parse to a document."

    .line 175
    move-object v0, v9

    move-object/from16 v1, v31

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .restart local v9       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;->getStatus()Ljava/lang/String;

    move-result-object v31

    move-object v0, v9

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 178
    throw v9

    .line 156
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v23           #result:Ljava/lang/String;
    .restart local v18       #i:I
    :cond_6
    aget-object v26, v28, v18

    .line 158
    .restart local v26       #tag:Ljava/lang/String;
    const-string v31, "item"

    invoke-static/range {v31 .. v31}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v27

    .line 159
    .local v27, tagElm:Lorg/dom4j/Element;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 155
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 181
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v6           #apiKeyElm:Lorg/dom4j/Element;
    .end local v8           #authTokenElm:Lorg/dom4j/Element;
    .end local v12           #document:Lorg/dom4j/Document;
    .end local v15           #fileIdElm:Lorg/dom4j/Element;
    .end local v17           #folderIdElm:Lorg/dom4j/Element;
    .end local v18           #i:I
    .end local v20           #publicNameElm:Lorg/dom4j/Element;
    .end local v21           #requestElm:Lorg/dom4j/Element;
    .end local v26           #tag:Ljava/lang/String;
    .end local v27           #tagElm:Lorg/dom4j/Element;
    .end local v29           #tagsElm:Lorg/dom4j/Element;
    :cond_7
    const-string v31, "soap"

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
