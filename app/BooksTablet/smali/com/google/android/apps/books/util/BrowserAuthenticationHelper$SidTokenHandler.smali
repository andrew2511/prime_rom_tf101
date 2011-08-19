.class Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;
.super Ljava/lang/Object;
.source "BrowserAuthenticationHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SidTokenHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;->mAccount:Landroid/accounts/Account;

    .line 101
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, value:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v9, "BrowserAuthenticationHelper"

    .line 104
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, sid:Ljava/lang/String;
    new-instance v5, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;

    iget-object v1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-direct {v5, v1, v8}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;-><init>(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Ljava/lang/String;)V

    .line 106
    .local v5, callback:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;
    iget-object v1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$000(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 107
    .local v0, am:Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;->mAccount:Landroid/accounts/Account;

    const-string v2, "LSID"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v4}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$000(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    .end local v0           #am:Landroid/accounts/AccountManager;
    .end local v5           #callback:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;
    .end local v8           #sid:Ljava/lang/String;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 109
    .local v7, e:Landroid/accounts/OperationCanceledException;
    const-string v1, "BrowserAuthenticationHelper"

    const-string v1, "cancelled while acquiring token: "

    invoke-static {v9, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$100(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)V

    goto :goto_0

    .line 111
    .end local v7           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    move-object v7, v1

    .line 112
    .local v7, e:Landroid/accounts/AuthenticatorException;
    const-string v1, "BrowserAuthenticationHelper"

    const-string v1, "authentication error while acquiring token: "

    invoke-static {v9, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$100(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)V

    goto :goto_0

    .line 114
    .end local v7           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v1

    move-object v7, v1

    .line 115
    .local v7, e:Ljava/io/IOException;
    const-string v1, "BrowserAuthenticationHelper"

    const-string v1, "IO error while acquiring token: "

    invoke-static {v9, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$100(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)V

    goto :goto_0
.end method
