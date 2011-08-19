.class Lcom/android/vending/AssetOverviewPanel$AssetAction$7$1;
.super Ljava/lang/Object;
.source "AssetOverviewPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetOverviewPanel$AssetAction$7;->run(Lcom/android/vending/model/Asset;Landroid/app/Activity;Lcom/android/vending/AssetOverviewPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetOverviewPanel$AssetAction$7;

.field final synthetic val$asset:Lcom/android/vending/model/Asset;

.field final synthetic val$state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetOverviewPanel$AssetAction$7;Lcom/android/vending/model/Asset;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$7$1;->this$0:Lcom/android/vending/AssetOverviewPanel$AssetAction$7;

    iput-object p2, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$7$1;->val$asset:Lcom/android/vending/model/Asset;

    iput-object p3, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$7$1;->val$state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$7$1;->val$asset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$7$1;->val$state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->updateAutoUpdateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;)V

    .line 150
    return-void
.end method
