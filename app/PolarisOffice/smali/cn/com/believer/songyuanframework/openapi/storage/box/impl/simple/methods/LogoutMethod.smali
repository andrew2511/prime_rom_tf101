.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "LogoutMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public logout(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;
    .locals 22
    .parameter "logoutRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createLogoutResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;

    move-result-object v8

    .line 43
    .local v8, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, authToken:Ljava/lang/String;
    const-string v19, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 48
    const-string v19, "logout"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    .line 49
    .local v18, urlBuff:Ljava/lang/StringBuffer;
    const-string v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v19, "api_key"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v19, "auth_token"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 59
    .local v10, doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v14

    .line 61
    .local v14, responseElm:Lorg/dom4j/Element;
    const-string v19, "status"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 62
    .local v17, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 63
    .local v16, status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v14           #responseElm:Lorg/dom4j/Element;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #statusElm:Lorg/dom4j/Element;
    .end local v18           #urlBuff:Ljava/lang/StringBuffer;
    :goto_0
    return-object v8

    .line 66
    .restart local v18       #urlBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v19

    move-object/from16 v12, v19

    .line 67
    .local v12, e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 68
    const-string v19, "failed to parse to a document."

    .line 67
    move-object v0, v9

    move-object/from16 v1, v19

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .local v9, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;->getStatus()Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 70
    throw v9

    .line 73
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v18           #urlBuff:Ljava/lang/StringBuffer;
    :cond_0
    const-string v19, "xml"

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 75
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v11

    .line 77
    .local v11, document:Lorg/dom4j/Document;
    const-string v19, "request"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v13

    .line 78
    .local v13, requestElm:Lorg/dom4j/Element;
    invoke-interface {v11, v13}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 81
    const-string v19, "action"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 83
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v19, "api_key"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 85
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v19, "auth_token"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 86
    .local v7, authTokenElm:Lorg/dom4j/Element;
    invoke-interface {v13, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 87
    invoke-interface {v13, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 88
    invoke-interface {v13, v7}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 90
    const-string v19, "logout"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 91
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 92
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface {v11}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, result:Ljava/lang/String;
    :try_start_1
    invoke-static {v15}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 96
    .restart local v10       #doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v14

    .line 98
    .restart local v14       #responseElm:Lorg/dom4j/Element;
    const-string v19, "status"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 99
    .restart local v17       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 100
    .restart local v16       #status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 103
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v14           #responseElm:Lorg/dom4j/Element;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v19

    move-object/from16 v12, v19

    .line 104
    .restart local v12       #e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 105
    const-string v19, "failed to parse to a document."

    .line 104
    move-object v0, v9

    move-object/from16 v1, v19

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .restart local v9       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;->getStatus()Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 107
    throw v9

    .line 110
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #document:Lorg/dom4j/Document;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v13           #requestElm:Lorg/dom4j/Element;
    .end local v15           #result:Ljava/lang/String;
    :cond_1
    const-string v19, "soap"

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
