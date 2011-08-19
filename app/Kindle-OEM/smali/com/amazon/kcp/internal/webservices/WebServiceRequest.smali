.class public Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IAsynchronousCallback;


# instance fields
.field private handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

.field private hasError:Z

.field private killEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private state:Ljava/lang/String;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private substate:Ljava/lang/String;

.field private terminateCallback:Lcom/amazon/foundation/ICallback;

.field private webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "statusTracker"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$1;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->terminateCallback:Lcom/amazon/foundation/ICallback;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->hasError:Z

    .line 56
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->killEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->state:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->substate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->substate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->setWebserviceError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addWebserviceErrorDescription()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    if-eqz v0, :cond_1

    move v0, v4

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 133
    if-nez v1, :cond_2

    move v0, v3

    .line 630
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v3

    .line 126
    goto :goto_0

    .line 135
    :cond_2
    if-eqz v0, :cond_3

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$2;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v1, v5, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    .line 143
    :cond_3
    const-string v0, "KindleWebServicesError"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    .line 219
    if-eqz v0, :cond_4

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$3;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v1, v3, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    .line 228
    :goto_2
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 229
    if-nez v2, :cond_5

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v3

    .line 219
    goto :goto_2

    .line 230
    :cond_5
    if-eqz v0, :cond_6

    const-string v0, "FileNotFoundError"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    .line 231
    :goto_3
    if-eqz v0, :cond_7

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$4;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    .line 238
    :goto_4
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 239
    if-nez v2, :cond_8

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v3

    .line 230
    goto :goto_3

    :cond_7
    move v0, v3

    .line 231
    goto :goto_4

    .line 240
    :cond_8
    if-eqz v0, :cond_9

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    .line 241
    :goto_5
    if-eqz v0, :cond_a

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$5;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v4

    .line 249
    :goto_6
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 250
    if-nez v2, :cond_b

    move v0, v3

    goto :goto_1

    :cond_9
    move v0, v3

    .line 240
    goto :goto_5

    :cond_a
    move v0, v3

    .line 241
    goto :goto_6

    .line 251
    :cond_b
    if-eqz v0, :cond_c

    const-string v0, "DeviceAlreadyRegistered"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v4

    .line 252
    :goto_7
    if-eqz v0, :cond_d

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$6;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v4

    .line 259
    :goto_8
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 260
    if-nez v2, :cond_e

    move v0, v3

    goto/16 :goto_1

    :cond_c
    move v0, v3

    .line 251
    goto :goto_7

    :cond_d
    move v0, v3

    .line 252
    goto :goto_8

    .line 261
    :cond_e
    if-eqz v0, :cond_f

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    .line 262
    :goto_9
    if-eqz v0, :cond_10

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$7;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    .line 270
    :goto_a
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 271
    if-nez v2, :cond_11

    move v0, v3

    goto/16 :goto_1

    :cond_f
    move v0, v3

    .line 261
    goto :goto_9

    :cond_10
    move v0, v3

    .line 262
    goto :goto_a

    .line 272
    :cond_11
    if-eqz v0, :cond_12

    const-string v0, "CredentialsRequired"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v4

    .line 273
    :goto_b
    if-eqz v0, :cond_13

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$8;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$8;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v4

    .line 280
    :goto_c
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 281
    if-nez v2, :cond_14

    move v0, v3

    goto/16 :goto_1

    :cond_12
    move v0, v3

    .line 272
    goto :goto_b

    :cond_13
    move v0, v3

    .line 273
    goto :goto_c

    .line 282
    :cond_14
    if-eqz v0, :cond_15

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v4

    .line 283
    :goto_d
    if-eqz v0, :cond_16

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$9;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$9;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v4

    .line 291
    :goto_e
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 292
    if-nez v2, :cond_17

    move v0, v3

    goto/16 :goto_1

    :cond_15
    move v0, v3

    .line 282
    goto :goto_d

    :cond_16
    move v0, v3

    .line 283
    goto :goto_e

    .line 293
    :cond_17
    if-eqz v0, :cond_18

    const-string v0, "InvalidAsin"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v4

    .line 294
    :goto_f
    if-eqz v0, :cond_19

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$10;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$10;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v4

    .line 301
    :goto_10
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 302
    if-nez v2, :cond_1a

    move v0, v3

    goto/16 :goto_1

    :cond_18
    move v0, v3

    .line 293
    goto :goto_f

    :cond_19
    move v0, v3

    .line 294
    goto :goto_10

    .line 303
    :cond_1a
    if-eqz v0, :cond_1b

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v4

    .line 304
    :goto_11
    if-eqz v0, :cond_1c

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$11;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$11;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v4

    .line 312
    :goto_12
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 313
    if-nez v2, :cond_1d

    move v0, v3

    goto/16 :goto_1

    :cond_1b
    move v0, v3

    .line 303
    goto :goto_11

    :cond_1c
    move v0, v3

    .line 304
    goto :goto_12

    .line 314
    :cond_1d
    if-eqz v0, :cond_1e

    const-string v0, "InvalidArgument"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v4

    .line 315
    :goto_13
    if-eqz v0, :cond_1f

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$12;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$12;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v4

    .line 322
    :goto_14
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 323
    if-nez v2, :cond_20

    move v0, v3

    goto/16 :goto_1

    :cond_1e
    move v0, v3

    .line 314
    goto :goto_13

    :cond_1f
    move v0, v3

    .line 315
    goto :goto_14

    .line 324
    :cond_20
    if-eqz v0, :cond_21

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v4

    .line 325
    :goto_15
    if-eqz v0, :cond_22

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$13;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$13;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v4

    .line 333
    :goto_16
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 334
    if-nez v2, :cond_23

    move v0, v3

    goto/16 :goto_1

    :cond_21
    move v0, v3

    .line 324
    goto :goto_15

    :cond_22
    move v0, v3

    .line 325
    goto :goto_16

    .line 335
    :cond_23
    if-eqz v0, :cond_24

    const-string v0, "InvalidOrder"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v4

    .line 336
    :goto_17
    if-eqz v0, :cond_25

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$14;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$14;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v4

    .line 343
    :goto_18
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 344
    if-nez v2, :cond_26

    move v0, v3

    goto/16 :goto_1

    :cond_24
    move v0, v3

    .line 335
    goto :goto_17

    :cond_25
    move v0, v3

    .line 336
    goto :goto_18

    .line 345
    :cond_26
    if-eqz v0, :cond_27

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v4

    .line 346
    :goto_19
    if-eqz v0, :cond_28

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$15;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$15;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v4

    .line 354
    :goto_1a
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 355
    if-nez v2, :cond_29

    move v0, v3

    goto/16 :goto_1

    :cond_27
    move v0, v3

    .line 345
    goto :goto_19

    :cond_28
    move v0, v3

    .line 346
    goto :goto_1a

    .line 356
    :cond_29
    if-eqz v0, :cond_2a

    const-string v0, "InvalidNode"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v4

    .line 357
    :goto_1b
    if-eqz v0, :cond_2b

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$16;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$16;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v4

    .line 364
    :goto_1c
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 365
    if-nez v2, :cond_2c

    move v0, v3

    goto/16 :goto_1

    :cond_2a
    move v0, v3

    .line 356
    goto :goto_1b

    :cond_2b
    move v0, v3

    .line 357
    goto :goto_1c

    .line 366
    :cond_2c
    if-eqz v0, :cond_2d

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v4

    .line 367
    :goto_1d
    if-eqz v0, :cond_2e

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$17;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$17;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v4

    .line 375
    :goto_1e
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 376
    if-nez v2, :cond_2f

    move v0, v3

    goto/16 :goto_1

    :cond_2d
    move v0, v3

    .line 366
    goto :goto_1d

    :cond_2e
    move v0, v3

    .line 367
    goto :goto_1e

    .line 377
    :cond_2f
    if-eqz v0, :cond_30

    const-string v0, "InsufficientFunds"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v4

    .line 378
    :goto_1f
    if-eqz v0, :cond_31

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$18;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$18;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v4

    .line 385
    :goto_20
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 386
    if-nez v2, :cond_32

    move v0, v3

    goto/16 :goto_1

    :cond_30
    move v0, v3

    .line 377
    goto :goto_1f

    :cond_31
    move v0, v3

    .line 378
    goto :goto_20

    .line 387
    :cond_32
    if-eqz v0, :cond_33

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v4

    .line 388
    :goto_21
    if-eqz v0, :cond_34

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$19;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$19;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v4

    .line 396
    :goto_22
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 397
    if-nez v2, :cond_35

    move v0, v3

    goto/16 :goto_1

    :cond_33
    move v0, v3

    .line 387
    goto :goto_21

    :cond_34
    move v0, v3

    .line 388
    goto :goto_22

    .line 398
    :cond_35
    if-eqz v0, :cond_36

    const-string v0, "UnknownError"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v4

    .line 399
    :goto_23
    if-eqz v0, :cond_37

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$20;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$20;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 406
    :goto_24
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 407
    if-nez v2, :cond_38

    move v0, v3

    goto/16 :goto_1

    :cond_36
    move v0, v3

    .line 398
    goto :goto_23

    :cond_37
    move v0, v3

    .line 399
    goto :goto_24

    .line 408
    :cond_38
    if-eqz v0, :cond_39

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v4

    .line 409
    :goto_25
    if-eqz v0, :cond_3a

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$21;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$21;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v4

    .line 417
    :goto_26
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 418
    if-nez v2, :cond_3b

    move v0, v3

    goto/16 :goto_1

    :cond_39
    move v0, v3

    .line 408
    goto :goto_25

    :cond_3a
    move v0, v3

    .line 409
    goto :goto_26

    .line 419
    :cond_3b
    if-eqz v0, :cond_3c

    const-string v0, "DuplicateDeviceName"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v4

    .line 420
    :goto_27
    if-eqz v0, :cond_3d

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$22;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$22;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v4

    .line 427
    :goto_28
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 428
    if-nez v2, :cond_3e

    move v0, v3

    goto/16 :goto_1

    :cond_3c
    move v0, v3

    .line 419
    goto :goto_27

    :cond_3d
    move v0, v3

    .line 420
    goto :goto_28

    .line 429
    :cond_3e
    if-eqz v0, :cond_3f

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v4

    .line 430
    :goto_29
    if-eqz v0, :cond_40

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$23;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$23;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_40

    move v0, v4

    .line 438
    :goto_2a
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 439
    if-nez v2, :cond_41

    move v0, v3

    goto/16 :goto_1

    :cond_3f
    move v0, v3

    .line 429
    goto :goto_29

    :cond_40
    move v0, v3

    .line 430
    goto :goto_2a

    .line 440
    :cond_41
    if-eqz v0, :cond_42

    const-string v0, "UnBuyError"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    move v0, v4

    .line 441
    :goto_2b
    if-eqz v0, :cond_43

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$24;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$24;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v4

    .line 448
    :goto_2c
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 449
    if-nez v2, :cond_44

    move v0, v3

    goto/16 :goto_1

    :cond_42
    move v0, v3

    .line 440
    goto :goto_2b

    :cond_43
    move v0, v3

    .line 441
    goto :goto_2c

    .line 450
    :cond_44
    if-eqz v0, :cond_45

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    move v0, v4

    .line 451
    :goto_2d
    if-eqz v0, :cond_46

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$25;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$25;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_46

    move v0, v4

    .line 459
    :goto_2e
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 460
    if-nez v2, :cond_47

    move v0, v3

    goto/16 :goto_1

    :cond_45
    move v0, v3

    .line 450
    goto :goto_2d

    :cond_46
    move v0, v3

    .line 451
    goto :goto_2e

    .line 461
    :cond_47
    if-eqz v0, :cond_48

    const-string v0, "BuyError"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    move v0, v4

    .line 462
    :goto_2f
    if-eqz v0, :cond_49

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$26;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$26;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v4

    .line 469
    :goto_30
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 470
    if-nez v2, :cond_4a

    move v0, v3

    goto/16 :goto_1

    :cond_48
    move v0, v3

    .line 461
    goto :goto_2f

    :cond_49
    move v0, v3

    .line 462
    goto :goto_30

    .line 471
    :cond_4a
    if-eqz v0, :cond_4b

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v4

    .line 472
    :goto_31
    if-eqz v0, :cond_4c

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$27;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$27;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v4

    .line 480
    :goto_32
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 481
    if-nez v1, :cond_4d

    move v0, v3

    goto/16 :goto_1

    :cond_4b
    move v0, v3

    .line 471
    goto :goto_31

    :cond_4c
    move v0, v3

    .line 472
    goto :goto_32

    .line 482
    :cond_4d
    if-eqz v0, :cond_4e

    const-string v0, "InternalError"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v4

    .line 483
    :goto_33
    if-eqz v0, :cond_4f

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$28;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$28;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v4

    .line 490
    :goto_34
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 491
    if-nez v1, :cond_50

    move v0, v3

    goto/16 :goto_1

    :cond_4e
    move v0, v3

    .line 482
    goto :goto_33

    :cond_4f
    move v0, v3

    .line 483
    goto :goto_34

    .line 492
    :cond_50
    if-eqz v0, :cond_51

    const-string v0, "ErrorMessage"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v4

    .line 493
    :goto_35
    if-eqz v0, :cond_52

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$29;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$29;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_52

    move v0, v4

    .line 506
    :goto_36
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 507
    if-nez v1, :cond_53

    move v0, v3

    goto/16 :goto_1

    :cond_51
    move v0, v3

    .line 492
    goto :goto_35

    :cond_52
    move v0, v3

    .line 493
    goto :goto_36

    .line 508
    :cond_53
    if-eqz v0, :cond_54

    const-string v0, "Internal"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v4

    .line 510
    :goto_37
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 511
    if-nez v2, :cond_55

    move v0, v3

    goto/16 :goto_1

    :cond_54
    move v0, v3

    .line 508
    goto :goto_37

    .line 512
    :cond_55
    if-eqz v0, :cond_56

    const-string v0, "Command"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    move v0, v4

    .line 513
    :goto_38
    if-eqz v0, :cond_57

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$30;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$30;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_57

    move v0, v4

    .line 520
    :goto_39
    if-eqz v0, :cond_58

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    if-eqz v0, :cond_58

    move v0, v4

    .line 521
    :goto_3a
    if-eqz v0, :cond_59

    const-string v0, "ErrorMessage"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v4

    .line 522
    :goto_3b
    if-eqz v0, :cond_5a

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$31;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$31;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move v0, v4

    .line 532
    :goto_3c
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 536
    if-nez v1, :cond_5b

    move v0, v3

    goto/16 :goto_1

    :cond_56
    move v0, v3

    .line 512
    goto :goto_38

    :cond_57
    move v0, v3

    .line 513
    goto :goto_39

    :cond_58
    move v0, v3

    .line 520
    goto :goto_3a

    :cond_59
    move v0, v3

    .line 521
    goto :goto_3b

    :cond_5a
    move v0, v3

    .line 522
    goto :goto_3c

    .line 537
    :cond_5b
    if-eqz v0, :cond_5c

    const-string v0, "error"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    move v0, v4

    .line 540
    :goto_3d
    if-eqz v0, :cond_5d

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$32;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$32;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v1, v3, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v4

    .line 549
    :goto_3e
    if-eqz v0, :cond_5e

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$33;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$33;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v1, v5, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v4

    .line 557
    :goto_3f
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 558
    if-nez v2, :cond_5f

    move v0, v3

    goto/16 :goto_1

    :cond_5c
    move v0, v3

    .line 537
    goto :goto_3d

    :cond_5d
    move v0, v3

    .line 540
    goto :goto_3e

    :cond_5e
    move v0, v3

    .line 549
    goto :goto_3f

    .line 559
    :cond_5f
    if-eqz v0, :cond_60

    const-string v0, "message"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    move v0, v4

    .line 560
    :goto_40
    if-eqz v0, :cond_61

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$34;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$34;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_61

    move v0, v4

    .line 587
    :goto_41
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 590
    if-nez v2, :cond_62

    move v0, v3

    goto/16 :goto_1

    :cond_60
    move v0, v3

    .line 559
    goto :goto_40

    :cond_61
    move v0, v3

    .line 560
    goto :goto_41

    .line 591
    :cond_62
    if-eqz v0, :cond_63

    const-string v0, "customer_not_found"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    move v0, v4

    .line 592
    :goto_42
    if-eqz v0, :cond_64

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$35;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$35;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_64

    move v0, v4

    .line 601
    :goto_43
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 604
    if-nez v2, :cond_65

    move v0, v3

    goto/16 :goto_1

    :cond_63
    move v0, v3

    .line 591
    goto :goto_42

    :cond_64
    move v0, v3

    .line 592
    goto :goto_43

    .line 605
    :cond_65
    if-eqz v0, :cond_66

    const-string v0, "duplicate_account_name"

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    move v0, v4

    .line 606
    :goto_44
    if-eqz v0, :cond_67

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$36;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$36;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_67

    move v0, v4

    .line 615
    :goto_45
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 618
    if-nez v1, :cond_68

    move v0, v3

    goto/16 :goto_1

    :cond_66
    move v0, v3

    .line 605
    goto :goto_44

    :cond_67
    move v0, v3

    .line 606
    goto :goto_45

    .line 619
    :cond_68
    if-eqz v0, :cond_69

    const-string v0, "device_already_registered"

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    move v0, v4

    .line 620
    :goto_46
    if-eqz v0, :cond_6a

    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$37;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$37;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v4

    goto/16 :goto_1

    :cond_69
    move v0, v3

    .line 619
    goto :goto_46

    :cond_6a
    move v0, v3

    .line 620
    goto/16 :goto_1
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 1
    .parameter "webConnector"
    .parameter "url"
    .parameter "stream"
    .parameter "statusTracker"

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 7
    .parameter "webConnector"
    .parameter "url"
    .parameter "stream"
    .parameter "statusTracker"
    .parameter "maxRetry"

    .prologue
    .line 683
    const/4 v3, 0x0

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 6
    .parameter "webConnector"
    .parameter "url"
    .parameter "stream"
    .parameter "statusTracker"
    .parameter "headers"

    .prologue
    .line 701
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 7
    .parameter "webConnector"
    .parameter "url"
    .parameter "stream"
    .parameter "statusTracker"
    .parameter "headers"
    .parameter "maxRetry"

    .prologue
    .line 720
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 8
    .parameter "webConnector"
    .parameter "url"
    .parameter "stream"
    .parameter "handler"
    .parameter "statusTracker"
    .parameter "headers"
    .parameter "numRetry"

    .prologue
    .line 855
    new-instance v7, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-direct {v7, p4}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;-><init>(Lcom/amazon/foundation/IStatusTracker;)V

    .line 856
    .local v7, request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 858
    .local v6, ok:Z
    :goto_0
    if-eqz v6, :cond_0

    .line 860
    iput-object p3, v7, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 863
    invoke-interface/range {v0 .. v5}, Lcom/amazon/foundation/internal/net/LightWebConnector;->createRequest(Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    move-result-object p0

    .end local p0
    iput-object p0, v7, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    .line 865
    if-eqz v6, :cond_3

    iget-object p0, v7, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {p0}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object p0

    new-instance p1, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$38;

    .end local p1
    invoke-direct {p1, v7}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$38;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    invoke-interface {p0, p1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    .line 877
    .end local v6           #ok:Z
    .local p0, ok:Z
    :goto_1
    if-nez p0, :cond_1

    .line 881
    const/4 p0, 0x0

    iput-object p0, v7, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    .line 884
    .end local p0           #ok:Z
    :cond_1
    return-object v7

    .line 856
    .local p0, webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 865
    .end local p0           #webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;
    .end local p1
    .restart local v6       #ok:Z
    :cond_3
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 1
    .parameter "webConnector"
    .parameter "url"
    .parameter "handler"

    .prologue
    .line 770
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 6
    .parameter "webConnector"
    .parameter "url"
    .parameter "handler"
    .parameter "maxRetry"

    .prologue
    .line 785
    const/4 v3, 0x0

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 1
    .parameter "webConnector"
    .parameter "url"
    .parameter "handler"
    .parameter "statusTracker"

    .prologue
    .line 738
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 6
    .parameter "webConnector"
    .parameter "url"
    .parameter "handler"
    .parameter "statusTracker"
    .parameter "maxRetry"

    .prologue
    .line 755
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 6
    .parameter "webConnector"
    .parameter "url"
    .parameter "handler"
    .parameter "statusTracker"
    .parameter "headers"

    .prologue
    .line 805
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 824
    if-eqz p2, :cond_1

    move v7, v9

    .line 826
    :goto_0
    new-instance v0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;

    invoke-direct {v0, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;-><init>(Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;)V

    .line 827
    new-instance v2, Lcom/amazon/foundation/internal/CharOutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v2, v0, v1}, Lcom/amazon/foundation/internal/CharOutputStreamWriter;-><init>(Lcom/amazon/foundation/internal/ICharOutputStream;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 828
    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    .line 830
    if-eqz v7, :cond_2

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addWebserviceErrorDescription()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v9

    .line 839
    :goto_1
    if-nez v1, :cond_0

    .line 841
    const/4 v0, 0x0

    .line 842
    :cond_0
    return-object v0

    :cond_1
    move v7, v8

    .line 824
    goto :goto_0

    :cond_2
    move v1, v8

    .line 830
    goto :goto_1
.end method

.method private notifyKillEvent()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->killEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 68
    return-void
.end method

.method private setError(Z)V
    .locals 0
    .parameter "error"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->hasError:Z

    .line 63
    return-void
.end method

.method private setWebserviceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->setError(Z)V

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public SetExpectedContentType([C)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 943
    return-void
.end method

.method public SetTimeout(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->setTimeout(J)V

    .line 933
    return-void
.end method

.method public addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->addFormPairPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public addHeaders(Ljava/util/Hashtable;)V
    .locals 1
    .parameter "headerStrings"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->addHeaders(Ljava/util/Hashtable;)V

    .line 904
    return-void
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    if-nez v0, :cond_1

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->setError(Z)V

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->terminate()V

    .line 81
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->execute()V

    goto :goto_0
.end method

.method public getKillEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->killEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->hasError:Z

    return v0
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->terminateCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->kill()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->terminate()V

    .line 100
    return-void
.end method

.method public prime()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->prime()V

    .line 951
    return-void
.end method

.method public registerHttpHeaderCallback(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V
    .locals 1
    .parameter "headerName"
    .parameter "callback"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->setHttpHeaderCallback(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    .line 641
    return-void
.end method

.method public registerHttpStatusCallback(Lcom/amazon/foundation/IIntCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->setHttpStatusCallback(Lcom/amazon/foundation/IIntCallback;)V

    .line 649
    return-void
.end method

.method public setPostData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "contentType"
    .parameter "data"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->setPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method public setStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter "statusTracker"

    .prologue
    .line 894
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 895
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->webRequest:Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/net/WebConnectorRequest;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->setError(Z)V

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->notifyKillEvent()V

    .line 113
    return-void
.end method
