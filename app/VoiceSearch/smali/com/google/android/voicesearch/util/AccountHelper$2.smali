.class Lcom/google/android/voicesearch/util/AccountHelper$2;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/util/AccountHelper;->getGmailAccounts(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/util/AccountHelper;

.field final synthetic val$callback:Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/android/voicesearch/util/AccountHelper$2;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    iput-object p2, p0, Lcom/google/android/voicesearch/util/AccountHelper$2;->val$callback:Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;

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
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/accounts/Account;

    .line 402
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 403
    if-eqz v0, :cond_0

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/util/AccountHelper$2;->val$callback:Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;

    invoke-interface {v1, v0}, Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;->onAccountsAvailable([Landroid/accounts/Account;)V

    .line 414
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    invoke-static {}, Lcom/google/android/voicesearch/util/AccountHelper;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unable to retrieve Gmail account for send email action"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 412
    goto :goto_0

    .line 408
    :catch_1
    move-exception v0

    .line 409
    invoke-static {}, Lcom/google/android/voicesearch/util/AccountHelper;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unable to retrieve Gmail account for send email action"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 412
    goto :goto_0

    .line 410
    :catch_2
    move-exception v0

    .line 411
    invoke-static {}, Lcom/google/android/voicesearch/util/AccountHelper;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unable to retrieve Gmail account for send email action"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
