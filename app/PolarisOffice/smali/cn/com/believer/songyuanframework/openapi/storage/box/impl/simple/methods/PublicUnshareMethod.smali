.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "PublicUnshareMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public publicUnshare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;
    .locals 26
    .parameter "publicUnshareRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createPublicUnshareResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;

    move-result-object v8

    .line 48
    .local v8, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->getTarget()Ljava/lang/String;

    move-result-object v18

    .line 51
    .local v18, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->getTargetId()Ljava/lang/String;

    move-result-object v20

    .line 53
    .local v20, targetId:Ljava/lang/String;
    const-string v23, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 55
    const-string v23, "public_unshare"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 56
    .local v22, urlBuff:Ljava/lang/StringBuffer;
    const-string v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v23, "api_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v23, "auth_token"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v23, "target"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v23, "target_id"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 74
    .local v10, doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v14

    .line 76
    .local v14, responseElm:Lorg/dom4j/Element;
    const-string v23, "status"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 77
    .local v17, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 78
    .local v16, status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v14           #responseElm:Lorg/dom4j/Element;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #statusElm:Lorg/dom4j/Element;
    .end local v22           #urlBuff:Ljava/lang/StringBuffer;
    :goto_0
    return-object v8

    .line 81
    .restart local v22       #urlBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v23

    move-object/from16 v12, v23

    .line 82
    .local v12, e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 83
    const-string v23, "failed to parse to a document."

    .line 82
    move-object v0, v9

    move-object/from16 v1, v23

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .local v9, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 85
    throw v9

    .line 88
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v22           #urlBuff:Ljava/lang/StringBuffer;
    :cond_0
    const-string v23, "xml"

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 90
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v11

    .line 92
    .local v11, document:Lorg/dom4j/Document;
    const-string v23, "request"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v13

    .line 93
    .local v13, requestElm:Lorg/dom4j/Element;
    invoke-interface {v11, v13}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 96
    const-string v23, "action"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 98
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v23, "api_key"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 100
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v23, "auth_token"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 102
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v23, "target"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 104
    .local v19, targetElm:Lorg/dom4j/Element;
    const-string v23, "target_id"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 105
    .local v21, targetIdElm:Lorg/dom4j/Element;
    invoke-interface {v13, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 106
    invoke-interface {v13, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 107
    invoke-interface {v13, v7}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 108
    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 109
    move-object v0, v13

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 111
    const-string v23, "public_unshare"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 112
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 113
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface {v11}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 118
    .local v15, result:Ljava/lang/String;
    :try_start_1
    invoke-static {v15}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 119
    .restart local v10       #doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v14

    .line 121
    .restart local v14       #responseElm:Lorg/dom4j/Element;
    const-string v23, "status"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 122
    .restart local v17       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 123
    .restart local v16       #status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 126
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v14           #responseElm:Lorg/dom4j/Element;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v23

    move-object/from16 v12, v23

    .line 127
    .restart local v12       #e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 128
    const-string v23, "failed to parse to a document."

    .line 127
    move-object v0, v9

    move-object/from16 v1, v23

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .restart local v9       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 130
    throw v9

    .line 133
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #document:Lorg/dom4j/Document;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v13           #requestElm:Lorg/dom4j/Element;
    .end local v15           #result:Ljava/lang/String;
    .end local v19           #targetElm:Lorg/dom4j/Element;
    .end local v21           #targetIdElm:Lorg/dom4j/Element;
    :cond_1
    const-string v23, "soap"

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
