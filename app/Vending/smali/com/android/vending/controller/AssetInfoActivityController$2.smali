.class Lcom/android/vending/controller/AssetInfoActivityController$2;
.super Ljava/lang/Object;
.source "AssetInfoActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/controller/AssetInfoActivityController;->handleAutoUpdateChanged(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/controller/AssetInfoActivityController;

.field final synthetic val$activity:Lcom/android/vending/BaseActivity;

.field final synthetic val$asset:Lcom/android/vending/model/Asset;

.field final synthetic val$state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;


# direct methods
.method constructor <init>(Lcom/android/vending/controller/AssetInfoActivityController;Lcom/android/vending/model/Asset;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/vending/controller/AssetInfoActivityController$2;->this$0:Lcom/android/vending/controller/AssetInfoActivityController;

    iput-object p2, p0, Lcom/android/vending/controller/AssetInfoActivityController$2;->val$asset:Lcom/android/vending/model/Asset;

    iput-object p3, p0, Lcom/android/vending/controller/AssetInfoActivityController$2;->val$state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    iput-object p4, p0, Lcom/android/vending/controller/AssetInfoActivityController$2;->val$activity:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 566
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/controller/AssetInfoActivityController$2;->val$asset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/controller/AssetInfoActivityController$2;->val$state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->updateAutoUpdateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;)V

    .line 569
    iget-object v0, p0, Lcom/android/vending/controller/AssetInfoActivityController$2;->val$activity:Lcom/android/vending/BaseActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 570
    return-void
.end method
