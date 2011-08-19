.class public Lcom/android/vending/compat/AccountManagerHelper;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/accounts/AccountManager;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0}, Lcom/android/vending/compat/AccountManagerHelper;->getAccountList(Landroid/accounts/AccountManager;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/android/vending/compat/AccountManagerHelper;->initAppAccountList([Landroid/accounts/Account;)V

    return-void
.end method

.method public static accountsToAccountNames([Landroid/accounts/Account;)Ljava/util/List;
    .locals 3
    .parameter "accounts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/String;

    .line 29
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 30
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static getAccountList(Landroid/accounts/AccountManager;)[Landroid/accounts/Account;
    .locals 1
    .parameter "accountMgr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v0, "com.google"

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthTokenBlocking(Lcom/android/vending/VendingApplication;Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "app"
    .parameter "authService"
    .parameter "account"

    .prologue
    const/4 v8, 0x0

    .line 155
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 157
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const/4 v5, 0x1

    :try_start_0
    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hosted_or_google"

    aput-object v6, v4, v5

    .line 161
    .local v4, features:[Ljava/lang/String;
    if-nez p2, :cond_0

    .line 162
    const-string v5, "com.google"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v5

    invoke-interface {v5}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 165
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    iget-object p2, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 168
    .end local v1           #accounts:[Landroid/accounts/Account;
    :cond_0
    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.google"

    invoke-direct {v5, p2, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, authToken:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 174
    const-string v5, "authentication failed"

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    move-object v5, v2

    .line 184
    .end local v2           #authToken:Ljava/lang/String;
    .end local v4           #features:[Ljava/lang/String;
    :goto_0
    return-object v5

    .line 177
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 178
    .local v3, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get auth token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    move-object v5, v8

    .line 184
    goto :goto_0

    .line 179
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 180
    .local v3, e:Landroid/accounts/AuthenticatorException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get auth token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    .end local v3           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 182
    .local v3, e:Landroid/accounts/OperationCanceledException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get auth token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static initAppAccountList([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 61
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    .line 62
    .local v1, app:Lcom/android/vending/VendingApplication;
    invoke-static {p0}, Lcom/android/vending/compat/AccountManagerHelper;->accountsToAccountNames([Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, accountNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Lcom/android/vending/VendingApplication;->setAccountList(Ljava/util/List;)V

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 66
    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->isCurrentAccountSet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/vending/VendingApplication;->setCurrentAccount(Ljava/lang/String;)V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 73
    .restart local p0
    :cond_2
    const-string v2, "Account list is set to empty."

    invoke-static {v2}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initializeAccountList()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/compat/AccountManagerHelper$1;

    invoke-direct {v1}, Lcom/android/vending/compat/AccountManagerHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public static initializeAccountListSynchronously()V
    .locals 5

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 47
    .local v0, accountMgr:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lcom/android/vending/compat/AccountManagerHelper;->getAccountList(Landroid/accounts/AccountManager;)[Landroid/accounts/Account;

    move-result-object v1

    .line 48
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/vending/compat/AccountManagerHelper;->initAppAccountList([Landroid/accounts/Account;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #accountMgr:Landroid/accounts/AccountManager;
    .end local v1           #accounts:[Landroid/accounts/Account;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 50
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in initializing account list. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initiateGetAuthToken(Lcom/android/vending/BaseActivity;ILcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerCallback;)V
    .locals 9
    .parameter "base"
    .parameter "requestCode"
    .parameter "service"
    .parameter "account"
    .parameter "uiHandler"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/BaseActivity;",
            "I",
            "Lcom/android/vending/BaseActivity$AuthService;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p5, addAccountCallback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local p6, selectAccountCallback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/vending/compat/AccountManagerHelper$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object v5, p3

    move-object v6, p6

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/vending/compat/AccountManagerHelper$2;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$AuthService;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;I)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 140
    return-void
.end method

.method public static invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "token"

    .prologue
    .line 197
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static invalidateAuthTokenBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "type"
    .parameter "token"

    .prologue
    .line 202
    invoke-static {p0, p1, p2}, Lcom/android/vending/compat/AccountManagerHelper;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
