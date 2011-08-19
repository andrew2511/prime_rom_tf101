.class Lcom/android/vending/AssetOverviewPanel$1$1;
.super Ljava/lang/Thread;
.source "AssetOverviewPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetOverviewPanel$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetOverviewPanel$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetOverviewPanel$1;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/vending/AssetOverviewPanel$1$1;->this$1:Lcom/android/vending/AssetOverviewPanel$1;

    iput-object p2, p0, Lcom/android/vending/AssetOverviewPanel$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;

    .line 226
    .local v0, assetAction:Lcom/android/vending/AssetOverviewPanel$AssetAction;
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel$1$1;->this$1:Lcom/android/vending/AssetOverviewPanel$1;

    iget-object v2, v2, Lcom/android/vending/AssetOverviewPanel$1;->this$0:Lcom/android/vending/AssetOverviewPanel;

    iget-object v2, v2, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    iget-object v3, p0, Lcom/android/vending/AssetOverviewPanel$1$1;->this$1:Lcom/android/vending/AssetOverviewPanel$1;

    iget-object v3, v3, Lcom/android/vending/AssetOverviewPanel$1;->this$0:Lcom/android/vending/AssetOverviewPanel;

    iget-object v3, v3, Lcom/android/vending/AssetOverviewPanel;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/vending/AssetOverviewPanel$1$1;->this$1:Lcom/android/vending/AssetOverviewPanel$1;

    iget-object v4, v4, Lcom/android/vending/AssetOverviewPanel$1;->this$0:Lcom/android/vending/AssetOverviewPanel;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/vending/AssetOverviewPanel$AssetAction;->run(Lcom/android/vending/model/Asset;Landroid/app/Activity;Lcom/android/vending/AssetOverviewPanel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0           #assetAction:Lcom/android/vending/AssetOverviewPanel$AssetAction;
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 228
    .local v1, t:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
