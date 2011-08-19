.class public Lcom/android/vending/api/RequestManager$BatchRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchRequest"
.end annotation


# instance fields
.field private final mBaseRequest:Lcom/android/vending/model/BaseRequest;

.field private final mBaseResponse:Lcom/android/vending/model/BaseResponse;

.field private final mCanPostponeRefresh:Z

.field private final mEfeEncryptedFields:Ljava/lang/String;

.field private final mListener:Lcom/android/vending/api/RequestManager$ResponseListener;

.field private final mPostParameters:[Lorg/apache/http/NameValuePair;

.field private final mRequiresSsl:Z

.field private final mUsesSecureToken:Z


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)V
    .locals 7
    .parameter "listener"
    .parameter "baseRequest"
    .parameter "baseResponse"
    .parameter "canPostponeRefresh"

    .prologue
    const/4 v4, 0x0

    .line 407
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V

    .line 408
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V
    .locals 9
    .parameter "listener"
    .parameter "baseRequest"
    .parameter "baseResponse"
    .parameter "requiresSsl"
    .parameter "usesSecureToken"
    .parameter "canPostponeRefresh"

    .prologue
    const/4 v6, 0x0

    .line 413
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v6

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZ[Lorg/apache/http/NameValuePair;Ljava/lang/String;Z)V

    .line 415
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZ[Lorg/apache/http/NameValuePair;Ljava/lang/String;Z)V
    .locals 2
    .parameter "listener"
    .parameter "baseRequest"
    .parameter "baseResponse"
    .parameter "requiresSsl"
    .parameter "usesSecureToken"
    .parameter "postParameters"
    .parameter "efeEncryptedFields"
    .parameter "canPostponeRefresh"

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    if-nez p2, :cond_0

    .line 436
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseRequest cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    if-nez p3, :cond_1

    .line 439
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseResponse cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    iput-object p1, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mListener:Lcom/android/vending/api/RequestManager$ResponseListener;

    .line 442
    iput-object p2, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    .line 443
    iput-object p3, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseResponse:Lcom/android/vending/model/BaseResponse;

    .line 444
    if-nez p4, :cond_2

    if-nez p7, :cond_2

    invoke-virtual {p2}, Lcom/android/vending/model/BaseRequest;->requiresSsl()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mRequiresSsl:Z

    .line 446
    iput-boolean p5, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mUsesSecureToken:Z

    .line 447
    iput-object p6, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mPostParameters:[Lorg/apache/http/NameValuePair;

    .line 448
    iput-object p7, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mEfeEncryptedFields:Ljava/lang/String;

    .line 449
    iput-boolean p8, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mCanPostponeRefresh:Z

    .line 450
    return-void

    .line 444
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public altRequestSuggest()Z
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/BaseRequest;->getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->SUGGEST_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseRequest()Lcom/android/vending/model/BaseRequest;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    return-object v0
.end method

.method public getBaseResponse()Lcom/android/vending/model/BaseResponse;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseResponse:Lcom/android/vending/model/BaseResponse;

    return-object v0
.end method

.method public getEfeEncryptedFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mEfeEncryptedFields:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/android/vending/api/RequestManager$ResponseListener;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mListener:Lcom/android/vending/api/RequestManager$ResponseListener;

    return-object v0
.end method

.method public getPostParameters()[Lorg/apache/http/NameValuePair;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mPostParameters:[Lorg/apache/http/NameValuePair;

    return-object v0
.end method

.method public isBillingRequest()Z
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/BaseRequest;->getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanPostponeRefresh()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mCanPostponeRefresh:Z

    return v0
.end method

.method public isLicensing()Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/BaseRequest;->getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->LICENSE_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresEfe()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mEfeEncryptedFields:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresSsl()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mRequiresSsl:Z

    return v0
.end method

.method public usesSecureToken()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mUsesSecureToken:Z

    return v0
.end method
