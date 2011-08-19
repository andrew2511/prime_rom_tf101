.class Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "EasAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EasAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasAuthenticator"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/service/EasAuthenticatorService;


# direct methods
.method public constructor <init>(Lcom/android/email/service/EasAuthenticatorService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->this$0:Lcom/android/email/service/EasAuthenticatorService;

    .line 53
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 64
    if-eqz p5, :cond_3

    const-string v6, "password"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "username"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 66
    new-instance v0, Landroid/accounts/Account;

    const-string v6, "username"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.exchange"

    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->this$0:Lcom/android/email/service/EasAuthenticatorService;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "password"

    invoke-virtual {p5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, syncContacts:Z
    const-string v6, "contacts"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "contacts"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    const/4 v4, 0x1

    .line 78
    :cond_0
    const-string v6, "com.android.contacts"

    invoke-static {v0, v6, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 79
    const-string v6, "com.android.contacts"

    invoke-static {v0, v6, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 83
    const/4 v3, 0x0

    .line 84
    .local v3, syncCalendar:Z
    const-string v6, "calendar"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "calendar"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    const/4 v3, 0x1

    .line 88
    :cond_1
    const-string v6, "com.android.calendar"

    invoke-static {v0, v6, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 89
    const-string v6, "com.android.calendar"

    invoke-static {v0, v6, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 93
    const/4 v5, 0x0

    .line 94
    .local v5, syncEmail:Z
    const-string v6, "email"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "email"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    const/4 v5, 0x1

    .line 98
    :cond_2
    const-string v6, "com.android.email.provider"

    invoke-static {v0, v6, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 99
    const-string v6, "com.android.email.provider"

    invoke-static {v0, v6, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v1, b:Landroid/os/Bundle;
    const-string v6, "authAccount"

    const-string v7, "username"

    invoke-virtual {p5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v6, "accountType"

    const-string v7, "com.android.exchange"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #syncCalendar:Z
    .end local v4           #syncContacts:Z
    .end local v5           #syncEmail:Z
    :goto_0
    return-object v1

    .line 110
    .end local v1           #b:Landroid/os/Bundle;
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 111
    .restart local v1       #b:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->this$0:Lcom/android/email/service/EasAuthenticatorService;

    invoke-static {v6}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 113
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "accountAuthenticatorResponse"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    const-string v6, "intent"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authTokenType"

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method
