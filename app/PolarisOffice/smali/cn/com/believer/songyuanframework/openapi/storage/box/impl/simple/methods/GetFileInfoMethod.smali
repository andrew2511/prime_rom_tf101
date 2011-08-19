.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "GetFileInfoMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileInfo(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;
    .locals 26
    .parameter "getFileInfoRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createGetFileInfoResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;

    move-result-object v14

    .line 48
    .local v14, getFileInfoResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;->getFileId()Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, fileId:Ljava/lang/String;
    const-string v23, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 54
    const-string v23, "get_file_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 55
    .local v22, urlBuff:Ljava/lang/StringBuffer;
    const-string v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v23, "api_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v23, "auth_token"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v23, "file_id"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 69
    .local v9, doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v17

    .line 71
    .local v17, responseElm:Lorg/dom4j/Element;
    const-string v23, "status"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 72
    .local v21, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v21 .. v21}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v20

    .line 73
    .local v20, status:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->setStatus(Ljava/lang/String;)V

    .line 74
    const-string v23, "s_get_file_info"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 76
    const-string v23, "info"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 77
    .local v15, infoElm:Lorg/dom4j/Element;
    invoke-static {v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toBoxFile(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object v19

    .line 78
    .local v19, soapFileInfo:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->setFile(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v15           #infoElm:Lorg/dom4j/Element;
    .end local v17           #responseElm:Lorg/dom4j/Element;
    .end local v19           #soapFileInfo:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    .end local v20           #status:Ljava/lang/String;
    .end local v21           #statusElm:Lorg/dom4j/Element;
    .end local v22           #urlBuff:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object v14

    .line 80
    .restart local v22       #urlBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v23

    move-object/from16 v11, v23

    .line 81
    .local v11, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 82
    const-string v23, "failed to parse to a document."

    .line 81
    move-object v0, v8

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 84
    throw v8

    .line 87
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v22           #urlBuff:Ljava/lang/StringBuffer;
    :cond_1
    const-string v23, "xml"

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 89
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v10

    .line 91
    .local v10, document:Lorg/dom4j/Document;
    const-string v23, "request"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 92
    .local v16, requestElm:Lorg/dom4j/Element;
    move-object v0, v10

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 95
    const-string v23, "action"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 97
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v23, "api_key"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 99
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v23, "auth_token"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 101
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v23, "file_id"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v13

    .line 102
    .local v13, fileIdElm:Lorg/dom4j/Element;
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 103
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 104
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 105
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 107
    const-string v23, "get_file_info"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 108
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 109
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 110
    invoke-interface {v13, v12}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface {v10}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 113
    .local v18, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v18 .. v18}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 114
    .restart local v9       #doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v17

    .line 116
    .restart local v17       #responseElm:Lorg/dom4j/Element;
    const-string v23, "status"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 117
    .restart local v21       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v21 .. v21}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v20

    .line 118
    .restart local v20       #status:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->setStatus(Ljava/lang/String;)V

    .line 119
    const-string v23, "s_get_file_info"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 121
    const-string v23, "info"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 122
    .restart local v15       #infoElm:Lorg/dom4j/Element;
    invoke-static {v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toBoxFile(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object v19

    .line 123
    .restart local v19       #soapFileInfo:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->setFile(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 125
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v15           #infoElm:Lorg/dom4j/Element;
    .end local v17           #responseElm:Lorg/dom4j/Element;
    .end local v19           #soapFileInfo:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    .end local v20           #status:Ljava/lang/String;
    .end local v21           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v23

    move-object/from16 v11, v23

    .line 126
    .restart local v11       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 127
    const-string v23, "failed to parse to a document."

    .line 126
    move-object v0, v8

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 129
    throw v8

    .line 132
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #document:Lorg/dom4j/Document;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v13           #fileIdElm:Lorg/dom4j/Element;
    .end local v16           #requestElm:Lorg/dom4j/Element;
    .end local v18           #result:Ljava/lang/String;
    :cond_2
    const-string v23, "soap"

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
