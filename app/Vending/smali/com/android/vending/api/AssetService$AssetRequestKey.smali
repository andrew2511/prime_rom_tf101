.class Lcom/android/vending/api/AssetService$AssetRequestKey;
.super Ljava/lang/Object;
.source "AssetService.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/AssetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssetRequestKey"
.end annotation


# instance fields
.field private mAssetRequest:Lcom/android/vending/model/AssetRequest;


# direct methods
.method public constructor <init>(Lcom/android/vending/model/AssetRequest;)V
    .locals 0
    .parameter "assetRequest"

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Lcom/android/vending/api/AssetService$AssetRequestKey;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 649
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/vending/api/AssetService$AssetRequestKey;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/AssetRequest;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/vending/api/AssetService$AssetRequestKey;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/AssetRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/vending/api/AssetService$AssetRequestKey;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/AssetRequest;->getRetrieveVendingHistory()Z

    move-result v0

    return v0
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    return v0
.end method
