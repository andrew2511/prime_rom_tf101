.class abstract Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AuthTokenCallback"
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
.field private account:Landroid/accounts/Account;

.field private authToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    return-void
.end method


# virtual methods
.method public abstract onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
.end method

.method public abstract onAuthenticationError(Ljava/lang/Exception;)V
.end method

.method public abstract onNotAuthenticated()V
.end method

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
    .line 380
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 382
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->onNotAuthenticated()V

    .line 408
    .end local v1           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 387
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    const-string v3, "authAccount"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->account:Landroid/accounts/Account;

    .line 388
    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->authToken:Ljava/lang/String;

    .line 389
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->authToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got authToken for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 391
    new-instance v2, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->authToken:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 398
    .end local v1           #extras:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 399
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "login canceled"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->onNotAuthenticated()V

    goto :goto_0

    .line 393
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got null authToken for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 394
    new-instance v2, Landroid/accounts/AuthenticatorException;

    invoke-direct {v2}, Landroid/accounts/AuthenticatorException;-><init>()V

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->onAuthenticationError(Ljava/lang/Exception;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 401
    .end local v1           #extras:Landroid/os/Bundle;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 402
    .local v0, e:Ljava/io/IOException;
    const-string v2, "login IOException"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->onAuthenticationError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 404
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 405
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "login AuthenticatorException"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;->onAuthenticationError(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
