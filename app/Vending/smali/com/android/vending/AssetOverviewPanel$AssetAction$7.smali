.class final enum Lcom/android/vending/AssetOverviewPanel$AssetAction$7;
.super Lcom/android/vending/AssetOverviewPanel$AssetAction;
.source "AssetOverviewPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetOverviewPanel$AssetAction;
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
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/AssetOverviewPanel$AssetAction;-><init>(Ljava/lang/String;ILcom/android/vending/AssetOverviewPanel$1;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/vending/model/Asset;Landroid/app/Activity;Lcom/android/vending/AssetOverviewPanel;)V
    .locals 5
    .parameter "asset"
    .parameter "activity"
    .parameter "assetOverviewPanel"

    .prologue
    .line 139
    const v3, 0x7f080028

    invoke-virtual {p2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 141
    .local v0, autoUpdateCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 142
    .local v1, enabled:Z
    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->ENABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-object v2, v3

    .line 146
    .local v2, state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    :goto_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/vending/AssetOverviewPanel$AssetAction$7$1;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/vending/AssetOverviewPanel$AssetAction$7$1;-><init>(Lcom/android/vending/AssetOverviewPanel$AssetAction$7;Lcom/android/vending/model/Asset;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->run()V

    .line 152
    return-void

    .line 142
    .end local v2           #state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    :cond_0
    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DISABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-object v2, v3

    goto :goto_0
.end method
