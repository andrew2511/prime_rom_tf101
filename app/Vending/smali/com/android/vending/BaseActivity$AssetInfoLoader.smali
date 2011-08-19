.class public abstract Lcom/android/vending/BaseActivity$AssetInfoLoader;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AssetInfoLoader"
.end annotation


# instance fields
.field private final mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private final mAssetIds:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssetService:Lcom/android/vending/api/AssetService;

.field private final mLoadExtendedInfo:Z

.field private mNumAssets:I

.field final synthetic this$0:Lcom/android/vending/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;Ljava/lang/Iterable;Lcom/android/vending/AssetItemAdapter;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter "assetAdapter"
    .parameter "extendedInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/vending/AssetItemAdapter;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1977
    .local p2, assetIds:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->this$0:Lcom/android/vending/BaseActivity;

    .line 1978
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 1979
    iput-object p2, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mAssetIds:Ljava/lang/Iterable;

    .line 1980
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mNumAssets:I

    .line 1981
    new-instance v0, Lcom/android/vending/api/AssetService;

    iget-object v1, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v0, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 1983
    iput-object p3, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 1984
    iput-boolean p4, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mLoadExtendedInfo:Z

    .line 1985
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/BaseActivity;Ljava/lang/String;Lcom/android/vending/AssetItemAdapter;Z)V
    .locals 1
    .parameter
    .parameter "assetId"
    .parameter "assetAdapter"
    .parameter "extendedInfo"

    .prologue
    .line 1996
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/vending/BaseActivity$AssetInfoLoader;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/Iterable;Lcom/android/vending/AssetItemAdapter;Z)V

    .line 1997
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 2

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mNumAssets:I

    if-eq v0, v1, :cond_0

    .line 2014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t load all assets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mNumAssets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 2016
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 5

    .prologue
    .line 2001
    new-instance v1, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v1}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 2002
    .local v1, assetRequest:Lcom/android/vending/model/AssetRequest;
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mNumAssets:I

    .line 2003
    iget-object v3, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mAssetIds:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2004
    .local v0, assetId:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 2005
    iget v3, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mNumAssets:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mNumAssets:I

    goto :goto_0

    .line 2007
    .end local v0           #assetId:Ljava/lang/String;
    :cond_0
    iget-boolean v3, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mLoadExtendedInfo:Z

    invoke-virtual {v1, v3}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 2008
    iget-object v3, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    iget-object v4, p0, Lcom/android/vending/BaseActivity$AssetInfoLoader;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v3, v1, v4}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 2009
    return-void
.end method
