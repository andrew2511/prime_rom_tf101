.class Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;
.super Ljava/lang/Object;
.source "AssetOverviewPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetOverviewPanel$AssetAction$4;->run(Lcom/android/vending/model/Asset;Landroid/app/Activity;Lcom/android/vending/AssetOverviewPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetOverviewPanel$AssetAction$4;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$assetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

.field final synthetic val$uninstallable:Z


# direct methods
.method constructor <init>(Lcom/android/vending/AssetOverviewPanel$AssetAction$4;Lcom/android/vending/AssetOverviewPanel;ZLjava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;->this$0:Lcom/android/vending/AssetOverviewPanel$AssetAction$4;

    iput-object p2, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;->val$assetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    iput-boolean p3, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;->val$uninstallable:Z

    iput-object p4, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;->val$account:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;->val$assetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetOverviewPanel;->setVisibility(I)V

    .line 97
    iget-boolean v2, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;->val$uninstallable:Z

    if-nez v2, :cond_0

    .line 98
    new-instance v1, Lcom/android/vending/api/AssetService;

    invoke-direct {v1}, Lcom/android/vending/api/AssetService;-><init>()V

    .line 99
    .local v1, service:Lcom/android/vending/api/AssetService;
    invoke-virtual {v1}, Lcom/android/vending/api/AssetService;->invalidateMyDownloads()V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "account"

    iget-object v3, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;->val$account:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #service:Lcom/android/vending/api/AssetService;
    :cond_0
    return-void
.end method
