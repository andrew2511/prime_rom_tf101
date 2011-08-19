.class Lcom/android/vending/MyDownloadsActivity$3;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Lcom/android/vending/model/LocalAssetCache$AssetStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/MyDownloadsActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$3;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 2
    .parameter "serverAssetId"
    .parameter "newState"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$3;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iget-object v0, v0, Lcom/android/vending/MyDownloadsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/MyDownloadsActivity$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/vending/MyDownloadsActivity$3$1;-><init>(Lcom/android/vending/MyDownloadsActivity$3;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    return-void
.end method
