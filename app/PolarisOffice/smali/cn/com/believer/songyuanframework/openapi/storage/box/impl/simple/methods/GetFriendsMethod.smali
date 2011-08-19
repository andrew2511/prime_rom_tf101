.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "GetFriendsMethod.java"


# static fields
.field public static final PARAMS_KEY_NOZIP:Ljava/lang/String; = "nozip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;
    .locals 29
    .parameter "getFriendsRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createGetFriendsResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;

    move-result-object v14

    .line 57
    .local v14, getFriendsResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;->getParams()[Ljava/lang/String;

    move-result-object v18

    .line 61
    .local v18, params:[Ljava/lang/String;
    const-string v26, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 63
    const-string v26, "get_friends"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    .line 64
    .local v25, urlBuff:Ljava/lang/StringBuffer;
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v26, "api_key"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v26, "auth_token"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    if-nez v18, :cond_2

    .line 73
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v26, "params[]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 88
    .local v9, doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v21

    .line 90
    .local v21, responseElm:Lorg/dom4j/Element;
    const-string v26, "status"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 91
    .local v24, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v24 .. v24}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v23

    .line 92
    .local v23, status:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setStatus(Ljava/lang/String;)V

    .line 93
    const-string v26, "s_get_friends"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 95
    const-string v26, "friends"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 97
    .local v12, friendsElm:Lorg/dom4j/Element;
    if-eqz v18, :cond_3

    .line 98
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    const-string v27, "nozip"

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 100
    invoke-static {v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toFriendsList(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v13

    .line 101
    .local v13, friendsList:Ljava/util/List;
    invoke-interface {v14, v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setFriendList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v12           #friendsElm:Lorg/dom4j/Element;
    .end local v13           #friendsList:Ljava/util/List;
    .end local v21           #responseElm:Lorg/dom4j/Element;
    .end local v23           #status:Ljava/lang/String;
    .end local v24           #statusElm:Lorg/dom4j/Element;
    .end local v25           #urlBuff:Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    return-object v14

    .line 78
    .restart local v25       #urlBuff:Ljava/lang/StringBuffer;
    :cond_2
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    move v0, v15

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 79
    aget-object v16, v18, v15

    .line 80
    .local v16, param:Ljava/lang/String;
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v26, "params[]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 104
    .end local v15           #i:I
    .end local v16           #param:Ljava/lang/String;
    .restart local v9       #doc:Lorg/dom4j/Document;
    .restart local v12       #friendsElm:Lorg/dom4j/Element;
    .restart local v21       #responseElm:Lorg/dom4j/Element;
    .restart local v23       #status:Ljava/lang/String;
    .restart local v24       #statusElm:Lorg/dom4j/Element;
    :cond_3
    :try_start_1
    invoke-interface {v12}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v26

    .line 103
    move-object v0, v14

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setEncodedFriends(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 107
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v12           #friendsElm:Lorg/dom4j/Element;
    .end local v21           #responseElm:Lorg/dom4j/Element;
    .end local v23           #status:Ljava/lang/String;
    .end local v24           #statusElm:Lorg/dom4j/Element;
    :catch_0
    move-exception v26

    move-object/from16 v11, v26

    .line 108
    .local v11, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 109
    const-string v26, "failed to parse to a document."

    .line 108
    move-object v0, v8

    move-object/from16 v1, v26

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->getStatus()Ljava/lang/String;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 111
    throw v8

    .line 114
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v25           #urlBuff:Ljava/lang/StringBuffer;
    :cond_4
    const-string v26, "xml"

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 116
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v10

    .line 118
    .local v10, document:Lorg/dom4j/Document;
    const-string v26, "request"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 119
    .local v20, requestElm:Lorg/dom4j/Element;
    move-object v0, v10

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 122
    const-string v26, "action"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 124
    .local v3, actionElm:Lorg/dom4j/Element;
    const-string v26, "api_key"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 126
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v26, "auth_token"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 128
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v26, "params"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 129
    .local v19, paramsElm:Lorg/dom4j/Element;
    move-object/from16 v0, v20

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 130
    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 131
    move-object/from16 v0, v20

    move-object v1, v7

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 132
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 134
    const-string v26, "get_friends"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 135
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 136
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 137
    if-eqz v18, :cond_5

    .line 138
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    move v0, v15

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 146
    .end local v15           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-interface {v10}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 148
    .local v22, result:Ljava/lang/String;
    :try_start_2
    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 149
    .restart local v9       #doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v21

    .line 151
    .restart local v21       #responseElm:Lorg/dom4j/Element;
    const-string v26, "status"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 152
    .restart local v24       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v24 .. v24}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v23

    .line 153
    .restart local v23       #status:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setStatus(Ljava/lang/String;)V

    .line 154
    const-string v26, "s_get_friends"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 156
    const-string v26, "friends"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 158
    .restart local v12       #friendsElm:Lorg/dom4j/Element;
    if-eqz v18, :cond_7

    .line 159
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    const-string v27, "nozip"

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 161
    invoke-static {v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toFriendsList(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v13

    .line 162
    .restart local v13       #friendsList:Ljava/util/List;
    invoke-interface {v14, v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setFriendList(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/dom4j/DocumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 168
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v12           #friendsElm:Lorg/dom4j/Element;
    .end local v13           #friendsList:Ljava/util/List;
    .end local v21           #responseElm:Lorg/dom4j/Element;
    .end local v23           #status:Ljava/lang/String;
    .end local v24           #statusElm:Lorg/dom4j/Element;
    :catch_1
    move-exception v26

    move-object/from16 v11, v26

    .line 169
    .restart local v11       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 170
    const-string v26, "failed to parse to a document."

    .line 169
    move-object v0, v8

    move-object/from16 v1, v26

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->getStatus()Ljava/lang/String;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 172
    throw v8

    .line 139
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v22           #result:Ljava/lang/String;
    .restart local v15       #i:I
    :cond_6
    aget-object v16, v18, v15

    .line 141
    .restart local v16       #param:Ljava/lang/String;
    const-string v26, "item"

    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 142
    .local v17, paramElm:Lorg/dom4j/Element;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 138
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 165
    .end local v15           #i:I
    .end local v16           #param:Ljava/lang/String;
    .end local v17           #paramElm:Lorg/dom4j/Element;
    .restart local v9       #doc:Lorg/dom4j/Document;
    .restart local v12       #friendsElm:Lorg/dom4j/Element;
    .restart local v21       #responseElm:Lorg/dom4j/Element;
    .restart local v22       #result:Ljava/lang/String;
    .restart local v23       #status:Ljava/lang/String;
    .restart local v24       #statusElm:Lorg/dom4j/Element;
    :cond_7
    :try_start_3
    invoke-interface {v12}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v26

    .line 164
    move-object v0, v14

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setEncodedFriends(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/dom4j/DocumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 175
    .end local v3           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v10           #document:Lorg/dom4j/Document;
    .end local v12           #friendsElm:Lorg/dom4j/Element;
    .end local v19           #paramsElm:Lorg/dom4j/Element;
    .end local v20           #requestElm:Lorg/dom4j/Element;
    .end local v21           #responseElm:Lorg/dom4j/Element;
    .end local v22           #result:Ljava/lang/String;
    .end local v23           #status:Ljava/lang/String;
    .end local v24           #statusElm:Lorg/dom4j/Element;
    :cond_8
    const-string v26, "soap"

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
