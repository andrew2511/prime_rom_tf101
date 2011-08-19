.class Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "ConfirmPermissionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/ConfirmPermissionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssetLoader"
.end annotation


# instance fields
.field private mAssetService:Lcom/android/vending/api/AssetService;

.field private mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/ConfirmPermissionsActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/ConfirmPermissionsActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p2, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    .line 280
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 281
    iput-object p2, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->mIds:Ljava/util/List;

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/ConfirmPermissionsActivity;Ljava/util/List;Lcom/android/vending/ConfirmPermissionsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;-><init>(Lcom/android/vending/ConfirmPermissionsActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected displayResults()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-static {v0}, Lcom/android/vending/ConfirmPermissionsActivity;->access$100(Lcom/android/vending/ConfirmPermissionsActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-static {v0}, Lcom/android/vending/ConfirmPermissionsActivity;->access$100(Lcom/android/vending/ConfirmPermissionsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-static {v0}, Lcom/android/vending/ConfirmPermissionsActivity;->access$600(Lcom/android/vending/ConfirmPermissionsActivity;)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v0, "Request for assets by id has returned 0 requests. Weird!"

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-virtual {v0}, Lcom/android/vending/ConfirmPermissionsActivity;->finish()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 6

    .prologue
    .line 286
    new-instance v3, Lcom/android/vending/api/AssetService;

    iget-object v4, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v3, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 289
    new-instance v2, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v2}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 290
    .local v2, request:Lcom/android/vending/model/AssetRequest;
    iget-object v3, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->mIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    .end local v1           #id:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    new-instance v4, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader$1;

    invoke-direct {v4, p0}, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader$1;-><init>(Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 303
    iget-object v3, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    .line 304
    return-void
.end method
