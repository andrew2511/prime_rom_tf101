.class Lcom/android/vending/controller/AssetInfoActivityController$1$1;
.super Ljava/lang/Object;
.source "AssetInfoActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/controller/AssetInfoActivityController$1;->onRemoveCompleted(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

.field final synthetic val$succeeded:Z


# direct methods
.method constructor <init>(Lcom/android/vending/controller/AssetInfoActivityController$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iput-boolean p2, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->val$succeeded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iget-object v0, v0, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$activity:Lcom/android/vending/BaseActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 426
    iget-object v0, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iget-object v0, v0, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$activity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-boolean v0, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->val$succeeded:Z

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iget-object v0, v0, Lcom/android/vending/controller/AssetInfoActivityController$1;->this$0:Lcom/android/vending/controller/AssetInfoActivityController;

    iget-object v1, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iget-object v1, v1, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$activity:Lcom/android/vending/BaseActivity;

    iget-object v2, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iget-object v2, v2, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$asset:Lcom/android/vending/model/Asset;

    invoke-static {v0, v1, v2}, Lcom/android/vending/controller/AssetInfoActivityController;->access$000(Lcom/android/vending/controller/AssetInfoActivityController;Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iget-object v0, v0, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$activity:Lcom/android/vending/BaseActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 431
    iget-object v0, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iget-object v0, v0, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$activity:Lcom/android/vending/BaseActivity;

    iget-object v1, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iget-object v1, v1, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$asset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/controller/AssetInfoActivityController$1$1;->this$1:Lcom/android/vending/controller/AssetInfoActivityController$1;

    iget-object v2, v2, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$context:Landroid/content/Context;

    const v3, 0x7f0700de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/BaseActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
