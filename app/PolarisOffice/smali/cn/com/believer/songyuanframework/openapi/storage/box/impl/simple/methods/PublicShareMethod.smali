.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "PublicShareMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public publicShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;
    .locals 38
    .parameter "publicShareRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createPublicShareResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;

    move-result-object v24

    .line 51
    .local v24, publicShareResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getMessage()Ljava/lang/String;

    move-result-object v18

    .line 54
    .local v18, message:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getTarget()Ljava/lang/String;

    move-result-object v30

    .line 55
    .local v30, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getTargetId()Ljava/lang/String;

    move-result-object v32

    .line 56
    .local v32, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getPassword()Ljava/lang/String;

    move-result-object v20

    .line 57
    .local v20, password:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .line 59
    .local v15, emails:[Ljava/lang/String;
    const-string v35, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 61
    new-instance v9, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v9}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 62
    .local v9, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v35, "ISO-8859-1"

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 64
    const-string v35, "public_share"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    .line 65
    .local v34, urlBuff:Ljava/lang/StringBuffer;
    const-string v35, "&"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v35, "api_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    move-object/from16 v0, v34

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v35, "&"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v35, "auth_token"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v35, "&"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v35, "target"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v35, "&"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v35, "target_id"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v35, "&"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v35, "password"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v35, "&"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v35, "message"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    if-nez v15, :cond_2

    .line 90
    const-string v35, "&"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v35, "emails[]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 104
    .local v10, doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v26

    .line 106
    .local v26, responseElm:Lorg/dom4j/Element;
    const-string v35, "status"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v29

    .line 107
    .local v29, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v29 .. v29}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v28

    .line 108
    .local v28, status:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->setStatus(Ljava/lang/String;)V

    .line 109
    const-string v35, "share_ok"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 111
    const-string v35, "public_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 112
    .local v23, publicNameElm:Lorg/dom4j/Element;
    invoke-interface/range {v23 .. v23}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v22

    .line 113
    .local v22, publicName:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->setPublicName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v22           #publicName:Ljava/lang/String;
    .end local v23           #publicNameElm:Lorg/dom4j/Element;
    .end local v26           #responseElm:Lorg/dom4j/Element;
    .end local v28           #status:Ljava/lang/String;
    .end local v29           #statusElm:Lorg/dom4j/Element;
    .end local v34           #urlBuff:Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    return-object v24

    .line 94
    .restart local v9       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v34       #urlBuff:Ljava/lang/StringBuffer;
    :cond_2
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move-object v0, v15

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    .line 95
    aget-object v13, v15, v17

    .line 96
    .local v13, email:Ljava/lang/String;
    const-string v35, "&"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v35, "emails[]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    move-object/from16 v0, v34

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 115
    .end local v13           #email:Ljava/lang/String;
    .end local v17           #i:I
    :catch_0
    move-exception v35

    move-object/from16 v12, v35

    .line 116
    .local v12, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 117
    const-string v35, "failed to parse to a document."

    .line 116
    move-object v0, v8

    move-object/from16 v1, v35

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface/range {v24 .. v24}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->getStatus()Ljava/lang/String;

    move-result-object v35

    move-object v0, v8

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 119
    throw v8

    .line 122
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v34           #urlBuff:Ljava/lang/StringBuffer;
    :cond_3
    const-string v35, "xml"

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 124
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v11

    .line 126
    .local v11, document:Lorg/dom4j/Document;
    const-string v35, "request"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v25

    .line 127
    .local v25, requestElm:Lorg/dom4j/Element;
    move-object v0, v11

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 130
    const-string v35, "action"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 132
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v35, "api_key"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 134
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v35, "auth_token"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 136
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v35, "target"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v31

    .line 138
    .local v31, targetElm:Lorg/dom4j/Element;
    const-string v35, "target_id"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v33

    .line 140
    .local v33, targetIdElm:Lorg/dom4j/Element;
    const-string v35, "password"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 142
    .local v21, passwordElm:Lorg/dom4j/Element;
    const-string v35, "message"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 144
    .local v19, messageElm:Lorg/dom4j/Element;
    const-string v35, "emails"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 145
    .local v16, emailsElm:Lorg/dom4j/Element;
    move-object/from16 v0, v25

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 146
    move-object/from16 v0, v25

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 147
    move-object/from16 v0, v25

    move-object v1, v7

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 148
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 149
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 150
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 151
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 152
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 154
    const-string v35, "public_share"

    move-object v0, v3

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 155
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 156
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 161
    if-eqz v15, :cond_4

    .line 162
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_2
    move-object v0, v15

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v17

    move/from16 v1, v35

    if-lt v0, v1, :cond_5

    .line 170
    .end local v17           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-interface {v11}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 172
    .local v27, result:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 173
    .restart local v10       #doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v26

    .line 175
    .restart local v26       #responseElm:Lorg/dom4j/Element;
    const-string v35, "status"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v29

    .line 176
    .restart local v29       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v29 .. v29}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v28

    .line 177
    .restart local v28       #status:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->setStatus(Ljava/lang/String;)V

    .line 178
    const-string v35, "share_ok"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 180
    const-string v35, "public_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 181
    .restart local v23       #publicNameElm:Lorg/dom4j/Element;
    invoke-interface/range {v23 .. v23}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v22

    .line 182
    .restart local v22       #publicName:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->setPublicName(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 184
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v22           #publicName:Ljava/lang/String;
    .end local v23           #publicNameElm:Lorg/dom4j/Element;
    .end local v26           #responseElm:Lorg/dom4j/Element;
    .end local v28           #status:Ljava/lang/String;
    .end local v29           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v35

    move-object/from16 v12, v35

    .line 185
    .restart local v12       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 186
    const-string v35, "failed to parse to a document."

    .line 185
    move-object v0, v8

    move-object/from16 v1, v35

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface/range {v24 .. v24}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->getStatus()Ljava/lang/String;

    move-result-object v35

    move-object v0, v8

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 188
    throw v8

    .line 163
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v27           #result:Ljava/lang/String;
    .restart local v17       #i:I
    :cond_5
    aget-object v13, v15, v17

    .line 165
    .restart local v13       #email:Ljava/lang/String;
    const-string v35, "item"

    invoke-static/range {v35 .. v35}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 166
    .local v14, emailElm:Lorg/dom4j/Element;
    invoke-interface {v14, v13}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 162
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 191
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v11           #document:Lorg/dom4j/Document;
    .end local v13           #email:Ljava/lang/String;
    .end local v14           #emailElm:Lorg/dom4j/Element;
    .end local v16           #emailsElm:Lorg/dom4j/Element;
    .end local v17           #i:I
    .end local v19           #messageElm:Lorg/dom4j/Element;
    .end local v21           #passwordElm:Lorg/dom4j/Element;
    .end local v25           #requestElm:Lorg/dom4j/Element;
    .end local v31           #targetElm:Lorg/dom4j/Element;
    .end local v33           #targetIdElm:Lorg/dom4j/Element;
    :cond_6
    const-string v35, "soap"

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
