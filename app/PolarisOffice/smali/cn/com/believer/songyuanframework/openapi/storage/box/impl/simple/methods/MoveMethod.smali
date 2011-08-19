.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "MoveMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public move(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    .locals 28
    .parameter "moveRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createMoveResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;

    move-result-object v8

    .line 48
    .local v8, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getTarget()Ljava/lang/String;

    move-result-object v20

    .line 51
    .local v20, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getTargetId()Ljava/lang/String;

    move-result-object v22

    .line 52
    .local v22, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getDestinationId()Ljava/lang/String;

    move-result-object v10

    .line 54
    .local v10, destinationId:Ljava/lang/String;
    const-string v25, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 56
    const-string v25, "move"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 57
    .local v24, urlBuff:Ljava/lang/StringBuffer;
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v25, "api_key"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v25, "auth_token"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v25, "target"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v25, "target_id"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v25, "destination_id"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    move-object/from16 v0, v24

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v12

    .line 79
    .local v12, doc:Lorg/dom4j/Document;
    invoke-interface {v12}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 81
    .local v16, responseElm:Lorg/dom4j/Element;
    const-string v25, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 82
    .local v19, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v19 .. v19}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v18

    .line 83
    .local v18, status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v12           #doc:Lorg/dom4j/Document;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusElm:Lorg/dom4j/Element;
    .end local v24           #urlBuff:Ljava/lang/StringBuffer;
    :goto_0
    return-object v8

    .line 86
    .restart local v24       #urlBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v25

    move-object/from16 v14, v25

    .line 87
    .local v14, e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 88
    const-string v25, "failed to parse to a document."

    .line 87
    move-object v0, v9

    move-object/from16 v1, v25

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .local v9, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->getStatus()Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 90
    throw v9

    .line 93
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v14           #e:Lorg/dom4j/DocumentException;
    .end local v24           #urlBuff:Ljava/lang/StringBuffer;
    :cond_0
    const-string v25, "xml"

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 95
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v13

    .line 97
    .local v13, document:Lorg/dom4j/Document;
    const-string v25, "request"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 98
    .local v15, requestElm:Lorg/dom4j/Element;
    invoke-interface {v13, v15}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 101
    const-string v25, "action"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 103
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v25, "api_key"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 105
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v25, "auth_token"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 107
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v25, "target"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 109
    .local v21, targetElm:Lorg/dom4j/Element;
    const-string v25, "target_id"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 111
    .local v23, targetIdElm:Lorg/dom4j/Element;
    const-string v25, "destination_id"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v11

    .line 112
    .local v11, destinationIdElm:Lorg/dom4j/Element;
    invoke-interface {v15, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 113
    invoke-interface {v15, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 114
    invoke-interface {v15, v7}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 115
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 116
    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 117
    invoke-interface {v15, v11}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 119
    const-string v25, "move"

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 120
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 121
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 124
    invoke-interface {v11, v10}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-interface {v13}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 127
    .local v17, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v17 .. v17}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v12

    .line 128
    .restart local v12       #doc:Lorg/dom4j/Document;
    invoke-interface {v12}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 130
    .restart local v16       #responseElm:Lorg/dom4j/Element;
    const-string v25, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 131
    .restart local v19       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v19 .. v19}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v18

    .line 132
    .restart local v18       #status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 135
    .end local v12           #doc:Lorg/dom4j/Document;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v25

    move-object/from16 v14, v25

    .line 136
    .restart local v14       #e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 137
    const-string v25, "failed to parse to a document."

    .line 136
    move-object v0, v9

    move-object/from16 v1, v25

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .restart local v9       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->getStatus()Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 139
    throw v9

    .line 142
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #destinationIdElm:Lorg/dom4j/Element;
    .end local v13           #document:Lorg/dom4j/Document;
    .end local v14           #e:Lorg/dom4j/DocumentException;
    .end local v15           #requestElm:Lorg/dom4j/Element;
    .end local v17           #result:Ljava/lang/String;
    .end local v21           #targetElm:Lorg/dom4j/Element;
    .end local v23           #targetIdElm:Lorg/dom4j/Element;
    :cond_1
    const-string v25, "soap"

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
