.class public Lcom/google/android/partnersetup/RlzPreferences;
.super Ljava/lang/Object;
.source "RlzPreferences.java"

# interfaces
.implements Lcom/google/android/partnersetup/RlzPreferencesInterface;


# static fields
.field private static final DEFAULT_GUID:Ljava/lang/String;

.field private static final DEFAULT_PID:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    sput-object v0, Lcom/google/android/partnersetup/RlzPreferences;->DEFAULT_GUID:Ljava/lang/String;

    .line 112
    sput-object v0, Lcom/google/android/partnersetup/RlzPreferences;->DEFAULT_PID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    const-string v1, "RLZ"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlarmWakeTime()J
    .locals 6

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "waketime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getPingInterval()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBrandCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    const-string v0, "ro.com.google.rlzbrandcode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelayAfterActivation()I
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_delay_after_activation"

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDelayAfterEvent()I
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_delay_after_event"

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDeviceGUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "guid"

    sget-object v2, Lcom/google/android/partnersetup/RlzPreferences;->DEFAULT_GUID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pid"

    sget-object v2, Lcom/google/android/partnersetup/RlzPreferences;->DEFAULT_PID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTableSize()I
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_max_table_size"

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPingInterval()I
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_ping_interval"

    const v2, 0x93a80

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRetryInterval()I
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_retry_interval"

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isActivationPingPrepared()Z
    .locals 3

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "activated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOEMModeEnabled()Z
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "oem_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRlzEnabled()Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->isOEMModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->isRlzEnabledGservices()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getBrandCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRlzEnabledGservices()Z
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setActivationPingPrepared(Z)V
    .locals 2
    .parameter "val"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "activated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    return-void
.end method

.method public setAlarmWakeTime(J)V
    .locals 2
    .parameter "val"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "waketime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    return-void
.end method

.method public setDeviceGUID(Ljava/lang/String;)V
    .locals 2
    .parameter "val"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "guid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    return-void
.end method

.method public setDevicePID(Ljava/lang/String;)V
    .locals 2
    .parameter "val"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    return-void
.end method

.method public setOEMMode(Z)V
    .locals 2
    .parameter "val"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "oem_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method
