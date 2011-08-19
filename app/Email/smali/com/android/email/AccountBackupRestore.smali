.class public Lcom/android/email/AccountBackupRestore;
.super Ljava/lang/Object;
.source "AccountBackupRestore.java"


# static fields
.field private static sBackupsChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupAccounts(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "Email"

    const-string v1, "backupAccounts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    new-instance v0, Lcom/android/email/AccountBackupRestore$1;

    invoke-direct {v0, p0}, Lcom/android/email/AccountBackupRestore$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/AccountBackupRestore$1;->start()V

    .line 58
    return-void
.end method

.method static declared-synchronized doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 91
    const-class v6, Lcom/android/email/AccountBackupRestore;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v0

    .line 92
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    invoke-virtual {v3, p1}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v7

    .line 102
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    .line 158
    :goto_1
    monitor-exit v6

    return-void

    .line 107
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 110
    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 113
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 114
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backing up account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    invoke-static {p0, v0}, Lcom/android/email/LegacyConversions;->makeLegacyAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/email/Account;

    move-result-object v2

    .line 119
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 124
    if-eqz v4, :cond_3

    .line 125
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 127
    :cond_3
    const-string v4, "com.android.calendar"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 129
    if-eqz v4, :cond_4

    .line 130
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 132
    :cond_4
    const-string v4, "com.android.email.provider"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 134
    if-nez v3, :cond_5

    .line 135
    iget v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 140
    :cond_5
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_6

    .line 141
    iget v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 145
    :cond_6
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_7

    .line 146
    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 151
    :cond_7
    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 153
    invoke-virtual {v2, p1}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 156
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    .line 156
    :cond_8
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method static declared-synchronized doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;Z)Z
    .locals 10
    .parameter "context"
    .parameter "preferences"
    .parameter "unitTest"

    .prologue
    .line 169
    const-class v9, Lcom/android/email/AccountBackupRestore;

    monitor-enter v9

    const/4 v1, 0x0

    .line 172
    .local v1, result:Z
    :try_start_0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 173
    .local v0, numAccounts:I
    if-lez v0, :cond_0

    move p0, v1

    .end local v1           #result:Z
    .local p0, result:Z
    move p1, v1

    .line 224
    .end local v0           #numAccounts:I
    .end local p0           #result:Z
    .local p1, result:I
    :goto_0
    monitor-exit v9

    return p1

    .line 177
    .restart local v0       #numAccounts:I
    .restart local v1       #result:Z
    .local p0, context:Landroid/content/Context;
    .local p1, preferences:Lcom/android/email/Preferences;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object p1

    .line 178
    .local p1, backups:[Lcom/android/email/Account;
    array-length v0, p1

    .end local v0           #numAccounts:I
    if-nez v0, :cond_1

    move p0, v1

    .end local v1           #result:Z
    .local p0, result:Z
    move p1, v1

    .line 179
    .local p1, result:I
    goto :goto_0

    .line 182
    .restart local v1       #result:Z
    .local p0, context:Landroid/content/Context;
    .local p1, backups:[Lcom/android/email/Account;
    :cond_1
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Restoring Email Accounts, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object p1, p1

    .local p1, arr$:[Lcom/android/email/Account;
    array-length v7, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v7, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v6, v0

    .end local v0           #i$:I
    .local v6, i$:I
    move v8, v1

    .end local v1           #result:Z
    .local v8, result:Z
    :goto_1
    if-ge v6, v7, :cond_a

    :try_start_2
    aget-object v0, p1, v6

    .line 187
    .local v0, backupAccount:Lcom/android/email/Account;
    iget v1, v0, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    move v1, v8

    .line 185
    .end local v0           #backupAccount:Lcom/android/email/Account;
    .end local v8           #result:Z
    .restart local v1       #result:Z
    :goto_2
    add-int/lit8 v0, v6, 0x1

    .end local v6           #i$:I
    .local v0, i$:I
    move v6, v0

    .end local v0           #i$:I
    .restart local v6       #i$:I
    move v8, v1

    .end local v1           #result:Z
    .restart local v8       #result:Z
    goto :goto_1

    .line 191
    .local v0, backupAccount:Lcom/android/email/Account;
    :cond_2
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p0, v0}, Lcom/android/email/LegacyConversions;->makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 195
    .local v1, toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v2, v0, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 196
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 200
    :cond_3
    iget v2, v0, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_4

    .line 201
    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 205
    :cond_4
    iget v2, v0, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 207
    .local v2, email:Z
    :goto_3
    const/4 v4, 0x0

    .line 208
    .local v4, contacts:Z
    const/4 v3, 0x0

    .line 210
    .local v3, calendar:Z
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 211
    iget v3, v0, Lcom/android/email/Account;->mBackupFlags:I

    .end local v3           #calendar:Z
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    move v4, v3

    .line 212
    :goto_4
    iget v0, v0, Lcom/android/email/Account;->mBackupFlags:I

    .end local v0           #backupAccount:Lcom/android/email/Account;
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v3, v0

    .line 215
    .restart local v3       #calendar:Z
    :cond_5
    :goto_5
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 218
    if-nez p2, :cond_6

    .line 219
    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZLandroid/accounts/AccountManagerCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    :cond_6
    const/4 v0, 0x1

    .end local v8           #result:Z
    .local v0, result:Z
    move v1, v0

    .end local v0           #result:Z
    .local v1, result:Z
    goto :goto_2

    .line 205
    .end local v2           #email:Z
    .end local v3           #calendar:Z
    .end local v4           #contacts:Z
    .local v0, backupAccount:Lcom/android/email/Account;
    .local v1, toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v8       #result:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 211
    .restart local v2       #email:Z
    .restart local v4       #contacts:Z
    :cond_8
    const/4 v3, 0x0

    move v4, v3

    goto :goto_4

    .line 212
    .end local v0           #backupAccount:Lcom/android/email/Account;
    :cond_9
    const/4 v0, 0x0

    move v3, v0

    goto :goto_5

    .end local v1           #toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #email:Z
    .end local v4           #contacts:Z
    :cond_a
    move p0, v8

    .end local v8           #result:Z
    .local p0, result:Z
    move p1, v8

    .line 224
    .local p1, result:I
    goto/16 :goto_0

    .line 169
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local p1           #result:I
    .local v1, result:Z
    .local p0, context:Landroid/content/Context;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move p0, v1

    .end local v1           #result:Z
    .local p0, result:Z
    :goto_6
    monitor-exit v9

    throw p1

    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #result:Z
    .local p0, context:Landroid/content/Context;
    .local p1, arr$:[Lcom/android/email/Account;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move p0, v8

    .end local v8           #result:Z
    .local p0, result:Z
    goto :goto_6
.end method

.method public static declared-synchronized restoreAccountsIfNeeded(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 66
    const-class v1, Lcom/android/email/AccountBackupRestore;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 80
    :goto_0
    monitor-exit v1

    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/email/AccountBackupRestore;->doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;Z)Z

    move-result v0

    .line 70
    .local v0, restored:Z
    if-eqz v0, :cond_1

    .line 72
    const-string v2, "Email"

    const-string v3, "Register services after restoring accounts"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 76
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 77
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 79
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    .end local v0           #restored:Z
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method
