.class final enum Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$3;
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
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;-><init>(Ljava/lang/String;ILcom/android/vending/MyDownloadsActivity$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 192
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
    .line 187
    const v0, 0x7f0701cf

    return v0
.end method

.method public isVisible(Lcom/android/vending/adapters/MyDownloadsAdapter;)Z
    .locals 2
    .parameter "downloadsAdapter"

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-virtual {p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getNotInstalled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/vending/MultipleInstallTracker;->get()Lcom/android/vending/MultipleInstallTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/MultipleInstallTracker;->areInstallsInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run(Landroid/app/Activity;Lcom/android/vending/adapters/MyDownloadsAdapter;)V
    .locals 2
    .parameter "activity"
    .parameter "downloadsAdapter"

    .prologue
    .line 179
    invoke-virtual {p2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getNotInstalled()Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-static {v0, p1}, Lcom/android/vending/ConfirmPermissionsActivity;->launch(Ljava/util/List;Landroid/app/Activity;)V

    .line 183
    :cond_0
    return-void
.end method
