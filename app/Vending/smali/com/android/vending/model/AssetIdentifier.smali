.class public Lcom/android/vending/model/AssetIdentifier;
.super Ljava/lang/Object;
.source "AssetIdentifier.java"


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V
    .locals 0
    .parameter "assetIdentifierProto"
    .parameter "account"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/vending/model/AssetIdentifier;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 20
    iput-object p2, p0, Lcom/android/vending/model/AssetIdentifier;->mAccount:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;
    .locals 5

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/vending/model/AssetIdentifier;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 41
    .local v0, matching:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/model/AssetIdentifier;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 44
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/AssetIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vending/model/AssetIdentifier;->mAccount:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/vending/model/AbstractLocalAssetCache;->getByPackageNameAndAccount(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v1

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/model/AssetIdentifier;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/vending/model/AssetIdentifier;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vending/model/AssetIdentifier;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/model/AssetIdentifier;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method
