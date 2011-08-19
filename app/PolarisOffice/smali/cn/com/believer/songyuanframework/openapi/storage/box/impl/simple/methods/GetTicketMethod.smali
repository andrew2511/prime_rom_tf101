.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "GetTicketMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getTicket(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .locals 22
    .parameter "getTicketRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createGetTicketResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;

    move-result-object v10

    .line 47
    .local v10, getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, apiKey:Ljava/lang/String;
    const-string v19, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 51
    const-string v19, "get_ticket"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    .line 52
    .local v18, urlBuff:Ljava/lang/StringBuffer;
    const-string v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v19, "api_key"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v7

    .line 58
    .local v7, doc:Lorg/dom4j/Document;
    invoke-interface {v7}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v12

    .line 60
    .local v12, responseElm:Lorg/dom4j/Element;
    const-string v19, "status"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 61
    .local v15, statusElm:Lorg/dom4j/Element;
    invoke-interface {v15}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v14

    .line 62
    .local v14, status:Ljava/lang/String;
    invoke-interface {v10, v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->setStatus(Ljava/lang/String;)V

    .line 64
    const-string v19, "get_ticket_ok"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 66
    const-string v19, "ticket"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 67
    .local v17, ticketElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 68
    .local v16, ticket:Ljava/lang/String;
    move-object v0, v10

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->setTicket(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v7           #doc:Lorg/dom4j/Document;
    .end local v12           #responseElm:Lorg/dom4j/Element;
    .end local v14           #status:Ljava/lang/String;
    .end local v15           #statusElm:Lorg/dom4j/Element;
    .end local v16           #ticket:Ljava/lang/String;
    .end local v17           #ticketElm:Lorg/dom4j/Element;
    .end local v18           #urlBuff:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object v10

    .line 70
    .restart local v18       #urlBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v19

    move-object/from16 v9, v19

    .line 71
    .local v9, e:Lorg/dom4j/DocumentException;
    new-instance v19, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    const-string v20, "failed to parse to a document."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 74
    .end local v9           #e:Lorg/dom4j/DocumentException;
    .end local v18           #urlBuff:Ljava/lang/StringBuffer;
    :cond_1
    const-string v19, "xml"

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 76
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v8

    .line 78
    .local v8, document:Lorg/dom4j/Document;
    const-string v19, "request"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v11

    .line 79
    .local v11, requestElm:Lorg/dom4j/Element;
    invoke-interface {v8, v11}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 82
    const-string v19, "action"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 84
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v19, "api_key"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 85
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    invoke-interface {v11, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 86
    invoke-interface {v11, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 88
    const-string v19, "get_ticket"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 89
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface {v8}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, result:Ljava/lang/String;
    :try_start_1
    invoke-static {v13}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v7

    .line 93
    .restart local v7       #doc:Lorg/dom4j/Document;
    invoke-interface {v7}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v12

    .line 95
    .restart local v12       #responseElm:Lorg/dom4j/Element;
    const-string v19, "status"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 96
    .restart local v15       #statusElm:Lorg/dom4j/Element;
    invoke-interface {v15}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v14

    .line 97
    .restart local v14       #status:Ljava/lang/String;
    invoke-interface {v10, v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->setStatus(Ljava/lang/String;)V

    .line 99
    const-string v19, "get_ticket_ok"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 101
    const-string v19, "ticket"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 102
    .restart local v17       #ticketElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 103
    .restart local v16       #ticket:Ljava/lang/String;
    move-object v0, v10

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->setTicket(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 105
    .end local v7           #doc:Lorg/dom4j/Document;
    .end local v12           #responseElm:Lorg/dom4j/Element;
    .end local v14           #status:Ljava/lang/String;
    .end local v15           #statusElm:Lorg/dom4j/Element;
    .end local v16           #ticket:Ljava/lang/String;
    .end local v17           #ticketElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v19

    move-object/from16 v9, v19

    .line 106
    .restart local v9       #e:Lorg/dom4j/DocumentException;
    new-instance v19, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    const-string v20, "failed to parse to a document."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 109
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v8           #document:Lorg/dom4j/Document;
    .end local v9           #e:Lorg/dom4j/DocumentException;
    .end local v11           #requestElm:Lorg/dom4j/Element;
    .end local v13           #result:Ljava/lang/String;
    :cond_2
    const-string v19, "soap"

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->getBaseSoapDocument()Lorg/dom4j/Document;

    move-result-object v8

    .line 112
    .restart local v8       #document:Lorg/dom4j/Document;
    const-string v19, "get_ticket"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->getElementByActionName(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 113
    .restart local v3       #actionElm:Lorg/dom4j/Element;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v19

    const-string v20, "soap:Body"

    invoke-interface/range {v19 .. v20}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 114
    .local v6, bodyElm:Lorg/dom4j/Element;
    invoke-interface {v6, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 115
    const-string v19, "api_key"

    .line 116
    const-string v20, "xsd:string"

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->getSoapElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 117
    .restart local v5       #apiKeyElm:Lorg/dom4j/Element;
    invoke-interface {v3, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 118
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->soapApiUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface {v8}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 121
    .restart local v13       #result:Ljava/lang/String;
    :try_start_2
    invoke-static {v13}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v7

    .line 122
    .restart local v7       #doc:Lorg/dom4j/Document;
    const-string v19, "ns4:get_ticketResponse"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 125
    .restart local v12       #responseElm:Lorg/dom4j/Element;
    const-string v19, "status"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 126
    .restart local v15       #statusElm:Lorg/dom4j/Element;
    invoke-interface {v15}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v14

    .line 127
    .restart local v14       #status:Ljava/lang/String;
    invoke-interface {v10, v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->setStatus(Ljava/lang/String;)V

    .line 129
    const-string v19, "get_ticket_ok"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 131
    const-string v19, "ticket"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 132
    .restart local v17       #ticketElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 133
    .restart local v16       #ticket:Ljava/lang/String;
    move-object v0, v10

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->setTicket(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/dom4j/DocumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 135
    .end local v7           #doc:Lorg/dom4j/Document;
    .end local v12           #responseElm:Lorg/dom4j/Element;
    .end local v14           #status:Ljava/lang/String;
    .end local v15           #statusElm:Lorg/dom4j/Element;
    .end local v16           #ticket:Ljava/lang/String;
    .end local v17           #ticketElm:Lorg/dom4j/Element;
    :catch_2
    move-exception v19

    move-object/from16 v9, v19

    .line 136
    .restart local v9       #e:Lorg/dom4j/DocumentException;
    new-instance v19, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    const-string v20, "failed to parse to a document."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 140
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #bodyElm:Lorg/dom4j/Element;
    .end local v8           #document:Lorg/dom4j/Document;
    .end local v9           #e:Lorg/dom4j/DocumentException;
    .end local v13           #result:Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0
.end method
