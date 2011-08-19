.class Lcom/google/googlenav/login/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/login/p;

.field final synthetic b:Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;


# direct methods
.method constructor <init>(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;Lcom/google/googlenav/login/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/login/o;->b:Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;

    iput-object p2, p0, Lcom/google/googlenav/login/o;->a:Lcom/google/googlenav/login/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/login/o;->b:Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;

    iget-object v1, p0, Lcom/google/googlenav/login/o;->b:Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;

    invoke-static {v1}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;[Landroid/accounts/Account;)[Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/googlenav/login/o;->b:Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->b(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->b([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/login/o;->b:Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->b(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/login/o;->b:Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/login/o;->a:Lcom/google/googlenav/login/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/login/o;->a:Lcom/google/googlenav/login/p;

    invoke-interface {v0}, Lcom/google/googlenav/login/p;->a()V

    :cond_1
    return-void
.end method
