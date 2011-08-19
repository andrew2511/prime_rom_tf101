.class public Lcom/amazon/kcp/internal/webservices/DetailsWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "DetailsWebservice.java"


# static fields
.field private static final URL_KINDLE_STORE_DETAILS_SIMS_REVIEWS:Ljava/lang/String; = "&responseGroups=medium,addSims,addCustomerReviews"


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "webConnector"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 42
    return-void
.end method

.method public static getNewDetailsDescriber(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 94
    new-instance v0, Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/BookDetails;-><init>()V

    .line 169
    new-instance v1, Lcom/amazon/kcp/store/models/internal/BookInfo;

    invoke-direct {v1}, Lcom/amazon/kcp/store/models/internal/BookInfo;-><init>()V

    .line 170
    new-instance v2, Lcom/amazon/kcp/store/models/internal/ReviewInfo;

    invoke-direct {v2}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;-><init>()V

    .line 175
    new-instance v3, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 177
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 178
    if-nez v4, :cond_0

    move-object v0, v10

    .line 1120
    :goto_0
    return-object v0

    .line 179
    :cond_0
    if-eqz v8, :cond_1

    const-string v5, "Response"

    invoke-virtual {v4, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    .line 182
    :goto_1
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 183
    if-nez v6, :cond_2

    move-object v0, v10

    goto :goto_0

    :cond_1
    move v5, v9

    .line 179
    goto :goto_1

    .line 184
    :cond_2
    if-eqz v5, :cond_3

    const-string v5, "TotalItems"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v8

    .line 185
    :goto_2
    if-eqz v5, :cond_4

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$1;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$1;-><init>(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v8

    .line 202
    :goto_3
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 203
    if-nez v6, :cond_5

    move-object v0, v10

    goto :goto_0

    :cond_3
    move v5, v9

    .line 184
    goto :goto_2

    :cond_4
    move v5, v9

    .line 185
    goto :goto_3

    .line 204
    :cond_5
    if-eqz v5, :cond_6

    const-string v5, "TotalPages"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v8

    .line 205
    :goto_4
    if-eqz v5, :cond_7

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$2;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$2;-><init>(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v8

    .line 222
    :goto_5
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 223
    if-nez v6, :cond_8

    move-object v0, v10

    goto :goto_0

    :cond_6
    move v5, v9

    .line 204
    goto :goto_4

    :cond_7
    move v5, v9

    .line 205
    goto :goto_5

    .line 224
    :cond_8
    if-eqz v5, :cond_9

    const-string v5, "TotalItemsInThisRequest"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v8

    .line 225
    :goto_6
    if-eqz v5, :cond_a

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$3;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$3;-><init>(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v8

    .line 242
    :goto_7
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 243
    if-nez v4, :cond_b

    move-object v0, v10

    goto :goto_0

    :cond_9
    move v5, v9

    .line 224
    goto :goto_6

    :cond_a
    move v5, v9

    .line 225
    goto :goto_7

    .line 244
    :cond_b
    if-eqz v5, :cond_c

    const-string v5, "Items"

    invoke-virtual {v4, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v8

    .line 245
    :goto_8
    if-eqz v5, :cond_d

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$4;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$4;-><init>(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)V

    invoke-virtual {v4, v11, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v8

    .line 254
    :goto_9
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 255
    if-eqz v5, :cond_e

    const-string v5, "Item"

    invoke-virtual {v4, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v8

    .line 256
    :goto_a
    if-eqz v5, :cond_f

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$5;

    invoke-direct {v5, p0, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$5;-><init>(Lcom/amazon/kcp/store/models/internal/CDetailsModel;Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v4, v11, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v8

    .line 265
    :goto_b
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 266
    if-nez v6, :cond_10

    move-object v0, v10

    goto/16 :goto_0

    :cond_c
    move v5, v9

    .line 244
    goto :goto_8

    :cond_d
    move v5, v9

    .line 245
    goto :goto_9

    :cond_e
    move v5, v9

    .line 255
    goto :goto_a

    :cond_f
    move v5, v9

    .line 256
    goto :goto_b

    .line 267
    :cond_10
    if-eqz v5, :cond_11

    const-string v5, "ASIN"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v8

    .line 268
    :goto_c
    if-eqz v5, :cond_12

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$6;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$6;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v8

    .line 276
    :goto_d
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 277
    if-eqz v5, :cond_13

    const-string v5, "ItemAttributes"

    invoke-virtual {v4, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v8

    .line 280
    :goto_e
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 281
    if-nez v6, :cond_14

    move-object v0, v10

    goto/16 :goto_0

    :cond_11
    move v5, v9

    .line 267
    goto :goto_c

    :cond_12
    move v5, v9

    .line 268
    goto :goto_d

    :cond_13
    move v5, v9

    .line 277
    goto :goto_e

    .line 282
    :cond_14
    if-eqz v5, :cond_15

    const-string v5, "CoverImage"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v8

    .line 283
    :goto_f
    if-eqz v5, :cond_16

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$7;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$7;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_16

    move v5, v8

    .line 292
    :goto_10
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 293
    if-nez v6, :cond_17

    move-object v0, v10

    goto/16 :goto_0

    :cond_15
    move v5, v9

    .line 282
    goto :goto_f

    :cond_16
    move v5, v9

    .line 283
    goto :goto_10

    .line 294
    :cond_17
    if-eqz v5, :cond_18

    const-string v5, "Title"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    move v5, v8

    .line 295
    :goto_11
    if-eqz v5, :cond_19

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$8;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$8;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_19

    move v5, v8

    .line 304
    :goto_12
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 305
    if-nez v6, :cond_1a

    move-object v0, v10

    goto/16 :goto_0

    :cond_18
    move v5, v9

    .line 294
    goto :goto_11

    :cond_19
    move v5, v9

    .line 295
    goto :goto_12

    .line 306
    :cond_1a
    if-eqz v5, :cond_1b

    const-string v5, "Authors"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v8

    .line 307
    :goto_13
    if-eqz v5, :cond_1c

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$9;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$9;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v8

    .line 316
    :goto_14
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 317
    if-nez v6, :cond_1d

    move-object v0, v10

    goto/16 :goto_0

    :cond_1b
    move v5, v9

    .line 306
    goto :goto_13

    :cond_1c
    move v5, v9

    .line 307
    goto :goto_14

    .line 318
    :cond_1d
    if-eqz v5, :cond_1e

    const-string v5, "Rating"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v8

    .line 319
    :goto_15
    if-eqz v5, :cond_1f

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$10;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$10;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move v5, v8

    .line 336
    :goto_16
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 337
    if-nez v6, :cond_20

    move-object v0, v10

    goto/16 :goto_0

    :cond_1e
    move v5, v9

    .line 318
    goto :goto_15

    :cond_1f
    move v5, v9

    .line 319
    goto :goto_16

    .line 338
    :cond_20
    if-eqz v5, :cond_21

    const-string v5, "ShouldPreorder"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    move v5, v8

    .line 339
    :goto_17
    if-eqz v5, :cond_22

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$11;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$11;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v5, v8

    .line 356
    :goto_18
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 357
    if-nez v6, :cond_23

    move-object v0, v10

    goto/16 :goto_0

    :cond_21
    move v5, v9

    .line 338
    goto :goto_17

    :cond_22
    move v5, v9

    .line 339
    goto :goto_18

    .line 358
    :cond_23
    if-eqz v5, :cond_24

    const-string v5, "IsOrderable"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    move v5, v8

    .line 359
    :goto_19
    if-eqz v5, :cond_25

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$12;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$12;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_25

    move v5, v8

    .line 376
    :goto_1a
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 377
    if-nez v6, :cond_26

    move-object v0, v10

    goto/16 :goto_0

    :cond_24
    move v5, v9

    .line 358
    goto :goto_19

    :cond_25
    move v5, v9

    .line 359
    goto :goto_1a

    .line 378
    :cond_26
    if-eqz v5, :cond_27

    const-string v5, "AvailableForDevice"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v5, v8

    .line 379
    :goto_1b
    if-eqz v5, :cond_28

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$13;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$13;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v5, v8

    .line 403
    :goto_1c
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 404
    if-nez v6, :cond_29

    move-object v0, v10

    goto/16 :goto_0

    :cond_27
    move v5, v9

    .line 378
    goto :goto_1b

    :cond_28
    move v5, v9

    .line 379
    goto :goto_1c

    .line 405
    :cond_29
    if-eqz v5, :cond_2a

    const-string v5, "LicenseCount"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    move v5, v8

    .line 406
    :goto_1d
    if-eqz v5, :cond_2b

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$14;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$14;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_2b

    move v5, v8

    .line 423
    :goto_1e
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 424
    if-nez v6, :cond_2c

    move-object v0, v10

    goto/16 :goto_0

    :cond_2a
    move v5, v9

    .line 405
    goto :goto_1d

    :cond_2b
    move v5, v9

    .line 406
    goto :goto_1e

    .line 425
    :cond_2c
    if-eqz v5, :cond_2d

    const-string v5, "OptimizedForDX"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    move v5, v8

    .line 426
    :goto_1f
    if-eqz v5, :cond_2e

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$15;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$15;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move v5, v8

    .line 450
    :goto_20
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 451
    if-nez v6, :cond_2f

    move-object v0, v10

    goto/16 :goto_0

    :cond_2d
    move v5, v9

    .line 425
    goto :goto_1f

    :cond_2e
    move v5, v9

    .line 426
    goto :goto_20

    .line 452
    :cond_2f
    if-eqz v5, :cond_30

    const-string v5, "TTSEnabled"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    move v5, v8

    .line 453
    :goto_21
    if-eqz v5, :cond_31

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$16;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$16;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_31

    move v5, v8

    .line 477
    :goto_22
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 478
    if-nez v6, :cond_32

    move-object v0, v10

    goto/16 :goto_0

    :cond_30
    move v5, v9

    .line 452
    goto :goto_21

    :cond_31
    move v5, v9

    .line 453
    goto :goto_22

    .line 479
    :cond_32
    if-eqz v5, :cond_33

    const-string v5, "IsAgencyOffer"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    move v5, v8

    .line 480
    :goto_23
    if-eqz v5, :cond_34

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$17;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$17;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_34

    move v5, v8

    .line 504
    :goto_24
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 505
    if-nez v6, :cond_35

    move-object v0, v10

    goto/16 :goto_0

    :cond_33
    move v5, v9

    .line 479
    goto :goto_23

    :cond_34
    move v5, v9

    .line 480
    goto :goto_24

    .line 506
    :cond_35
    if-eqz v5, :cond_36

    const-string v5, "MerchantName"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    move v5, v8

    .line 507
    :goto_25
    if-eqz v5, :cond_37

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$18;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$18;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_37

    move v5, v8

    .line 518
    :goto_26
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 519
    if-eqz v5, :cond_38

    const-string v5, "OurPrice"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    move v5, v8

    .line 522
    :goto_27
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 523
    if-nez v7, :cond_39

    move-object v0, v10

    goto/16 :goto_0

    :cond_36
    move v5, v9

    .line 506
    goto :goto_25

    :cond_37
    move v5, v9

    .line 507
    goto :goto_26

    :cond_38
    move v5, v9

    .line 519
    goto :goto_27

    .line 524
    :cond_39
    if-eqz v5, :cond_3a

    const-string v5, "Amount"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    move v5, v8

    .line 525
    :goto_28
    if-eqz v5, :cond_3b

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$19;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$19;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_3b

    move v5, v8

    .line 542
    :goto_29
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 543
    if-nez v7, :cond_3c

    move-object v0, v10

    goto/16 :goto_0

    :cond_3a
    move v5, v9

    .line 524
    goto :goto_28

    :cond_3b
    move v5, v9

    .line 525
    goto :goto_29

    .line 544
    :cond_3c
    if-eqz v5, :cond_3d

    const-string v5, "CurrencyCode"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move v5, v8

    .line 545
    :goto_2a
    if-eqz v5, :cond_3e

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$20;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$20;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_3e

    move v5, v8

    .line 554
    :goto_2b
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 555
    if-nez v6, :cond_3f

    move-object v0, v10

    goto/16 :goto_0

    :cond_3d
    move v5, v9

    .line 544
    goto :goto_2a

    :cond_3e
    move v5, v9

    .line 545
    goto :goto_2b

    .line 556
    :cond_3f
    if-eqz v5, :cond_40

    const-string v5, "FormattedString"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    move v5, v8

    .line 557
    :goto_2c
    if-eqz v5, :cond_41

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$21;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$21;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_41

    move v5, v8

    .line 565
    :goto_2d
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 566
    if-eqz v5, :cond_42

    const-string v5, "ListPrice"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    move v5, v8

    .line 569
    :goto_2e
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 570
    if-nez v7, :cond_43

    move-object v0, v10

    goto/16 :goto_0

    :cond_40
    move v5, v9

    .line 556
    goto :goto_2c

    :cond_41
    move v5, v9

    .line 557
    goto :goto_2d

    :cond_42
    move v5, v9

    .line 566
    goto :goto_2e

    .line 571
    :cond_43
    if-eqz v5, :cond_44

    const-string v5, "Amount"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    move v5, v8

    .line 572
    :goto_2f
    if-eqz v5, :cond_45

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$22;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$22;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_45

    move v5, v8

    .line 589
    :goto_30
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 590
    if-nez v7, :cond_46

    move-object v0, v10

    goto/16 :goto_0

    :cond_44
    move v5, v9

    .line 571
    goto :goto_2f

    :cond_45
    move v5, v9

    .line 572
    goto :goto_30

    .line 591
    :cond_46
    if-eqz v5, :cond_47

    const-string v5, "CurrencyCode"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    move v5, v8

    .line 592
    :goto_31
    if-eqz v5, :cond_48

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$23;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$23;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_48

    move v5, v8

    .line 601
    :goto_32
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 602
    if-nez v6, :cond_49

    move-object v0, v10

    goto/16 :goto_0

    :cond_47
    move v5, v9

    .line 591
    goto :goto_31

    :cond_48
    move v5, v9

    .line 592
    goto :goto_32

    .line 603
    :cond_49
    if-eqz v5, :cond_4a

    const-string v5, "FormattedString"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    move v5, v8

    .line 604
    :goto_33
    if-eqz v5, :cond_4b

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$24;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$24;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move v5, v8

    .line 612
    :goto_34
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 613
    if-eqz v5, :cond_4c

    const-string v5, "PhysicalListPrice"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    move v5, v8

    .line 616
    :goto_35
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 617
    if-nez v7, :cond_4d

    move-object v0, v10

    goto/16 :goto_0

    :cond_4a
    move v5, v9

    .line 603
    goto :goto_33

    :cond_4b
    move v5, v9

    .line 604
    goto :goto_34

    :cond_4c
    move v5, v9

    .line 613
    goto :goto_35

    .line 618
    :cond_4d
    if-eqz v5, :cond_4e

    const-string v5, "Amount"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    move v5, v8

    .line 619
    :goto_36
    if-eqz v5, :cond_4f

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$25;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$25;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_4f

    move v5, v8

    .line 636
    :goto_37
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 637
    if-nez v7, :cond_50

    move-object v0, v10

    goto/16 :goto_0

    :cond_4e
    move v5, v9

    .line 618
    goto :goto_36

    :cond_4f
    move v5, v9

    .line 619
    goto :goto_37

    .line 638
    :cond_50
    if-eqz v5, :cond_51

    const-string v5, "CurrencyCode"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    move v5, v8

    .line 639
    :goto_38
    if-eqz v5, :cond_52

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$26;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$26;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_52

    move v5, v8

    .line 648
    :goto_39
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 649
    if-nez v6, :cond_53

    move-object v0, v10

    goto/16 :goto_0

    :cond_51
    move v5, v9

    .line 638
    goto :goto_38

    :cond_52
    move v5, v9

    .line 639
    goto :goto_39

    .line 650
    :cond_53
    if-eqz v5, :cond_54

    const-string v5, "FormattedString"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    move v5, v8

    .line 651
    :goto_3a
    if-eqz v5, :cond_55

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$27;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$27;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_55

    move v5, v8

    .line 659
    :goto_3b
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 660
    if-eqz v5, :cond_56

    const-string v5, "Savings"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    move v5, v8

    .line 663
    :goto_3c
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 664
    if-nez v7, :cond_57

    move-object v0, v10

    goto/16 :goto_0

    :cond_54
    move v5, v9

    .line 650
    goto :goto_3a

    :cond_55
    move v5, v9

    .line 651
    goto :goto_3b

    :cond_56
    move v5, v9

    .line 660
    goto :goto_3c

    .line 665
    :cond_57
    if-eqz v5, :cond_58

    const-string v5, "Amount"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    move v5, v8

    .line 666
    :goto_3d
    if-eqz v5, :cond_59

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$28;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$28;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_59

    move v5, v8

    .line 683
    :goto_3e
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 684
    if-nez v7, :cond_5a

    move-object v0, v10

    goto/16 :goto_0

    :cond_58
    move v5, v9

    .line 665
    goto :goto_3d

    :cond_59
    move v5, v9

    .line 666
    goto :goto_3e

    .line 685
    :cond_5a
    if-eqz v5, :cond_5b

    const-string v5, "CurrencyCode"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    move v5, v8

    .line 686
    :goto_3f
    if-eqz v5, :cond_5c

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$29;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$29;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_5c

    move v5, v8

    .line 695
    :goto_40
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 696
    if-nez v6, :cond_5d

    move-object v0, v10

    goto/16 :goto_0

    :cond_5b
    move v5, v9

    .line 685
    goto :goto_3f

    :cond_5c
    move v5, v9

    .line 686
    goto :goto_40

    .line 697
    :cond_5d
    if-eqz v5, :cond_5e

    const-string v5, "FormattedString"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    move v5, v8

    .line 698
    :goto_41
    if-eqz v5, :cond_5f

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$30;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$30;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_5f

    move v5, v8

    .line 707
    :goto_42
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 708
    if-nez v6, :cond_60

    move-object v0, v10

    goto/16 :goto_0

    :cond_5e
    move v5, v9

    .line 697
    goto :goto_41

    :cond_5f
    move v5, v9

    .line 698
    goto :goto_42

    .line 709
    :cond_60
    if-eqz v5, :cond_61

    const-string v5, "PublisherName"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    move v5, v8

    .line 710
    :goto_43
    if-eqz v5, :cond_62

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$31;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$31;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_62

    move v5, v8

    .line 719
    :goto_44
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 720
    if-nez v6, :cond_63

    move-object v0, v10

    goto/16 :goto_0

    :cond_61
    move v5, v9

    .line 709
    goto :goto_43

    :cond_62
    move v5, v9

    .line 710
    goto :goto_44

    .line 721
    :cond_63
    if-eqz v5, :cond_64

    const-string v5, "PublicationDate"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    move v5, v8

    .line 722
    :goto_45
    if-eqz v5, :cond_65

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$32;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$32;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_65

    move v5, v8

    .line 731
    :goto_46
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 732
    if-nez v6, :cond_66

    move-object v0, v10

    goto/16 :goto_0

    :cond_64
    move v5, v9

    .line 721
    goto :goto_45

    :cond_65
    move v5, v9

    .line 722
    goto :goto_46

    .line 733
    :cond_66
    if-eqz v5, :cond_67

    const-string v5, "ReleaseDate"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    move v5, v8

    .line 734
    :goto_47
    if-eqz v5, :cond_68

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$33;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$33;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_68

    move v5, v8

    .line 743
    :goto_48
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 744
    if-nez v6, :cond_69

    move-object v0, v10

    goto/16 :goto_0

    :cond_67
    move v5, v9

    .line 733
    goto :goto_47

    :cond_68
    move v5, v9

    .line 734
    goto :goto_48

    .line 745
    :cond_69
    if-eqz v5, :cond_6a

    const-string v5, "NumEditorialReviews"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    move v5, v8

    .line 746
    :goto_49
    if-eqz v5, :cond_6b

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$34;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$34;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_6b

    move v5, v8

    .line 755
    :goto_4a
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 756
    if-nez v6, :cond_6c

    move-object v0, v10

    goto/16 :goto_0

    :cond_6a
    move v5, v9

    .line 745
    goto :goto_49

    :cond_6b
    move v5, v9

    .line 746
    goto :goto_4a

    .line 757
    :cond_6c
    if-eqz v5, :cond_6d

    const-string v5, "NumPages"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    move v5, v8

    .line 758
    :goto_4b
    if-eqz v5, :cond_6e

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$35;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$35;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_6e

    move v5, v8

    .line 767
    :goto_4c
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 768
    if-nez v6, :cond_6f

    move-object v0, v10

    goto/16 :goto_0

    :cond_6d
    move v5, v9

    .line 757
    goto :goto_4b

    :cond_6e
    move v5, v9

    .line 758
    goto :goto_4c

    .line 769
    :cond_6f
    if-eqz v5, :cond_70

    const-string v5, "SalesRank"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    move v5, v8

    .line 770
    :goto_4d
    if-eqz v5, :cond_71

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$36;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$36;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_71

    move v5, v8

    .line 779
    :goto_4e
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 780
    if-nez v6, :cond_72

    move-object v0, v10

    goto/16 :goto_0

    :cond_70
    move v5, v9

    .line 769
    goto :goto_4d

    :cond_71
    move v5, v9

    .line 770
    goto :goto_4e

    .line 781
    :cond_72
    if-eqz v5, :cond_73

    const-string v5, "CustomerRatings"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    move v5, v8

    .line 782
    :goto_4f
    if-eqz v5, :cond_74

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$37;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$37;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_74

    move v5, v8

    .line 799
    :goto_50
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 800
    if-nez v6, :cond_75

    move-object v0, v10

    goto/16 :goto_0

    :cond_73
    move v5, v9

    .line 781
    goto :goto_4f

    :cond_74
    move v5, v9

    .line 782
    goto :goto_50

    .line 801
    :cond_75
    if-eqz v5, :cond_76

    const-string v5, "Description"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    move v5, v8

    .line 802
    :goto_51
    if-eqz v5, :cond_77

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$38;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$38;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_77

    move v5, v8

    .line 811
    :goto_52
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 812
    if-nez v6, :cond_78

    move-object v0, v10

    goto/16 :goto_0

    :cond_76
    move v5, v9

    .line 801
    goto :goto_51

    :cond_77
    move v5, v9

    .line 802
    goto :goto_52

    .line 813
    :cond_78
    if-eqz v5, :cond_79

    const-string v5, "HasFreeSample"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    move v5, v8

    .line 814
    :goto_53
    if-eqz v5, :cond_7a

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$39;

    invoke-direct {v5, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$39;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_7a

    move v5, v8

    .line 832
    :goto_54
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 833
    if-nez v6, :cond_7b

    move-object v0, v10

    goto/16 :goto_0

    :cond_79
    move v5, v9

    .line 813
    goto :goto_53

    :cond_7a
    move v5, v9

    .line 814
    goto :goto_54

    .line 834
    :cond_7b
    if-eqz v5, :cond_7c

    const-string v5, "Similarities"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    move v5, v8

    .line 837
    :goto_55
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 838
    if-eqz v5, :cond_7d

    const-string v5, "Items"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    move v5, v8

    .line 841
    :goto_56
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 842
    if-eqz v5, :cond_7e

    const-string v5, "Item"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    move v5, v8

    .line 843
    :goto_57
    if-eqz v5, :cond_7f

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$40;

    invoke-direct {v5, v0, v1}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$40;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;Lcom/amazon/kcp/store/models/internal/BookInfo;)V

    invoke-virtual {v6, v11, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v5

    if-eqz v5, :cond_7f

    move v5, v8

    .line 852
    :goto_58
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 853
    if-eqz v5, :cond_80

    const-string v5, "ASIN"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    move v5, v8

    .line 854
    :goto_59
    if-eqz v5, :cond_81

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$41;

    invoke-direct {v5, v1}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$41;-><init>(Lcom/amazon/kcp/store/models/internal/BookInfo;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_81

    move v5, v8

    .line 862
    :goto_5a
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 863
    if-eqz v5, :cond_82

    const-string v5, "ItemAttributes"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    move v5, v8

    .line 866
    :goto_5b
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 867
    if-eqz v5, :cond_83

    const-string v5, "Title"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    move v5, v8

    .line 868
    :goto_5c
    if-eqz v5, :cond_84

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$42;

    invoke-direct {v5, v1}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$42;-><init>(Lcom/amazon/kcp/store/models/internal/BookInfo;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_84

    move v5, v8

    .line 877
    :goto_5d
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 878
    if-eqz v5, :cond_85

    const-string v5, "Authors"

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    move v5, v8

    .line 879
    :goto_5e
    if-eqz v5, :cond_86

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$43;

    invoke-direct {v5, v1}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$43;-><init>(Lcom/amazon/kcp/store/models/internal/BookInfo;)V

    invoke-virtual {v7, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_86

    move v5, v8

    .line 888
    :goto_5f
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    .line 889
    if-eqz v5, :cond_87

    const-string v5, "Rating"

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    move v5, v8

    .line 890
    :goto_60
    if-eqz v5, :cond_88

    new-instance v5, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$44;

    invoke-direct {v5, v1}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$44;-><init>(Lcom/amazon/kcp/store/models/internal/BookInfo;)V

    invoke-virtual {v6, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_88

    move v1, v8

    .line 911
    :goto_61
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 912
    if-nez v4, :cond_89

    move-object v0, v10

    goto/16 :goto_0

    :cond_7c
    move v5, v9

    .line 834
    goto/16 :goto_55

    :cond_7d
    move v5, v9

    .line 838
    goto/16 :goto_56

    :cond_7e
    move v5, v9

    .line 842
    goto/16 :goto_57

    :cond_7f
    move v5, v9

    .line 843
    goto/16 :goto_58

    :cond_80
    move v5, v9

    .line 853
    goto/16 :goto_59

    :cond_81
    move v5, v9

    .line 854
    goto :goto_5a

    :cond_82
    move v5, v9

    .line 863
    goto :goto_5b

    :cond_83
    move v5, v9

    .line 867
    goto :goto_5c

    :cond_84
    move v5, v9

    .line 868
    goto :goto_5d

    :cond_85
    move v5, v9

    .line 878
    goto :goto_5e

    :cond_86
    move v5, v9

    .line 879
    goto :goto_5f

    :cond_87
    move v5, v9

    .line 889
    goto :goto_60

    :cond_88
    move v1, v9

    .line 890
    goto :goto_61

    .line 913
    :cond_89
    if-eqz v1, :cond_8a

    const-string v1, "CustomerReviews"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    move v1, v8

    .line 918
    :goto_62
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 919
    if-eqz v1, :cond_8b

    const-string v1, "CustomerOneStarReviewCount"

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    move v1, v8

    .line 920
    :goto_63
    if-eqz v1, :cond_8c

    new-instance v1, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$45;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$45;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_8c

    move v1, v8

    .line 937
    :goto_64
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 938
    if-eqz v1, :cond_8d

    const-string v1, "CustomerTwoStarReviewCount"

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    move v1, v8

    .line 939
    :goto_65
    if-eqz v1, :cond_8e

    new-instance v1, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$46;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$46;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_8e

    move v1, v8

    .line 956
    :goto_66
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 957
    if-eqz v1, :cond_8f

    const-string v1, "CustomerThreeStarReviewCount"

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    move v1, v8

    .line 958
    :goto_67
    if-eqz v1, :cond_90

    new-instance v1, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$47;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$47;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_90

    move v1, v8

    .line 975
    :goto_68
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 976
    if-eqz v1, :cond_91

    const-string v1, "CustomerFourStarReviewCount"

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    move v1, v8

    .line 977
    :goto_69
    if-eqz v1, :cond_92

    new-instance v1, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$48;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$48;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_92

    move v1, v8

    .line 994
    :goto_6a
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 995
    if-eqz v1, :cond_93

    const-string v1, "CustomerFiveStarReviewCount"

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    move v1, v8

    .line 996
    :goto_6b
    if-eqz v1, :cond_94

    new-instance v1, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$49;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$49;-><init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v5, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v1

    if-eqz v1, :cond_94

    move v1, v8

    .line 1013
    :goto_6c
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 1014
    if-nez v4, :cond_95

    move-object v0, v10

    goto/16 :goto_0

    :cond_8a
    move v1, v9

    .line 913
    goto/16 :goto_62

    :cond_8b
    move v1, v9

    .line 919
    goto/16 :goto_63

    :cond_8c
    move v1, v9

    .line 920
    goto/16 :goto_64

    :cond_8d
    move v1, v9

    .line 938
    goto :goto_65

    :cond_8e
    move v1, v9

    .line 939
    goto :goto_66

    :cond_8f
    move v1, v9

    .line 957
    goto :goto_67

    :cond_90
    move v1, v9

    .line 958
    goto :goto_68

    :cond_91
    move v1, v9

    .line 976
    goto :goto_69

    :cond_92
    move v1, v9

    .line 977
    goto :goto_6a

    :cond_93
    move v1, v9

    .line 995
    goto :goto_6b

    :cond_94
    move v1, v9

    .line 996
    goto :goto_6c

    .line 1015
    :cond_95
    if-eqz v1, :cond_96

    const-string v1, "Items"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    move v1, v8

    .line 1018
    :goto_6d
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 1019
    if-nez v4, :cond_97

    move-object v0, v10

    goto/16 :goto_0

    :cond_96
    move v1, v9

    .line 1015
    goto :goto_6d

    .line 1020
    :cond_97
    if-eqz v1, :cond_98

    const-string v1, "Item"

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    move v1, v8

    .line 1021
    :goto_6e
    if-eqz v1, :cond_99

    new-instance v1, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$50;

    invoke-direct {v1, v2, v0}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$50;-><init>(Lcom/amazon/kcp/store/models/internal/ReviewInfo;Lcom/amazon/kcp/store/models/internal/BookDetails;)V

    invoke-virtual {v4, v11, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-eqz v0, :cond_99

    move v0, v8

    .line 1031
    :goto_6f
    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 1032
    if-eqz v0, :cond_9a

    const-string v0, "ItemAttributes"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move v0, v8

    .line 1035
    :goto_70
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 1036
    if-nez v4, :cond_9b

    move-object v0, v10

    goto/16 :goto_0

    :cond_98
    move v1, v9

    .line 1020
    goto :goto_6e

    :cond_99
    move v0, v9

    .line 1021
    goto :goto_6f

    :cond_9a
    move v0, v9

    .line 1032
    goto :goto_70

    .line 1037
    :cond_9b
    if-eqz v0, :cond_9c

    const-string v0, "Reviewer"

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    move v0, v8

    .line 1038
    :goto_71
    if-eqz v0, :cond_9d

    new-instance v0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$51;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$51;-><init>(Lcom/amazon/kcp/store/models/internal/ReviewInfo;)V

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_9d

    move v0, v8

    .line 1047
    :goto_72
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 1048
    if-nez v4, :cond_9e

    move-object v0, v10

    goto/16 :goto_0

    :cond_9c
    move v0, v9

    .line 1037
    goto :goto_71

    :cond_9d
    move v0, v9

    .line 1038
    goto :goto_72

    .line 1049
    :cond_9e
    if-eqz v0, :cond_9f

    const-string v0, "Location"

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    move v0, v8

    .line 1050
    :goto_73
    if-eqz v0, :cond_a0

    new-instance v0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$52;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$52;-><init>(Lcom/amazon/kcp/store/models/internal/ReviewInfo;)V

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_a0

    move v0, v8

    .line 1059
    :goto_74
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 1060
    if-nez v4, :cond_a1

    move-object v0, v10

    goto/16 :goto_0

    :cond_9f
    move v0, v9

    .line 1049
    goto :goto_73

    :cond_a0
    move v0, v9

    .line 1050
    goto :goto_74

    .line 1061
    :cond_a1
    if-eqz v0, :cond_a2

    const-string v0, "Rating"

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    move v0, v8

    .line 1062
    :goto_75
    if-eqz v0, :cond_a3

    new-instance v0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$53;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$53;-><init>(Lcom/amazon/kcp/store/models/internal/ReviewInfo;)V

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_a3

    move v0, v8

    .line 1079
    :goto_76
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 1080
    if-nez v4, :cond_a4

    move-object v0, v10

    goto/16 :goto_0

    :cond_a2
    move v0, v9

    .line 1061
    goto :goto_75

    :cond_a3
    move v0, v9

    .line 1062
    goto :goto_76

    .line 1081
    :cond_a4
    if-eqz v0, :cond_a5

    const-string v0, "SubmissionDate"

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    move v0, v8

    .line 1082
    :goto_77
    if-eqz v0, :cond_a6

    new-instance v0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$54;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$54;-><init>(Lcom/amazon/kcp/store/models/internal/ReviewInfo;)V

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_a6

    move v0, v8

    .line 1091
    :goto_78
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 1092
    if-nez v4, :cond_a7

    move-object v0, v10

    goto/16 :goto_0

    :cond_a5
    move v0, v9

    .line 1081
    goto :goto_77

    :cond_a6
    move v0, v9

    .line 1082
    goto :goto_78

    .line 1093
    :cond_a7
    if-eqz v0, :cond_a8

    const-string v0, "Body"

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    move v0, v8

    .line 1094
    :goto_79
    if-eqz v0, :cond_a9

    new-instance v0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$55;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$55;-><init>(Lcom/amazon/kcp/store/models/internal/ReviewInfo;)V

    invoke-virtual {v4, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_a9

    move v0, v8

    .line 1103
    :goto_7a
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 1104
    if-nez v1, :cond_aa

    move-object v0, v10

    goto/16 :goto_0

    :cond_a8
    move v0, v9

    .line 1093
    goto :goto_79

    :cond_a9
    move v0, v9

    .line 1094
    goto :goto_7a

    .line 1105
    :cond_aa
    if-eqz v0, :cond_ab

    const-string v0, "Summary"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    move v0, v8

    .line 1106
    :goto_7b
    if-eqz v0, :cond_ac

    new-instance v0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$56;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$56;-><init>(Lcom/amazon/kcp/store/models/internal/ReviewInfo;)V

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_ac

    move v0, v8

    .line 1115
    :goto_7c
    if-nez v0, :cond_ad

    move-object v0, v10

    .line 1117
    goto/16 :goto_0

    :cond_ab
    move v0, v9

    .line 1105
    goto :goto_7b

    :cond_ac
    move v0, v9

    .line 1106
    goto :goto_7c

    :cond_ad
    move-object v0, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public createDetailsRequest(Lcom/amazon/kcp/store/models/internal/CDetailsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getDetailsURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?asins="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&responseGroups=medium,addSims,addCustomerReviews"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice;->addClientID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {p1}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice;->getNewDetailsDescriber(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    .line 69
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, p2, v4}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 76
    const-string v0, "text/xml"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    :cond_1
    move-object v0, v1

    .line 79
    goto :goto_0
.end method
