.class Lcom/android/vending/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/BaseActivity;->onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/BaseActivity;

.field final synthetic val$newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field final synthetic val$serverAssetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/vending/BaseActivity$5;->this$0:Lcom/android/vending/BaseActivity;

    iput-object p2, p0, Lcom/android/vending/BaseActivity$5;->val$serverAssetId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/vending/BaseActivity$5;->val$newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/vending/BaseActivity$5;->this$0:Lcom/android/vending/BaseActivity;

    iget-object v1, p0, Lcom/android/vending/BaseActivity$5;->val$serverAssetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/BaseActivity$5;->val$newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/BaseActivity;->updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 1274
    return-void
.end method
