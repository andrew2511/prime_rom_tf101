.class final Lcom/android/vending/compat/AccountManagerHelper$2;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/compat/AccountManagerHelper;->initiateGetAuthToken(Lcom/android/vending/BaseActivity;ILcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$addAccountCallback:Landroid/accounts/AccountManagerCallback;

.field final synthetic val$base:Lcom/android/vending/BaseActivity;

.field final synthetic val$requestCode:I

.field final synthetic val$selectAccountCallback:Landroid/accounts/AccountManagerCallback;

.field final synthetic val$service:Lcom/android/vending/BaseActivity$AuthService;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$AuthService;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$base:Lcom/android/vending/BaseActivity;

    iput-object p2, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    iput-object p3, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$addAccountCallback:Landroid/accounts/AccountManagerCallback;

    iput-object p4, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$uiHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$account:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$selectAccountCallback:Landroid/accounts/AccountManagerCallback;

    iput p7, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$base:Lcom/android/vending/BaseActivity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 89
    .local v0, accountMgr:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lcom/android/vending/compat/AccountManagerHelper;->access$000(Landroid/accounts/AccountManager;)[Landroid/accounts/Account;

    move-result-object v7

    .line 93
    .local v7, accounts:[Landroid/accounts/Account;
    array-length v1, v7

    if-nez v1, :cond_1

    .line 94
    new-instance v8, Lcom/android/vending/compat/AccountManagerHelper$2$1;

    invoke-direct {v8, p0, v0}, Lcom/android/vending/compat/AccountManagerHelper$2$1;-><init>(Lcom/android/vending/compat/AccountManagerHelper$2;Landroid/accounts/AccountManager;)V

    .line 106
    .local v8, addAccountRunnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->isCheckout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 138
    .end local v0           #accountMgr:Landroid/accounts/AccountManager;
    .end local v7           #accounts:[Landroid/accounts/Account;
    .end local v8           #addAccountRunnable:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 112
    .restart local v0       #accountMgr:Landroid/accounts/AccountManager;
    .restart local v7       #accounts:[Landroid/accounts/Account;
    .restart local v8       #addAccountRunnable:Ljava/lang/Runnable;
    :cond_0
    iget-object v1, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/compat/AccountManagerHelper$2$2;

    invoke-direct {v2, p0, v8}, Lcom/android/vending/compat/AccountManagerHelper$2$2;-><init>(Lcom/android/vending/compat/AccountManagerHelper$2;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 128
    .end local v0           #accountMgr:Landroid/accounts/AccountManager;
    .end local v7           #accounts:[Landroid/accounts/Account;
    .end local v8           #addAccountRunnable:Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/compat/AccountManagerHelper$2$3;

    invoke-direct {v2, p0}, Lcom/android/vending/compat/AccountManagerHelper$2$3;-><init>(Lcom/android/vending/compat/AccountManagerHelper$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 123
    .restart local v0       #accountMgr:Landroid/accounts/AccountManager;
    .restart local v7       #accounts:[Landroid/accounts/Account;
    :cond_1
    :try_start_1
    invoke-static {v7}, Lcom/android/vending/compat/AccountManagerHelper;->access$100([Landroid/accounts/Account;)V

    .line 124
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$account:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v2}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$base:Lcom/android/vending/BaseActivity;

    iget-object v5, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$selectAccountCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v6, p0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$uiHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 129
    .end local v0           #accountMgr:Landroid/accounts/AccountManager;
    .end local v7           #accounts:[Landroid/accounts/Account;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 130
    :catch_2
    move-exception v1

    goto :goto_1
.end method
