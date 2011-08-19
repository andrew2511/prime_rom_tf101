.class public Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "GetItemsWebservice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "webConnector"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 163
    return-void
.end method

.method public static getNewGetItemsDescriber(Lcom/amazon/kcp/application/models/internal/TodoModel;Ljava/lang/String;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 4
    .parameter "model"
    .parameter "baseURL"

    .prologue
    .line 259
    new-instance v3, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$1;)V

    .line 262
    .local v3, todoItemLoader:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;
    iput-object p1, v3, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->removalBaseUrl:Ljava/lang/String;

    .line 265
    new-instance v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 267
    .local v0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 268
    .local v2, responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v2, :cond_0

    .line 270
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v0

    .line 438
    .end local v0           #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .end local v2           #responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .local p0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    :goto_0
    return-object p1

    .line 272
    .restart local v0       #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .restart local v2       #responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .local p0, model:Lcom/amazon/kcp/application/models/internal/TodoModel;
    :cond_0
    const-string p1, "response"

    invoke-virtual {v2, p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    .line 275
    .local v1, ok:Z
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    .line 276
    .local p1, childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez p1, :cond_1

    .line 278
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    goto :goto_0

    .line 280
    .restart local v0       #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, model:Lcom/amazon/kcp/application/models/internal/TodoModel;
    :cond_1
    if-eqz v1, :cond_2

    const-string v1, "total_count"

    .end local v1           #ok:Z
    invoke-virtual {p1, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result p1

    .end local p1           #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    move v1, p1

    .line 283
    .restart local v1       #ok:Z
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    .line 284
    .restart local p1       #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez p1, :cond_3

    .line 286
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    goto :goto_0

    .line 280
    .end local v1           #ok:Z
    .end local p1           #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .restart local v0       #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, model:Lcom/amazon/kcp/application/models/internal/TodoModel;
    :cond_2
    const/4 p1, 0x0

    move v1, p1

    goto :goto_1

    .line 288
    .restart local v1       #ok:Z
    .restart local p1       #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_3
    if-eqz v1, :cond_4

    const-string v1, "next_pull_time"

    .end local v1           #ok:Z
    invoke-virtual {p1, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 289
    .restart local v1       #ok:Z
    :goto_2
    if-eqz v1, :cond_5

    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$1;

    .end local v1           #ok:Z
    invoke-direct {v1, p0}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$1;-><init>(Lcom/amazon/kcp/application/models/internal/TodoModel;)V

    invoke-virtual {p1, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p1

    .end local p1           #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    move v1, p1

    .line 298
    .restart local v1       #ok:Z
    :goto_3
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    .line 299
    .restart local p1       #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez p1, :cond_6

    .line 301
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    goto :goto_0

    .line 288
    .end local v1           #ok:Z
    .restart local v0       #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, model:Lcom/amazon/kcp/application/models/internal/TodoModel;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 289
    .end local p1           #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_5
    const/4 p1, 0x0

    move v1, p1

    goto :goto_3

    .line 303
    .restart local v1       #ok:Z
    .restart local p1       #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_6
    if-eqz v1, :cond_7

    const-string v1, "items"

    .end local v1           #ok:Z
    invoke-virtual {p1, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 304
    .restart local v1       #ok:Z
    :goto_4
    if-eqz v1, :cond_8

    const/4 v1, 0x2

    new-instance v2, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$2;

    .end local v1           #ok:Z
    .end local v2           #responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    invoke-direct {v2, p0}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$2;-><init>(Lcom/amazon/kcp/application/models/internal/TodoModel;)V

    invoke-virtual {p1, v1, v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 313
    .restart local v1       #ok:Z
    :goto_5
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    .line 314
    .local p1, itemNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez p1, :cond_9

    .line 316
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    goto :goto_0

    .line 303
    .end local v1           #ok:Z
    .restart local v0       #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .restart local v2       #responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .local p0, model:Lcom/amazon/kcp/application/models/internal/TodoModel;
    .local p1, childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 304
    .end local v2           #responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    .line 318
    .restart local v1       #ok:Z
    .local p1, itemNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_9
    if-eqz v1, :cond_a

    const-string v1, "item"

    .end local v1           #ok:Z
    invoke-virtual {p1, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    .line 319
    .restart local v1       #ok:Z
    :goto_6
    if-eqz v1, :cond_b

    const/4 v1, 0x2

    new-instance v2, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$3;

    .end local v1           #ok:Z
    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$3;-><init>(Lcom/amazon/kcp/application/models/internal/TodoModel;Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p1, v1, v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result p0

    .end local p0           #model:Lcom/amazon/kcp/application/models/internal/TodoModel;
    if-eqz p0, :cond_b

    const/4 p0, 0x1

    .line 328
    .local p0, ok:Z
    :goto_7
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 329
    .local v1, valueNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz p0, :cond_c

    if-eqz v1, :cond_c

    const/4 p0, 0x1

    .line 330
    :goto_8
    if-eqz p0, :cond_d

    const-string p0, "value"

    .end local p0           #ok:Z
    invoke-virtual {v1, p0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    .line 331
    .restart local p0       #ok:Z
    :goto_9
    if-eqz p0, :cond_e

    new-instance p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$4;

    .end local p0           #ok:Z
    invoke-direct {p0, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$4;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {v1, p0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    move v1, p0

    .line 340
    .local v1, ok:Z
    :goto_a
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p0

    .line 341
    .local p0, descriptionNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz v1, :cond_f

    if-eqz p0, :cond_f

    const/4 v1, 0x1

    .line 342
    :goto_b
    if-eqz v1, :cond_10

    const-string v1, "description"

    .end local v1           #ok:Z
    invoke-virtual {p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    .line 343
    .restart local v1       #ok:Z
    :goto_c
    if-eqz v1, :cond_11

    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$5;

    .end local v1           #ok:Z
    invoke-direct {v1, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$5;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    .end local p0           #descriptionNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz p0, :cond_11

    const/4 p0, 0x1

    move v1, p0

    .line 352
    .restart local v1       #ok:Z
    :goto_d
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p0

    .line 353
    .local p0, forcedUpdateNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz v1, :cond_12

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    .line 354
    :goto_e
    if-eqz v1, :cond_13

    const-string v1, "forced"

    .end local v1           #ok:Z
    invoke-virtual {p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    .line 355
    .restart local v1       #ok:Z
    :goto_f
    if-eqz v1, :cond_14

    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$6;

    .end local v1           #ok:Z
    invoke-direct {v1, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$6;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    .end local p0           #forcedUpdateNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz p0, :cond_14

    const/4 p0, 0x1

    .line 364
    .local p0, ok:Z
    :goto_10
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 365
    .local v1, versionNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz p0, :cond_15

    if-eqz v1, :cond_15

    const/4 p0, 0x1

    .line 366
    :goto_11
    if-eqz p0, :cond_16

    const-string p0, "version"

    .end local p0           #ok:Z
    invoke-virtual {v1, p0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    .line 367
    .restart local p0       #ok:Z
    :goto_12
    if-eqz p0, :cond_17

    new-instance p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$7;

    .end local p0           #ok:Z
    invoke-direct {p0, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$7;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {v1, p0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    .line 375
    .restart local p0       #ok:Z
    :goto_13
    if-eqz p0, :cond_18

    new-instance p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$8;

    .end local p0           #ok:Z
    invoke-direct {p0, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$8;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p1, p0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    .line 383
    .restart local p0       #ok:Z
    :goto_14
    if-eqz p0, :cond_19

    const-string p0, "priority"

    .end local p0           #ok:Z
    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$9;

    .end local v1           #versionNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    invoke-direct {v1, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$9;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p1, p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    .line 390
    .restart local p0       #ok:Z
    :goto_15
    if-eqz p0, :cond_1a

    const-string p0, "type"

    .end local p0           #ok:Z
    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$10;

    invoke-direct {v1, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$10;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p1, p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    .line 397
    .restart local p0       #ok:Z
    :goto_16
    if-eqz p0, :cond_1b

    const-string p0, "action"

    .end local p0           #ok:Z
    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$11;

    invoke-direct {v1, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$11;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p1, p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    .line 404
    .restart local p0       #ok:Z
    :goto_17
    if-eqz p0, :cond_1c

    const-string p0, "key"

    .end local p0           #ok:Z
    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$12;

    invoke-direct {v1, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$12;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p1, p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    .line 411
    .restart local p0       #ok:Z
    :goto_18
    if-eqz p0, :cond_1d

    const-string p0, "is_incremental"

    .end local p0           #ok:Z
    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$13;

    invoke-direct {v1, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$13;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p1, p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    .line 418
    .restart local p0       #ok:Z
    :goto_19
    if-eqz p0, :cond_1e

    const-string p0, "sequence"

    .end local p0           #ok:Z
    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$14;

    invoke-direct {v1, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$14;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p1, p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    .line 425
    .restart local p0       #ok:Z
    :goto_1a
    if-eqz p0, :cond_1f

    const-string p0, "url"

    .end local p0           #ok:Z
    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$15;

    invoke-direct {v1, v3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$15;-><init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V

    invoke-virtual {p1, p0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    .line 433
    .restart local p0       #ok:Z
    :goto_1b
    if-nez p0, :cond_20

    .line 435
    const/4 p0, 0x0

    .end local v0           #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    :goto_1c
    move-object p1, p0

    .line 438
    goto/16 :goto_0

    .line 318
    .restart local v0       #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, model:Lcom/amazon/kcp/application/models/internal/TodoModel;
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 319
    .end local p0           #model:Lcom/amazon/kcp/application/models/internal/TodoModel;
    :cond_b
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 329
    .local v1, valueNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .local p0, ok:Z
    :cond_c
    const/4 p0, 0x0

    goto/16 :goto_8

    .line 330
    .end local p0           #ok:Z
    :cond_d
    const/4 p0, 0x0

    goto/16 :goto_9

    .line 331
    :cond_e
    const/4 p0, 0x0

    move v1, p0

    goto/16 :goto_a

    .line 341
    .local v1, ok:Z
    .local p0, descriptionNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 342
    .end local v1           #ok:Z
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_c

    .line 343
    .end local p0           #descriptionNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_11
    const/4 p0, 0x0

    move v1, p0

    goto/16 :goto_d

    .line 353
    .restart local v1       #ok:Z
    .local p0, forcedUpdateNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_e

    .line 354
    .end local v1           #ok:Z
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_f

    .line 355
    .end local p0           #forcedUpdateNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_14
    const/4 p0, 0x0

    goto/16 :goto_10

    .line 365
    .local v1, versionNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .local p0, ok:Z
    :cond_15
    const/4 p0, 0x0

    goto/16 :goto_11

    .line 366
    .end local p0           #ok:Z
    :cond_16
    const/4 p0, 0x0

    goto/16 :goto_12

    .line 367
    :cond_17
    const/4 p0, 0x0

    goto/16 :goto_13

    .line 375
    :cond_18
    const/4 p0, 0x0

    goto/16 :goto_14

    .line 383
    .end local v1           #versionNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_19
    const/4 p0, 0x0

    goto/16 :goto_15

    .line 390
    :cond_1a
    const/4 p0, 0x0

    goto/16 :goto_16

    .line 397
    :cond_1b
    const/4 p0, 0x0

    goto :goto_17

    .line 404
    :cond_1c
    const/4 p0, 0x0

    goto :goto_18

    .line 411
    :cond_1d
    const/4 p0, 0x0

    goto :goto_19

    .line 418
    :cond_1e
    const/4 p0, 0x0

    goto :goto_1a

    .line 425
    :cond_1f
    const/4 p0, 0x0

    goto :goto_1b

    .restart local p0       #ok:Z
    :cond_20
    move-object p0, v0

    .end local v0           #handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .local p0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    goto :goto_1c
.end method


# virtual methods
.method public createGetItemsRequest(Lcom/amazon/kcp/application/internal/IUpdateManager;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/TodoModel;JLcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 178
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getGetItemsURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v6

    .line 180
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 182
    const-string v0, "?software_rev="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 185
    const-string v0, "&device_lto="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getGMTOffsetInMinutes()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 192
    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/IUpdateManager;->getLatestKnownAppVersion()J

    move-result-wide v2

    .line 194
    const-string v0, "&patch_rev="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 200
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->sanitizeURLParameterForDMSMetricsReporting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v2, "&os_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-static {v0}, Lcom/mobipocket/common/util/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->sanitizeURLParameterForDMSMetricsReporting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v2, "&device_model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-static {v0}, Lcom/mobipocket/common/util/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getRemoveTodoURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;->getNewGetItemsDescriber(Lcom/amazon/kcp/application/models/internal/TodoModel;Ljava/lang/String;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    .line 208
    if-nez v2, :cond_1

    .line 210
    const/4 v0, 0x0

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 213
    :cond_1
    if-eq p7, v5, :cond_2

    .line 215
    packed-switch p7, :pswitch_data_0

    .line 219
    :cond_2
    :goto_1
    const-string v0, "GET"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p2, v0, v3, v4}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;->generateSignedHeaders(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p6

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 232
    const-string v1, "text/xml"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    goto :goto_0

    .line 218
    :pswitch_0
    const-string v0, "&reason=Customer"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
