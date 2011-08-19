.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "RequestFriendsMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;
    .locals 33
    .parameter "requestFriendsRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createRequestFriendsResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;

    move-result-object v8

    .line 50
    .local v8, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getMessage()Ljava/lang/String;

    move-result-object v18

    .line 53
    .local v18, message:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, emails:[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getParams()[Ljava/lang/String;

    move-result-object v22

    .line 56
    .local v22, params:[Ljava/lang/String;
    const-string v30, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 58
    invoke-static/range {v18 .. v18}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/URLUtils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 59
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object v0, v15

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    .line 64
    const-string v30, "request_friends"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    .line 65
    .local v29, urlBuff:Ljava/lang/StringBuffer;
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v30, "api_key"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v30, "auth_token"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    if-nez v15, :cond_3

    .line 74
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v30, "emails[]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v30, "message"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    if-nez v22, :cond_4

    .line 91
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v30, "params[]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 105
    .local v10, doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v25

    .line 107
    .local v25, responseElm:Lorg/dom4j/Element;
    const-string v30, "status"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v28

    .line 108
    .local v28, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v28 .. v28}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v27

    .line 109
    .local v27, status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v17           #i:I
    .end local v25           #responseElm:Lorg/dom4j/Element;
    .end local v27           #status:Ljava/lang/String;
    .end local v28           #statusElm:Lorg/dom4j/Element;
    .end local v29           #urlBuff:Ljava/lang/StringBuffer;
    :goto_1
    return-object v8

    .line 60
    .restart local v17       #i:I
    :cond_2
    aget-object v30, v15, v17

    invoke-static/range {v30 .. v30}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/URLUtils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v15, v17

    .line 59
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 78
    .restart local v29       #urlBuff:Ljava/lang/StringBuffer;
    :cond_3
    const/16 v17, 0x0

    :goto_2
    move-object v0, v15

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 79
    aget-object v13, v15, v17

    .line 80
    .local v13, email:Ljava/lang/String;
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v30, "emails[]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    move-object/from16 v0, v29

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 95
    .end local v13           #email:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    .line 96
    aget-object v20, v22, v17

    .line 97
    .local v20, param:Ljava/lang/String;
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v30, "params[]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 112
    .end local v20           #param:Ljava/lang/String;
    :catch_0
    move-exception v30

    move-object/from16 v12, v30

    .line 113
    .local v12, e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 114
    const-string v30, "failed to parse to a document."

    .line 113
    move-object v0, v9

    move-object/from16 v1, v30

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .local v9, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;->getStatus()Ljava/lang/String;

    move-result-object v30

    move-object v0, v9

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 116
    throw v9

    .line 119
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v17           #i:I
    .end local v29           #urlBuff:Ljava/lang/StringBuffer;
    :cond_5
    const-string v30, "xml"

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 121
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v11

    .line 123
    .local v11, document:Lorg/dom4j/Document;
    const-string v30, "request"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 124
    .local v24, requestElm:Lorg/dom4j/Element;
    move-object v0, v11

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 127
    const-string v30, "action"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 129
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v30, "api_key"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 131
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v30, "auth_token"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 133
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v30, "emails"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 135
    .local v16, emailsElm:Lorg/dom4j/Element;
    const-string v30, "message"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 137
    .local v19, messageElm:Lorg/dom4j/Element;
    const-string v30, "params"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 138
    .local v23, paramsElm:Lorg/dom4j/Element;
    move-object/from16 v0, v24

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 139
    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 140
    move-object/from16 v0, v24

    move-object v1, v7

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 141
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 142
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 143
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 145
    const-string v30, "request_friends"

    move-object v0, v3

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 146
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 147
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 149
    if-eqz v15, :cond_6

    .line 150
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_4
    move-object v0, v15

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-lt v0, v1, :cond_8

    .line 158
    .end local v17           #i:I
    :cond_6
    if-eqz v22, :cond_7

    .line 159
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-lt v0, v1, :cond_9

    .line 167
    .end local v17           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-interface {v11}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 169
    .local v26, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 170
    .restart local v10       #doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v25

    .line 172
    .restart local v25       #responseElm:Lorg/dom4j/Element;
    const-string v30, "status"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v28

    .line 173
    .restart local v28       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v28 .. v28}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v27

    .line 174
    .restart local v27       #status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 177
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v25           #responseElm:Lorg/dom4j/Element;
    .end local v27           #status:Ljava/lang/String;
    .end local v28           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v30

    move-object/from16 v12, v30

    .line 178
    .restart local v12       #e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 179
    const-string v30, "failed to parse to a document."

    .line 178
    move-object v0, v9

    move-object/from16 v1, v30

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .restart local v9       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;->getStatus()Ljava/lang/String;

    move-result-object v30

    move-object v0, v9

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 181
    throw v9

    .line 151
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v26           #result:Ljava/lang/String;
    .restart local v17       #i:I
    :cond_8
    aget-object v13, v15, v17

    .line 153
    .restart local v13       #email:Ljava/lang/String;
    const-string v30, "item"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 154
    .local v14, emailElm:Lorg/dom4j/Element;
    invoke-interface {v14, v13}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 150
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 160
    .end local v13           #email:Ljava/lang/String;
    .end local v14           #emailElm:Lorg/dom4j/Element;
    :cond_9
    aget-object v20, v22, v17

    .line 162
    .restart local v20       #param:Ljava/lang/String;
    const-string v30, "item"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 163
    .local v21, paramElm:Lorg/dom4j/Element;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 159
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 184
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v11           #document:Lorg/dom4j/Document;
    .end local v16           #emailsElm:Lorg/dom4j/Element;
    .end local v17           #i:I
    .end local v19           #messageElm:Lorg/dom4j/Element;
    .end local v20           #param:Ljava/lang/String;
    .end local v21           #paramElm:Lorg/dom4j/Element;
    .end local v23           #paramsElm:Lorg/dom4j/Element;
    .end local v24           #requestElm:Lorg/dom4j/Element;
    :cond_a
    const-string v30, "soap"

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
