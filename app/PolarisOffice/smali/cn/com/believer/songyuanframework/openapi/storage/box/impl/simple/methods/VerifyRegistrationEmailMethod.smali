.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "VerifyRegistrationEmailMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyRegistrationEmail(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;
    .locals 23
    .parameter "verifyRegistrationEmailRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createVerifyRegistrationEmailResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;

    move-result-object v6

    .line 46
    .local v6, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;->getLoginName()Ljava/lang/String;

    move-result-object v13

    .line 49
    .local v13, loginName:Ljava/lang/String;
    const-string v20, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 51
    new-instance v8, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v8}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 52
    .local v8, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v20, "ISO-8859-1"

    move-object v0, v8

    move-object v1, v13

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 54
    const-string v20, "verify_registration_email"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 55
    .local v19, urlBuff:Ljava/lang/StringBuffer;
    const-string v20, "&"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v20, "api_key"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v20, "&"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v20, "login"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 65
    .local v9, doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v15

    .line 67
    .local v15, responseElm:Lorg/dom4j/Element;
    const-string v20, "status"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 68
    .local v18, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v18 .. v18}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v17

    .line 69
    .local v17, status:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v8           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v15           #responseElm:Lorg/dom4j/Element;
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #statusElm:Lorg/dom4j/Element;
    .end local v19           #urlBuff:Ljava/lang/StringBuffer;
    :goto_0
    return-object v6

    .line 72
    .restart local v8       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v19       #urlBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v20

    move-object/from16 v11, v20

    .line 73
    .local v11, e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 74
    const-string v20, "failed to parse to a document."

    .line 73
    move-object v0, v7

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .local v7, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v6}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;->getStatus()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 76
    throw v7

    .line 79
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v8           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v19           #urlBuff:Ljava/lang/StringBuffer;
    :cond_0
    const-string v20, "xml"

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 81
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v10

    .line 82
    .local v10, document:Lorg/dom4j/Document;
    const-string v20, "request"

    invoke-static/range {v20 .. v20}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 83
    .local v14, requestElm:Lorg/dom4j/Element;
    invoke-interface {v10, v14}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 84
    const-string v20, "action"

    invoke-static/range {v20 .. v20}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 85
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v20, "api_key"

    invoke-static/range {v20 .. v20}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 86
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v20, "login"

    invoke-static/range {v20 .. v20}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 87
    .local v12, loginElm:Lorg/dom4j/Element;
    invoke-interface {v14, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 88
    invoke-interface {v14, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 89
    invoke-interface {v14, v12}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 91
    const-string v20, "verify_registration_email"

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 92
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 93
    invoke-interface {v12, v13}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface {v10}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v16 .. v16}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 98
    .restart local v9       #doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v15

    .line 100
    .restart local v15       #responseElm:Lorg/dom4j/Element;
    const-string v20, "status"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 101
    .restart local v18       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v18 .. v18}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v17

    .line 102
    .restart local v17       #status:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 105
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v15           #responseElm:Lorg/dom4j/Element;
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v20

    move-object/from16 v11, v20

    .line 106
    .restart local v11       #e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 107
    const-string v20, "failed to parse to a document."

    .line 106
    move-object v0, v7

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .restart local v7       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v6}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;->getStatus()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 109
    throw v7

    .line 112
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #document:Lorg/dom4j/Document;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v12           #loginElm:Lorg/dom4j/Element;
    .end local v14           #requestElm:Lorg/dom4j/Element;
    .end local v16           #result:Ljava/lang/String;
    :cond_1
    const-string v20, "soap"

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
