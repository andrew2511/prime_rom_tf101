.class public Lcom/android/vending/model/ReconstructDatabaseResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "ReconstructDatabaseResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->RECONSTRUCT_DATABASE_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x23

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 14
    return-void
.end method


# virtual methods
.method public getAssetIdentifier(ILjava/lang/String;)Lcom/android/vending/model/AssetIdentifier;
    .locals 3
    .parameter "index"
    .parameter "account"

    .prologue
    .line 21
    iget-object v1, p0, Lcom/android/vending/model/ReconstructDatabaseResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 23
    .local v0, proto:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v1, Lcom/android/vending/model/AssetIdentifier;

    invoke-direct {v1, v0, p2}, Lcom/android/vending/model/AssetIdentifier;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    return-object v1
.end method

.method public getNumAssets()I
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/vending/model/ReconstructDatabaseResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    return v0
.end method
