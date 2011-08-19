.class public Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "GetBrowseNodesWebservice.java"


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "webConnector"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 37
    return-void
.end method

.method public static getNewBrowseNodesDescriber(Lcom/amazon/kcp/store/models/internal/CBrowseModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 89
    new-instance v0, Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/BrowseNode;-><init>()V

    .line 111
    new-instance v1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 113
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 114
    if-nez v2, :cond_0

    move-object v0, v8

    .line 329
    :goto_0
    return-object v0

    .line 115
    :cond_0
    if-eqz v6, :cond_1

    const-string v3, "Response"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    .line 118
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 119
    if-nez v4, :cond_2

    move-object v0, v8

    goto :goto_0

    :cond_1
    move v3, v7

    .line 115
    goto :goto_1

    .line 120
    :cond_2
    if-eqz v3, :cond_3

    const-string v3, "Children"

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    .line 123
    :goto_2
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 124
    if-nez v5, :cond_4

    move-object v0, v8

    goto :goto_0

    :cond_3
    move v3, v7

    .line 120
    goto :goto_2

    .line 125
    :cond_4
    if-eqz v3, :cond_5

    const-string v3, "ChildCount"

    invoke-virtual {v5, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v6

    .line 126
    :goto_3
    if-eqz v3, :cond_6

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$1;-><init>(Lcom/amazon/kcp/store/models/internal/CBrowseModel;)V

    invoke-virtual {v5, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v6

    .line 143
    :goto_4
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 144
    if-nez v4, :cond_7

    move-object v0, v8

    goto :goto_0

    :cond_5
    move v3, v7

    .line 125
    goto :goto_3

    :cond_6
    move v3, v7

    .line 126
    goto :goto_4

    .line 145
    :cond_7
    if-eqz v3, :cond_8

    const-string v3, "Items"

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v6

    .line 146
    :goto_5
    if-eqz v3, :cond_9

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$2;-><init>(Lcom/amazon/kcp/store/models/internal/CBrowseModel;)V

    invoke-virtual {v4, v9, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v6

    .line 155
    :goto_6
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 156
    if-nez v4, :cond_a

    move-object v0, v8

    goto :goto_0

    :cond_8
    move v3, v7

    .line 145
    goto :goto_5

    :cond_9
    move v3, v7

    .line 146
    goto :goto_6

    .line 157
    :cond_a
    if-eqz v3, :cond_b

    const-string v3, "Item"

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v6

    .line 158
    :goto_7
    if-eqz v3, :cond_c

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$3;

    invoke-direct {v3, v0, p0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$3;-><init>(Lcom/amazon/kcp/store/models/internal/BrowseNode;Lcom/amazon/kcp/store/models/internal/CBrowseModel;)V

    invoke-virtual {v4, v9, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v6

    .line 170
    :goto_8
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 171
    if-nez v5, :cond_d

    move-object v0, v8

    goto/16 :goto_0

    :cond_b
    move v3, v7

    .line 157
    goto :goto_7

    :cond_c
    move v3, v7

    .line 158
    goto :goto_8

    .line 172
    :cond_d
    if-eqz v3, :cond_e

    const-string v3, "Name"

    invoke-virtual {v5, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v6

    .line 173
    :goto_9
    if-eqz v3, :cond_f

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$4;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$4;-><init>(Lcom/amazon/kcp/store/models/internal/BrowseNode;)V

    invoke-virtual {v5, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v6

    .line 183
    :goto_a
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 184
    if-nez v5, :cond_10

    move-object v0, v8

    goto/16 :goto_0

    :cond_e
    move v3, v7

    .line 172
    goto :goto_9

    :cond_f
    move v3, v7

    .line 173
    goto :goto_a

    .line 185
    :cond_10
    if-eqz v3, :cond_11

    const-string v3, "NodeID"

    invoke-virtual {v5, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v6

    .line 186
    :goto_b
    if-eqz v3, :cond_12

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$5;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$5;-><init>(Lcom/amazon/kcp/store/models/internal/BrowseNode;)V

    invoke-virtual {v5, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v6

    .line 203
    :goto_c
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 204
    if-nez v4, :cond_13

    move-object v0, v8

    goto/16 :goto_0

    :cond_11
    move v3, v7

    .line 185
    goto :goto_b

    :cond_12
    move v3, v7

    .line 186
    goto :goto_c

    .line 205
    :cond_13
    if-eqz v3, :cond_14

    const-string v3, "Count"

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v6

    .line 206
    :goto_d
    if-eqz v3, :cond_15

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$6;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$6;-><init>(Lcom/amazon/kcp/store/models/internal/BrowseNode;)V

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v6

    .line 222
    :goto_e
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 223
    if-nez v2, :cond_16

    move-object v0, v8

    goto/16 :goto_0

    :cond_14
    move v3, v7

    .line 205
    goto :goto_d

    :cond_15
    move v3, v7

    .line 206
    goto :goto_e

    .line 224
    :cond_16
    if-eqz v3, :cond_17

    const-string v3, "Ancestors"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v3, v6

    .line 227
    :goto_f
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 228
    if-nez v4, :cond_18

    move-object v0, v8

    goto/16 :goto_0

    :cond_17
    move v3, v7

    .line 224
    goto :goto_f

    .line 229
    :cond_18
    if-eqz v3, :cond_19

    const-string v3, "AncestorCount"

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v6

    .line 230
    :goto_10
    if-eqz v3, :cond_1a

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$7;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$7;-><init>(Lcom/amazon/kcp/store/models/internal/CBrowseModel;)V

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v6

    .line 247
    :goto_11
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 248
    if-nez v2, :cond_1b

    move-object v0, v8

    goto/16 :goto_0

    :cond_19
    move v3, v7

    .line 229
    goto :goto_10

    :cond_1a
    move v3, v7

    .line 230
    goto :goto_11

    .line 249
    :cond_1b
    if-eqz v3, :cond_1c

    const-string v3, "Items"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v6

    .line 250
    :goto_12
    if-eqz v3, :cond_1d

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$8;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$8;-><init>(Lcom/amazon/kcp/store/models/internal/CBrowseModel;)V

    invoke-virtual {v2, v9, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v6

    .line 259
    :goto_13
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 260
    if-nez v2, :cond_1e

    move-object v0, v8

    goto/16 :goto_0

    :cond_1c
    move v3, v7

    .line 249
    goto :goto_12

    :cond_1d
    move v3, v7

    .line 250
    goto :goto_13

    .line 261
    :cond_1e
    if-eqz v3, :cond_1f

    const-string v3, "Item"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v6

    .line 262
    :goto_14
    if-eqz v3, :cond_20

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$9;

    invoke-direct {v3, p0, v0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$9;-><init>(Lcom/amazon/kcp/store/models/internal/CBrowseModel;Lcom/amazon/kcp/store/models/internal/BrowseNode;)V

    invoke-virtual {v2, v9, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v3, v6

    .line 271
    :goto_15
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 272
    if-nez v4, :cond_21

    move-object v0, v8

    goto/16 :goto_0

    :cond_1f
    move v3, v7

    .line 261
    goto :goto_14

    :cond_20
    move v3, v7

    .line 262
    goto :goto_15

    .line 273
    :cond_21
    if-eqz v3, :cond_22

    const-string v3, "Name"

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v3, v6

    .line 274
    :goto_16
    if-eqz v3, :cond_23

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$10;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$10;-><init>(Lcom/amazon/kcp/store/models/internal/BrowseNode;)V

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v6

    .line 284
    :goto_17
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 285
    if-nez v4, :cond_24

    move-object v0, v8

    goto/16 :goto_0

    :cond_22
    move v3, v7

    .line 273
    goto :goto_16

    :cond_23
    move v3, v7

    .line 274
    goto :goto_17

    .line 286
    :cond_24
    if-eqz v3, :cond_25

    const-string v3, "NodeID"

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v6

    .line 287
    :goto_18
    if-eqz v3, :cond_26

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$11;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$11;-><init>(Lcom/amazon/kcp/store/models/internal/BrowseNode;)V

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v6

    .line 304
    :goto_19
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 305
    if-nez v2, :cond_27

    move-object v0, v8

    goto/16 :goto_0

    :cond_25
    move v3, v7

    .line 286
    goto :goto_18

    :cond_26
    move v3, v7

    .line 287
    goto :goto_19

    .line 306
    :cond_27
    if-eqz v3, :cond_28

    const-string v3, "Count"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v3, v6

    .line 307
    :goto_1a
    if-eqz v3, :cond_29

    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$12;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$12;-><init>(Lcom/amazon/kcp/store/models/internal/BrowseNode;)V

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v6

    .line 324
    :goto_1b
    if-nez v0, :cond_2a

    move-object v0, v8

    .line 326
    goto/16 :goto_0

    :cond_28
    move v3, v7

    .line 306
    goto :goto_1a

    :cond_29
    move v0, v7

    .line 307
    goto :goto_1b

    :cond_2a
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public createGetBrowseNodesRequest(Lcom/amazon/kcp/store/models/internal/CBrowseModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 51
    .line 55
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getGetBrowseNodesURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->getNodeId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?nodeID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_0
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;->addClientID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    if-eqz v6, :cond_2

    invoke-static {p1}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;->getNewBrowseNodesDescriber(Lcom/amazon/kcp/store/models/internal/CBrowseModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v3, v2

    move v2, v6

    .line 66
    :goto_0
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    invoke-static {v2, v1, v3, p2, v6}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v1

    .line 68
    :goto_1
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 71
    const-string v0, "text/xml"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 74
    :cond_1
    return-object v1

    :cond_2
    move-object v2, v7

    .line 64
    :cond_3
    const/4 v3, 0x0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_0

    :cond_4
    move-object v1, v7

    goto :goto_1
.end method
