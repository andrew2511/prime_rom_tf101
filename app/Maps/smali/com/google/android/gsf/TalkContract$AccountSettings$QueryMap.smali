.class public Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "TalkContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract$AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation


# static fields
.field private static final HAS_CAMERA_V1:I = 0x4

.field private static final HAS_PMUC_V1:I = 0x8

.field private static final HAS_VIDEO_V1:I = 0x2

.field private static final HAS_VOICE_V1:I = 0x1


# instance fields
.field private mAccountId:J

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZJLandroid/os/Handler;)V
    .locals 6
    .parameter "contentResolver"
    .parameter "keepUpdated"
    .parameter "accountId"
    .parameter "handlerForUpdateNotifications"

    .prologue
    const/4 v3, 0x0

    .line 1740
    invoke-static {p3, p4}, Lcom/google/android/gsf/TalkContract$AccountSettings;->getContentUriByAccountId(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "value"

    aput-object v4, v2, v0

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "name"

    invoke-direct {p0, v0, v1, p2, p5}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 1746
    iput-object p1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    .line 1747
    iput-wide p3, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    .line 1748
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2223
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2224
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method public static getCapabilities(ZZ)I
    .locals 2
    .parameter "video"
    .parameter "audio"

    .prologue
    const/4 v1, 0x0

    .line 2120
    if-eqz p0, :cond_1

    const/4 v0, 0x6

    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getInteger(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2249
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2250
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2262
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2263
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    move-wide v1, p2

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2236
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2237
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method private static isTablet(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 1971
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1979
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 1981
    const/4 v1, 0x1

    .line 1983
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAudioChatEnabled()Z
    .locals 3

    .prologue
    .line 2015
    const-string v0, "audiochatv2"

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->access$000(J)Z

    move-result v0

    return v0
.end method

.method public getAudioChatUnset()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2023
    const-string v0, "audiochatv2"

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutomaticallyConnectToGTalkServer()Z
    .locals 2

    .prologue
    .line 1765
    const-string v0, "gtalk_auto_connect"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCameraEnabled()Z
    .locals 3

    .prologue
    .line 2081
    const-string v0, "show_camera"

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->access$000(J)Z

    move-result v0

    return v0
.end method

.method public getCameraUnset()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2089
    const-string v0, "show_camera"

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 2097
    const/16 v0, 0x8

    .line 2099
    .local v0, caps:I
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getAudioChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    or-int/lit8 v0, v0, 0x1

    .line 2103
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2104
    or-int/lit8 v0, v0, 0x2

    .line 2106
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2107
    or-int/lit8 v0, v0, 0x4

    .line 2111
    :cond_1
    return v0
.end method

.method public getHeartbeatInterval()J
    .locals 3

    .prologue
    .line 2194
    const-string v0, "heartbeat_interval"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHideOfflineContacts()Z
    .locals 2

    .prologue
    .line 1785
    const-string v0, "hide_offline_contacts"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getJidResource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2211
    const-string v0, "jid_resource"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyFriendInvitation()Z
    .locals 2

    .prologue
    .line 2157
    const-string v0, "notify_invite"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowAwayOnIdle()Z
    .locals 2

    .prologue
    .line 2138
    const-string v0, "show_away_on_idle"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowMobileIndicator(Landroid/content/Context;)Z
    .locals 2
    .parameter "ctx"

    .prologue
    .line 1963
    const-string v0, "mobile_indicator"

    invoke-static {p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextNotification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1889
    const-string v0, "text-notif-type"

    const-string v1, "statusbar"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1926
    const-string v0, "ringtone"

    const-string v1, "content://settings/system/notification_sound"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextVibrate()Z
    .locals 2

    .prologue
    .line 1804
    const-string v0, "vibrate"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTextVibrateWhen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1823
    const-string v1, "vibrate-when"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    .local v0, when:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1827
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrate()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "silent"

    goto :goto_0

    :cond_1
    const-string v1, "never"

    goto :goto_0
.end method

.method public getUploadHeartbeatStat()Z
    .locals 2

    .prologue
    .line 2175
    const-string v0, "upload_heartbeat_stat"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoChatEnabled()Z
    .locals 3

    .prologue
    .line 2055
    const-string v0, "videochatv2"

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->access$000(J)Z

    move-result v0

    return v0
.end method

.method public getVideoChatUnset()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2063
    const-string v0, "videochatv2"

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoNotification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1908
    const-string v0, "video-notif-type"

    const-string v1, "popup"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1944
    const-string v0, "ringtone-video"

    const-string v1, "content://settings/system/ringtone"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoVibrate()Z
    .locals 2

    .prologue
    .line 1846
    const-string v0, "vibrate-video"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoVibrateWhen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1865
    const-string v1, "vibrate-when-video"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1866
    .local v0, when:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1869
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoVibrate()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "silent"

    goto :goto_0

    :cond_1
    const-string v1, "never"

    goto :goto_0
.end method

.method public setAudioChatEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1993
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setAudioChatEnabled(ZZ)Z

    .line 1994
    return-void
.end method

.method public setAudioChatEnabled(ZZ)Z
    .locals 7
    .parameter "enabled"
    .parameter "userSet"

    .prologue
    .line 2004
    const-string v0, "audiochatv2"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2005
    .local v3, currentValue:J
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v5, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setAudioChatEnabled(Landroid/content/ContentResolver;ZZJJ)Z

    move-result v0

    return v0
.end method

.method public setAutomaticallyConnectToGTalkServer(Z)V
    .locals 3
    .parameter "autoConnect"

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;ZJ)V

    .line 1758
    return-void
.end method

.method public setCameraEnabled(ZZ)Z
    .locals 7
    .parameter "enabled"
    .parameter "userSet"

    .prologue
    .line 2072
    const-string v0, "show_camera"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2073
    .local v3, currentValue:J
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v5, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setCameraEnabled(Landroid/content/ContentResolver;ZZJJ)Z

    move-result v0

    return v0
.end method

.method public setHeartbeatInterval(J)V
    .locals 3
    .parameter "interval"

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setHeartbeatInterval(Landroid/content/ContentResolver;JJ)V

    .line 2186
    return-void
.end method

.method public setHideOfflineContacts(Z)V
    .locals 3
    .parameter "hideOfflineContacts"

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setHideOfflineContacts(Landroid/content/ContentResolver;ZJ)V

    .line 1777
    return-void
.end method

.method public setJidResource(Ljava/lang/String;)V
    .locals 3
    .parameter "jidResource"

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 2204
    return-void
.end method

.method public setNotifyFriendInvitation(Z)V
    .locals 3
    .parameter "notify"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setNotifyFriendInvitation(Landroid/content/ContentResolver;ZJ)V

    .line 2149
    return-void
.end method

.method public setShowAwayOnIdle(Z)V
    .locals 3
    .parameter "showAway"

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setShowAwayOnIdle(Landroid/content/ContentResolver;ZJ)V

    .line 2130
    return-void
.end method

.method public setShowMobileIndicator(Z)V
    .locals 3
    .parameter "showMobile"

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setShowMobileIndicator(Landroid/content/ContentResolver;ZJ)V

    .line 1954
    return-void
.end method

.method public setTextNotification(Ljava/lang/String;)V
    .locals 3
    .parameter "notificationType"

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1881
    return-void
.end method

.method public setTextRingtoneURI(Ljava/lang/String;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1918
    return-void
.end method

.method public setTextVibrate(Z)V
    .locals 3
    .parameter "vibrate"

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextVibrate(Landroid/content/ContentResolver;ZJ)V

    .line 1796
    return-void
.end method

.method public setTextVibrateWhen(Ljava/lang/String;)V
    .locals 3
    .parameter "when"

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1814
    return-void
.end method

.method public setUploadHeartbeatStat(Z)V
    .locals 3
    .parameter "uploadStat"

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setUploadHeartbeatStat(Landroid/content/ContentResolver;ZJ)V

    .line 2167
    return-void
.end method

.method public setVideoChatEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2033
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setVideoChatEnabled(ZZ)Z

    .line 2034
    return-void
.end method

.method public setVideoChatEnabled(ZZ)Z
    .locals 7
    .parameter "enabled"
    .parameter "userSet"

    .prologue
    .line 2044
    const-string v0, "videochatv2"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2045
    .local v3, currentValue:J
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v5, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoChatEnabled(Landroid/content/ContentResolver;ZZJJ)Z

    move-result v0

    return v0
.end method

.method public setVideoNotification(Ljava/lang/String;)V
    .locals 3
    .parameter "notificationType"

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1900
    return-void
.end method

.method public setVideoRingtoneURI(Ljava/lang/String;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1936
    return-void
.end method

.method public setVideoVibrate(Z)V
    .locals 3
    .parameter "vibrate"

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoVibrate(Landroid/content/ContentResolver;ZJ)V

    .line 1838
    return-void
.end method

.method public setVideoVibrateWhen(Ljava/lang/String;)V
    .locals 3
    .parameter "when"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1856
    return-void
.end method
