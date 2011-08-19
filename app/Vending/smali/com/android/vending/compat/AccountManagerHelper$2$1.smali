.class Lcom/android/vending/compat/AccountManagerHelper$2$1;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/compat/AccountManagerHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

.field final synthetic val$accountMgr:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Lcom/android/vending/compat/AccountManagerHelper$2;Landroid/accounts/AccountManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/vending/compat/AccountManagerHelper$2$1;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iput-object p2, p0, Lcom/android/vending/compat/AccountManagerHelper$2$1;->val$accountMgr:Landroid/accounts/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vending/compat/AccountManagerHelper$2$1;->val$accountMgr:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/android/vending/compat/AccountManagerHelper$2$1;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iget-object v2, v2, Lcom/android/vending/compat/AccountManagerHelper$2;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v2}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/compat/AccountManagerHelper$2$1;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iget-object v3, v3, Lcom/android/vending/compat/AccountManagerHelper$2;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v3}, Lcom/android/vending/BaseActivity$AuthService;->getRequiredFeatureSets()[[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/vending/compat/AccountManagerHelper$2$1;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iget-object v5, v5, Lcom/android/vending/compat/AccountManagerHelper$2;->val$base:Lcom/android/vending/BaseActivity;

    iget-object v6, p0, Lcom/android/vending/compat/AccountManagerHelper$2$1;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iget-object v6, v6, Lcom/android/vending/compat/AccountManagerHelper$2;->val$addAccountCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v7, p0, Lcom/android/vending/compat/AccountManagerHelper$2$1;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iget-object v7, v7, Lcom/android/vending/compat/AccountManagerHelper$2;->val$uiHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 101
    return-void
.end method
