.class Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;
.super Ljava/lang/Object;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/AccountPickerFragment;
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
.field final synthetic this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/AccountPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/AccountPickerFragment;Lcom/google/android/apps/books/app/AccountPickerFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;-><init>(Lcom/google/android/apps/books/app/AccountPickerFragment;)V

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
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v9, 0x1

    const-string v8, "problem authorizing account: "

    const-string v7, "AccountPickerFragment"

    .line 227
    iget-object v5, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/books/app/AccountPickerFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 231
    .local v2, bundle:Landroid/os/Bundle;
    new-instance v0, Landroid/accounts/Account;

    const-string v5, "authAccount"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "accountType"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v0, account:Landroid/accounts/Account;
    const-string v5, "authtoken"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 236
    .local v4, validAccount:Z
    if-eqz v4, :cond_2

    .line 237
    iget-object v5, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-static {v5, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$1200(Lcom/google/android/apps/books/app/AccountPickerFragment;Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 241
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #validAccount:Z
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 242
    .local v3, e:Landroid/accounts/OperationCanceledException;
    const-string v5, "AccountPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem authorizing account: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v3           #e:Landroid/accounts/OperationCanceledException;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-static {v5}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$900(Lcom/google/android/apps/books/app/AccountPickerFragment;)V

    .line 251
    iget-object v5, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-static {v5, v9}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$1000(Lcom/google/android/apps/books/app/AccountPickerFragment;I)V

    .line 254
    iget-object v5, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 255
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 256
    const v5, 0x7f0b0040

    invoke-static {v1, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 243
    .end local v1           #activity:Landroid/app/Activity;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 244
    .local v3, e:Landroid/accounts/AuthenticatorException;
    const-string v5, "AccountPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem authorizing account: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 245
    .end local v3           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 246
    .local v3, e:Ljava/io/IOException;
    const-string v5, "AccountPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem authorizing account: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
