.class Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthorizedAccountCallback"
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
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 923
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

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
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v7, "problem authorizing account: "

    const-string v6, "BooksActivity"

    .line 927
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 928
    .local v1, bundle:Landroid/os/Bundle;
    new-instance v0, Landroid/accounts/Account;

    const-string v4, "authAccount"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .local v0, account:Landroid/accounts/Account;
    const-string v4, "authtoken"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 933
    .local v3, validAccount:Z
    if-eqz v3, :cond_1

    .line 934
    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 935
    new-instance v4, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->setAccount(Landroid/accounts/Account;)V

    .line 937
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$1600(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;Z)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 951
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #validAccount:Z
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 942
    .local v2, e:Landroid/accounts/OperationCanceledException;
    const-string v4, "BooksActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem authorizing account: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$600(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->pickAccount()V

    goto :goto_0

    .line 943
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 944
    .local v2, e:Landroid/accounts/AuthenticatorException;
    const-string v4, "BooksActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem authorizing account: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 945
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 946
    .local v2, e:Ljava/io/IOException;
    const-string v4, "BooksActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem authorizing account: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
