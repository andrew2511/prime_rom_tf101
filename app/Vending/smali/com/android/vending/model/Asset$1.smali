.class Lcom/android/vending/model/Asset$1;
.super Ljava/lang/Object;
.source "Asset.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/model/Asset;->updateToUninstalled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/model/Asset;


# direct methods
.method constructor <init>(Lcom/android/vending/model/Asset;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/vending/model/Asset$1;->this$0:Lcom/android/vending/model/Asset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1022
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1023
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1024
    .local v0, assetDb:Lcom/android/vending/api/LocalAssetDatabase;
    iget-object v2, p0, Lcom/android/vending/model/Asset$1;->this$0:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, assetId:Ljava/lang/String;
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/api/LocalAssetDatabase;->updateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;)V

    .line 1026
    return-void
.end method
