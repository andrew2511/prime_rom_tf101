.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "PrivateShareMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public privateShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;
    .locals 36
    .parameter "privateShareRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createPrivateShareResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;

    move-result-object v8

    .line 55
    .local v8, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getMessage()Ljava/lang/String;

    move-result-object v19

    .line 58
    .local v19, message:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getTarget()Ljava/lang/String;

    move-result-object v28

    .line 59
    .local v28, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getTargetId()Ljava/lang/String;

    move-result-object v30

    .line 60
    .local v30, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getEmails()[Ljava/lang/String;

    move-result-object v16

    .line 61
    .local v16, emails:[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->isNofity()Z

    move-result v21

    .line 63
    .local v21, notify:Z
    const-string v33, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 65
    new-instance v10, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v10}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 66
    .local v10, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v33, "ISO-8859-1"

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 68
    const-string v33, "private_share"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    .line 69
    .local v32, urlBuff:Ljava/lang/StringBuffer;
    const-string v33, "&"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v33, "api_key"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v33, "="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v33, "&"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v33, "auth_token"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v33, "="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    move-object/from16 v0, v32

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v33, "&"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v33, "target"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v33, "="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v33, "&"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v33, "target_id"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v33, "="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    if-nez v16, :cond_1

    .line 86
    const-string v33, "&"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v33, "emails[]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v33, "="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_0
    const-string v33, "&"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v33, "message"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v33, "="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v33, "&"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v33, "notify"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v33, "="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 108
    .local v11, doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v24

    .line 110
    .local v24, responseElm:Lorg/dom4j/Element;
    const-string v33, "status"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v27

    .line 111
    .local v27, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v27 .. v27}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v26

    .line 112
    .local v26, status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v24           #responseElm:Lorg/dom4j/Element;
    .end local v26           #status:Ljava/lang/String;
    .end local v27           #statusElm:Lorg/dom4j/Element;
    .end local v32           #urlBuff:Ljava/lang/StringBuffer;
    :goto_0
    return-object v8

    .line 90
    .restart local v10       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v32       #urlBuff:Ljava/lang/StringBuffer;
    :cond_1
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 91
    aget-object v14, v16, v18

    .line 92
    .local v14, email:Ljava/lang/String;
    const-string v33, "&"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v33, "emails[]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v33, "="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    move-object/from16 v0, v32

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 115
    .end local v14           #email:Ljava/lang/String;
    .end local v18           #i:I
    :catch_0
    move-exception v33

    move-object/from16 v13, v33

    .line 116
    .local v13, e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 117
    const-string v33, "failed to parse to a document."

    .line 116
    move-object v0, v9

    move-object/from16 v1, v33

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .local v9, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;->getStatus()Ljava/lang/String;

    move-result-object v33

    move-object v0, v9

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 119
    throw v9

    .line 122
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v32           #urlBuff:Ljava/lang/StringBuffer;
    :cond_2
    const-string v33, "xml"

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 124
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v12

    .line 126
    .local v12, document:Lorg/dom4j/Document;
    const-string v33, "request"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 127
    .local v23, requestElm:Lorg/dom4j/Element;
    move-object v0, v12

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 130
    const-string v33, "action"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 132
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v33, "api_key"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 134
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v33, "auth_token"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 136
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v33, "target"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v29

    .line 138
    .local v29, targetElm:Lorg/dom4j/Element;
    const-string v33, "target_id"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v31

    .line 140
    .local v31, targetIdElm:Lorg/dom4j/Element;
    const-string v33, "emails"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 142
    .local v17, emailsElm:Lorg/dom4j/Element;
    const-string v33, "message"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 144
    .local v20, messageElm:Lorg/dom4j/Element;
    const-string v33, "notify"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v22

    .line 145
    .local v22, notifyElm:Lorg/dom4j/Element;
    move-object/from16 v0, v23

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 146
    move-object/from16 v0, v23

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 147
    move-object/from16 v0, v23

    move-object v1, v7

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 148
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 149
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 150
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 151
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 152
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 154
    const-string v33, "private_share"

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 155
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 156
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 159
    if-eqz v16, :cond_3

    .line 160
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-lt v0, v1, :cond_4

    .line 168
    .end local v18           #i:I
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 169
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-interface {v12}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 172
    .local v25, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 173
    .restart local v11       #doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v24

    .line 175
    .restart local v24       #responseElm:Lorg/dom4j/Element;
    const-string v33, "status"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v27

    .line 176
    .restart local v27       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v27 .. v27}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v26

    .line 177
    .restart local v26       #status:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 180
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v24           #responseElm:Lorg/dom4j/Element;
    .end local v26           #status:Ljava/lang/String;
    .end local v27           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v33

    move-object/from16 v13, v33

    .line 181
    .restart local v13       #e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 182
    const-string v33, "failed to parse to a document."

    .line 181
    move-object v0, v9

    move-object/from16 v1, v33

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .restart local v9       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;->getStatus()Ljava/lang/String;

    move-result-object v33

    move-object v0, v9

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 184
    throw v9

    .line 161
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v25           #result:Ljava/lang/String;
    .restart local v18       #i:I
    :cond_4
    aget-object v14, v16, v18

    .line 163
    .restart local v14       #email:Ljava/lang/String;
    const-string v33, "email"

    invoke-static/range {v33 .. v33}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 164
    .local v15, emailElm:Lorg/dom4j/Element;
    invoke-interface {v15, v14}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 160
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 187
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v12           #document:Lorg/dom4j/Document;
    .end local v14           #email:Ljava/lang/String;
    .end local v15           #emailElm:Lorg/dom4j/Element;
    .end local v17           #emailsElm:Lorg/dom4j/Element;
    .end local v18           #i:I
    .end local v20           #messageElm:Lorg/dom4j/Element;
    .end local v22           #notifyElm:Lorg/dom4j/Element;
    .end local v23           #requestElm:Lorg/dom4j/Element;
    .end local v29           #targetElm:Lorg/dom4j/Element;
    .end local v31           #targetIdElm:Lorg/dom4j/Element;
    :cond_5
    const-string v33, "soap"

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
