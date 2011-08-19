.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "RegisterNewUserMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public registerNewUser(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;
    .locals 39
    .parameter "registerNewUserRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createRegisterNewUserResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;

    move-result-object v20

    .line 48
    .local v20, registerNewUserResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;->getApiKey()Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;->getLoginName()Ljava/lang/String;

    move-result-object v17

    .line 50
    .local v17, loginName:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;->getPassword()Ljava/lang/String;

    move-result-object v18

    .line 52
    .local v18, password:Ljava/lang/String;
    const-string v36, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 53
    new-instance v10, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v10}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 54
    .local v10, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v36, "ISO-8859-1"

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 55
    const-string v36, "ISO-8859-1"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 57
    const-string v36, "register_new_user"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    .line 58
    .local v32, urlBuff:Ljava/lang/StringBuffer;
    const-string v36, "&"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v36, "api_key"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v36, "="

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v36, "&"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v36, "login"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v36, "="

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v36, "&"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v36, "password"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v36, "="

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 72
    .local v11, doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v22

    .line 74
    .local v22, responseElm:Lorg/dom4j/Element;
    const-string v36, "status"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v31

    .line 75
    .local v31, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v31 .. v31}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v30

    .line 76
    .local v30, status:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;->setStatus(Ljava/lang/String;)V

    .line 77
    const-string v36, "successful_register"

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 79
    const-string v36, "auth_token"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 81
    .local v8, authTokenElm:Lorg/dom4j/Element;
    const-string v36, "user"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v34

    .line 84
    .local v34, userElm:Lorg/dom4j/Element;
    const-string v36, "login"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 86
    .local v16, loginElm:Lorg/dom4j/Element;
    const-string v36, "email"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 88
    .local v14, emailElm:Lorg/dom4j/Element;
    const-string v36, "access_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 90
    .local v3, accessIdElm:Lorg/dom4j/Element;
    const-string v36, "user_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v35

    .line 92
    .local v35, userIdElm:Lorg/dom4j/Element;
    const-string v36, "space_amount"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v26

    .line 94
    .local v26, spaceAmountElm:Lorg/dom4j/Element;
    const-string v36, "space_used"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v29

    .line 96
    .local v29, spaceUsedElm:Lorg/dom4j/Element;
    invoke-interface {v8}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, authToken:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v7

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;->setAuthToken(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxUser()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;

    move-result-object v33

    .line 99
    .local v33, user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setLogin(Ljava/lang/String;)V

    .line 100
    invoke-interface {v14}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setEmail(Ljava/lang/String;)V

    .line 101
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setAccessId(Ljava/lang/String;)V

    .line 102
    invoke-interface/range {v35 .. v35}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    const-wide/16 v24, 0x0

    .line 105
    .local v24, spaceAmount:J
    :try_start_1
    invoke-interface/range {v26 .. v26}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v24

    .line 109
    :goto_0
    :try_start_2
    move-object/from16 v0, v33

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setSpaceAmount(J)V
    :try_end_2
    .catch Lorg/dom4j/DocumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    const-wide/16 v27, 0x0

    .line 112
    .local v27, spaceUsed:J
    :try_start_3
    invoke-interface/range {v29 .. v29}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/dom4j/DocumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v27

    .line 116
    :goto_1
    :try_start_4
    move-object/from16 v0, v33

    move-wide/from16 v1, v27

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setSpaceUsed(J)V

    .line 117
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;->setUser(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;)V
    :try_end_4
    .catch Lorg/dom4j/DocumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 212
    .end local v3           #accessIdElm:Lorg/dom4j/Element;
    .end local v7           #authToken:Ljava/lang/String;
    .end local v8           #authTokenElm:Lorg/dom4j/Element;
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v14           #emailElm:Lorg/dom4j/Element;
    .end local v16           #loginElm:Lorg/dom4j/Element;
    .end local v22           #responseElm:Lorg/dom4j/Element;
    .end local v24           #spaceAmount:J
    .end local v26           #spaceAmountElm:Lorg/dom4j/Element;
    .end local v27           #spaceUsed:J
    .end local v29           #spaceUsedElm:Lorg/dom4j/Element;
    .end local v30           #status:Ljava/lang/String;
    .end local v31           #statusElm:Lorg/dom4j/Element;
    .end local v32           #urlBuff:Ljava/lang/StringBuffer;
    .end local v33           #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .end local v34           #userElm:Lorg/dom4j/Element;
    .end local v35           #userIdElm:Lorg/dom4j/Element;
    :cond_0
    :goto_2
    return-object v20

    .line 106
    .restart local v3       #accessIdElm:Lorg/dom4j/Element;
    .restart local v7       #authToken:Ljava/lang/String;
    .restart local v8       #authTokenElm:Lorg/dom4j/Element;
    .restart local v10       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v11       #doc:Lorg/dom4j/Document;
    .restart local v14       #emailElm:Lorg/dom4j/Element;
    .restart local v16       #loginElm:Lorg/dom4j/Element;
    .restart local v22       #responseElm:Lorg/dom4j/Element;
    .restart local v24       #spaceAmount:J
    .restart local v26       #spaceAmountElm:Lorg/dom4j/Element;
    .restart local v29       #spaceUsedElm:Lorg/dom4j/Element;
    .restart local v30       #status:Ljava/lang/String;
    .restart local v31       #statusElm:Lorg/dom4j/Element;
    .restart local v32       #urlBuff:Ljava/lang/StringBuffer;
    .restart local v33       #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .restart local v34       #userElm:Lorg/dom4j/Element;
    .restart local v35       #userIdElm:Lorg/dom4j/Element;
    :catch_0
    move-exception v36

    move-object/from16 v13, v36

    .line 107
    .local v13, e:Ljava/lang/NumberFormatException;
    const-wide/high16 v24, -0x8000

    goto :goto_0

    .line 113
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v27       #spaceUsed:J
    :catch_1
    move-exception v36

    move-object/from16 v13, v36

    .line 114
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const-wide/high16 v27, -0x8000

    goto :goto_1

    .line 119
    .end local v3           #accessIdElm:Lorg/dom4j/Element;
    .end local v7           #authToken:Ljava/lang/String;
    .end local v8           #authTokenElm:Lorg/dom4j/Element;
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .end local v14           #emailElm:Lorg/dom4j/Element;
    .end local v16           #loginElm:Lorg/dom4j/Element;
    .end local v22           #responseElm:Lorg/dom4j/Element;
    .end local v24           #spaceAmount:J
    .end local v26           #spaceAmountElm:Lorg/dom4j/Element;
    .end local v27           #spaceUsed:J
    .end local v29           #spaceUsedElm:Lorg/dom4j/Element;
    .end local v30           #status:Ljava/lang/String;
    .end local v31           #statusElm:Lorg/dom4j/Element;
    .end local v33           #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .end local v34           #userElm:Lorg/dom4j/Element;
    .end local v35           #userIdElm:Lorg/dom4j/Element;
    :catch_2
    move-exception v36

    move-object/from16 v13, v36

    .line 120
    .local v13, e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 121
    const-string v36, "failed to parse to a document."

    .line 120
    move-object v0, v9

    move-object/from16 v1, v36

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .local v9, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface/range {v20 .. v20}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;->getStatus()Ljava/lang/String;

    move-result-object v36

    move-object v0, v9

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 123
    throw v9

    .line 126
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v32           #urlBuff:Ljava/lang/StringBuffer;
    :cond_1
    const-string v36, "xml"

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 128
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v12

    .line 130
    .local v12, document:Lorg/dom4j/Document;
    const-string v36, "request"

    invoke-static/range {v36 .. v36}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 131
    .local v21, requestElm:Lorg/dom4j/Element;
    move-object v0, v12

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 134
    const-string v36, "action"

    invoke-static/range {v36 .. v36}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 136
    .local v4, actionElm:Lorg/dom4j/Element;
    const-string v36, "api_key"

    invoke-static/range {v36 .. v36}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 138
    .local v6, apiKeyElm:Lorg/dom4j/Element;
    const-string v36, "login"

    invoke-static/range {v36 .. v36}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 140
    .local v15, inLoginElm:Lorg/dom4j/Element;
    const-string v36, "password"

    invoke-static/range {v36 .. v36}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 141
    .local v19, passwordElm:Lorg/dom4j/Element;
    move-object/from16 v0, v21

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 142
    move-object/from16 v0, v21

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 143
    move-object/from16 v0, v21

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 144
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 146
    const-string v36, "register_new_user"

    move-object v0, v4

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 147
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 148
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-interface {v12}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 152
    .local v23, result:Ljava/lang/String;
    :try_start_5
    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 153
    .restart local v11       #doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v22

    .line 155
    .restart local v22       #responseElm:Lorg/dom4j/Element;
    const-string v36, "status"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v31

    .line 156
    .restart local v31       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v31 .. v31}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v30

    .line 157
    .restart local v30       #status:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;->setStatus(Ljava/lang/String;)V

    .line 158
    const-string v36, "successful_register"

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 160
    const-string v36, "auth_token"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 162
    .restart local v8       #authTokenElm:Lorg/dom4j/Element;
    const-string v36, "user"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v34

    .line 165
    .restart local v34       #userElm:Lorg/dom4j/Element;
    const-string v36, "login"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 167
    .restart local v16       #loginElm:Lorg/dom4j/Element;
    const-string v36, "email"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 169
    .restart local v14       #emailElm:Lorg/dom4j/Element;
    const-string v36, "access_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 171
    .restart local v3       #accessIdElm:Lorg/dom4j/Element;
    const-string v36, "user_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v35

    .line 173
    .restart local v35       #userIdElm:Lorg/dom4j/Element;
    const-string v36, "space_amount"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v26

    .line 175
    .restart local v26       #spaceAmountElm:Lorg/dom4j/Element;
    const-string v36, "space_used"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v29

    .line 177
    .restart local v29       #spaceUsedElm:Lorg/dom4j/Element;
    invoke-interface {v8}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v7

    .line 178
    .restart local v7       #authToken:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v7

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;->setAuthToken(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxUser()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;

    move-result-object v33

    .line 180
    .restart local v33       #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setLogin(Ljava/lang/String;)V

    .line 181
    invoke-interface {v14}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setEmail(Ljava/lang/String;)V

    .line 182
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setAccessId(Ljava/lang/String;)V

    .line 183
    invoke-interface/range {v35 .. v35}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setUserId(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/dom4j/DocumentException; {:try_start_5 .. :try_end_5} :catch_3

    .line 184
    const-wide/16 v24, 0x0

    .line 186
    .restart local v24       #spaceAmount:J
    :try_start_6
    invoke-interface/range {v26 .. v26}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/dom4j/DocumentException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-wide v24

    .line 190
    :goto_3
    :try_start_7
    move-object/from16 v0, v33

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setSpaceAmount(J)V
    :try_end_7
    .catch Lorg/dom4j/DocumentException; {:try_start_7 .. :try_end_7} :catch_3

    .line 191
    const-wide/16 v27, 0x0

    .line 193
    .restart local v27       #spaceUsed:J
    :try_start_8
    invoke-interface/range {v29 .. v29}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/dom4j/DocumentException; {:try_start_8 .. :try_end_8} :catch_3

    move-result-wide v27

    .line 197
    :goto_4
    :try_start_9
    move-object/from16 v0, v33

    move-wide/from16 v1, v27

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setSpaceUsed(J)V

    .line 198
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;->setUser(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;)V
    :try_end_9
    .catch Lorg/dom4j/DocumentException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 200
    .end local v3           #accessIdElm:Lorg/dom4j/Element;
    .end local v7           #authToken:Ljava/lang/String;
    .end local v8           #authTokenElm:Lorg/dom4j/Element;
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v14           #emailElm:Lorg/dom4j/Element;
    .end local v16           #loginElm:Lorg/dom4j/Element;
    .end local v22           #responseElm:Lorg/dom4j/Element;
    .end local v24           #spaceAmount:J
    .end local v26           #spaceAmountElm:Lorg/dom4j/Element;
    .end local v27           #spaceUsed:J
    .end local v29           #spaceUsedElm:Lorg/dom4j/Element;
    .end local v30           #status:Ljava/lang/String;
    .end local v31           #statusElm:Lorg/dom4j/Element;
    .end local v33           #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .end local v34           #userElm:Lorg/dom4j/Element;
    .end local v35           #userIdElm:Lorg/dom4j/Element;
    :catch_3
    move-exception v36

    move-object/from16 v13, v36

    .line 201
    .restart local v13       #e:Lorg/dom4j/DocumentException;
    new-instance v9, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 202
    const-string v36, "failed to parse to a document."

    .line 201
    move-object v0, v9

    move-object/from16 v1, v36

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .restart local v9       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface/range {v20 .. v20}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;->getStatus()Ljava/lang/String;

    move-result-object v36

    move-object v0, v9

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 204
    throw v9

    .line 187
    .end local v9           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .restart local v3       #accessIdElm:Lorg/dom4j/Element;
    .restart local v7       #authToken:Ljava/lang/String;
    .restart local v8       #authTokenElm:Lorg/dom4j/Element;
    .restart local v11       #doc:Lorg/dom4j/Document;
    .restart local v14       #emailElm:Lorg/dom4j/Element;
    .restart local v16       #loginElm:Lorg/dom4j/Element;
    .restart local v22       #responseElm:Lorg/dom4j/Element;
    .restart local v24       #spaceAmount:J
    .restart local v26       #spaceAmountElm:Lorg/dom4j/Element;
    .restart local v29       #spaceUsedElm:Lorg/dom4j/Element;
    .restart local v30       #status:Ljava/lang/String;
    .restart local v31       #statusElm:Lorg/dom4j/Element;
    .restart local v33       #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .restart local v34       #userElm:Lorg/dom4j/Element;
    .restart local v35       #userIdElm:Lorg/dom4j/Element;
    :catch_4
    move-exception v36

    move-object/from16 v13, v36

    .line 188
    .local v13, e:Ljava/lang/NumberFormatException;
    const-wide/high16 v24, -0x8000

    goto :goto_3

    .line 194
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v27       #spaceUsed:J
    :catch_5
    move-exception v36

    move-object/from16 v13, v36

    .line 195
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const-wide/high16 v27, -0x8000

    goto :goto_4

    .line 207
    .end local v3           #accessIdElm:Lorg/dom4j/Element;
    .end local v4           #actionElm:Lorg/dom4j/Element;
    .end local v6           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authToken:Ljava/lang/String;
    .end local v8           #authTokenElm:Lorg/dom4j/Element;
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v12           #document:Lorg/dom4j/Document;
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .end local v14           #emailElm:Lorg/dom4j/Element;
    .end local v15           #inLoginElm:Lorg/dom4j/Element;
    .end local v16           #loginElm:Lorg/dom4j/Element;
    .end local v19           #passwordElm:Lorg/dom4j/Element;
    .end local v21           #requestElm:Lorg/dom4j/Element;
    .end local v22           #responseElm:Lorg/dom4j/Element;
    .end local v23           #result:Ljava/lang/String;
    .end local v24           #spaceAmount:J
    .end local v26           #spaceAmountElm:Lorg/dom4j/Element;
    .end local v27           #spaceUsed:J
    .end local v29           #spaceUsedElm:Lorg/dom4j/Element;
    .end local v30           #status:Ljava/lang/String;
    .end local v31           #statusElm:Lorg/dom4j/Element;
    .end local v33           #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .end local v34           #userElm:Lorg/dom4j/Element;
    .end local v35           #userIdElm:Lorg/dom4j/Element;
    :cond_2
    const-string v36, "soap"

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method
