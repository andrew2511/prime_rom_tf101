.class public Lcom/android/email/Email;
.super Landroid/app/Application;
.source "Email.java"


# static fields
.field public static DEBUG:Z

.field public static DEBUG_EXCHANGE:Z

.field public static DEBUG_EXCHANGE_FILE:Z

.field public static DEBUG_EXCHANGE_VERBOSE:Z

.field private static sAccountsChangedNotification:Z

.field public static sDebugInhibitGraphicsAcceleration:Z

.field private static sMessageDecodeErrorString:Ljava/lang/String;

.field private static sUiThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    .line 71
    sput-boolean v0, Lcom/android/email/Email;->DEBUG_EXCHANGE:Z

    .line 72
    sput-boolean v0, Lcom/android/email/Email;->DEBUG_EXCHANGE_VERBOSE:Z

    .line 73
    sput-boolean v0, Lcom/android/email/Email;->DEBUG_EXCHANGE_FILE:Z

    .line 78
    sput-boolean v0, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 96
    sput-boolean v0, Lcom/android/email/Email;->sAccountsChangedNotification:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static enableStrictMode(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 275
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->enableStrictMode(Z)V

    .line 276
    return-void
.end method

.method public static getMessageDecodeErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/android/email/Email;->sMessageDecodeErrorString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/Email;->sMessageDecodeErrorString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getNotifyUiAccountsChanged()Z
    .locals 2

    .prologue
    .line 257
    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 240
    const-string v0, "Email"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public static declared-synchronized setNotifyUiAccountsChanged(Z)V
    .locals 2
    .parameter "setFlag"

    .prologue
    .line 249
    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit v0

    return-void

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setServicesEnabled(Landroid/content/Context;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 146
    if-nez p1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 153
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 155
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 160
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/activity/AccountShortcutPicker;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 165
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 170
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 175
    if-eqz p1, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 182
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 185
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    if-eqz p1, :cond_6

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    :goto_4
    return-void

    :cond_2
    move v2, v4

    .line 155
    goto :goto_0

    :cond_3
    move v2, v4

    .line 160
    goto :goto_1

    :cond_4
    move v2, v4

    .line 165
    goto :goto_2

    :cond_5
    move v2, v4

    .line 170
    goto :goto_3

    .line 189
    :cond_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_4
.end method

.method public static setServicesEnabledAsync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    new-instance v0, Lcom/android/email/Email$1;

    invoke-direct {v0, p0}, Lcom/android/email/Email$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method

.method public static setServicesEnabledSync(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 128
    const/4 v6, 0x0

    .line 130
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v7, v0

    .line 135
    .local v7, enable:Z
    :goto_0
    invoke-static {p0, v7}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v6, :cond_0

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    .line 134
    .end local v7           #enable:Z
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static updateLoggingFlags(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 223
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    .line 224
    .local v4, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    move v1, v6

    .line 225
    .local v1, debugLogging:I
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    move v5, v6

    .line 227
    .local v5, verboseLogging:I
    :goto_1
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    move v3, v6

    .line 229
    .local v3, fileLogging:I
    :goto_2
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    move v2, v6

    .line 231
    .local v2, enableStrictMode:I
    :goto_3
    or-int v6, v1, v5

    or-int/2addr v6, v3

    or-int v0, v6, v2

    .line 232
    .local v0, debugBits:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/email/Controller;->serviceLogging(I)V

    .line 233
    return-void

    .end local v0           #debugBits:I
    .end local v1           #debugLogging:I
    .end local v2           #enableStrictMode:I
    .end local v3           #fileLogging:I
    .end local v5           #verboseLogging:I
    :cond_0
    move v1, v7

    .line 224
    goto :goto_0

    .restart local v1       #debugLogging:I
    :cond_1
    move v5, v7

    .line 225
    goto :goto_1

    .restart local v5       #verboseLogging:I
    :cond_2
    move v3, v7

    .line 227
    goto :goto_2

    .restart local v3       #fileLogging:I
    :cond_3
    move v2, v7

    .line 229
    goto :goto_3
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Lcom/android/email/Email;->sUiThread:Ljava/lang/Thread;

    .line 197
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 198
    .local v0, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    .line 199
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getInhibitGraphicsAcceleration()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 200
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v1

    invoke-static {v1}, Lcom/android/email/Email;->enableStrictMode(Z)V

    .line 201
    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 204
    invoke-static {p0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    .line 206
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Controller;->resetVisibleLimits()V

    .line 209
    invoke-static {p0}, Lcom/android/email/Email;->updateLoggingFlags(Landroid/content/Context;)V

    .line 212
    const v1, 0x7f0800a5

    invoke-virtual {p0, v1}, Lcom/android/email/Email;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/Email;->sMessageDecodeErrorString:Ljava/lang/String;

    .line 216
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 217
    return-void
.end method
