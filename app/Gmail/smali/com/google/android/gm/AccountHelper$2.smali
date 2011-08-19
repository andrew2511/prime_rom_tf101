.class final Lcom/google/android/gm/AccountHelper$2;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/AccountHelper;->promptForCredentials(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/gm/AccountHelper$CredentialsCallback;)V
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
.field final synthetic val$callback:Lcom/google/android/gm/AccountHelper$CredentialsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gm/AccountHelper$CredentialsCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/gm/AccountHelper$2;->val$callback:Lcom/google/android/gm/AccountHelper$CredentialsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
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
    .line 224
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 225
    .local v1, result:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/gm/AccountHelper$2;->val$callback:Lcom/google/android/gm/AccountHelper$CredentialsCallback;

    invoke-interface {v2}, Lcom/google/android/gm/AccountHelper$CredentialsCallback;->onCredentialsAcquired()V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 238
    .end local v1           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 228
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "Gmail"

    const-string v3, "promptForCredentials(): User Canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 231
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Gmail"

    const-string v3, "promptForCredentials(): IO Error"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 235
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "Gmail"

    const-string v3, "promptForCredentials(): Not Authenticated"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
