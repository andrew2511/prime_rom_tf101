.class Lcom/android/vending/MultipleInstallTracker$1;
.super Ljava/lang/Object;
.source "MultipleInstallTracker.java"

# interfaces
.implements Lcom/android/vending/model/LocalAssetCache$AssetStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/MultipleInstallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/MultipleInstallTracker;


# direct methods
.method constructor <init>(Lcom/android/vending/MultipleInstallTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/vending/MultipleInstallTracker$1;->this$0:Lcom/android/vending/MultipleInstallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 1
    .parameter "serverAssetId"
    .parameter "newState"

    .prologue
    .line 64
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne p2, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker$1;->this$0:Lcom/android/vending/MultipleInstallTracker;

    invoke-static {v0, p1}, Lcom/android/vending/MultipleInstallTracker;->access$200(Lcom/android/vending/MultipleInstallTracker;Ljava/lang/String;)V

    .line 67
    :cond_0
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_DECLINED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne p2, v0, :cond_2

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker$1;->this$0:Lcom/android/vending/MultipleInstallTracker;

    invoke-static {v0, p1}, Lcom/android/vending/MultipleInstallTracker;->access$300(Lcom/android/vending/MultipleInstallTracker;Ljava/lang/String;)V

    .line 72
    :cond_2
    return-void
.end method
