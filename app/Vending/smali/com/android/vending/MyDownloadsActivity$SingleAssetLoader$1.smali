.class Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;->this$1:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 859
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 860
    .local v0, asset:Lcom/android/vending/model/Asset;
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;->this$1:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;

    iget-object v1, v1, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iget-object v1, v1, Lcom/android/vending/MyDownloadsActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$1;-><init>(Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;Lcom/android/vending/model/Asset;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 873
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :goto_0
    return-void

    .line 866
    :cond_0
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;->this$1:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;

    iget-object v1, v1, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iget-object v1, v1, Lcom/android/vending/MyDownloadsActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$2;

    invoke-direct {v2, p0}, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$2;-><init>(Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
