.class final enum Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$2;
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
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;-><init>(Ljava/lang/String;ILcom/android/vending/MyDownloadsActivity$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 159
    const v0, 0x7f070171

    return v0
.end method

.method public isVisible(Lcom/android/vending/adapters/MyDownloadsAdapter;)Z
    .locals 2
    .parameter "downloadsAdapter"

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 171
    invoke-static {}, Lcom/android/vending/MultipleInstallTracker;->get()Lcom/android/vending/MultipleInstallTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/MultipleInstallTracker;->areInstallsInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getNumUpdates()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run(Landroid/app/Activity;Lcom/android/vending/adapters/MyDownloadsAdapter;)V
    .locals 5
    .parameter "activity"
    .parameter "downloadsAdapter"

    .prologue
    .line 142
    invoke-virtual {p2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getUnchangedUpdates()Ljava/util/List;

    move-result-object v3

    .line 144
    .local v3, unchangedUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-static {p1, v3}, Lcom/android/vending/PackageMonitorReceiver;->setExpectedBatchInstalls(Landroid/content/Context;Ljava/util/List;)V

    .line 146
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 147
    .local v0, a:Lcom/android/vending/model/Asset;
    invoke-static {}, Lcom/android/vending/MultipleInstallTracker;->get()Lcom/android/vending/MultipleInstallTracker;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/vending/MultipleInstallTracker;->install(Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 150
    .end local v0           #a:Lcom/android/vending/model/Asset;
    :cond_0
    invoke-virtual {p2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getChangedUpdates()Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, changedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 153
    invoke-static {v1, p1}, Lcom/android/vending/ConfirmPermissionsActivity;->launch(Ljava/util/List;Landroid/app/Activity;)V

    .line 155
    :cond_1
    return-void
.end method
