.class public Lcom/google/googlenav/login/LoginControllerSdk5;
.super Lcom/google/googlenav/login/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/login/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLjava/lang/String;ZLandroid/content/Context;Z)V
    .locals 4

    invoke-static {p4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "com.google"

    invoke-virtual {v1, v0, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "com.google"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Z)V

    :cond_1
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/android/P;->f()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/google/googlenav/login/LoginControllerSdk5;->b(ZLjava/lang/String;ZLandroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v1, v2, p3, p1, v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    goto :goto_0
.end method
