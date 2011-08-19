.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "SetDescriptionMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public setDescription(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;
    .locals 29
    .parameter "setDescriptionRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createSetDescriptionResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;

    move-result-object v8

    .line 48
    .local v8, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->getTarget()Ljava/lang/String;

    move-result-object v21

    .line 51
    .local v21, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->getTargetId()Ljava/lang/String;

    move-result-object v23

    .line 52
    .local v23, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->getDescription()Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, description:Ljava/lang/String;
    const-string v26, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 56
    new-instance v10, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v10}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 57
    .local v10, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v26, "ISO-8859-1"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 59
    const-string v26, "set_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    .line 60
    .local v25, urlBuff:Ljava/lang/StringBuffer;
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v26, "api_key"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v26, "auth_token"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v26, "target"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v26, "target_id"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v26, "description"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    move-object/from16 v0, v25

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v13

    .line 82
    .local v13, doc:Lorg/dom4j/Document;
    invoke-interface {v13}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v17

    .line 84
    .local v17, responseElm:Lorg/dom4j/Element;
    const-string v26, "status"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 85
    .local v20, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v20 .. v20}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v19

    .line 86
    .local v19, status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v13           #doc:Lorg/dom4j/Document;
    .end local v17           #responseElm:Lorg/dom4j/Element;
    .end local v19           #status:Ljava/lang/String;
    .end local v20           #statusElm:Lorg/dom4j/Element;
    .end local v25           #urlBuff:Ljava/lang/StringBuffer;
    :goto_0
    return-object v8

    .line 89
    .restart local v10       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v25       #urlBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v26

    move-object/from16 v15, v26

    .line 90
    .local v15, e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 91
    const-string v26, "failed to parse to a document."

    .line 90
    move-object v0, v9

    move-object/from16 v1, v26

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .local v9, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;->getStatus()Ljava/lang/String;

    move-result-object v26

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 93
    throw v9

    .line 96
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v15           #e:Lorg/dom4j/DocumentException;
    .end local v25           #urlBuff:Ljava/lang/StringBuffer;
    :cond_0
    const-string v26, "xml"

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 98
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v14

    .line 100
    .local v14, document:Lorg/dom4j/Document;
    const-string v26, "request"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 101
    .local v16, requestElm:Lorg/dom4j/Element;
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 104
    const-string v26, "action"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 106
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v26, "api_key"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 108
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v26, "auth_token"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 110
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v26, "target"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v22

    .line 112
    .local v22, targetElm:Lorg/dom4j/Element;
    const-string v26, "target_id"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 114
    .local v24, targetIdElm:Lorg/dom4j/Element;
    const-string v26, "description"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 115
    .local v12, descriptionElm:Lorg/dom4j/Element;
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 116
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 117
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 118
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 119
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 120
    move-object/from16 v0, v16

    move-object v1, v12

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 122
    const-string v26, "set_description"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 123
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 124
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 127
    invoke-interface {v12, v11}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-interface {v14}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 130
    .local v18, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v18 .. v18}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v13

    .line 131
    .restart local v13       #doc:Lorg/dom4j/Document;
    invoke-interface {v13}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v17

    .line 133
    .restart local v17       #responseElm:Lorg/dom4j/Element;
    const-string v26, "status"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 134
    .restart local v20       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v20 .. v20}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v19

    .line 135
    .restart local v19       #status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 138
    .end local v13           #doc:Lorg/dom4j/Document;
    .end local v17           #responseElm:Lorg/dom4j/Element;
    .end local v19           #status:Ljava/lang/String;
    .end local v20           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v26

    move-object/from16 v15, v26

    .line 139
    .restart local v15       #e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 140
    const-string v26, "failed to parse to a document."

    .line 139
    move-object v0, v9

    move-object/from16 v1, v26

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .restart local v9       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;->getStatus()Ljava/lang/String;

    move-result-object v26

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 142
    throw v9

    .line 145
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #descriptionElm:Lorg/dom4j/Element;
    .end local v14           #document:Lorg/dom4j/Document;
    .end local v15           #e:Lorg/dom4j/DocumentException;
    .end local v16           #requestElm:Lorg/dom4j/Element;
    .end local v18           #result:Ljava/lang/String;
    .end local v22           #targetElm:Lorg/dom4j/Element;
    .end local v24           #targetIdElm:Lorg/dom4j/Element;
    :cond_1
    const-string v26, "soap"

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
