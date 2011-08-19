.class public Lcom/android/email/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static sPreferences:Lcom/android/email/Preferences;


# instance fields
.field final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "AndroidMail.Main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 69
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    const-class v0, Lcom/android/email/Preferences;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/android/email/Preferences;

    invoke-direct {v1, p0}, Lcom/android/email/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;

    .line 81
    :cond_0
    sget-object v1, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAccountByContentUri(Landroid/net/Uri;)Lcom/android/email/Account;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 106
    const-string v5, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "accounts"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v7

    .line 123
    :goto_0
    return-object v5

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, uuid:Ljava/lang/String;
    if-nez v3, :cond_2

    move-object v5, v7

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "accountUuids"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, accountUuids:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move-object v5, v7

    .line 115
    goto :goto_0

    .line 117
    :cond_4
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, uuids:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, length:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 119
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    new-instance v5, Lcom/android/email/Account;

    invoke-direct {v5, p0, v3}, Lcom/android/email/Account;-><init>(Lcom/android/email/Preferences;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move-object v5, v7

    .line 123
    goto :goto_0
.end method

.method public getAccounts()[Lcom/android/email/Account;
    .locals 8

    .prologue
    .line 89
    iget-object v5, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "accountUuids"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, accountUuids:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 91
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/email/Account;

    .line 98
    :goto_0
    return-object v5

    .line 93
    :cond_1
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, uuids:[Ljava/lang/String;
    array-length v5, v4

    new-array v1, v5, [Lcom/android/email/Account;

    .line 95
    .local v1, accounts:[Lcom/android/email/Account;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v4

    .local v3, length:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 96
    new-instance v5, Lcom/android/email/Account;

    aget-object v6, v4, v2

    invoke-direct {v5, p0, v6}, Lcom/android/email/Account;-><init>(Lcom/android/email/Preferences;Ljava/lang/String;)V

    aput-object v5, v1, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 98
    goto :goto_0
.end method

.method public getAutoAdvanceDirection()I
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "autoAdvance"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getDeviceUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "deviceUID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deviceUID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_0
    monitor-exit p0

    return-object v0

    .line 212
    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEnableDebugLogging()Z
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableDebugLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeFileLogging()Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeFileLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeLogging()Z
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableStrictMode()Z
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableStrictMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getForceOneMinuteRefresh()Z
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "forceOneMinuteRefresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInhibitGraphicsAcceleration()Z
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "inhibitGraphicsAcceleration"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOneTimeInitializationProgress()I
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "oneTimeInitializationProgress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTextZoom()I
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "textZoom"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setAutoAdvanceDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoAdvance"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    return-void
.end method

.method public setEnableDebugLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableDebugLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    return-void
.end method

.method public setEnableExchangeFileLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeFileLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    return-void
.end method

.method public setEnableExchangeLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    return-void
.end method

.method public setEnableStrictMode(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableStrictMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    return-void
.end method

.method public setForceOneMinuteRefresh(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "forceOneMinuteRefresh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    return-void
.end method

.method public setInhibitGraphicsAcceleration(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inhibitGraphicsAcceleration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    return-void
.end method

.method public setOneTimeInitializationProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oneTimeInitializationProgress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    return-void
.end method

.method public setTextZoom(I)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "textZoom"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    return-void
.end method
