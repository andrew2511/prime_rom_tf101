.class public Lcom/android/email/activity/setup/AccountSecurity;
.super Landroid/app/Activity;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;,
        Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mTriedAddAdministrator:Z

.field private mTriedSetEncryption:Z

.field private mTriedSetPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 336
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    return-void
.end method

.method public static actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 94
    if-eqz p3, :cond_0

    const-string v1, "EXPIRED"

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    return-object v0

    .line 94
    :cond_0
    const-string v1, "EXPIRING"

    goto :goto_0
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 81
    const-string v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method private repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V
    .locals 1
    .parameter "account"
    .parameter "security"

    .prologue
    .line 267
    new-instance v0, Lcom/android/email/activity/setup/AccountSecurity$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/email/activity/setup/AccountSecurity$2;-><init>(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 273
    return-void
.end method

.method private tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 10
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 186
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    .line 189
    .local v3, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    if-eqz v4, :cond_0

    .line 191
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 260
    :goto_0
    return-void

    .line 194
    :cond_0
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 196
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 197
    .local v0, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v0, :cond_1

    .line 198
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 202
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    const-string v4, "android.app.extra.ADD_EXPLANATION"

    const v5, 0x7f08011f

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v2, v9}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 216
    .end local v0           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v3, v5}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 227
    invoke-virtual {v3, v5}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I

    move-result v1

    .line 230
    .local v1, inactiveReasons:I
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_5

    .line 231
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    if-eqz v4, :cond_4

    .line 232
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 235
    :cond_4
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 237
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 244
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_7

    .line 245
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    if-eqz v4, :cond_6

    .line 246
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 249
    :cond_6
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 251
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 258
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 104
    .local v7, i:Landroid/content/Intent;
    const-string v0, "ACCOUNT_ID"

    invoke-virtual {v7, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 105
    .local v2, accountId:J
    const-string v0, "SHOW_DIALOG"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 106
    .local v6, showDialog:Z
    const-string v0, "EXPIRING"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 107
    .local v4, passwordExpiring:Z
    const-string v0, "EXPIRED"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 108
    .local v5, passwordExpired:Z
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v8

    .line 109
    .local v8, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v8, v2, v3}, Lcom/android/email/SecurityPolicy;->clearNotification(J)V

    .line 110
    cmp-long v0, v2, v10

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 161
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/android/email/activity/setup/AccountSecurity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSecurity$1;-><init>(Lcom/android/email/activity/setup/AccountSecurity;JZZZ)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
