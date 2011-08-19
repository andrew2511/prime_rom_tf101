.class public Lcom/android/vending/model/GetCarrierInfoRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "GetCarrierInfoRequest.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 19
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_CARRIER_INFO_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/GetCarrierInfoRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 20
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "GCIR_"

    return-object v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
