.class public Lcom/android/vending/model/AssetResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "AssetResponse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/AssetResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 22
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->ASSETS_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 23
    iput-object p1, p0, Lcom/android/vending/model/AssetResponse;->mAccount:Ljava/lang/String;

    .line 24
    sget-boolean v0, Lcom/android/vending/model/AssetResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "AssetResponse account should never be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public getAsset(I)Lcom/android/vending/model/Asset;
    .locals 3
    .parameter "index"

    .prologue
    .line 32
    new-instance v0, Lcom/android/vending/model/Asset;

    iget-object v1, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/model/AssetResponse;->mAccount:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAssets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getNumAssets()I

    move-result v2

    .local v2, numAssets:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/vending/model/AssetResponse;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-object v0
.end method

.method public getCorrectedAsset(I)Lcom/android/vending/model/Asset;
    .locals 3
    .parameter "index"

    .prologue
    .line 67
    new-instance v0, Lcom/android/vending/model/Asset;

    iget-object v1, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/model/AssetResponse;->mAccount:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCorrectedAssets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getNumCorrectedAssets()I

    move-result v2

    .local v2, numCorrectedAssets:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/vending/model/AssetResponse;->getCorrectedAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-object v0
.end method

.method public getCorrectedQuery()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 53
    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 84
    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListType()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 89
    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumAssets()I
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getNumCorrectedAssets()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getNumTotalAssets()J
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 44
    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getNumTotalCorrectedAssets()J
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 62
    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/AssetResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
