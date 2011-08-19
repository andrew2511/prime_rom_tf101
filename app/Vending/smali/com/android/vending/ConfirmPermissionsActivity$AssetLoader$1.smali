.class Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader$1;
.super Ljava/lang/Object;
.source "ConfirmPermissionsActivity.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;


# direct methods
.method constructor <init>(Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader$1;->this$1:Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader$1;->this$1:Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;

    iget-object v0, v0, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-static {v0, p1}, Lcom/android/vending/ConfirmPermissionsActivity;->access$102(Lcom/android/vending/ConfirmPermissionsActivity;Ljava/util/List;)Ljava/util/List;

    .line 297
    return-void
.end method
