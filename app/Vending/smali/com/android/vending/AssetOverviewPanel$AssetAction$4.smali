.class final enum Lcom/android/vending/AssetOverviewPanel$AssetAction$4;
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
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/AssetOverviewPanel$AssetAction;-><init>(Ljava/lang/String;ILcom/android/vending/AssetOverviewPanel$1;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/vending/model/Asset;Landroid/app/Activity;Lcom/android/vending/AssetOverviewPanel;)V
    .locals 8
    .parameter "asset"
    .parameter "activity"
    .parameter "assetOverviewPanel"

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getAccount()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, account:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/vending/AssetOverviewPanel;->access$100(Lcom/android/vending/model/Asset;Landroid/content/Context;)Z

    move-result v4

    .line 88
    .local v4, uninstallable:Z
    new-instance v1, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;

    move-object v2, p0

    move-object v3, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;-><init>(Lcom/android/vending/AssetOverviewPanel$AssetAction$4;Lcom/android/vending/AssetOverviewPanel;ZLjava/lang/String;Landroid/app/Activity;)V

    .line 108
    .local v1, callback:Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isRefundable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    move-object v0, p2

    check-cast v0, Lcom/android/vending/BaseActivity;

    move-object v7, v0

    .line 110
    .local v7, baseActivity:Lcom/android/vending/BaseActivity;
    iget-object v2, v7, Lcom/android/vending/BaseActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {v7, v2, p1, v1}, Lcom/android/vending/RefundAction;->refund(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;Lcom/android/vending/model/Asset;Ljava/lang/Runnable;)Lcom/android/vending/RefundAction;

    .line 114
    .end local v7           #baseActivity:Lcom/android/vending/BaseActivity;
    :cond_0
    if-eqz v4, :cond_1

    .line 115
    invoke-static {}, Lcom/android/vending/Assets;->get()Lcom/android/vending/Assets;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/vending/Assets;->uninstall(Lcom/android/vending/model/Asset;Landroid/content/Context;)V

    .line 117
    :cond_1
    return-void
.end method
