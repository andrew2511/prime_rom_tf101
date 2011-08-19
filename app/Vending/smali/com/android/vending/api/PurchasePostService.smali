.class public Lcom/android/vending/api/PurchasePostService;
.super Lcom/android/vending/api/BaseService;
.source "PurchasePostService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getPurchasePostResponse()Lcom/android/vending/model/PurchasePostResponse;
    .locals 0

    .prologue
    .line 60
    iget-object p0, p0, Lcom/android/vending/api/PurchasePostService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/PurchasePostResponse;

    return-object p0
.end method

.method public purchasePost(Ljava/lang/String;Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 18
    .parameter "account"
    .parameter "request"

    .prologue
    .line 36
    new-instance v6, Lcom/android/vending/model/PurchasePostResponse;

    invoke-direct {v6}, Lcom/android/vending/model/PurchasePostResponse;-><init>()V

    .line 39
    .local v6, response:Lcom/android/vending/model/PurchasePostResponse;
    invoke-virtual/range {p2 .. p2}, Lcom/android/vending/model/PurchasePostRequest;->getCreditCard()Lcom/android/vending/model/CreditCard;

    move-result-object v17

    .line 40
    .local v17, card:Lcom/android/vending/model/CreditCard;
    if-eqz v17, :cond_0

    .line 42
    const/4 v4, 0x2

    new-array v9, v4, [Lorg/apache/http/NameValuePair;

    .line 43
    .local v9, params:[Lorg/apache/http/NameValuePair;
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ccn"

    invoke-virtual/range {v17 .. v17}, Lcom/android/vending/model/CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v9, v4

    .line 44
    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "cvc"

    invoke-virtual/range {v17 .. v17}, Lcom/android/vending/model/CreditCard;->getCVC()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v9, v4

    .line 47
    new-instance v3, Lcom/android/vending/api/RequestManager$BatchRequest;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v10, "ccn%3an%3bcvc%3an"

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZ[Lorg/apache/http/NameValuePair;Ljava/lang/String;Z)V

    .line 56
    .end local v9           #params:[Lorg/apache/http/NameValuePair;
    .local v3, batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/PurchasePostService;->addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$BatchRequest;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 57
    return-void

    .line 52
    .end local v3           #batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    :cond_0
    new-instance v3, Lcom/android/vending/api/RequestManager$BatchRequest;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v3

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object v13, v6

    invoke-direct/range {v10 .. v16}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V

    .restart local v3       #batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    goto :goto_0
.end method
