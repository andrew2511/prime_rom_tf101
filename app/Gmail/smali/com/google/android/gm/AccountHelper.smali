.class public Lcom/google/android/gm/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;,
        Lcom/google/android/gm/AccountHelper$CredentialsCallback;,
        Lcom/google/android/gm/AccountHelper$AddAccountCallback;,
        Lcom/google/android/gm/AccountHelper$AccountResultsCallback;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public static getSyncingAccounts(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/AccountManagerCallback",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    invoke-static {v4}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 168
    return-void
.end method

.method public static mergeAccountLists(Ljava/util/List;[Landroid/accounts/Account;Z)Ljava/util/List;
    .locals 5
    .parameter
    .parameter "accounts"
    .parameter "prioritizeAccountList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/accounts/Account;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, existingList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v3, newAccountList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 186
    aget-object v4, p1, v2

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 187
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 188
    .local v1, engine:Lcom/google/android/gm/provider/MailEngine;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->labelsSynced()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    .line 189
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_3
    if-nez p2, :cond_4

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #engine:Lcom/google/android/gm/provider/MailEngine;
    :cond_5
    return-object v3
.end method

.method public static promptForCredentials(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/gm/AccountHelper$CredentialsCallback;)V
    .locals 7
    .parameter "activity"
    .parameter "accountStr"
    .parameter "callback"

    .prologue
    .line 215
    new-instance v1, Landroid/accounts/Account;

    const-string v0, "com.google"

    invoke-direct {v1, p1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v1, account:Landroid/accounts/Account;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v3, bundle:Landroid/os/Bundle;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "mail"

    new-instance v5, Lcom/google/android/gm/AccountHelper$2;

    invoke-direct {v5, p2}, Lcom/google/android/gm/AccountHelper$2;-><init>(Lcom/google/android/gm/AccountHelper$CredentialsCallback;)V

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 241
    return-void
.end method

.method public static showAddAccount(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gm/AccountHelper;->showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V

    .line 251
    return-void
.end method

.method public static showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V
    .locals 8
    .parameter "activity"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "mail"

    new-instance v6, Lcom/google/android/gm/AccountHelper$3;

    invoke-direct {v6, p1}, Lcom/google/android/gm/AccountHelper$3;-><init>(Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V

    move-object v4, v3

    move-object v5, p0

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 308
    return-void
.end method


# virtual methods
.method public asyncGetAccountsInfo(Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    invoke-static {v4}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/google/android/gm/AccountHelper$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gm/AccountHelper$1;-><init>(Lcom/google/android/gm/AccountHelper;Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 96
    return-void
.end method

.method public chooseAccount(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 116
    const-string v2, "account"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/AccountHelper;->validateAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 120
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 122
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #account:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 127
    .end local v1           #data:Landroid/net/Uri;
    .restart local v0       #account:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 129
    const-string v2, "account-shortcut"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/AccountHelper;->validateAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_1
    if-nez v0, :cond_2

    .line 133
    iget-object v2, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gm/WaitActivity;->waitIfNeededAndGetAccount(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_2
    if-eqz v0, :cond_3

    .line 137
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gm/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    :cond_3
    return-object v0
.end method

.method public switchAccounts()V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/google/android/gm/MailboxSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method public validateAccountName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "accountName"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gm/Utils;->isValidGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
