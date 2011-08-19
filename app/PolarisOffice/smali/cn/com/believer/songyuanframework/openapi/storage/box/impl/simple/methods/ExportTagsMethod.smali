.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "ExportTagsMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public exportTags(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;
    .locals 24
    .parameter "exportTagsRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createExportTagsResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;

    move-result-object v12

    .line 51
    .local v12, exportTagsResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, authToken:Ljava/lang/String;
    const-string v21, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 56
    const-string v21, "export_tags"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    .line 57
    .local v20, urlBuff:Ljava/lang/StringBuffer;
    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v21, "api_key"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v21, "auth_token"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 67
    .local v9, doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v14

    .line 69
    .local v14, responseElm:Lorg/dom4j/Element;
    const-string v21, "status"

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 70
    .local v17, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 71
    .local v16, status:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->setStatus(Ljava/lang/String;)V

    .line 72
    const-string v21, "export_tags_ok"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 74
    const-string v21, "tags"

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 76
    .local v19, tagsXMLElm:Lorg/dom4j/Element;
    invoke-static/range {v19 .. v19}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->transferTags2List(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v18

    .line 77
    .local v18, tagsList:Ljava/util/List;
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->setTagList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v14           #responseElm:Lorg/dom4j/Element;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #statusElm:Lorg/dom4j/Element;
    .end local v18           #tagsList:Ljava/util/List;
    .end local v19           #tagsXMLElm:Lorg/dom4j/Element;
    .end local v20           #urlBuff:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object v12

    .line 79
    .restart local v20       #urlBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v21

    move-object/from16 v11, v21

    .line 80
    .local v11, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 81
    const-string v21, "failed to parse to a document."

    .line 80
    move-object v0, v8

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->getStatus()Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 83
    throw v8

    .line 86
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v20           #urlBuff:Ljava/lang/StringBuffer;
    :cond_1
    const-string v21, "xml"

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 88
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v10

    .line 90
    .local v10, document:Lorg/dom4j/Document;
    const-string v21, "request"

    invoke-static/range {v21 .. v21}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v13

    .line 91
    .local v13, requestElm:Lorg/dom4j/Element;
    invoke-interface {v10, v13}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 94
    const-string v21, "action"

    invoke-static/range {v21 .. v21}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 96
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v21, "api_key"

    invoke-static/range {v21 .. v21}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 98
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v21, "auth_token"

    invoke-static/range {v21 .. v21}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 99
    .local v7, authTokenElm:Lorg/dom4j/Element;
    invoke-interface {v13, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 100
    invoke-interface {v13, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 101
    invoke-interface {v13, v7}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 103
    const-string v21, "export_tags"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 104
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 105
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface {v10}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 109
    .local v15, result:Ljava/lang/String;
    :try_start_1
    invoke-static {v15}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 110
    .restart local v9       #doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v14

    .line 112
    .restart local v14       #responseElm:Lorg/dom4j/Element;
    const-string v21, "status"

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 113
    .restart local v17       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 114
    .restart local v16       #status:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->setStatus(Ljava/lang/String;)V

    .line 115
    const-string v21, "export_tags_ok"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 117
    const-string v21, "tags"

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 119
    .restart local v19       #tagsXMLElm:Lorg/dom4j/Element;
    invoke-static/range {v19 .. v19}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->transferTags2List(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v18

    .line 120
    .restart local v18       #tagsList:Ljava/util/List;
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->setTagList(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 122
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v14           #responseElm:Lorg/dom4j/Element;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #statusElm:Lorg/dom4j/Element;
    .end local v18           #tagsList:Ljava/util/List;
    .end local v19           #tagsXMLElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v21

    move-object/from16 v11, v21

    .line 123
    .restart local v11       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 124
    const-string v21, "failed to parse to a document."

    .line 123
    move-object v0, v8

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->getStatus()Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 126
    throw v8

    .line 128
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #document:Lorg/dom4j/Document;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v13           #requestElm:Lorg/dom4j/Element;
    .end local v15           #result:Ljava/lang/String;
    :cond_2
    const-string v21, "soap"

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
