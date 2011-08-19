.class final Lcom/google/googlenav/login/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/accounts/Account;

.field final synthetic b:Landroid/accounts/AccountManager;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Landroid/accounts/AccountManager;ZZLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    iput-boolean p3, p0, Lcom/google/googlenav/login/n;->c:Z

    iput-boolean p4, p0, Lcom/google/googlenav/login/n;->d:Z

    iput-object p5, p0, Lcom/google/googlenav/login/n;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/b;

    iget-object v1, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    const-string v3, "local"

    iget-boolean v4, p0, Lcom/google/googlenav/login/n;->c:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    const-string v4, "SID"

    iget-boolean v5, p0, Lcom/google/googlenav/login/n;->c:Z

    invoke-virtual {v2, v3, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    const-string v5, "LSID"

    iget-boolean v6, p0, Lcom/google/googlenav/login/n;->c:Z

    invoke-virtual {v3, v4, v5, v6}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/login/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/googlenav/login/n;->c:Z

    iget-boolean v3, p0, Lcom/google/googlenav/login/n;->d:Z

    iget-object v4, p0, Lcom/google/googlenav/login/n;->e:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Z)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Z)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Z)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Z)V

    goto :goto_0
.end method
