.class final Lcom/google/android/gm/AccountHelper$3;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/AccountHelper;->showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.field final synthetic val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
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
    .line 269
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_0

    .line 272
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/4 v0, 0x0

    .line 279
    .local v0, accountResult:Landroid/accounts/Account;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 280
    .local v5, result:Landroid/os/Bundle;
    const-string v6, "authAccount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, addName:Ljava/lang/String;
    const-string v6, "accountType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, addType:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 285
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 286
    .end local v0           #accountResult:Landroid/accounts/Account;
    .local v1, accountResult:Landroid/accounts/Account;
    :try_start_1
    const-string v6, "gmail-ls"

    invoke-static {v1, v6}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    .line 291
    .local v4, isSyncable:I
    if-gez v4, :cond_2

    .line 292
    const-string v6, "gmail-ls"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    move-object v0, v1

    .line 301
    .end local v1           #accountResult:Landroid/accounts/Account;
    .end local v4           #isSyncable:I
    .restart local v0       #accountResult:Landroid/accounts/Account;
    :cond_3
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_0

    .line 302
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    goto :goto_0

    .line 297
    .end local v2           #addName:Ljava/lang/String;
    .end local v3           #addType:Ljava/lang/String;
    .end local v5           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .line 301
    :goto_1
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_0

    .line 302
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    goto :goto_0

    .line 298
    :catch_1
    move-exception v6

    .line 301
    :goto_2
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_0

    .line 302
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    goto :goto_0

    .line 299
    :catch_2
    move-exception v6

    .line 301
    :goto_3
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_0

    .line 302
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v6

    :goto_4
    iget-object v7, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v7, :cond_4

    .line 302
    iget-object v7, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v7, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    :cond_4
    throw v6

    .line 301
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    .restart local v2       #addName:Ljava/lang/String;
    .restart local v3       #addType:Ljava/lang/String;
    .restart local v5       #result:Landroid/os/Bundle;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_4

    .line 299
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    :catch_3
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_3

    .line 298
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_2

    .line 297
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    :catch_5
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_1
.end method
