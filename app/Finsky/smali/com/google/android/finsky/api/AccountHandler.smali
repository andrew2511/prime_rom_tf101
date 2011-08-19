.class public Lcom/google/android/finsky/api/AccountHandler;
.super Ljava/lang/Object;
.source "AccountHandler.java"


# static fields
.field private static sCurrentAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;
    .locals 7
    .parameter "accountName"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v6

    .line 96
    :goto_0
    return-object v5

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 91
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 92
    .local v0, a:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    .line 93
    goto :goto_0

    .line 91
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #a:Landroid/accounts/Account;
    :cond_2
    move-object v5, v6

    .line 96
    goto :goto_0
.end method

.method public static getAccountFromPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/accounts/Account;
    .locals 3
    .parameter "context"
    .parameter "settings"

    .prologue
    .line 117
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, currentAccountName:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 42
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/finsky/api/AccountHandler;->sCurrentAccount:Ljava/lang/String;

    return-object v0
.end method

.method public static getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 76
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasAccount(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "accountName"
    .parameter "context"

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCurrentAccount(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "accountName"
    .parameter "settings"

    .prologue
    .line 58
    sput-object p0, Lcom/google/android/finsky/api/AccountHandler;->sCurrentAccount:Ljava/lang/String;

    .line 62
    sget-object v1, Lcom/google/android/finsky/api/AccountHandler;->sCurrentAccount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "account"

    sget-object v2, Lcom/google/android/finsky/api/AccountHandler;->sCurrentAccount:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
