.class Lcom/android/vending/AssetOverviewPanel$2$1;
.super Ljava/lang/Object;
.source "AssetOverviewPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetOverviewPanel$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetOverviewPanel$2;

.field final synthetic val$progress:Lcom/android/vending/model/DownloadProgress;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetOverviewPanel$2;Lcom/android/vending/model/DownloadProgress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/vending/AssetOverviewPanel$2$1;->this$1:Lcom/android/vending/AssetOverviewPanel$2;

    iput-object p2, p0, Lcom/android/vending/AssetOverviewPanel$2$1;->val$progress:Lcom/android/vending/model/DownloadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/vending/AssetOverviewPanel$2$1;->this$1:Lcom/android/vending/AssetOverviewPanel$2;

    iget-object v0, v0, Lcom/android/vending/AssetOverviewPanel$2;->this$0:Lcom/android/vending/AssetOverviewPanel;

    invoke-static {v0}, Lcom/android/vending/AssetOverviewPanel;->access$200(Lcom/android/vending/AssetOverviewPanel;)Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AssetOverviewPanel$2$1;->this$1:Lcom/android/vending/AssetOverviewPanel$2;

    iget-object v1, v1, Lcom/android/vending/AssetOverviewPanel$2;->this$0:Lcom/android/vending/AssetOverviewPanel;

    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel$2$1;->val$progress:Lcom/android/vending/model/DownloadProgress;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->updateView(Landroid/view/View;Lcom/android/vending/model/DownloadProgress;)V

    .line 449
    return-void
.end method
