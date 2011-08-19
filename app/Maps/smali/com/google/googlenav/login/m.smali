.class final Lcom/google/googlenav/login/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Landroid/accounts/AccountManager;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;ZZLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/login/m;->a:Landroid/accounts/AccountManager;

    iput-boolean p2, p0, Lcom/google/googlenav/login/m;->b:Z

    iput-boolean p3, p0, Lcom/google/googlenav/login/m;->c:Z

    iput-object p4, p0, Lcom/google/googlenav/login/m;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/googlenav/login/m;->a:Landroid/accounts/AccountManager;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "authAccount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accountType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/googlenav/login/m;->b:Z

    iget-boolean v3, p0, Lcom/google/googlenav/login/m;->c:Z

    iget-object v4, p0, Lcom/google/googlenav/login/m;->d:Landroid/app/Activity;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/google/googlenav/login/m;->c:Z

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/google/googlenav/login/m;->c:Z

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Z)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-boolean v0, p0, Lcom/google/googlenav/login/m;->c:Z

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Z)V

    goto :goto_0
.end method
