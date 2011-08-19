.class final enum Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;
.super Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;
.source "MyDownloadsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;-><init>(Ljava/lang/String;ILcom/android/vending/MyDownloadsActivity$1;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;->stopAllDownloads(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method private stopAllDownloads(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 4
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, toCancel:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vending/model/Asset;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 109
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v2

    .line 111
    .local v2, la:Lcom/android/vending/model/LocalAsset;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAssetDownloader()Lcom/android/vending/AssetDownloader;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/android/vending/AssetDownloader;->cancelDownload(Lcom/android/vending/model/LocalAsset;Landroid/content/Context;)V

    goto :goto_0

    .line 114
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v2           #la:Lcom/android/vending/model/LocalAsset;
    :cond_1
    invoke-static {}, Lcom/android/vending/MultipleInstallTracker;->get()Lcom/android/vending/MultipleInstallTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/MultipleInstallTracker;->stopTrackingInstalls()V

    .line 115
    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f070172

    return v0
.end method

.method public isVisible(Lcom/android/vending/adapters/MyDownloadsAdapter;)Z
    .locals 3
    .parameter "downloadsAdapter"

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 131
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v2, 0x1

    .line 135
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public run(Landroid/app/Activity;Lcom/android/vending/adapters/MyDownloadsAdapter;)V
    .locals 2
    .parameter "activity"
    .parameter "downloadsAdapter"

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v0, toCancel:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vending/model/Asset;>;"
    new-instance v1, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;-><init>(Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;Landroid/app/Activity;Ljava/util/Collection;)V

    invoke-virtual {v1}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;->start()V

    .line 105
    return-void
.end method
