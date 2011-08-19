.class final enum Lcom/android/vending/AssetOverviewPanel$AssetAction$3;
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
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/AssetOverviewPanel$AssetAction;-><init>(Ljava/lang/String;ILcom/android/vending/AssetOverviewPanel$1;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/vending/model/Asset;Landroid/app/Activity;Lcom/android/vending/AssetOverviewPanel;)V
    .locals 1
    .parameter "asset"
    .parameter "activity"
    .parameter "assetOverviewPanel"

    .prologue
    .line 77
    invoke-static {}, Lcom/android/vending/Assets;->get()Lcom/android/vending/Assets;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/Assets;->cancelDownload(Lcom/android/vending/model/Asset;Landroid/content/Context;)V

    .line 78
    return-void
.end method
