.class Lcom/android/vending/controller/AssetInfoActivityController$1;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "AssetInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/controller/AssetInfoActivityController;->handleCheckForEnoughSpace(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/controller/AssetInfoActivityController;

.field final synthetic val$activity:Lcom/android/vending/BaseActivity;

.field final synthetic val$asset:Lcom/android/vending/model/Asset;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vending/controller/AssetInfoActivityController;Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/vending/controller/AssetInfoActivityController$1;->this$0:Lcom/android/vending/controller/AssetInfoActivityController;

    iput-object p2, p0, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$activity:Lcom/android/vending/BaseActivity;

    iput-object p3, p0, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$asset:Lcom/android/vending/model/Asset;

    iput-object p4, p0, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/vending/controller/AssetInfoActivityController$1;->val$activity:Lcom/android/vending/BaseActivity;

    new-instance v1, Lcom/android/vending/controller/AssetInfoActivityController$1$1;

    invoke-direct {v1, p0, p2}, Lcom/android/vending/controller/AssetInfoActivityController$1$1;-><init>(Lcom/android/vending/controller/AssetInfoActivityController$1;Z)V

    invoke-virtual {v0, v1}, Lcom/android/vending/BaseActivity;->postRunnable(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method
