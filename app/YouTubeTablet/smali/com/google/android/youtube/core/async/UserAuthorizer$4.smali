.class Lcom/google/android/youtube/core/async/UserAuthorizer$4;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;->addAccount(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
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
    .line 329
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 330
    .local v2, extras:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    const-string v4, "authAccount"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 331
    .local v0, account:Landroid/accounts/Account;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "added account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 343
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 334
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "added account canceled"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyNotAuthenticated()V

    goto :goto_0

    .line 336
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 337
    .local v1, e:Ljava/io/IOException;
    const-string v3, "added account IOException"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v3, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyAuthenticationError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 339
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 340
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "added account AuthenticatorException"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v3, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyAuthenticationError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
