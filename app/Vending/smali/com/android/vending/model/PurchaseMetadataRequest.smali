.class public Lcom/android/vending/model/PurchaseMetadataRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "PurchaseMetadataRequest.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# instance fields
.field mRequestBillingCountries:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 21
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->PURCHASE_METADATA_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/PurchaseMetadataRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 22
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "PMR"

    return-object v0
.end method

.method public getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public requestBillingCountries(Z)V
    .locals 0
    .parameter "request"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/vending/model/PurchaseMetadataRequest;->mRequestBillingCountries:Z

    .line 36
    return-void
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
