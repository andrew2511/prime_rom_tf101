.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "AddToTagMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public addToTag(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;
    .locals 32
    .parameter "addToTagRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createAddToTagResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;

    move-result-object v8

    .line 48
    .local v8, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getTarget()Ljava/lang/String;

    move-result-object v24

    .line 51
    .local v24, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getTargetId()Ljava/lang/String;

    move-result-object v26

    .line 52
    .local v26, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getTags()[Ljava/lang/String;

    move-result-object v22

    .line 54
    .local v22, tags:[Ljava/lang/String;
    const-string v29, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 56
    new-instance v10, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v10}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 57
    .local v10, codec:Lorg/apache/commons/codec/net/URLCodec;
    if-eqz v22, :cond_0

    .line 58
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    move v0, v14

    move/from16 v1, v29

    if-lt v0, v1, :cond_2

    .line 65
    .end local v14           #i:I
    :cond_0
    const-string v29, "add_to_tag"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    .line 66
    .local v28, urlBuff:Ljava/lang/StringBuffer;
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v29, "api_key"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v29, "auth_token"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    if-nez v22, :cond_3

    .line 75
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v29, "tags[]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_1
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v29, "target"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v29, "target_id"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 97
    .local v11, doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 99
    .local v16, responseElm:Lorg/dom4j/Element;
    const-string v29, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 100
    .local v19, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v19 .. v19}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v18

    .line 101
    .local v18, status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusElm:Lorg/dom4j/Element;
    .end local v28           #urlBuff:Ljava/lang/StringBuffer;
    :goto_1
    return-object v8

    .line 59
    .restart local v10       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v14       #i:I
    :cond_2
    aget-object v20, v22, v14

    .line 60
    .local v20, tag:Ljava/lang/String;
    const-string v29, "ISO-8859-1"

    move-object v0, v10

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 61
    aput-object v20, v22, v14

    .line 58
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 79
    .end local v14           #i:I
    .end local v20           #tag:Ljava/lang/String;
    .restart local v28       #urlBuff:Ljava/lang/StringBuffer;
    :cond_3
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    move v0, v14

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 80
    aget-object v20, v22, v14

    .line 81
    .restart local v20       #tag:Ljava/lang/String;
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v29, "tags[]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 104
    .end local v14           #i:I
    .end local v20           #tag:Ljava/lang/String;
    :catch_0
    move-exception v29

    move-object/from16 v13, v29

    .line 105
    .local v13, e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 106
    const-string v29, "failed to parse to a document."

    .line 105
    move-object v0, v9

    move-object/from16 v1, v29

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .local v9, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;->getStatus()Ljava/lang/String;

    move-result-object v29

    move-object v0, v9

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 108
    throw v9

    .line 111
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v28           #urlBuff:Ljava/lang/StringBuffer;
    :cond_4
    const-string v29, "xml"

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 113
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v12

    .line 115
    .local v12, document:Lorg/dom4j/Document;
    const-string v29, "request"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 116
    .local v15, requestElm:Lorg/dom4j/Element;
    invoke-interface {v12, v15}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 119
    const-string v29, "action"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 121
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v29, "api_key"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 123
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v29, "auth_token"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 125
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v29, "tags"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 127
    .local v23, tagsElm:Lorg/dom4j/Element;
    const-string v29, "target"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v25

    .line 129
    .local v25, targetElm:Lorg/dom4j/Element;
    const-string v29, "target_id"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v27

    .line 130
    .local v27, targetIdElm:Lorg/dom4j/Element;
    invoke-interface {v15, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 131
    invoke-interface {v15, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 132
    invoke-interface {v15, v7}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 133
    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 134
    move-object v0, v15

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 135
    move-object v0, v15

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 137
    const-string v29, "add_to_tag"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 138
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 139
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 142
    if-eqz v22, :cond_5

    .line 143
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    move v0, v14

    move/from16 v1, v29

    if-lt v0, v1, :cond_6

    .line 151
    .end local v14           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-interface {v12}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 154
    .local v17, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v17 .. v17}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 155
    .restart local v11       #doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 157
    .restart local v16       #responseElm:Lorg/dom4j/Element;
    const-string v29, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 158
    .restart local v19       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v19 .. v19}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v18

    .line 159
    .restart local v18       #status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 162
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v29

    move-object/from16 v13, v29

    .line 163
    .restart local v13       #e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 164
    const-string v29, "failed to parse to a document."

    .line 163
    move-object v0, v9

    move-object/from16 v1, v29

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .restart local v9       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;->getStatus()Ljava/lang/String;

    move-result-object v29

    move-object v0, v9

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 166
    throw v9

    .line 144
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v17           #result:Ljava/lang/String;
    .restart local v14       #i:I
    :cond_6
    aget-object v20, v22, v14

    .line 146
    .restart local v20       #tag:Ljava/lang/String;
    const-string v29, "item"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 147
    .local v21, tagElm:Lorg/dom4j/Element;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 143
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 169
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v12           #document:Lorg/dom4j/Document;
    .end local v14           #i:I
    .end local v15           #requestElm:Lorg/dom4j/Element;
    .end local v20           #tag:Ljava/lang/String;
    .end local v21           #tagElm:Lorg/dom4j/Element;
    .end local v23           #tagsElm:Lorg/dom4j/Element;
    .end local v25           #targetElm:Lorg/dom4j/Element;
    .end local v27           #targetIdElm:Lorg/dom4j/Element;
    :cond_7
    const-string v29, "soap"

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
